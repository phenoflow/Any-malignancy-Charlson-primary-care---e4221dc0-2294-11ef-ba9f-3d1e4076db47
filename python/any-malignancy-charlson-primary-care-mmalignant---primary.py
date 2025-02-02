# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"BBLC100","system":"readv2"},{"code":"BBQ7213","system":"readv2"},{"code":"BBb0.00","system":"readv2"},{"code":"1942AM","system":"readv2"},{"code":"BB5B300","system":"readv2"},{"code":"BBGJ.00","system":"readv2"},{"code":"1729L","system":"readv2"},{"code":"BBQA100","system":"readv2"},{"code":"193 AG","system":"readv2"},{"code":"BB5D512","system":"readv2"},{"code":"1924NF","system":"readv2"},{"code":"1551A","system":"readv2"},{"code":"1601AC","system":"readv2"},{"code":"BBD1.00","system":"readv2"},{"code":"1719FB","system":"readv2"},{"code":"BBX1.12","system":"readv2"},{"code":"BBW8.00","system":"readv2"},{"code":"1925GN","system":"readv2"},{"code":"B911000","system":"readv2"},{"code":"BBDA.00","system":"readv2"},{"code":"BB5B500","system":"readv2"},{"code":"F373.00","system":"readv2"},{"code":"BBe7.00","system":"readv2"},{"code":"1719LM","system":"readv2"},{"code":"A220.11","system":"readv2"},{"code":"F122.00","system":"readv2"},{"code":"BBB6100","system":"readv2"},{"code":"SN5y100","system":"readv2"},{"code":"BBTD200","system":"readv2"},{"code":"F396200","system":"readv2"},{"code":"BBe7.11","system":"readv2"},{"code":"BBZG.11","system":"readv2"},{"code":"BBT7100","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('any-malignancy-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["any-malignancy-charlson-primary-care-mmalignant---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["any-malignancy-charlson-primary-care-mmalignant---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["any-malignancy-charlson-primary-care-mmalignant---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
