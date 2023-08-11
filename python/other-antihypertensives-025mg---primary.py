# David A Springate, Darren M Aschroft, Evangelos Kontopantelis, Tim Doran, Ronan Ryan, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"10713","system":"gprdproduct"},{"code":"10714","system":"gprdproduct"},{"code":"11394","system":"gprdproduct"},{"code":"19823","system":"gprdproduct"},{"code":"2346","system":"gprdproduct"},{"code":"36780","system":"gprdproduct"},{"code":"3715","system":"gprdproduct"},{"code":"3923","system":"gprdproduct"},{"code":"3924","system":"gprdproduct"},{"code":"40256","system":"gprdproduct"},{"code":"5289","system":"gprdproduct"},{"code":"5337","system":"gprdproduct"},{"code":"5815","system":"gprdproduct"},{"code":"8198","system":"gprdproduct"},{"code":"8296","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('other-antihypertensives-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["other-antihypertensives-025mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["other-antihypertensives-025mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["other-antihypertensives-025mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
