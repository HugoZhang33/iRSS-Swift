//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var summary = "<p><a href=\"http://news.yahoo.com/apple-launch-watch-seven-more-countries-june-26-130957123--finance.html\"><img src=\"http://l3.yimg.com/bt/api/res/1.2/mlZWVrpjoLFgo0aCwVVqjw--/YXBwaWQ9eW5ld3M7Zmk9ZmlsbDtoPTg2O3E9NzU7dz0xMzA-/http://media.zenfs.com/en_us/News/Reuters/2015-06-04T151319Z_2_LYNXMPEB530N8_RTROPTP_2_APPLE-WATCH-LAUNCH.JPG\" width=\"130\" height=\"86\" alt=\"Customer Hajime Shimada uses his newly purchased Apple Watch in front of Dover Street Market Ginza in Tokyo\" align=\"left\" title=\"Customer Hajime Shimada uses his newly purchased Apple Watch in front of Dover Street Market Ginza in Tokyo\" border=\"0\" /></a>(Reuters) - Apple Inc said it would start selling some models of its watch at its retail stores this month, and also roll out the gadget in seven more countries. The watch has been on display in Apple stores around the world since April 10, when it became available for preorder online and at shops including trendy fashion boutiques in Paris, London and Tokyo. Apple had directed people to order online, preventing long queues around its stores that have become a norm with the company&#039;s rollout of new products.</p><br clear=\"all\"/>"


var imgUrl = summary.componentsSeparatedByString("<img src=\"")

imgUrl = imgUrl[1].componentsSeparatedByString("</a>")


var url = imgUrl[0].componentsSeparatedByString("\"")[0]

["http://l3.yimg.com/bt/api/res/1.2/mlZWVrpjoLFgo0aCwVVqjw--/YXBwaWQ9eW5ld3M7Zmk9ZmlsbDtoPTg2O3E9NzU7dz0xMzA-/http://media.zenfs.com/en_us/News/Reuters/2015-06-04T151319Z_2_LYNXMPEB530N8_RTROPTP_2_APPLE-WATCH-LAUNCH.JPG", " width=", "130", " height=", "86", " alt=", "Customer Hajime Shimada uses his newly purchased Apple Watch in front of Dover Street Market Ginza in Tokyo", " align=", "left", " title=", "Customer Hajime Shimada uses his newly purchased Apple Watch in front of Dover Street Market Ginza in Tokyo", " border=", "0", " />"]


var text = imgUrl[1].componentsSeparatedByString("</p>")[0]


