"""
Merge 5 priciple subjects ranking and overall ranking into a single csv
"""

import csv

def gen_dict_from_file(file_name):
    rank_dict = {}
    with open(file_name) as rank_file:
        reader = csv.reader(rank_file)
        for row in reader:
            if row[0] == 'University':
                continue
            name = row[0]
            score = row[1]
            rank_dict[name] = score
    return rank_dict

if __name__ == '__main__':
    # Overall ranking
    school_rank_dict = {}
    overall_dict = {}

    with open('csv/overall.csv') as overall_file:
        reader = csv.reader(overall_file)
        for row in reader:
            if row[0] == 'Id':
                continue
            rank = row[0]
            name = row[1]
            score = row[2]
            school_rank_dict[name] = rank
            overall_dict[name] = score

    # Arts and Humanities ranking
    arts_humanities_dict = gen_dict_from_file('csv/arts-humanities.csv')
    # Engineering and Technology ranking
    engineering_technology_dict = gen_dict_from_file('csv/engineering-technology.csv')
    # Life Science and Medicine ranking
    life_medicine_dict = gen_dict_from_file('csv/lifescience-medicine.csv')
    # Natural Science ranking
    natural_dict = gen_dict_from_file('csv/naturalscience.csv')
    # Social Science ranking
    social_dict = gen_dict_from_file('csv/socialscience.csv')

    merged_arr = []
    for school in overall_dict.keys():
        row = []
        row.append(school_rank_dict[school])
        row.append(school)
        row.append(overall_dict[school])
        row.append(arts_humanities_dict.get(school, '-'))
        row.append(engineering_technology_dict.get(school, '-'))
        row.append(life_medicine_dict.get(school, '-'))
        row.append(natural_dict.get(school, '-'))
        row.append(social_dict.get(school, '-'))
        merged_arr.append(row)

    merged_arr = sorted(merged_arr, key=lambda x: int(x[0]))

    merged_arr.insert(0, ['id', 'university', 'overall', 'arts and humanities', 'engineering and technology', 'life science and medicine', 'natural science', 'social science'])

    output_file = open('csv_out/principle-subjects.csv', 'w')
    with output_file:
       writer = csv.writer(output_file)
       writer.writerows(merged_arr)
