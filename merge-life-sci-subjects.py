"""
Merge all life science and medicine subjects csv
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

    with open('csv_out/lifescience-medicine.csv', 'r') as csv_file:
        reader = csv.reader(csv_file)
        for row in reader:
            name = row[1]
            if name == 'University' or name not in school_dict:
                continue
            school_dict[name].append(row[2])
    for school in school_dict.keys():
        if len(school_dict[school]) < 3:
            school_dict[school].append('')

    merge_subject_csv('csv/life-sci/agriculture-forestry.csv', 'agriculture-forestry', school_dict, titles, 4)
    merge_subject_csv('csv/life-sci/anatomy-physiology.csv', 'anatomy-physiology', school_dict, titles, 5)
    merge_subject_csv('csv/life-sci/biological.csv', 'biological', school_dict, titles, 6)
    merge_subject_csv('csv/life-sci/dentistry.csv', 'dentistry', school_dict, titles, 7)
    merge_subject_csv('csv/life-sci/medicine.csv', 'medicine', school_dict, titles, 8)
    merge_subject_csv('csv/life-sci/nursing.csv', 'nursing', school_dict, titles, 9)
    merge_subject_csv('csv/life-sci/pharmacy-pharmacology.csv', 'pharmacy-pharmacology', school_dict, titles, 10)
    merge_subject_csv('csv/life-sci/psychology.csv', 'psychology', school_dict, titles, 11)
    merge_subject_csv('csv/life-sci/veterinary.csv', 'veterinary', school_dict, titles, 12)

    output_arr = [titles] + school_dict.values()

    output_file = open('csv_db/university-life-sci.csv', 'w')
    with output_file:
       writer = csv.writer(output_file)
       writer.writerows(output_arr)
