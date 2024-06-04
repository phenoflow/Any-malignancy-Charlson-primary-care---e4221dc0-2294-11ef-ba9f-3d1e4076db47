# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"174 DC","system":"readv2"},{"code":"BB5..11","system":"readv2"},{"code":"1890AD","system":"readv2"},{"code":"1830AU","system":"readv2"},{"code":"BB82112","system":"readv2"},{"code":"BB5F.00","system":"readv2"},{"code":"BB84.00","system":"readv2"},{"code":"BB51.00","system":"readv2"},{"code":"BB5J.11","system":"readv2"},{"code":"BB82114","system":"readv2"},{"code":"BB82111","system":"readv2"},{"code":"185 CA","system":"readv2"},{"code":"1991AD","system":"readv2"},{"code":"BB5S200","system":"readv2"},{"code":"1830AD","system":"readv2"},{"code":"BBB3.00","system":"readv2"},{"code":"BBB2.00","system":"readv2"},{"code":"1538AD","system":"readv2"},{"code":"BB5W112","system":"readv2"},{"code":"BB54.00","system":"readv2"},{"code":"174 DL","system":"readv2"},{"code":"1519DA","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('any-malignancy-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["adenocarcinomatous-any-malignancy-charlson-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["adenocarcinomatous-any-malignancy-charlson-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["adenocarcinomatous-any-malignancy-charlson-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
