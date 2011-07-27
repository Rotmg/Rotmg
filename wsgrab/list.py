#!/usr/bin/python

import urllib2
import os
import sys

import checksums

uo = urllib2.urlopen("http://realmofthemadgod.appspot.com/picture/list",'dataType=2&guid=administrator%40wildshadow%2Ecom&myGUID=D9C87C410C4711DB3757A6C42F919D00331C3273&num=2400&offset=0&ignore=193370')

from lxml import etree

d = uo.read()
print d
root = etree.fromstring(d)


for pic in root.xpath("//Pic"):
    id = pic.get("id")
    name= pic.find("PicName").text

    fn = os.path.join(os.path.dirname(sys.argv[0]),"pics","%s.png" % id)
    if not os.path.exists(fn):
        print "Fetching %s" % id
        o = urllib2.urlopen("http://realmofthemadgod.appspot.com/picture/get",'id=%s&ignore=123123' % id)
        with open(fn,"wb") as f:
            f.write(o.read())

    print "$dict.Add(%s,'%s')" % (checksums.get_checksum(fn),name)
    #print id,name,checksums.get_checksum(fn)

    
