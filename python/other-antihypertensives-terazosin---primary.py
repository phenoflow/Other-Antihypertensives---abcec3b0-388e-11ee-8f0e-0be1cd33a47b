# David A Springate, Darren M Aschroft, Evangelos Kontopantelis, Tim Doran, Ronan Ryan, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"3470","system":"gprdproduct"},{"code":"41721","system":"gprdproduct"},{"code":"4637","system":"gprdproduct"},{"code":"46922","system":"gprdproduct"},{"code":"4694","system":"gprdproduct"},{"code":"4875","system":"gprdproduct"},{"code":"591","system":"gprdproduct"},{"code":"726","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('other-antihypertensives-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["other-antihypertensives-terazosin---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["other-antihypertensives-terazosin---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["other-antihypertensives-terazosin---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
