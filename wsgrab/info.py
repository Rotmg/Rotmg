from lxml import etree


def obj_hash():
    root = etree.fromstring(open("info.xml","rb").read())
    for object in root.xpath("//Object"):
        name = object.get("id")
        try:
            tier = object.find("Tier").text
        except:
            tier = 0
            continue
        slot = object.find("SlotType").text

        print """$tier_dict.Add("%s",%s)""" % (name,tier)
        print """$slot_dict.Add("%s",%s)""" % (name,slot)

        #print name,tier,slot
    

obj_hash()

