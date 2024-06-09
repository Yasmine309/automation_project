import csv


def read_csv_file(filepath):
    data = []
    with open(filepath, newline='') as file:
        reader = csv.reader(file)
        for row in reader:
            data.append(row)
    return data
