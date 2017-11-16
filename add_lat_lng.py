"""
Add longitude and latitude for all universities with geopy api
"""
from geopy.geocoders import Nominatim
from geopy.point import Point
import csv

if __name__ == '__main__':
    geolocator = Nominatim()

    with open('csv_out/principle-subjects.csv', 'r') as csvinput:
        with open('csv_out/universities.csv', 'w') as csvoutput:
            writer = csv.writer(csvoutput, lineterminator='\n')
            reader = csv.reader(csvinput)

            output_arr = []

            for row in reader:
                name = row[1]
                if row[0] == 'id':
                    # row.append('address')
                    row.append('latitude')
                    row.append('longitude')
                    row.append('country')
                    row.append('country_code')
                    # row.append('state')
                    # row.append('town')
                else:
                    location = geolocator.geocode(name)
                    if location:
                        print location.address
                        row.append(location.latitude if location else '')
                        row.append(location.longitude if location else '')
                        location = geolocator.reverse(Point(location.latitude, location.longitude), language='en')
                        # print location.raw
                        loc = location.raw
                        row.append(loc['address']['country'])
                        row.append(loc['address']['country_code'])
                        # print loc['address']
                        address = loc['address']
                        print address['country']
                    else:
                        row.append('')
                        row.append('')
                        row.append('')
                        row.append('')

                output_arr.append(row)

            writer.writerows(output_arr)
