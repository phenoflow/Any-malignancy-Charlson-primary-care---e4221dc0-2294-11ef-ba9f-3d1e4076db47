# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"B66z.00","system":"readv2"},{"code":"B623z00","system":"readv2"},{"code":"BBg6.00","system":"readv2"},{"code":"BBG1.00","system":"readv2"},{"code":"B8z..00","system":"readv2"},{"code":"BBh0.00","system":"readv2"},{"code":"BBk0.00","system":"readv2"},{"code":"BBV1.00","system":"readv2"},{"code":"BBF3.00","system":"readv2"},{"code":"B325z00","system":"readv2"},{"code":"BBj0.00","system":"readv2"},{"code":"BB9B.00","system":"readv2"},{"code":"BBLH.00","system":"readv2"},{"code":"BB5X100","system":"readv2"},{"code":"BBK2z00","system":"readv2"},{"code":"B67yz00","system":"readv2"},{"code":"B801z00","system":"readv2"},{"code":"BB80z00","system":"readv2"},{"code":"B66yz00","system":"readv2"},{"code":"B59zX00","system":"readv2"},{"code":"BBE1.13","system":"readv2"},{"code":"150 B","system":"readv2"},{"code":"BB4z.00","system":"readv2"},{"code":"BBLD.00","system":"readv2"},{"code":"BBL4.00","system":"readv2"},{"code":"BBV1.13","system":"readv2"},{"code":"BB24.00","system":"readv2"},{"code":"BB5T100","system":"readv2"},{"code":"BBF..00","system":"readv2"},{"code":"BBgC.00","system":"readv2"},{"code":"B808z00","system":"readv2"},{"code":"BBg3.00","system":"readv2"},{"code":"BBF6.00","system":"readv2"},{"code":"B61z700","system":"readv2"},{"code":"B681.00","system":"readv2"},{"code":"B624z00","system":"readv2"},{"code":"BB81200","system":"readv2"},{"code":"BB81500","system":"readv2"},{"code":"B62zz00","system":"readv2"},{"code":"BBk0.12","system":"readv2"},{"code":"B33z.11","system":"readv2"},{"code":"BBN5.00","system":"readv2"},{"code":"BBg..00","system":"readv2"},{"code":"BBn2.00","system":"readv2"},{"code":"BBgC.11","system":"readv2"},{"code":"B600z00","system":"readv2"},{"code":"BB53.00","system":"readv2"},{"code":"B653100","system":"readv2"},{"code":"BBgz.00","system":"readv2"},{"code":"BBE1.12","system":"readv2"},{"code":"B621z00","system":"readv2"},{"code":"B65yz00","system":"readv2"},{"code":"BBX1.11","system":"readv2"},{"code":"BBkz.00","system":"readv2"},{"code":"BBgR.00","system":"readv2"},{"code":"BBgC.12","system":"readv2"},{"code":"BB9M.00","system":"readv2"},{"code":"BB5jz00","system":"readv2"},{"code":"BBV..13","system":"readv2"},{"code":"BB90.00","system":"readv2"},{"code":"BBQ7200","system":"readv2"},{"code":"BB9F.00","system":"readv2"},{"code":"BB5cz00","system":"readv2"},{"code":"BB29.12","system":"readv2"},{"code":"BBTA.00","system":"readv2"},{"code":"B62y700","system":"readv2"},{"code":"BB93.00","system":"readv2"},{"code":"BB5Vz00","system":"readv2"},{"code":"BB12.00","system":"readv2"},{"code":"BB11.00","system":"readv2"},{"code":"B68z.00","system":"readv2"},{"code":"BBN2.00","system":"readv2"},{"code":"BBN4.00","system":"readv2"},{"code":"B812z00","system":"readv2"},{"code":"BBgL.00","system":"readv2"},{"code":"BBgB.00","system":"readv2"},{"code":"BBf2.00","system":"readv2"},{"code":"B936.12","system":"readv2"},{"code":"BBg5.00","system":"readv2"},{"code":"B615z00","system":"readv2"},{"code":"BBF5.11","system":"readv2"},{"code":"B602z00","system":"readv2"},{"code":"B825100","system":"readv2"},{"code":"BBF1.00","system":"readv2"},{"code":"Byu5200","system":"readv2"},{"code":"BB2A.00","system":"readv2"},{"code":"BB5Xz00","system":"readv2"},{"code":"B65z.00","system":"readv2"},{"code":"B810z00","system":"readv2"},{"code":"B31z000","system":"readv2"},{"code":"B32z.00","system":"readv2"},{"code":"1538B","system":"readv2"},{"code":"B806.00","system":"readv2"},{"code":"BB2A.11","system":"readv2"},{"code":"BBgD.00","system":"readv2"},{"code":"B62yz00","system":"readv2"},{"code":"BB91.11","system":"readv2"},{"code":"2000.00","system":"readv2"},{"code":"BB5az00","system":"readv2"},{"code":"BB31.00","system":"readv2"},{"code":"B610z00","system":"readv2"},{"code":"BB43.00","system":"readv2"},{"code":"BB5Bz00","system":"readv2"},{"code":"188 RC","system":"readv2"},{"code":"BBF5.00","system":"readv2"},{"code":"B61z.00","system":"readv2"},{"code":"B680.00","system":"readv2"},{"code":"B3...12","system":"readv2"},{"code":"BBgK.00","system":"readv2"},{"code":"B323z00","system":"readv2"},{"code":"BB80100","system":"readv2"},{"code":"BB22.00","system":"readv2"},{"code":"B682.00","system":"readv2"},{"code":"1709D","system":"readv2"},{"code":"B61zz00","system":"readv2"},{"code":"B62A.00","system":"readv2"},{"code":"BBEQ.00","system":"readv2"},{"code":"BBLJ.00","system":"readv2"},{"code":"B326z00","system":"readv2"},{"code":"BBK3100","system":"readv2"},{"code":"C333z00","system":"readv2"},{"code":"B82z.00","system":"readv2"},{"code":"BB2A.13","system":"readv2"},{"code":"BB69z00","system":"readv2"},{"code":"1550BP","system":"readv2"},{"code":"B67z.00","system":"readv2"},{"code":"B612z00","system":"readv2"},{"code":"BB5Dz00","system":"readv2"},{"code":"1529B","system":"readv2"},{"code":"BB1J.00","system":"readv2"},{"code":"BBVz.00","system":"readv2"},{"code":"B803z00","system":"readv2"},{"code":"BBLA.00","system":"readv2"},{"code":"B322z00","system":"readv2"},{"code":"BBJ1.00","system":"readv2"},{"code":"B64z.00","system":"readv2"},{"code":"BBQ3.00","system":"readv2"},{"code":"BBM8.00","system":"readv2"},{"code":"B33z000","system":"readv2"},{"code":"BB5Uz00","system":"readv2"},{"code":"B827z00","system":"readv2"},{"code":"BB81E00","system":"readv2"},{"code":"BB5f100","system":"readv2"},{"code":"BBF4.00","system":"readv2"},{"code":"1890R","system":"readv2"},{"code":"BBjz.00","system":"readv2"},{"code":"BBY0.11","system":"readv2"},{"code":"B612.00","system":"readv2"},{"code":"BBN1.00","system":"readv2"},{"code":"BB5D500","system":"readv2"},{"code":"B804z00","system":"readv2"},{"code":"1520B","system":"readv2"},{"code":"Byu5300","system":"readv2"},{"code":"BBp1.00","system":"readv2"},{"code":"BBF2.00","system":"readv2"},{"code":"B611z00","system":"readv2"},{"code":"BBgJ.11","system":"readv2"},{"code":"BBK0200","system":"readv2"},{"code":"BBY0.00","system":"readv2"},{"code":"1719B","system":"readv2"},{"code":"B622z00","system":"readv2"},{"code":"BB5Cz00","system":"readv2"},{"code":"BB5fz00","system":"readv2"},{"code":"BBgJ.00","system":"readv2"},{"code":"BBL0.00","system":"readv2"},{"code":"BBj6.00","system":"readv2"},{"code":"B616z00","system":"readv2"},{"code":"BBlz.00","system":"readv2"},{"code":"B626z00","system":"readv2"},{"code":"BBFz.00","system":"readv2"},{"code":"BBE1.00","system":"readv2"},{"code":"B61z.11","system":"readv2"},{"code":"B620z00","system":"readv2"},{"code":"BB82z00","system":"readv2"},{"code":"BB5Wz00","system":"readv2"},{"code":"B807z00","system":"readv2"},{"code":"Byu5B00","system":"readv2"},{"code":"A789500","system":"readv2"},{"code":"BBg1000","system":"readv2"},{"code":"BBd2.12","system":"readv2"},{"code":"B324z00","system":"readv2"},{"code":"1519B","system":"readv2"},{"code":"B613z00","system":"readv2"},{"code":"B802z00","system":"readv2"},{"code":"BB5z.00","system":"readv2"},{"code":"B935.11","system":"readv2"},{"code":"BB17.00","system":"readv2"},{"code":"BB62z00","system":"readv2"},{"code":"B83z.00","system":"readv2"},{"code":"BB85z00","system":"readv2"},{"code":"2022GR","system":"readv2"},{"code":"BBrA312","system":"readv2"},{"code":"B800z00","system":"readv2"},{"code":"B627C11","system":"readv2"},{"code":"B8yyz00","system":"readv2"},{"code":"B05z000","system":"readv2"},{"code":"BBGM.00","system":"readv2"},{"code":"B327z00","system":"readv2"},{"code":"B60z.00","system":"readv2"},{"code":"B601z00","system":"readv2"},{"code":"B62D.00","system":"readv2"},{"code":"BB18.00","system":"readv2"},{"code":"BBV1.11","system":"readv2"},{"code":"B62y000","system":"readv2"},{"code":"B833z00","system":"readv2"},{"code":"B64yz00","system":"readv2"},{"code":"BBd2.11","system":"readv2"},{"code":"B826z00","system":"readv2"},{"code":"BBW4.00","system":"readv2"},{"code":"BB29.00","system":"readv2"},{"code":"BBgG.00","system":"readv2"},{"code":"186 RC","system":"readv2"},{"code":"B653z00","system":"readv2"},{"code":"BBF4.11","system":"readv2"},{"code":"B935.12","system":"readv2"},{"code":"B614z00","system":"readv2"},{"code":"B625z00","system":"readv2"},{"code":"BBDB.11","system":"readv2"},{"code":"B822z00","system":"readv2"},{"code":"BB5P.00","system":"readv2"},{"code":"B825z00","system":"readv2"},{"code":"ByuDF11","system":"readv2"},{"code":"BBL9.00","system":"readv2"},{"code":"BBg1.00","system":"readv2"},{"code":"1550BH","system":"readv2"},{"code":"BB5Mz00","system":"readv2"},{"code":"B612700","system":"readv2"},{"code":"BB19.00","system":"readv2"},{"code":"B61z000","system":"readv2"},{"code":"BBg1.11","system":"readv2"},{"code":"B651z00","system":"readv2"},{"code":"BB52.00","system":"readv2"},{"code":"BBp0.00","system":"readv2"},{"code":"B62y.00","system":"readv2"},{"code":"BB5Tz00","system":"readv2"},{"code":"B612000","system":"readv2"},{"code":"B630200","system":"readv2"},{"code":"B653.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('any-malignancy-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["any-malignancy-charlson-primary-care-mcarcinosarcoma---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["any-malignancy-charlson-primary-care-mcarcinosarcoma---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["any-malignancy-charlson-primary-care-mcarcinosarcoma---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
