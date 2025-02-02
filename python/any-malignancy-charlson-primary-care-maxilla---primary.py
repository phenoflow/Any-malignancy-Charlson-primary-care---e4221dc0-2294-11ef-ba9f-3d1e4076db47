# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"B602400","system":"readv2"},{"code":"B613400","system":"readv2"},{"code":"B611400","system":"readv2"},{"code":"B626400","system":"readv2"},{"code":"B62y400","system":"readv2"},{"code":"B601400","system":"readv2"},{"code":"B621400","system":"readv2"},{"code":"B623400","system":"readv2"},{"code":"B81y600","system":"readv2"},{"code":"B614400","system":"readv2"},{"code":"B825200","system":"readv2"},{"code":"B622400","system":"readv2"},{"code":"B620400","system":"readv2"},{"code":"B61z400","system":"readv2"},{"code":"B616400","system":"readv2"},{"code":"B625400","system":"readv2"},{"code":"B612400","system":"readv2"},{"code":"B325000","system":"readv2"},{"code":"B610400","system":"readv2"},{"code":"B624400","system":"readv2"},{"code":"B600400","system":"readv2"},{"code":"B615400","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('any-malignancy-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["any-malignancy-charlson-primary-care-maxilla---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["any-malignancy-charlson-primary-care-maxilla---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["any-malignancy-charlson-primary-care-maxilla---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
