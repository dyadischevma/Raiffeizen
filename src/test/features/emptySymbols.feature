@all
Feature: Get foreign exchange rates for all

#Тесты на отсутствие тега synmbol вынес в отдельный файл, т.к. много данных.
#Естественно, если бы данные получали динамически, этого делать бы не пришлось
#Еще желательно проверить как себя поведет система с symbols = "", но тестов и так получилось много

@correct
Scenario: Get rates for empty symbols for first availeble date
      Given historical foreign rates for 1999-01-01
      |ANG|2.086282|
      |AUD|1.918776|
      |AWG|2.086282|
      |BBD|2.343251|
      |BMD|1.171626|
      |BRL|1.412372|
      |BSD|1.171626|
      |CAD|1.805443|
      |CHF|1.611044|
      |CNY|9.689343|
      |DKK|7.471248|
      |EUR|1|
      |FKP|0.707213|
      |GBP|0.706421|
      |HKD|9.104122|
      |INR|49.836962|
      |JPY|133.151679|
      |KPW|1054.463015|
      |KRW|1416.618059|
      |MXN|11.599099|
      |MYR|4.445915|
      |NOK|8.905698|
      |NZD|2.194333|
      |PAB|1.171626|
      |SAR|4.394498|
      |SEK|9.511108|
      |SGD|1.939455|
      |SHP|0.707213|
      |THB|42.848374|
      |TWD|37.801368|
      |USD|1.171626|
      |ZAR|6.901355|
      Then i have historical rates response for all

@correct
Scenario: Get rates for empty symbols for yesterday
      Given historical foreign rates for yesterday
      |AED|4.205277|
      |AFN|83.293788|
      |ALL|125.934192|
      |AMD|553.124478|
      |ANG|2.111685|
      |AOA|307.507947|
      |ARS|34.15672|
      |AUD|1.564789|
      |AWG|2.05272|
      |AZN|1.949116|
      |BAM|1.825014|
      |BBD|2.29085|
      |BDT|96.732066|
      |BGN|1.95713|
      |BHD|0.431804|
      |BIF|2043.561636|
      |BMD|1.144852|
      |BND|1.729282|
      |BOB|7.910187|
      |BRL|4.477065|
      |BSD|1.144566|
      |BTC|0.000176|
      |BTN|79.984276|
      |BWP|12.453137|
      |BYN|2.346891|
      |BYR|22439.10816|
      |BZD|2.300586|
      |CAD|1.497868|
      |CDF|1848.937133|
      |CHF|1.139827|
      |CLF|0.025878|
      |CLP|764.422464|
      |CNY|7.873842|
      |COP|3463.808352|
      |CRC|649.372214|
      |CUC|1.144852|
      |CUP|1.144452|
      |CVE|111.258484|
      |CZK|25.719001|
      |DJF|203.463629|
      |DKK|7.464099|
      |DOP|56.96218|
      |DZD|136.031819|
      |EGP|20.468863|
      |ERN|17.173197|
      |ETB|31.706735|
      |EUR|1|
      |FJD|2.433213|
      |FKP|0.904422|
      |GBP|0.897501|
      |GEL|2.942718|
      |GGP|0.897969|
      |GHS|5.581202|
      |GIP|0.904422|
      |GMD|55.153313|
      |GNF|10229.257111|
      |GTQ|8.570996|
      |GYD|238.70614|
      |HKD|8.989325|
      |HNL|27.511249|
      |HRK|7.424197|
      |HTG|77.118452|
      |HUF|323.196237|
      |IDR|16690.51776|
      |ILS|4.190852|
      |IMP|0.897969|
      |INR|79.905023|
      |IQD|1362.374424|
      |IRR|54818.402151|
      |ISK|122.900353|
      |JEP|0.897969|
      |JMD|154.49828|
      |JOD|0.813422|
      |JPY|126.511966|
      |KES|115.413017|
      |KGS|79.516533|
      |KHR|4660.694754|
      |KMF|494.237152|
      |KPW|1030.393426|
      |KRW|1281.895637|
      |KWD|0.347486|
      |KYD|0.953748|
      |KZT|412.09008|
      |LAK|9754.143334|
      |LBP|1734.226829|
      |LKR|183.703463|
      |LRD|176.593929|
      |LSL|17.006828|
      |LTL|3.490316|
      |LVL|0.710439|
      |LYD|1.591781|
      |MAD|10.907586|
      |MDL|19.068707|
      |MGA|3795.186293|
      |MKD|61.747662|
      |MMK|1705.429897|
      |MNT|2807.750651|
      |MOP|9.254076|
      |MRO|408.712723|
      |MUR|39.668037|
      |MVR|17.688404|
      |MWK|832.388309|
      |MXN|21.630274|
      |MYR|4.696762|
      |MZN|67.494821|
      |NAD|16.738175|
      |NGN|413.303617|
      |NIO|36.475431|
      |NOK|9.675267|
      |NPR|128.34984|
      |NZD|1.725236|
      |OMR|0.440837|
      |PAB|1.144681|
      |PEN|3.804402|
      |PGK|3.797709|
      |PHP|61.026404|
      |PKR|141.103494|
      |PLN|4.297094|
      |PYG|6589.771134|
      |QAR|4.168452|
      |RON|4.657951|
      |RSD|118.183547|
      |RUB|76.713705|
      |RWF|991.442228|
      |SAR|4.292568|
      |SBD|9.126808|
      |SCR|15.557444|
      |SDG|20.677757|
      |SEK|10.484105|
      |SGD|1.569941|
      |SHP|1.51224|
      |SLL|9788.488896|
      |SOS|662.301344|
      |SRD|8.538353|
      |STD|24558.787083|
      |SVC|10.015746|
      |SYP|589.599402|
      |SZL|17.006827|
      |THB|37.957627|
      |TJS|10.776615|
      |TMT|4.006984|
      |TND|3.154416|
      |TOP|2.622289|
      |TRY|6.885186|
      |TTD|7.715447|
      |TWD|35.176169|
      |TZS|2612.099528|
      |UAH|31.99638|
      |UGX|4290.453225|
      |USD|1.144852|
      |UYU|36.143412|
      |UZS|8929.849549|
      |VEF|11.434218|
      |VND|26668.193137|
      |VUV|125.395688|
      |WST|3.037548|
      |XAF|659.298051|
      |XAG|0.077376|
      |XAU|0.000967|
      |XCD|3.094021|
      |XDR|0.824816|
      |XOF|660.580248|
      |XPF|120.106888|
      |YER|286.614229|
      |ZAR|16.755378|
      |ZMK|10305.050051|
      |ZMW|11.731346|
      |ZWL|369.048926|
      Then i have historical rates response for all

