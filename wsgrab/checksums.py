from PIL import Image
import zlib



def get_colors(filename):
    im = Image.open(filename)
    
    width,height = im.size

    result = []
    for i in range(2,8):
        for j in range(0,5):
            p = im.getpixel((i,j))
            if p[3] == 0:
                continue
            
        
            result.append( p[2] + p[1] * 256 + p[0] * 256 * 256)
        
    return result

def get_checksum(filename):
    res = get_colors(filename)
    return zlib.crc32("+" + "+".join((str(x) for x in res))) & 0xFFFFFFFF


import os

#9212345
"""
res = []
for f in os.listdir("pics"):
    print f,get_checksum(os.path.join("pics",f))
    if get_checksum(os.path.join("pics",f)) == 2807205115:
        print "Yay"
        break
    res.extend(get_colors(os.path.join("pics",f)))
""" 

res= get_colors("pics/9157313.png") 
print zlib.crc32("+" + "+".join((str(x) for x in res))) & 0xFFFFFFFF
#print len(res)
print "\n".join((str(x) for x in res))
#res = set(res)

#print len(res)
#print res

