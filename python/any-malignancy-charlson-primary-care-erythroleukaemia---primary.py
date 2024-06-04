# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"2050PM","system":"readv2"},{"code":"2051MC","system":"readv2"},{"code":"B641.11","system":"readv2"},{"code":"2060.00","system":"readv2"},{"code":"ByuD700","system":"readv2"},{"code":"2041.00","system":"readv2"},{"code":"B64y500","system":"readv2"},{"code":"B66y000","system":"readv2"},{"code":"2059BA","system":"readv2"},{"code":"2079.00","system":"readv2"},{"code":"2070.00","system":"readv2"},{"code":"2059E","system":"readv2"},{"code":"ZV10612","system":"readv2"},{"code":"2050.00","system":"readv2"},{"code":"B64y.00","system":"readv2"},{"code":"ByuD800","system":"readv2"},{"code":"B660.00","system":"readv2"},{"code":"B65y000","system":"readv2"},{"code":"2072EL","system":"readv2"},{"code":"2050MM","system":"readv2"},{"code":"B64..11","system":"readv2"},{"code":"2071.00","system":"readv2"},{"code":"B64..00","system":"readv2"},{"code":"B651.00","system":"readv2"},{"code":"B690.00","system":"readv2"},{"code":"B66..11","system":"readv2"},{"code":"B67..00","system":"readv2"},{"code":"B691.00","system":"readv2"},{"code":"B662.00","system":"readv2"},{"code":"B640.00","system":"readv2"},{"code":"B692.00","system":"readv2"},{"code":"ZV10613","system":"readv2"},{"code":"B66..00","system":"readv2"},{"code":"2040.00","system":"readv2"},{"code":"ZV10600","system":"readv2"},{"code":"B641.00","system":"readv2"},{"code":"B650.00","system":"readv2"},{"code":"B65..00","system":"readv2"},{"code":"B69..00","system":"readv2"},{"code":"2059MC","system":"readv2"},{"code":"2079MK","system":"readv2"},{"code":"B672.11","system":"readv2"},{"code":"2061.00","system":"readv2"},{"code":"B64y200","system":"readv2"},{"code":"B64y000","system":"readv2"},{"code":"B65y100","system":"readv2"},{"code":"2049.00","system":"readv2"},{"code":"2051.00","system":"readv2"},{"code":"B672.00","system":"readv2"},{"code":"B66..12","system":"readv2"},{"code":"2059M","system":"readv2"},{"code":"B670.00","system":"readv2"},{"code":"2070MG","system":"readv2"},{"code":"2079AL","system":"readv2"},{"code":"B651.11","system":"readv2"},{"code":"B652.00","system":"readv2"},{"code":"ZV10611","system":"readv2"},{"code":"ByuD500","system":"readv2"},{"code":"2069.00","system":"readv2"},{"code":"BBr2700","system":"readv2"},{"code":"2051GR","system":"readv2"},{"code":"B661.00","system":"readv2"},{"code":"B651000","system":"readv2"},{"code":"B65y.00","system":"readv2"},{"code":"B66y.00","system":"readv2"},{"code":"B642.00","system":"readv2"},{"code":"ByuD600","system":"readv2"},{"code":"B64y100","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('any-malignancy-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["any-malignancy-charlson-primary-care-erythroleukaemia---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["any-malignancy-charlson-primary-care-erythroleukaemia---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["any-malignancy-charlson-primary-care-erythroleukaemia---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