@correct
Scenario: Get rates for empty symbols for today
      Given historical foreign rates for today
      |AED|4.205277|
      |AFN|83.293788|
      |ALL|125.934192|
      |AMD|553.124478|
      |ANG|2.111685|
      |AOA|307.507947|
      |ARS|34.15672|
      |AUD|1.564789|
      |AWG|2.05272|
      |AZN|1.949116|
      |BAM|1.825014|
      |BBD|2.29085|
      |BDT|96.732066|
      |BGN|1.95713|
      |BHD|0.431804|
      |BIF|2043.561636|
      |BMD|1.144852|
      |BND|1.729282|
      |BOB|7.910187|
      |BRL|4.477065|
      |BSD|1.144566|
      |BTC|0.000176|
      |BTN|79.984276|
      |BWP|12.453137|
      |BYN|2.346891|
      |BYR|22439.10816|
      |BZD|2.300586|
      |CAD|1.497868|
      |CDF|1848.937133|
      |CHF|1.139827|
      |CLF|0.025878|
      |CLP|764.422464|
      |CNY|7.873842|
      |COP|3463.808352|
      |CRC|649.372214|
      |CUC|1.144852|
      |CUP|1.144452|
      |CVE|111.258484|
      |CZK|25.719001|
      |DJF|203.463629|
      |DKK|7.464099|
      |DOP|56.96218|
      |DZD|136.031819|
      |EGP|20.468863|
      |ERN|17.173197|
      |ETB|31.706735|
      |EUR|1|
      |FJD|2.433213|
      |FKP|0.904422|
      |GBP|0.897501|
      |GEL|2.942718|
      |GGP|0.897969|
      |GHS|5.581202|
      |GIP|0.904422|
      |GMD|55.153313|
      |GNF|10229.257111|
      |GTQ|8.570996|
      |GYD|238.70614|
      |HKD|8.989325|
      |HNL|27.511249|
      |HRK|7.424197|
      |HTG|77.118452|
      |HUF|323.196237|
      |IDR|16690.51776|
      |ILS|4.190852|
      |IMP|0.897969|
      |INR|79.905023|
      |IQD|1362.374424|
      |IRR|54818.402151|
      |ISK|122.900353|
      |JEP|0.897969|
      |JMD|154.49828|
      |JOD|0.813422|
      |JPY|126.511966|
      |KES|115.413017|
      |KGS|79.516533|
      |KHR|4660.694754|
      |KMF|494.237152|
      |KPW|1030.393426|
      |KRW|1281.895637|
      |KWD|0.347486|
      |KYD|0.953748|
      |KZT|412.09008|
      |LAK|9754.143334|
      |LBP|1734.226829|
      |LKR|183.703463|
      |LRD|176.593929|
      |LSL|17.006828|
      |LTL|3.490316|
      |LVL|0.710439|
      |LYD|1.591781|
      |MAD|10.907586|
      |MDL|19.068707|
      |MGA|3795.186293|
      |MKD|61.747662|
      |MMK|1705.429897|
      |MNT|2807.750651|
      |MOP|9.254076|
      |MRO|408.712723|
      |MUR|39.668037|
      |MVR|17.688404|
      |MWK|832.388309|
      |MXN|21.630274|
      |MYR|4.696762|
      |MZN|67.494821|
      |NAD|16.738175|
      |NGN|413.303617|
      |NIO|36.475431|
      |NOK|9.675267|
      |NPR|128.34984|
      |NZD|1.725236|
      |OMR|0.440837|
      |PAB|1.144681|
      |PEN|3.804402|
      |PGK|3.797709|
      |PHP|61.026404|
      |PKR|141.103494|
      |PLN|4.297094|
      |PYG|6589.771134|
      |QAR|4.168452|
      |RON|4.657951|
      |RSD|118.183547|
      |RUB|76.713705|
      |RWF|991.442228|
      |SAR|4.292568|
      |SBD|9.126808|
      |SCR|15.557444|
      |SDG|20.677757|
      |SEK|10.484105|
      |SGD|1.569941|
      |SHP|1.51224|
      |SLL|9788.488896|
      |SOS|662.301344|
      |SRD|8.538353|
      |STD|24558.787083|
      |SVC|10.015746|
      |SYP|589.599402|
      |SZL|17.006827|
      |THB|37.957627|
      |TJS|10.776615|
      |TMT|4.006984|
      |TND|3.154416|
      |TOP|2.622289|
      |TRY|6.885186|
      |TTD|7.715447|
      |TWD|35.176169|
      |TZS|2612.099528|
      |UAH|31.99638|
      |UGX|4290.453225|
      |USD|1.144852|
      |UYU|36.143412|
      |UZS|8929.849549|
      |VEF|11.434218|
      |VND|26668.193137|
      |VUV|125.395688|
      |WST|3.037548|
      |XAF|659.298051|
      |XAG|0.077376|
      |XAU|0.000967|
      |XCD|3.094021|
      |XDR|0.824816|
      |XOF|660.580248|
      |XPF|120.106888|
      |YER|286.614229|
      |ZAR|16.755378|
      |ZMK|10305.050051|
      |ZMW|11.731346|
      |ZWL|369.048926|
      Then i have historical rates response for all

