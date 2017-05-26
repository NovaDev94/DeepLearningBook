import sys
import csv

with open(sys.argv[1], 'r') as f:
    reader = csv.DictReader(f)
    for row in reader:
        print 'BookmarkBegin'
        print 'BookmarkTitle: %s' % row['Title']
        print 'BookmarkLevel: %s' % row['Level']
        print 'BookmarkPageNumber: %s' % row['PageNumber']
