# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"B620.11","system":"readv2"},{"code":"BBk2.00","system":"readv2"},{"code":"B628400","system":"readv2"},{"code":"2020FB","system":"readv2"},{"code":"2020.00","system":"readv2"},{"code":"B627100","system":"readv2"},{"code":"B627200","system":"readv2"},{"code":"2020FR","system":"readv2"},{"code":"BB5f600","system":"readv2"},{"code":"2020FL","system":"readv2"},{"code":"B628100","system":"readv2"},{"code":"B62F.00","system":"readv2"},{"code":"BBk7.00","system":"readv2"},{"code":"B627000","system":"readv2"},{"code":"BBk0.13","system":"readv2"},{"code":"B627B00","system":"readv2"},{"code":"BBk..00","system":"readv2"},{"code":"B627C00","system":"readv2"},{"code":"B628.00","system":"readv2"},{"code":"B628200","system":"readv2"},{"code":"BB5f111","system":"readv2"},{"code":"B62F.11","system":"readv2"},{"code":"BB5f200","system":"readv2"},{"code":"B628300","system":"readv2"},{"code":"B628000","system":"readv2"},{"code":"ByuD100","system":"readv2"},{"code":"B628700","system":"readv2"},{"code":"BB5f300","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('any-malignancy-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["nonfollicular-any-malignancy-charlson-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["nonfollicular-any-malignancy-charlson-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["nonfollicular-any-malignancy-charlson-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
