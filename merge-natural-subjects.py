"""
Merge all natural science subjects csv
"""
import csv

def merge_subject_csv(file_name, subject, school_dict, titles, suppose_len):
    titles.append(subject)
    with open(file_name, 'r') as csv_file:
        reader = csv.reader(csv_file)
        for row in reader:
            name = row[0]
            if name == 'university' or name not in school_dict:
                continue
            school_dict[name].append(row[1])
    for school in school_dict.keys():
        if len(school_dict[school]) < suppose_len:
            school_dict[school].append('')

if __name__ == '__main__':
    school_dict = {}

    with open('csv/overall.csv', 'r') as overall_file:
        reader = csv.reader(overall_file)
        for row in reader:
            if row[0] == 'Id':
                continue
            rank = row[0]
            name = row[1]
            dict_val = [rank, name]
            school_dict[name] = dict_val

    titles = ['id', 'university', 'overall']

    with open('csv_out/naturalscience.csv', 'r') as csv_file:
        reader = csv.reader(csv_file)
        for row in reader:
            name = row[1]
            if name == 'University' or name not in school_dict:
                continue
            school_dict[name].append(row[2])
    for school in school_dict.keys():
        if len(school_dict[school]) < 3:
            school_dict[school].append('')

    merge_subject_csv('csv/natural/chemistry.csv', 'chemistry', school_dict, titles, 4)
    merge_subject_csv('csv/natural/earth-marine.csv', 'earth-marine', school_dict, titles, 5)
    merge_subject_csv('csv/natural/environmental.csv', 'environmental', school_dict, titles, 6)
    merge_subject_csv('csv/natural/geography.csv', 'geography', school_dict, titles, 7)
    merge_subject_csv('csv/natural/materials.csv', 'materials', school_dict, titles, 8)
    merge_subject_csv('csv/natural/mathematics.csv', 'mathematics', school_dict, titles, 9)
    merge_subject_csv('csv/natural/physics-astronomy.csv', 'physics-astronomy', school_dict, titles, 10)

    output_arr = [titles] + school_dict.values()

    output_file = open('csv_db/university-natural.csv', 'w')
    with output_file:
       writer = csv.writer(output_file)
       writer.writerows(output_arr)
