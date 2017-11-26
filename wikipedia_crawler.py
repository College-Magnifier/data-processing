import BeautifulSoup
import urllib
import urllib2
import os
import json
import pymysql


# Global configurations
TABLE_NAME = "university_info"
UNIV_COUNT = 200


def crawl_all_universities(overwrite):
    # Crawl each university from #1 to #UNIV_COUNT
    crawl_pages(range(1, UNIV_COUNT + 1), overwrite)


def crawl_pages(univ_ids, overwrite):
    print("=== START CRAWLING ===")
    failures = []
    for univ_id in univ_ids:
        if crawl_wiki_page(univ_id, overwrite) is None:
            failures.append(univ_id)
    print("=== CRAWLING COMPLETE ===")
    print(failures)


def crawl_wiki_page(univ_id, overwrite):
    file_name = "html" + os.sep + str(univ_id) + ".html"

    # Check if already crawled on non-overwrite mode
    if overwrite is False and os.path.isfile(file_name):
        print("#" + str(univ_id) + " exists.")
        return None

    univ_name = get_univ_name(univ_id)

    # Search the Wikipedia's internal page id for university's name
    query = "https://en.wikipedia.org/w/api.php?action=query&titles=" + urllib.quote(univ_name) + "&prop=revisions&rvprop=content&format=json"
    try:
        pageid_json = json.loads(urllib2.urlopen(query).read())
        pageids = pageid_json['query']['pages']
    except Exception:
        return None
    if len(pageids) == 0:
        return None

    # Fetch the url for the internal page id
    if pageids is None:
        return None
    for i in pageids:
        if pageids[i]['ns'] == 0:
            pageid = i
    query2 = 'https://en.wikipedia.org/w/api.php?action=query&prop=info&inprop=url&format=json&pageids=' + pageid
    try:
        url_json = json.loads(urllib2.urlopen(query2).read())
        page_url = url_json['query']['pages'][pageid]['fullurl']
    except Exception:
        return None

    # Crawl the page and parse the page's info box
    s = urllib2.urlopen(page_url).read()
    soup = BeautifulSoup.BeautifulSoup(s)
    info_box = soup.find('table', {'class': 'infobox vcard'})  # soup.select('#mw-content-text > div > table.infobox.vcard')[0].text

    # # Process the elements' styles in the info box
    # elems = info_box.findAll(True)
    # for elem in elems:
    #     del elem['style']

    if info_box is None:
        print("#" + str(univ_id) + " failed!!!")
        return None

    # Write to file
    f = open(file_name, 'w')
    f.write(str(info_box))
    f.close()
    print("#" + str(univ_id) + " done.")

    return info_box


def get_univ_name(univ_id):
    # Connect to database
    cnx = pymysql.connect(
        host='127.0.0.1',
        database='coni_db',
        user='coni_admin',
        password='admin',
    )

    # Perform query on the database
    cursor = cnx.cursor()
    query = "SELECT id, name FROM university_abbr WHERE id=" + str(univ_id)
    cursor.execute(query)
    cnx.commit()

    # Fetch the first record's name
    univ_name = None
    for (id, name) in cursor:
        univ_name = name
        break

    # Process the name
    left_bracket_idx = univ_name.find("(")
    if left_bracket_idx > 0:
        univ_name = univ_name[:left_bracket_idx].strip()
    dash_idx = univ_name.find("-")
    if dash_idx > 0:
        univ_name = univ_name[:dash_idx].strip()

    # Close the connection and return the name
    cnx.close()
    return univ_name


def insert_records(drop_existing):
    # Connect to database
    cnx = pymysql.connect(
        host='127.0.0.1',
        database='coni_db',
        user='coni_admin',
        password='admin',
    )
    cursor = cnx.cursor()

    # Drop the existing table
    if drop_existing:
        cursor.execute("DROP TABLE IF EXISTS " + TABLE_NAME)
        cnx.commit()
        print("=== DROPPED EXISTING TABLE ===")

    # Create a table called "university_info"
    cursor.execute(
        "CREATE TABLE IF NOT EXISTS " + TABLE_NAME + " (`id` INT(11) unsigned NOT NULL, info LONGTEXT, PRIMARY KEY (`id`))")
    cnx.commit()
    print("=== CREATED NEW TABLE ===")

    # Connect to database
    cnx = pymysql.connect(
        host='127.0.0.1',
        database='coni_db',
        user='coni_admin',
        password='admin',
    )
    cursor = cnx.cursor()

    # Insert each university's html into the database
    print("=== START CRAWLING ===")
    for univ_id in range(1, UNIV_COUNT + 1):
        # Read html from the crawled file
        file_name = "html" + os.sep + str(univ_id) + ".html"
        f = open(file_name, 'r')
        html = f.read()

        # Escape single quote
        html = html.replace("'", "''")

        # Perform insertion on the database
        insertion_sql = "INSERT INTO " + TABLE_NAME + " (id, info) VALUES (" + str(univ_id) + ", '" + html + "')"
        cursor.execute(insertion_sql)
        cnx.commit()


# Start crawling
# crawl_all_universities(False)

# TODO: Change these universities' names to English!
# ids = [52, 68, 72, 100, 101, 121, 163]
# crawl_pages(ids, False)
