"""
Add continent tags for counties in university sheet
"""
import csv

if __name__ == '__main__':
    country_continent_dict = {}
    country_continent_code_dict = {}

    with open('csv_out/university-complete-geo.csv', 'r') as csvinput:
        with open('csv_out/universities-geo-with-continent.csv', 'w') as csvoutput:
            writer = csv.writer(csvoutput, lineterminator='\n')
            reader = csv.reader(csvinput)

            output_arr = []

            for row in reader:
                country = row[10]
                if row[0] == 'id':
                    row.append('continent')
                    row.append('continent_code')
                else:
                    if country not in country_continent_dict:
                        continents = ['Europe', 'Oceania', 'Africa', 'Asia', 'North America', 'South America']
                        continent_codes = ['eu', 'oc', 'af', 'as', 'na', 'sa']
                        for i in range(len(continents)):
                            print i, ':', continents[i]
                        index = int(raw_input(country + ': '))
                        country_continent_dict[country] = continents[index]
                        country_continent_code_dict[country] = continent_codes[index]
                    row.append(country_continent_dict[country])
                    row.append(country_continent_code_dict[country])

                output_arr.append(row)

            writer.writerows(output_arr)
