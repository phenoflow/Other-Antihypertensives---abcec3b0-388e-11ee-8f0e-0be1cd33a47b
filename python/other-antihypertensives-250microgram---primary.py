# David A Springate, Darren M Aschroft, Evangelos Kontopantelis, Tim Doran, Ronan Ryan, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"10253","system":"gprdproduct"},{"code":"11177","system":"gprdproduct"},{"code":"1455","system":"gprdproduct"},{"code":"14932","system":"gprdproduct"},{"code":"16248","system":"gprdproduct"},{"code":"20656","system":"gprdproduct"},{"code":"20690","system":"gprdproduct"},{"code":"21502","system":"gprdproduct"},{"code":"22853","system":"gprdproduct"},{"code":"23380","system":"gprdproduct"},{"code":"24369","system":"gprdproduct"},{"code":"25047","system":"gprdproduct"},{"code":"26237","system":"gprdproduct"},{"code":"2630","system":"gprdproduct"},{"code":"2878","system":"gprdproduct"},{"code":"30293","system":"gprdproduct"},{"code":"31109","system":"gprdproduct"},{"code":"33093","system":"gprdproduct"},{"code":"33322","system":"gprdproduct"},{"code":"338","system":"gprdproduct"},{"code":"34080","system":"gprdproduct"},{"code":"35058","system":"gprdproduct"},{"code":"35312","system":"gprdproduct"},{"code":"35466","system":"gprdproduct"},{"code":"35925","system":"gprdproduct"},{"code":"36282","system":"gprdproduct"},{"code":"40310","system":"gprdproduct"},{"code":"4111","system":"gprdproduct"},{"code":"41651","system":"gprdproduct"},{"code":"41652","system":"gprdproduct"},{"code":"4215","system":"gprdproduct"},{"code":"42462","system":"gprdproduct"},{"code":"43531","system":"gprdproduct"},{"code":"43547","system":"gprdproduct"},{"code":"445","system":"gprdproduct"},{"code":"44553","system":"gprdproduct"},{"code":"45578","system":"gprdproduct"},{"code":"4993","system":"gprdproduct"},{"code":"6694","system":"gprdproduct"},{"code":"7174","system":"gprdproduct"},{"code":"9749","system":"gprdproduct"},{"code":"9876","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('other-antihypertensives-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["other-antihypertensives-250microgram---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["other-antihypertensives-250microgram---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["other-antihypertensives-250microgram---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
