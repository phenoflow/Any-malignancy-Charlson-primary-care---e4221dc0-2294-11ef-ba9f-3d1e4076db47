# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"ByuDC00","system":"readv2"},{"code":"B621000","system":"readv2"},{"code":"B601000","system":"readv2"},{"code":"B68y.00","system":"readv2"},{"code":"B5...11","system":"readv2"},{"code":"B622000","system":"readv2"},{"code":"ByuDE00","system":"readv2"},{"code":"B610000","system":"readv2"},{"code":"C37y700","system":"readv2"},{"code":"B624000","system":"readv2"},{"code":"B625000","system":"readv2"},{"code":"B67y.00","system":"readv2"},{"code":"B600000","system":"readv2"},{"code":"B602000","system":"readv2"},{"code":"ByuFF00","system":"readv2"},{"code":"B615000","system":"readv2"},{"code":"B057.00","system":"readv2"},{"code":"B614000","system":"readv2"},{"code":"B828X00","system":"readv2"},{"code":"B807.00","system":"readv2"},{"code":"B627W00","system":"readv2"},{"code":"B613000","system":"readv2"},{"code":"ByuD900","system":"readv2"},{"code":"B54X.00","system":"readv2"},{"code":"ByuDF00","system":"readv2"},{"code":"B611000","system":"readv2"},{"code":"Byu4000","system":"readv2"},{"code":"ByuF900","system":"readv2"},{"code":"B80z.00","system":"readv2"},{"code":"B832.00","system":"readv2"},{"code":"B8y..00","system":"readv2"},{"code":"ByuFC00","system":"readv2"},{"code":"B627X00","system":"readv2"},{"code":"B836.00","system":"readv2"},{"code":"Byu5100","system":"readv2"},{"code":"B68..00","system":"readv2"},{"code":"B623000","system":"readv2"},{"code":"B616000","system":"readv2"},{"code":"B620000","system":"readv2"},{"code":"Byu4100","system":"readv2"},{"code":"B828W00","system":"readv2"},{"code":"B323.00","system":"readv2"},{"code":"B833.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('any-malignancy-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["any-malignancy-charlson-primary-care-unspecif---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["any-malignancy-charlson-primary-care-unspecif---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["any-malignancy-charlson-primary-care-unspecif---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