@correct
Scenario: Get latest rates for empty symbols
      Given foreign rates
      |AED|4.205277|
      |AFN|83.293788|
      |ALL|125.934192|
      |AMD|553.124478|
      |ANG|2.111685|
      |AOA|307.507947|
      |ARS|34.15672|
      |AUD|1.564789|
      |AWG|2.05272|
      |AZN|1.949116|
      |BAM|1.825014|
      |BBD|2.29085|
      |BDT|96.732066|
      |BGN|1.95713|
      |BHD|0.431804|
      |BIF|2043.561636|
      |BMD|1.144852|
      |BND|1.729282|
      |BOB|7.910187|
      |BRL|4.477065|
      |BSD|1.144566|
      |BTC|0.000176|
      |BTN|79.984276|
      |BWP|12.453137|
      |BYN|2.346891|
      |BYR|22439.10816|
      |BZD|2.300586|
      |CAD|1.497868|
      |CDF|1848.937133|
      |CHF|1.139827|
      |CLF|0.025878|
      |CLP|764.422464|
      |CNY|7.873842|
      |COP|3463.808352|
      |CRC|649.372214|
      |CUC|1.144852|
      |CUP|1.144452|
      |CVE|111.258484|
      |CZK|25.719001|
      |DJF|203.463629|
      |DKK|7.464099|
      |DOP|56.96218|
      |DZD|136.031819|
      |EGP|20.468863|
      |ERN|17.173197|
      |ETB|31.706735|
      |EUR|1|
      |FJD|2.433213|
      |FKP|0.904422|
      |GBP|0.897501|
      |GEL|2.942718|
      |GGP|0.897969|
      |GHS|5.581202|
      |GIP|0.904422|
      |GMD|55.153313|
      |GNF|10229.257111|
      |GTQ|8.570996|
      |GYD|238.70614|
      |HKD|8.989325|
      |HNL|27.511249|
      |HRK|7.424197|
      |HTG|77.118452|
      |HUF|323.196237|
      |IDR|16690.51776|
      |ILS|4.190852|
      |IMP|0.897969|
      |INR|79.905023|
      |IQD|1362.374424|
      |IRR|54818.402151|
      |ISK|122.900353|
      |JEP|0.897969|
      |JMD|154.49828|
      |JOD|0.813422|
      |JPY|126.511966|
      |KES|115.413017|
      |KGS|79.516533|
      |KHR|4660.694754|
      |KMF|494.237152|
      |KPW|1030.393426|
      |KRW|1281.895637|
      |KWD|0.347486|
      |KYD|0.953748|
      |KZT|412.09008|
      |LAK|9754.143334|
      |LBP|1734.226829|
      |LKR|183.703463|
      |LRD|176.593929|
      |LSL|17.006828|
      |LTL|3.490316|
      |LVL|0.710439|
      |LYD|1.591781|
      |MAD|10.907586|
      |MDL|19.068707|
      |MGA|3795.186293|
      |MKD|61.747662|
      |MMK|1705.429897|
      |MNT|2807.750651|
      |MOP|9.254076|
      |MRO|408.712723|
      |MUR|39.668037|
      |MVR|17.688404|
      |MWK|832.388309|
      |MXN|21.630274|
      |MYR|4.696762|
      |MZN|67.494821|
      |NAD|16.738175|
      |NGN|413.303617|
      |NIO|36.475431|
      |NOK|9.675267|
      |NPR|128.34984|
      |NZD|1.725236|
      |OMR|0.440837|
      |PAB|1.144681|
      |PEN|3.804402|
      |PGK|3.797709|
      |PHP|61.026404|
      |PKR|141.103494|
      |PLN|4.297094|
      |PYG|6589.771134|
      |QAR|4.168452|
      |RON|4.657951|
      |RSD|118.183547|
      |RUB|76.713705|
      |RWF|991.442228|
      |SAR|4.292568|
      |SBD|9.126808|
      |SCR|15.557444|
      |SDG|20.677757|
      |SEK|10.484105|
      |SGD|1.569941|
      |SHP|1.51224|
      |SLL|9788.488896|
      |SOS|662.301344|
      |SRD|8.538353|
      |STD|24558.787083|
      |SVC|10.015746|
      |SYP|589.599402|
      |SZL|17.006827|
      |THB|37.957627|
      |TJS|10.776615|
      |TMT|4.006984|
      |TND|3.154416|
      |TOP|2.622289|
      |TRY|6.885186|
      |TTD|7.715447|
      |TWD|35.176169|
      |TZS|2612.099528|
      |UAH|31.99638|
      |UGX|4290.453225|
      |USD|1.144852|
      |UYU|36.143412|
      |UZS|8929.849549|
      |VEF|11.434218|
      |VND|26668.193137|
      |VUV|125.395688|
      |WST|3.037548|
      |XAF|659.298051|
      |XAG|0.077376|
      |XAU|0.000967|
      |XCD|3.094021|
      |XDR|0.824816|
      |XOF|660.580248|
      |XPF|120.106888|
      |YER|286.614229|
      |ZAR|16.755378|
      |ZMK|10305.050051|
      |ZMW|11.731346|
      |ZWL|369.048926|
      Then i have last rates response for empty symbols