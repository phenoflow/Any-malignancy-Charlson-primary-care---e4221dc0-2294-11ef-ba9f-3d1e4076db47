# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"B14y.00","system":"readv2"},{"code":"B24y.00","system":"readv2"},{"code":"BBm5.00","system":"readv2"},{"code":"B45..00","system":"readv2"},{"code":"B0z..00","system":"readv2"},{"code":"B2...00","system":"readv2"},{"code":"B3y..00","system":"readv2"},{"code":"ByuA300","system":"readv2"},{"code":"ZV10200","system":"readv2"},{"code":"B332z00","system":"readv2"},{"code":"B62z700","system":"readv2"},{"code":"B4A..00","system":"readv2"},{"code":"B201z00","system":"readv2"},{"code":"BBm9.00","system":"readv2"},{"code":"B52W.00","system":"readv2"},{"code":"B62z100","system":"readv2"},{"code":"ZV10000","system":"readv2"},{"code":"B315z00","system":"readv2"},{"code":"B62z000","system":"readv2"},{"code":"B62z500","system":"readv2"},{"code":"B20y.00","system":"readv2"},{"code":"B304z00","system":"readv2"},{"code":"B2z..00","system":"readv2"},{"code":"B312300","system":"readv2"},{"code":"B20..00","system":"readv2"},{"code":"B542z00","system":"readv2"},{"code":"B310z00","system":"readv2"},{"code":"B62z300","system":"readv2"},{"code":"B31y.00","system":"readv2"},{"code":"B312.00","system":"readv2"},{"code":"B201.00","system":"readv2"},{"code":"B62z600","system":"readv2"},{"code":"B313z00","system":"readv2"},{"code":"B524.00","system":"readv2"},{"code":"B52..00","system":"readv2"},{"code":"B62z800","system":"readv2"},{"code":"B312600","system":"readv2"},{"code":"B25..00","system":"readv2"},{"code":"ZV10012","system":"readv2"},{"code":"B314000","system":"readv2"},{"code":"BBmD.00","system":"readv2"},{"code":"B310.00","system":"readv2"},{"code":"BBmH.00","system":"readv2"},{"code":"B62z400","system":"readv2"},{"code":"B1z..00","system":"readv2"},{"code":"B314z00","system":"readv2"},{"code":"B311z00","system":"readv2"},{"code":"B3z..00","system":"readv2"},{"code":"B312200","system":"readv2"},{"code":"B312100","system":"readv2"},{"code":"B315300","system":"readv2"},{"code":"B500.00","system":"readv2"},{"code":"B3...00","system":"readv2"},{"code":"Byu2300","system":"readv2"},{"code":"B54..00","system":"readv2"},{"code":"B311.00","system":"readv2"},{"code":"BBVA.00","system":"readv2"},{"code":"B312z00","system":"readv2"},{"code":"ByuDA00","system":"readv2"},{"code":"Byu1300","system":"readv2"},{"code":"B316.00","system":"readv2"},{"code":"B54z.00","system":"readv2"},{"code":"B315100","system":"readv2"},{"code":"ZV10100","system":"readv2"},{"code":"B2z0.00","system":"readv2"},{"code":"B62z200","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('any-malignancy-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["any-malignancy-charlson-primary-care-neoplsm---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["any-malignancy-charlson-primary-care-neoplsm---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["any-malignancy-charlson-primary-care-neoplsm---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
