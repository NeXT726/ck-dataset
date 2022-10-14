import sys

infilename = "insert-result/gp2.cache"
outfilename = "insert-result/s3-gp2.cache"
num=0

infile = open(infilename, 'r')
outfile = open(outfilename, 'w')
for line in infile.readlines():
    if num%2 == 1:
        outfile.write(line)
    num+=1
    
    
