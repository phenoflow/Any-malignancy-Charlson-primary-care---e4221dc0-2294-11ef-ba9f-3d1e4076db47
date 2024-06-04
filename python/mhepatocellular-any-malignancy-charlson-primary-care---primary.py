# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"BB08.00","system":"readv2"},{"code":"BB5B600","system":"readv2"},{"code":"BB24.12","system":"readv2"},{"code":"BB5B100","system":"readv2"},{"code":"BB33.00","system":"readv2"},{"code":"BB5y000","system":"readv2"},{"code":"BBX1.00","system":"readv2"},{"code":"BB07.00","system":"readv2"},{"code":"BB2J.00","system":"readv2"},{"code":"BBK3300","system":"readv2"},{"code":"BB26.00","system":"readv2"},{"code":"B338.00","system":"readv2"},{"code":"BB1M.00","system":"readv2"},{"code":"B62F100","system":"readv2"},{"code":"BB2G.00","system":"readv2"},{"code":"BB1K.00","system":"readv2"},{"code":"BB5V711","system":"readv2"},{"code":"BB1P.00","system":"readv2"},{"code":"BB3C.00","system":"readv2"},{"code":"BB1D.00","system":"readv2"},{"code":"BBn3.00","system":"readv2"},{"code":"B62E200","system":"readv2"},{"code":"BBg4.00","system":"readv2"},{"code":"BB1F.00","system":"readv2"},{"code":"BBgV.00","system":"readv2"},{"code":"BBEP.00","system":"readv2"},{"code":"BB5X.00","system":"readv2"},{"code":"BB5D800","system":"readv2"},{"code":"B33..11","system":"readv2"},{"code":"B627A00","system":"readv2"},{"code":"44a4.00","system":"readv2"},{"code":"BBE4.00","system":"readv2"},{"code":"BBCA.00","system":"readv2"},{"code":"BBgS.00","system":"readv2"},{"code":"BBgP.00","system":"readv2"},{"code":"BB34.00","system":"readv2"},{"code":"B62E100","system":"readv2"},{"code":"186 AN","system":"readv2"},{"code":"1739B","system":"readv2"},{"code":"BB1N.00","system":"readv2"},{"code":"BB85000","system":"readv2"},{"code":"BB5D513","system":"readv2"},{"code":"B627400","system":"readv2"},{"code":"BBCC100","system":"readv2"},{"code":"2062.00","system":"readv2"},{"code":"BBA2.00","system":"readv2"},{"code":"BB5W111","system":"readv2"},{"code":"B631.00","system":"readv2"},{"code":"BB3E.00","system":"readv2"},{"code":"BB5S211","system":"readv2"},{"code":"1739CS","system":"readv2"},{"code":"B67y000","system":"readv2"},{"code":"B81y500","system":"readv2"},{"code":"C37yB00","system":"readv2"},{"code":"B33z100","system":"readv2"},{"code":"BB1J.12","system":"readv2"},{"code":"BB5D700","system":"readv2"},{"code":"2070BM","system":"readv2"},{"code":"BBgM.00","system":"readv2"},{"code":"186 NT","system":"readv2"},{"code":"B627300","system":"readv2"},{"code":"1739BP","system":"readv2"},{"code":"B150300","system":"readv2"},{"code":"1739CM","system":"readv2"},{"code":"BBj7.00","system":"readv2"},{"code":"BBX3.00","system":"readv2"},{"code":"BB5RA00","system":"readv2"},{"code":"BB2F.00","system":"readv2"},{"code":"1608CM","system":"readv2"},{"code":"7G05D00","system":"readv2"},{"code":"BB09.00","system":"readv2"},{"code":"2079PC","system":"readv2"},{"code":"B62F000","system":"readv2"},{"code":"BBES.00","system":"readv2"},{"code":"BB1C.00","system":"readv2"},{"code":"BB1G.00","system":"readv2"},{"code":"BBgT.00","system":"readv2"},{"code":"BBB4.00","system":"readv2"},{"code":"BB1B.00","system":"readv2"},{"code":"BBC4.00","system":"readv2"},{"code":"BB32.00","system":"readv2"},{"code":"BB5a000","system":"readv2"},{"code":"BB3D.00","system":"readv2"},{"code":"BB3F.00","system":"readv2"},{"code":"BB2A.12","system":"readv2"},{"code":"B627500","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('any-malignancy-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["mhepatocellular-any-malignancy-charlson-primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["mhepatocellular-any-malignancy-charlson-primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["mhepatocellular-any-malignancy-charlson-primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
