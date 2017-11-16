"""
Add overall score as id for all subject csv files
"""

import csv

def add_id_to_file(id_dict, input_file_name, output_file_name):
    with open(input_file_name, 'r') as csvinput:
        with open(output_file_name, 'w') as csvoutput:
            writer = csv.writer(csvoutput, lineterminator='\n')
            reader = csv.reader(csvinput)

            output_arr = []

            for row in reader:
                name = row[0]
                if name == 'University':
                    row.insert(0, 'id')
                else:
                    row.insert(0, id_dict.get(name, ''))
                output_arr.append(row)

            writer.writerows(output_arr)

if __name__ == '__main__':
    # Overall ranking
    school_rank_dict = {}

    with open('csv/overall.csv') as overall_file:
        reader = csv.reader(overall_file)
        for row in reader:
            if row[0] == 'Id':
                continue
            rank = row[0]
            name = row[1]
            school_rank_dict[name] = rank

    add_id_to_file(school_rank_dict, 'csv/arts-humanities.csv', 'csv_out/arts-humanities.csv')
    add_id_to_file(school_rank_dict, 'csv/engineering-technology.csv', 'csv_out/engineering-technology.csv')
    add_id_to_file(school_rank_dict, 'csv/lifescience-medicine.csv', 'csv_out/lifescience-medicine.csv')
    add_id_to_file(school_rank_dict, 'csv/naturalscience.csv', 'csv_out/naturalscience.csv')
    add_id_to_file(school_rank_dict, 'csv/socialscience.csv', 'csv_out/socialscience.csv')
