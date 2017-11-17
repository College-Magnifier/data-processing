"""
Merge all social science subjects csv
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

    with open('csv_out/socialscience.csv', 'r') as csv_file:
        reader = csv.reader(csv_file)
        for row in reader:
            name = row[1]
            if name == 'University' or name not in school_dict:
                continue
            school_dict[name].append(row[2])
    for school in school_dict.keys():
        if len(school_dict[school]) < 3:
            school_dict[school].append('')

    merge_subject_csv('csv/social/accounting-finance.csv', 'accounting-finance', school_dict, titles, 4)
    merge_subject_csv('csv/social/anthropology.csv', 'anthropology', school_dict, titles, 5)
    merge_subject_csv('csv/social/business-management.csv', 'business-management', school_dict, titles, 6)
    merge_subject_csv('csv/social/communication-media.csv', 'communication-media', school_dict, titles, 7)
    merge_subject_csv('csv/social/development.csv', 'development', school_dict, titles, 8)
    merge_subject_csv('csv/social/economics-econometrics.csv', 'economics-econometrics', school_dict, titles, 9)
    merge_subject_csv('csv/social/education.csv', 'education', school_dict, titles, 10)
    merge_subject_csv('csv/social/hospitality-leisure.csv', 'hospitality-leisure', school_dict, titles, 11)
    merge_subject_csv('csv/social/law.csv', 'law', school_dict, titles, 12)
    merge_subject_csv('csv/social/policy-admin.csv', 'policy-admin', school_dict, titles, 13)
    merge_subject_csv('csv/social/politics-international.csv', 'politics-international', school_dict, titles, 14)
    merge_subject_csv('csv/social/sociology.csv', 'sociology', school_dict, titles, 15)
    merge_subject_csv('csv/social/sports.csv', 'sports', school_dict, titles, 16)
    merge_subject_csv('csv/social/statistics-operation.csv', 'statistics-operation', school_dict, titles, 17)

    output_arr = [titles] + school_dict.values()

    output_file = open('csv_db/university-social.csv', 'w')
    with output_file:
       writer = csv.writer(output_file)
       writer.writerows(output_arr)
