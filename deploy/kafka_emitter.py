import random

def user_defined_function(args):
    while True:
        with open('../data/processed/pt_info_clean.csv', newline='') as f:
            reader = csv.reader(f)
            row1 = reader.iloc[random.random()]
        yield str(row1)
