import sys

infilename = "/home/ubuntu/ssb-data/customer.tbl"
outfilename = "data/customer"
num=0
counts = 0

infile = open(infilename, 'r')
for line in infile.readlines():
    if counts%100 == 0:
        num += 1
        if num > 128:
            break
        outfile = open(outfilename + str(num), 'w')
    outfile.write(line)
    counts+=1
    
    
