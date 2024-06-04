# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"B226.00","system":"readv2"},{"code":"Byu5011","system":"readv2"},{"code":"1589MP","system":"readv2"},{"code":"BBP5.00","system":"readv2"},{"code":"Byu5000","system":"readv2"},{"code":"BBP1.00","system":"readv2"},{"code":"A789700","system":"readv2"},{"code":"B181.00","system":"readv2"},{"code":"1950MA","system":"readv2"},{"code":"1991MT","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('any-malignancy-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["any-malignancy-charlson-primary-care-mmesothelioma---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["any-malignancy-charlson-primary-care-mmesothelioma---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["any-malignancy-charlson-primary-care-mmesothelioma---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
