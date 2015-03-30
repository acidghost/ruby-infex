# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

doc1 = <<-eos
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>=20
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8" =
/>=20
  <style type=3D"text/css">
body {
=09margin:0;
=09font:12px/16px Arial, sans-serif;=09
}

a {
=09text-decoration:none;
=09color:#006699;
=09font:12px/16px Arial, sans-serif;=09
}

a img {
=09border:0;
}

h2 {
=09font-size:20px;
=09line-height:24px;
=09margin:0;
=09padding:0;
=09font-weight:normal;=09
=09color:#000 !important;
}

h3 {
=09font-size: 18px;
=09color:#cc6600;
=09margin:15px 0 0 0;
=09font-weight: normal
}

h4 {
=09font-size:14px;=09
=09margin:0;
=09font-weight:normal;
}

p {
=09margin:1px 0 8px 0;
=09font:12px/16px Arial, sans-serif;=09
}

table {
=09border-collapse:collapse;=09
}

td {
=09vertical-align: top;
=09font-size: 12px;
=09line-height: 18px;
=09font-family: Arial, sans-serif
}

/* container */
#container {
=09width:640px;
=09color:#333;
=09margin:0 auto;
}

#container .frame {
=09padding:0 20px 20px 20px;=09
}

/* content tables */
#main, #header, #summary, #desiredInformation, #orderDetails, #itemDetails,=
 #costBreakdown,
#selfService, #closing, #marketingContent, #legalCopy {
=09width:100%;
}

/* header */
#header .logo {
=09width:115px;
=09padding:20px 20px 0 0;=09
}

#header .navigation {
=09text-align:right;
=09padding:5px 0;
=09border-bottom:1px solid #ccc;
=09white-space:nowrap;
}

#header .navigation a {
=09border-right:0px solid #CCC;
=09margin-right:0px;
=09padding-right:0px;
}

#header .navigation span {
 text-decoration:none; color:#CCC;
 font-size:15px;
 font-family:Arial, sans-serif;=20
}

#header .navigation a.last {
=09border:0;
=09margin:0;
=09padding:0;
}

#header .title {
=09text-align:right;
=09padding:7px 0 5px 0;
}

#header .title img {
=09padding:0 4px 0 0;
}

/* summary */
#summary a{
=09text-decoration:none;
=09color:#006699;=09
}

#summary p {
=09margin:5px 0 0 0;
=09font:12px/16px Arial, sans-serif;
}

/* critical info */
#criticalInfo {
=09border-top:3px solid #2d3741;
=09width: 95%;=20
}

#criticalInfo td {
=09font-size:14px;
=09padding:11px 18px 18px 18px;
=09background-color:#efefef;
=09width:50%;
}

#criticalInfo .label {
=09color:#666;=09
}

#criticalInfo p {
=09margin:2px 0 9px 0;
=09font:14px Arial, sans-serif;
}

#criticalInfo span {
=09font-size:14px;
=09color:#666;"
}

#criticalInfo a {
=09font-size:11px;
=09color:#006699;
=09text-decoration:none;=09
}

/* desiredInformation */
#desiredInformation a {
=09text-decoration:none;
=09color:#006699;=09
}

/* buttons */
.button {
=09text-decoration:none !important;
=09display:block;
=09height:26px;
=09display:inline-block;
=09margin:0 0 2px 0;
}

.button.small {
=09height:20px;
}

.button .expandable {
=09float:left;
=09overflow:hidden;
}

.button .text {
=09color:#000f68;
=09font-size:12px;
=09position:relative;
=09z-index:10;
=09top:-22px;
=09left:-12px;=09
=09text-align:center;
}

.button.secondary .text {
=09left:0;=09
}

.button.small .text {
=09top:-20px;
=09left:0;
=09font-size:11px;
}

/* supporting details */
#supportingDetails {
=09font-size:11px;
=09color:#666;
=09line-height:14px;
=09margin:10px 20px;
}

#supportingDetails {
=09margin:0 18px 0 18px;=09=09
}

/* order details */
#orderDetails h3 {
=09border-bottom:1px solid #ccc;
=09margin:0 0 3px 0;
=09padding:0 0 3px 0;
}

#orderDetails .frame {
=09padding:16px 20px 6px 20px;
}

#orderDetails .orderDate {
=09color:#666666;
=09font-size:12px;
}

#orderDetails span {
=09font-size:12px;
=09color:#666;"
}

#orderDetails p {
=09margin:2px 0 9px 0;=09
}

/* item details */
#itemDetails {
=09width: 95%;
}

#itemDetails .photo {
=09width:150px;
=09text-align:center;
=09padding:16px 0 10px 0;
}

#itemDetails .photo .play img {
=09margin:3px 0 0 0;=09
}

#itemDetails .name {
=09color:#666;
=09padding:10px 0 0 0;
}

#itemDetails ul {
=09margin:0;
=09padding:0;
}

#itemDetails ul li {
=09list-style-type:none;
=09line-height:14px;
=09padding:0 0 4px 0;
}

#itemDetails ul li a {
=09font-size:14px;
}

#itemDetails .name p {
=09margin:0;
=09padding:10px 0 0 0;
=09font-size:12px;
=09line-height:16px;
}

#itemDetails .name p a {
=09font-size:12px;
=09text-decoration:none;
=09color:#006699;
}

#itemDetails .name .share {
=09margin:3px 0 15px 0;=09
}

#itemDetails .name .share a {
=09margin:4px 5px 0 0;
=09font-size:0;
}

#itemDetails .name .supportingDetails,=20
#itemDetails .name .supportingDetails a {
=09margin:8px 0 0 0;
=09font-size:12px;
}

#itemDetails .price {
=09width:80px;
=09text-align:right;
=09font-size:14px;
=09padding:10px 10px 0 0;=09
}

#itemDetails .price a {
=09text-decoration:none;
    color:#006699;
}

#itemDetails .divider {
=09border-top:1px solid #eaeaea;
=09padding:0 0 16px 0;
}

#itemDetails .name table {
        border-collapse: separate;
}

/* cost breakdown */
#costBreakdow {
=09width:95%;
}

#costBreakdown td {
=09text-align:right;
=09line-height:18px;
=09padding:0 10px 0 0;=09
}

#costBreakdown .divider {
=09border-top:1px solid #eaeaea;
=09padding:0 0 16px 0;
}

#costBreakdown .end {
=09padding:0 0 16px 0;
}

#costBreakdown .price {
=09width:150px;
}

#costBreakdown .total {
=09font-size:14px;
=09font-weight:bold;
=09font: 12px/ 16px Arial, sans-serif;
}

/* additional shipments */
#additionalShipments {
=09font-size:11px;
}

#additionalShipments h3 {
=09margin:10px 0 0 0;=09
}

#additionalShipments p {
=09margin:10px 20px 0px 20px;
}

#additionalShipments .orderDate {
=09color:#666666;
=09font-size:12px;
}

#additionalShipments .details {
=09padding:10px 20px 10px 20px;
}

#additionalShipments .details .label {
=09color:#666666;
=09font-weight:bold;=09
}

#additionalShipments .details .edd, #additionalShipments .details .quantity=
 {
=09font-weight:bold;=09
}

/* self service */
#selfService .divider {
=09border-top:1px solid #ccc;
=09padding:0 0 16px 0;
}

#selfService a{
=09text-decoration:none;
=09color:#006699;=09
}

/* closing */
#closing {
=09padding:0 0 20px 0;
=09border-collapse:none;
}

#closing p {
=09padding:0 0 20px 0;
=09border-bottom:1px solid #eaeaea;
=09margin:0;=09
}

#closing .signature {
=09font-size:16px;
=09font-weight:bold;
}

#closing a{
=09text-decoration:none;
=09color:#006699;=09
}

/* marketing content */
#marketingContent {
=09border-bottom:1px solid #ccc;
=09border-collapse:none;
=09padding:0 0 20px 0;=09
}

#marketingContent td {
}

#marketingContent td.right {
}

/* legal copy */
#legalCopy {
=09margin:20px 0 0 0;
}

#legalCopy p {
=09font-size:10px;
=09color:#666;
=09line-height:16px;
=09margin:0 0 10px 0;=09
=09font:10px;
}

#legalCopy a {
=09font-size:10px;
=09font:10px;
=09text-decoration:none;
=09color:#006699;=09
}

/* reg fee */
#regFee td {
=09colspan: 2;
=09border-top:1px solid #ccc;
}

</style>=20
  <title>
=09=09=09=09Il tuo ordine Amazon.it Rode VideoMic Go Microfono...
=09</title>=20
 </head>=20
 <body style=3D"margin: 0; font: 12px/ 16px Arial, sans-serif">=20
  <table id=3D"container" style=3D"width: 640px; color: rgb(51, 51, 51); ma=
rgin: 0 auto; border-collapse: collapse">=20
   <tbody>
    <tr>=20
     <td class=3D"frame" style=3D"padding: 0 20px 20px 20px; vertical-align=
: top; font-size: 12px; line-height: 18px; font-family: Arial, sans-serif">=
=20
      <table id=3D"main" style=3D"width: 100%; border-collapse: collapse">=
=20
       <tbody>
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"header" style=3D"width: 100%; border-collapse: colla=
pse">=20
           <tbody>
            <tr>=20
             <td rowspan=3D"2" class=3D"logo" style=3D"width: 115px; paddin=
g: 20px 20px 0 0; vertical-align: top; font-size: 12px; line-height: 18px; =
font-family: Arial, sans-serif"> <a href=3D"https://www.amazon.it/gp/r.html=
?C=3D2B97OIWAZEIT6&K=3DA8YXQW0VQQTV4&R=3D3PXP0MTBTNZPI&T=3DC&U=3Dhttps%3A%2=
F%2Fwww.amazon.it%2Fref%3Dpe_386201_41597321_TE_logo&A=3DAW0US5LGQNTYUJCPQ0=
PUUFRPQTYA&H=3DTEEQRPZL7EYQSRJ1FCKAB0I1VFKA" title=3D"Visita Amazon.it" sty=
le=3D"text-decoration: none; color: rgb(0, 102, 153); font: 12px/ 16px Aria=
l, sans-serif"> <img alt=3D"Amazon" src=3D"http://g-ec2.images-amazon.com/i=
mages/G/29/x-locale/common/logo-and-your-done._V185550511_.gif" style=3D"bo=
rder: 0; width: 115px" /> </a> </td>=20
             <td class=3D"navigation" style=3D"text-align: right; padding: =
5px 0; border-bottom: 1px solid rgb(204, 204, 204); white-space: nowrap; ve=
rtical-align: top; font-size: 12px; line-height: 18px; font-family: Arial, =
sans-serif"> </td>
             <td style=3D"width: 100%; padding: 7px 5px 0; text-align: righ=
t; border-bottom: 1px solid rgb(204, 204, 204); white-space: nowrap; vertic=
al-align: top; font-size: 12px; line-height: 18px; font-family: Arial, sans=
-serif" class=3D"navigation"> <a href=3D"https://www.amazon.it/gp/r.html?C=
=3D2B97OIWAZEIT6&K=3DA8YXQW0VQQTV4&R=3D3PXP0MTBTNZPI&T=3DC&U=3Dhttps%3A%2F%=
2Fwww.amazon.it%2Fgp%2Fcss%2Fyour-orders-access%2Fref%3Dpe_386201_41597321_=
TE_yo&A=3DYKY9YYNVGGJZVKWAMKGGJXQWQSYA&H=3D4Y1MCYJPG9E88U0WFUSY9MDATSAA" st=
yle=3D"border-right: 0px solid rgb(204, 204, 204); margin-right: 0px; paddi=
ng-right: 0px; text-decoration: none; color: rgb(0, 102, 153); font: 12px/ =
16px Arial, sans-serif">I miei ordini</a> </td>=20
             <td class=3D"navigation" style=3D"text-align: right; padding: =
5px 0; border-bottom: 1px solid rgb(204, 204, 204); white-space: nowrap; ve=
rtical-align: top; font-size: 12px; line-height: 18px; font-family: Arial, =
sans-serif"> <span style=3D"text-decoration: none; color: rgb(204, 204, 204=
); font-size: 15px; font-family: Arial, sans-serif">&nbsp;|&nbsp;</span> <a=
 href=3D"https://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA8YXQW0VQQTV=
4&R=3D3PXP0MTBTNZPI&T=3DC&U=3Dhttps%3A%2F%2Fwww.amazon.it%2Fgp%2Fcss%2Fyour=
-account-access%2Fref%3Dpe_386201_41597321_TE_ya&A=3DQLIXQM824CEPDNETHFYCAG=
9AVVKA&H=3DFDAZS5ANRKTU35NAYHKLXU03TFGA" style=3D"border-right: 0px solid r=
gb(204, 204, 204); margin-right: 0px; padding-right: 0px; text-decoration: =
none; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">Il mio a=
ccount</a> <span style=3D"text-decoration: none; color: rgb(204, 204, 204);=
 font-size: 15px; font-family: Arial, sans-serif">&nbsp;|&nbsp;</span> <a h=
ref=3D"https://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA8YXQW0VQQTV4&=
R=3D3PXP0MTBTNZPI&T=3DC&U=3Dhttps%3A%2F%2Fwww.amazon.it%2Fref%3Dpe_386201_4=
1597321_TE_cn&A=3DIUABHNGAK2AASJAUNBUJ40LXRJ0A&H=3DHBSKJGMRAPZIVZ1F9IKNBI2M=
IC0A" style=3D"border-right: 0px solid rgb(204, 204, 204); margin-right: 0p=
x; padding-right: 0px; text-decoration: none; color: rgb(0, 102, 153); font=
: 12px/ 16px Arial, sans-serif">Amazon.it</a> </td> =20
            </tr>=20
            <tr>=20
             <td colspan=3D"3" class=3D"title" style=3D"text-align: right; =
padding: 7px 0 5px 0; vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif"> <h2 style=3D"font-size: 20px; line-hei=
ght: 24px; margin: 0; padding: 0; font-weight: normal; color: rgb(0, 0, 0) =
!important">Conferma ordine</h2> Ordine n&deg;<a href=3D"https://www.amazon=
.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA8YXQW0VQQTV4&R=3D3PXP0MTBTNZPI&T=3DC&U=
=3Dhttps%3A%2F%2Fwww.amazon.it%2Fgp%2Fcss%2Forder-details%3ForderId%3D402-3=
525409-5017141%26ref_%3Dpe_386201_41597321_TE_on&A=3DUD4PTDNT49EULZGRYGLHGF=
SUXSAA&H=3DJB0R5CXRNWMXPWX3STCTMSNIFTUA" style=3D"text-decoration: none; co=
lor: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">402-3525409-5017=
141</a> <br /> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"summary" style=3D"width: 100%; border-collapse: coll=
apse">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <h3 style=3D"font-size: 18px; colo=
r: rgb(204, 102, 0); margin: 15px 0 0 0; font-weight: normal">Gentile Coomp=
any,</h3> <p style=3D"margin: 5px 0 0 0; font: 12px/ 16px Arial, sans-serif=
"> Grazie per il tuo ordine. Ti invieremo un'e-mail quando i tuoi articoli =
saranno spediti. La tua data di consegna prevista &egrave; indicata in bass=
o. Puoi consultare la sezione <a href=3D"https://www.amazon.it/gp/r.html?C=
=3D2B97OIWAZEIT6&K=3DA8YXQW0VQQTV4&R=3D3PXP0MTBTNZPI&T=3DC&U=3Dhttps%3A%2F%=
2Fwww.amazon.it%2Fgp%2Fcss%2Fyour-orders-access%2Fref%3Dpe_386201_41597321_=
TE_gs&A=3DMSCGFPSQ3IF2ABQPIDINZG5AVPGA&H=3DE3RYAQNGAABMKPGTU1PVXPVA6F4A" st=
yle=3D"text-decoration: none; color: rgb(0, 102, 153); font: 12px/ 16px Ari=
al, sans-serif">I miei ordini</a> su Amazon.it per visualizzare lo stato de=
l tuo ordine o apportare delle modifiche. </p> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table style=3D"border-collapse: collapse">=20
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table style=3D"width: 100%; border-top: 3px solid rgb(45, 55, 65=
); border-collapse: collapse" id=3D"criticalInfo">=20
           <tbody>
            <tr>=20
             <td style=3D"font-size: 14px; padding: 11px 18px 18px 18px; ba=
ckground-color: rgb(239, 239, 239); width: 50%; vertical-align: top; line-h=
eight: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 2px 0 9px=
 0; font: 14px Arial, sans-serif"> <span style=3D"font-size: 14px; color: r=
gb(102, 102, 102)">La tua data di consegna prevista &egrave;: </span> <br /=
> <b> marted&igrave; 24 marzo 2015 </b> </p> <p style=3D"margin: 2px 0 9px =
0; font: 14px Arial, sans-serif"> <span style=3D"font-size: 14px; color: rg=
b(102, 102, 102)">La tua modalit&agrave; di spedizione &egrave;: </span> <b=
r /> <b> 3-5 giorni </b> </p> <a href=3D"https://www.amazon.it/gp/r.html?C=
=3D2B97OIWAZEIT6&K=3DA8YXQW0VQQTV4&R=3D3PXP0MTBTNZPI&T=3DC&U=3Dhttps%3A%2F%=
2Fwww.amazon.it%2Fgp%2Fcss%2Forder-details%3ForderId%3D402-3525409-5017141%=
26ref_%3Dpe_386201_41597321_TE_on_sh&A=3D3QPKEHAJ2EH3O2JCZPU52IULLFCA&H=3DS=
UZL7F1WAAJCKHOCTQEB7WKZYSEA" style=3D"font-size: 11px; color: rgb(0, 102, 1=
53); text-decoration: none; font: 12px/ 16px Arial, sans-serif"> <img alt=
=3D"I miei ordini" border=3D"0" id=3D"yourOrders" src=3D"http://g-ec2.image=
s-amazon.com/images/G/29/x-locale/cs/te/orderdetailsIT._V359483499_.png" st=
yle=3D"border: 0" /> </a> </td>=20
             <td style=3D"font-size: 14px; padding: 11px 18px 18px 18px; ba=
ckground-color: rgb(239, 239, 239); width: 50%; vertical-align: top; line-h=
eight: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 2px 0 9px=
 0; font: 14px Arial, sans-serif"> <span style=3D"font-size: 14px; color: r=
gb(102, 102, 102)">L'ordine sar&agrave; spedito a:</span> <br /> <b> Alizee=
 Vauquelin <br /> Via Brasavola 2b <br /> Ferrara, FE 44121 <br /> Italia <=
/b> </p> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"background-color: rgb(256, 256, 256=
); padding: 10px 0px 0px 0px; font-size: 14px; width: 50%; vertical-align: =
top; line-height: 18px; font-family: Arial, sans-serif"> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"border-bottom: 1px solid rgb(204, 204, 204); vertical=
-align: top; font-size: 12px; line-height: 18px; font-family: Arial, sans-s=
erif"> <h3 style=3D"font-size: 18px; color: rgb(204, 102, 0); margin: 15px =
0 0 0; font-weight: normal">Dettagli ordine</h3> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"orderDetails" style=3D"width: 100%; border-collapse:=
 collapse">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> Ordine n&deg;<a href=3D"https://ww=
w.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA8YXQW0VQQTV4&R=3D3PXP0MTBTNZPI=
&T=3DC&U=3Dhttps%3A%2F%2Fwww.amazon.it%2Fgp%2Fcss%2Forder-details%3ForderId=
%3D402-3525409-5017141%26ref_%3Dpe_386201_41597321_TE_on&A=3DUD4PTDNT49EULZ=
GRYGLHGFSUXSAA&H=3DJB0R5CXRNWMXPWX3STCTMSNIFTUA" style=3D"text-decoration: =
none; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">402-3525=
409-5017141</a> <br /> <span style=3D"font-size: 12px; color: rgb(102, 102,=
 102)">Effettuato luned&igrave; 16 marzo 2015</span> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"padding-left: 32px; vertical-align: top; font-size: 1=
2px; line-height: 18px; font-family: Arial, sans-serif">=20
          <table style=3D"width: 95%; border-collapse: collapse" id=3D"item=
Details">=20
           <tbody>
            <tr>=20
             <td class=3D"photo" style=3D"width: 150px; text-align: center;=
 padding: 16px 0 10px 0; vertical-align: top; font-size: 12px; line-height:=
 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.it/gp/=
r.html?C=3D2B97OIWAZEIT6&K=3DA8YXQW0VQQTV4&R=3D3PXP0MTBTNZPI&T=3DC&U=3Dhttp=
%3A%2F%2Fwww.amazon.it%2Fdp%2FB00GQDORA4%2Fref%3Dpe_386201_41597321_TE_item=
_image&A=3DSDTKHVOL2SEB6SQG0KX9I4TMHW4A&H=3D914MMRAUYT2O9A8AWCBIUHYOHAEA" t=
itle=3D"B00GQDORA4" style=3D"text-decoration: none; color: rgb(0, 102, 153)=
; font: 12px/ 16px Arial, sans-serif"> <img id=3D"asin" src=3D"http://ecx.i=
mages-amazon.com/images/I/311njjpFONL._SCLZZZZZZZ__SY115_SX115_.jpg" style=
=3D"border: 0" /> </a> </td>=20
             <td class=3D"name" style=3D"color: rgb(102, 102, 102); padding=
: 10px 0 0 0; vertical-align: top; font-size: 12px; line-height: 18px; font=
-family: Arial, sans-serif"> <a href=3D"http://www.amazon.it/gp/r.html?C=3D=
2B97OIWAZEIT6&K=3DA8YXQW0VQQTV4&R=3D3PXP0MTBTNZPI&T=3DC&U=3Dhttp%3A%2F%2Fww=
w.amazon.it%2Fdp%2FB00GQDORA4%2Fref%3Dpe_386201_41597321_TE_item&A=3D5A2BDP=
QHZBGIZBK4BFLGPJ7G5GUA&H=3DR6IBJYRM11UAUHGY0AZUJRP0HO4A" style=3D"text-deco=
ration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">=
 Rode VideoMic Go Microfono Direzionale per DSLR/Videocamere, Nero/Antracit=
e </a> <br /> Venduto da Amazon EU S.a.r.L. <br />=20
              <div style=3D"vertical-align: top; align=3Dcenter;">=20
               <table border=3D"0" cellspacing=3D"4" cellpadding=3D"0" styl=
e=3D"border-collapse: separate">=20
                <tbody style=3D"vertical-align: bottom;">=20
                 <tr>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA8YXQW0VQQTV4&R=3D3PXP0MTBTNZPI&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_fa_doce%2F190-3654187-2239517%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Fwww.facebook.com%252Fdialog%252Ffeed%253Fapp_id%253=
D164734381262%2526caption%253D%2526display%253Dpopup%2526link%253Dhttp%2525=
3A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB00GQDORA4%25252Fref%25253Dcm_=
sw_r_fa_doce%2526name%253D%2526picture%253Dhttp%25253A%25252F%25252Fecx.ima=
ges-amazon.com%25252Fimages%25252FI%25252F311njjpFONL._SCLZZZZZZZ__SY115_SX=
115_.jpg%2526redirect_uri%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252F=
dp%25252FB00GQDORA4%25252Fref%25253Dcm_sw_r_fa_doce%26source%3Dstandards%26=
token%3D6BD0FB927CC51E76FF446584B1040F70EA7E88E1&A=3D7FUYK7DENAQUHHOSFYGA3U=
ATFF0A&H=3DTAMVWCDMTPUBAFY78K29UVKYZOGA" title=3D"Share on Facebook" style=
=3D"text-decoration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial,=
 sans-serif"> <img src=3D"http://g-ecx.images-amazon.com/images/G/01/x-loca=
le/personalization/live-meter/facebook._V199133872_.gif" width=3D"16" alt=
=3D"Facebook" style=3D"vertical-align: middle; border: 0" height=3D"16" bor=
der=3D"0" /> </a> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA8YXQW0VQQTV4&R=3D3PXP0MTBTNZPI&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_tw_doce%2F190-3654187-2239517%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Ftwitter.com%252Fshare%253Fcount%253Dnone%2526origin=
al_referer%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB00GQD=
ORA4%25252Fref%25253Dcm_sw_r_tw_doce%2526related%253Damazon%25252Camazondea=
ls%25252Camazonmp3%2526text%253DRode%252520VideoMic%252520Go%252520Microfon=
o%252520Direzionale%252520per%252520DSLR%25252FVideocamere%25252C%252520Ner=
o%25252FAntracite%252520por%252520Amazon%2526twitterURL%253Dhttp%25253A%252=
52F%25252Fwww.amazon.it%25252Fdp%25252FB00GQDORA4%25252Fref%25253Dcm_sw_r_t=
w_doce%2526via%253Damazon%26source%3Dstandards%26token%3D7A1A4AE8F6CE0BD277=
D8295E58702D283F329C0F&A=3DEQW2ZZM8AINNOM47WDMZC3VXJTUA&H=3DMZOCLLHOKSCDHPM=
XP8ZTTIMOI9QA" title=3D"Share on Twitter" style=3D"text-decoration: none; c=
olor: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif"> <img src=3D"ht=
tp://g-ecx.images-amazon.com/images/G/01/x-locale/communities/social/twitte=
r._V388046070_.gif" width=3D"16" alt=3D"Twitter" style=3D"vertical-align: m=
iddle; border: 0" height=3D"16" border=3D"0" /> </a> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA8YXQW0VQQTV4&R=3D3PXP0MTBTNZPI&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_pi_doce%2F190-3654187-2239517%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Fpinterest.com%252Fpin%252Fcreate%252Fbutton%252F%25=
3Fdescription%253DRode%252520VideoMic%252520Go%252520Microfono%252520Direzi=
onale%252520per%252520DSLR%25252FVideocamere%25252C%252520Nero%25252FAntrac=
ite%252520por%252520Amazon%25252C%252520http%25253A%25252F%25252Fwww.amazon=
.it%25252Fdp%25252FB00GQDORA4%25252Fref%25253Dcm_sw_r_pi_doce%2526is_video%=
253Dfalse%2526media%253Dhttp%25253A%25252F%25252Fecx.images-amazon.com%2525=
2Fimages%25252FI%25252F311njjpFONL._SCLZZZZZZZ__SY115_SX115_.jpg%2526title%=
253D%2526url%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB00G=
QDORA4%25252Fref%25253Dcm_sw_r_pi_doce%26source%3Dstandards%26token%3D9F58B=
366258E1A8B5259E9BEF3482E02341F42D3&A=3DAPTM750NAVHOIDMQA24RSHMYCA8A&H=3DN4=
HOF56YV259LJAIF9FE3VLX8MUA" title=3D"Pin it on Pinterest" style=3D"text-dec=
oration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif"=
> <img src=3D"http://g-ecx.images-amazon.com/images/G/01/x-locale/communiti=
es/social/pinterest._V149279734_.png" width=3D"16" alt=3D"Pinterest" style=
=3D"vertical-align: middle; border: 0" height=3D"16" border=3D"0" /> </a> <=
/td>=20
                 </tr>=20
                </tbody>=20
               </table>=20
              </div> </td>=20
             <td class=3D"price" style=3D"width: 80px; text-align: right; f=
ont-size: 14px; padding: 10px 10px 0 0; vertical-align: top; line-height: 1=
8px; font-family: Arial, sans-serif"> <strong>EUR 60,05</strong> <br /> </t=
d>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"padding-left: 32px; vertical-align: top; font-size: 1=
2px; line-height: 18px; font-family: Arial, sans-serif">=20
          <table style=3D"width: 95%; border-collapse: collapse" id=3D"cost=
Breakdown">=20
           <tbody>
            <tr>=20
             <td colspan=3D"2" class=3D"divider" style=3D"border-top: 1px s=
olid rgb(234, 234, 234); padding: 0 0 16px 0; text-align: right; line-heigh=
t: 18px; vertical-align: top; font-size: 12px; font-family: Arial, sans-ser=
if"> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"text-align: right; line-height: 18px; padding: 0 =
10px 0 0; vertical-align: top; font-size: 12px; font-family: Arial, sans-se=
rif"> Totale parziale degli articoli: </td>=20
             <td class=3D"price" style=3D"width: 150px; text-align: right; =
line-height: 18px; padding: 0 10px 0 0; vertical-align: top; font-size: 12p=
x; font-family: Arial, sans-serif"> EUR 60,05 </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"text-align: right; line-height: 18px; padding: 0 =
10px 0 0; vertical-align: top; font-size: 12px; font-family: Arial, sans-se=
rif"> Costi di spedizione: </td>=20
             <td class=3D"price" style=3D"width: 150px; text-align: right; =
line-height: 18px; padding: 0 10px 0 0; vertical-align: top; font-size: 12p=
x; font-family: Arial, sans-serif"> EUR 0,00 </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; font: 12px/ 16px Arial=
, sans-serif"></p> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; font: 12px/ 16px Arial=
, sans-serif"></p> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; font: 12px/ 16px Arial=
, sans-serif"></p> </td>=20
            </tr>=20
            <tr>=20
             <td class=3D"total" style=3D"font-size: 14px; font-weight: bol=
d; font: 12px/ 16px Arial, sans-serif; text-align: right; line-height: 18px=
; padding: 0 10px 0 0; vertical-align: top; font-family: Arial, sans-serif"=
> <strong> Totale IVA inclusa (ove applicabile):</strong> </td>=20
             <td class=3D"total" style=3D"font-size: 14px; font-weight: bol=
d; font: 12px/ 16px Arial, sans-serif; text-align: right; line-height: 18px=
; padding: 0 10px 0 0; vertical-align: top; font-family: Arial, sans-serif"=
> <strong>EUR 60,05</strong> </td>=20
            </tr>=20
            <tr>=20
             <td rowspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> Metodo di pagamento selezionato: </td>=20
             <td class=3D"price" style=3D"width: 150px; text-align: right; =
line-height: 18px; padding: 0 10px 0 0; vertical-align: top; font-size: 12p=
x; font-family: Arial, sans-serif"> Visa </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" class=3D"end" style=3D"padding: 0 0 16px 0; =
text-align: right; line-height: 18px; vertical-align: top; font-size: 12px;=
 font-family: Arial, sans-serif"> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" class=3D"divider" style=3D"border-top: 1px s=
olid rgb(234, 234, 234); padding: 0 0 16px 0; text-align: right; line-heigh=
t: 18px; vertical-align: top; font-size: 12px; font-family: Arial, sans-ser=
if"> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"selfService" style=3D"width: 100%; border-collapse: =
collapse">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; f=
ont: 12px/ 16px Arial, sans-serif">L'addebito verr&agrave; effettuato sul m=
etodo di pagamento prescelto solamente quando gli articoli verranno spediti=
.</p> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; f=
ont: 12px/ 16px Arial, sans-serif"> Desideri apportare delle modifiche al t=
uo ordine? Visita la nostra pagina di aiuto <a href=3D"http://www.amazon.it=
/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA8YXQW0VQQTV4&R=3D3PXP0MTBTNZPI&T=3DC&U=3D=
http%3A%2F%2Fwww.amazon.it%2Fmodificare_ordine%3Fref_%3Dpe_386201_41597321_=
TE_ss&A=3DH2VAWOFMIIDXNO5PNHFIE98MA60A&H=3DO0VPOS9T8QUUCEAPC7QCZCCOJG8A" st=
yle=3D"text-decoration: none; color: rgb(0, 102, 153); font: 12px/ 16px Ari=
al, sans-serif">Modifica i dettagli dell'ordine</a> per maggiori informazio=
ni e per visualizzare i nostri video. </p> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"closing" style=3D"width: 100%; padding: 0 0 20px 0; =
border-collapse: none">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"padding: 0 0 20px 0; b=
order-bottom: 1px solid rgb(234, 234, 234); margin: 0; font: 12px/ 16px Ari=
al, sans-serif"> A presto,<br /> <span class=3D"signature" style=3D"font-si=
ze: 16px; font-weight: bold"> <strong>Amazon.it</strong> </span> </p> </td>=
=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"marketingContent" style=3D"width: 100%; border-botto=
m: 1px solid rgb(204, 204, 204); border-collapse: none; padding: 0 0 20px 0=
">=20
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"legalCopy" style=3D"width: 100%; margin: 20px 0 0 0;=
 border-collapse: collapse">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"font-size: 10px; color=
: rgb(102, 102, 102); line-height: 16px; margin: 0 0 10px 0; font: 10px"> G=
li articoli venduti da Amazon EU Sarl sono soggetti all'Imposta sul Valore =
Aggiunto nel territorio di destinazione della merce in conformit&agrave; al=
le leggi vigenti sulle cd. vendite a distanza. Se il tuo ordine contiene mo=
lteplici articoli acquistati presso Amazon EU Sarl e i nostri venditori ter=
zi, potrai essere soggetto all'Imposta sul Valore Aggiunto regolata dalle n=
orme stabilite dal venditore terzo e la sua sede operativa. </p> <p style=
=3D"font-size: 10px; color: rgb(102, 102, 102); line-height: 16px; margin: =
0 0 10px 0; font: 10px"> Per maggiori informazioni, visita la nostra pagina=
 di aiuto <a href=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA=
8YXQW0VQQTV4&R=3D3PXP0MTBTNZPI&T=3DC&U=3Dhttp%3A%2F%2Fwww.amazon.it%2Fiva_f=
atturazione%3Fref_%3Dpe_386201_41597321_TE_vat&A=3DDSX9RAYYEYK70DDDHAEZPHUF=
HXEA&H=3DWHETKBAATI2ORWMWHNHFL7CBSKUA" style=3D"font-size: 10px; font: 10px=
; text-decoration: none; color: rgb(0, 102, 153)">Iva e fatturazione</a>. <=
/p> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"font-size: 10px; color=
: rgb(102, 102, 102); line-height: 16px; margin: 0 0 10px 0; font: 10px"> Q=
uesta e-mail costituisce una semplice conferma di ricezione del tuo ordine.=
 Il contratto di vendita si perfeziona soltanto nel momento in cui ricevera=
i l'e-mail che conferma la spedizione degli articoli. </p> <p style=3D"font=
-size: 10px; color: rgb(102, 102, 102); line-height: 16px; margin: 0 0 10px=
 0; font: 10px"> Nota: questa &egrave; un'e-mail generata automaticamente e=
 non avremo la possibilit&agrave; di leggere eventuali e-mail di risposta. =
Non rispondere a questo messaggio. </p> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
       </tbody>
      </table> </td>=20
    </tr>=20
   </tbody>
  </table> =20
 <img src=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA8YXQW0VQ=
QTV4&R=3D3PXP0MTBTNZPI&T=3DE&U=3Dhttp%3A%2F%2Fimages-eu.amazon.com%2Fimages=
%2FG%2F01%2Fnav%2Ftransp.gif&A=3DVDBSW0LEAPWY1CN6Q4SHYVXKOFQA&H=3DODMQ9KARD=
ZIGABWKML3KMNFH7XMA" /></body>
</html>
eos
doc1 = doc1.unpack('M').join
doc1_tagged = <<-eos

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/assets/document.tagged.js"></script><link rel="stylesheet" type="text/css" href="/assets/document.tagged.css">

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>
				Il tuo ordine Amazon.it Rode VideoMic Go Microfono...
	</title>
 </head>
 <body>
  <table id="container">
   <tbody>
    <tr>
     <td class="frame">
      <table id="main">
       <tbody>
        <tr>
         <td>
          <table id="header">
           <tbody>
            <tr>
             <td rowspan="2" class="logo"> <a title="Visita Amazon.it"> <img alt="Amazon" src="http://g-ec2.images-amazon.com/images/G/29/x-locale/common/logo-and-your-done._V185550511_.gif"> </a> </td>
             <td class="navigation"> </td>
             <td class="navigation"> <a>I miei ordini</a> </td>
             <td class="navigation"> <span> | </span> <a>Il mio account</a> <span> | </span> <a>Amazon.it</a> </td>
            </tr>
            <tr>
             <td colspan="3" class="title"> <h2>Conferma ordine</h2> Ordine n°<a>402-3525409-5017141</a> <br> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="summary">
           <tbody>
            <tr>
             <td> <h3>Gentile Coompany,</h3> <p> Grazie per il tuo ordine. Ti invieremo un'e-mail quando i tuoi articoli saranno spediti. La tua data di consegna prevista è indicata in basso. Puoi consultare la sezione <a>I miei ordini</a> su Amazon.it per visualizzare lo stato del tuo ordine o apportare delle modifiche. </p> </td>
            </tr>
            <tr>
             <td> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table>
          </table> </td>
        </tr>
        <tr data-ariel-orders-condition="open" data-ariel-orders="true" data-ariel-order-condition="open" data-ariel-order="true">
         <td>
          <table id="criticalInfo">
           <tbody>
            <tr>
             <td> <p> <span>La tua data di consegna prevista è: </span> <br> <b> martedì 24 marzo 2015 </b> </p> <p> <span>La tua modalità di spedizione è: </span> <br> <b> 3-5 giorni </b> </p> <a> <img alt="I miei ordini" border="0" id="yourOrders" src="http://g-ec2.images-amazon.com/images/G/29/x-locale/cs/te/orderdetailsIT._V359483499_.png"> </a> </td>
             <td> <p> <span>L'ordine sarà spedito a:</span> <br> <b> Alizee Vauquelin <br> Via Brasavola 2b <br> Ferrara, FE 44121 <br> Italia </b> </p> </td>
            </tr>
            <tr>
             <td colspan="2"> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-order="true">
         <td> <h3>Dettagli ordine</h3> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-order="true">
         <td>
          <table id="orderDetails">
           <tbody>
            <tr>
             <td> Ordine n°<a>402-3525409-5017141</a> <br> <span>Effettuato lunedì <span data-ariel-date="true" data-ariel-date-condition="open">16 marzo 2015</span></span> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-order="true">
         <td>
          <table id="itemDetails">
           <tbody>
            <tr>
             <td class="photo" data-ariel-products-condition="open" data-ariel-products="true" data-ariel-product-condition="open" data-ariel-product="true"> <a title="B00GQDORA4"> <img id="asin" src="http://ecx.images-amazon.com/images/I/311njjpFONL._SCLZZZZZZZ__SY115_SX115_.jpg"> </a> </td>
             <td class="name" data-ariel-products="true" data-ariel-product="true"> <a> <span data-ariel-product_name="true" data-ariel-product_name-condition="open">Rode VideoMic Go Microfono Direzionale per DSLR/Videocamere, Nero/Antracite</span> </a> <br> Venduto da Amazon EU S.a.r.L. <br>
              <div>
               <table border="0" cellspacing="4" cellpadding="0">
                <tbody>
                 <tr>
                  <td> </td>
                  <td> <a title="Share on Facebook"> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/personalization/live-meter/facebook._V199133872_.gif" width="16" alt="Facebook" height="16" border="0"> </a> </td>
                  <td> <a title="Share on Twitter"> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/communities/social/twitter._V388046070_.gif" width="16" alt="Twitter" height="16" border="0"> </a> </td>
                  <td> <a title="Pin it on Pinterest"> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/communities/social/pinterest._V149279734_.png" width="16" alt="Pinterest" height="16" border="0"> </a> </td>
                 </tr>
                </tbody>
               </table>
              </div> </td>
             <td class="price" data-ariel-products="true" data-ariel-products-condition="close" data-ariel-product="true" data-ariel-product-condition="close"> <strong><span data-ariel-product_price="true" data-ariel-product_price-condition="open">EUR 60,05</span></strong> <br> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-orders-condition="close" data-ariel-order="true" data-ariel-order-condition="close">
         <td>
          <table id="costBreakdown">
           <tbody>
            <tr>
             <td colspan="2" class="divider"> </td>
            </tr>
            <tr>
             <td> Totale parziale degli articoli: </td>
             <td class="price"> EUR 60,05 </td>
            </tr>
            <tr>
             <td> Costi di spedizione: </td>
             <td class="price"> EUR 0,00 </td>
            </tr>
            <tr>
             <td colspan="2"> <p></p> </td>
            </tr>
            <tr>
             <td colspan="2"> <p></p> </td>
            </tr>
            <tr>
             <td colspan="2"> <p></p> </td>
            </tr>
            <tr>
             <td class="total"> <strong> Totale IVA inclusa (ove applicabile):</strong> </td>
             <td class="total"> <strong><span data-ariel-total="true" data-ariel-total-condition="open">EUR 60,05</span></strong> </td>
            </tr>
            <tr>
             <td rowspan="2"> Metodo di pagamento selezionato: </td>
             <td class="price"> Visa </td>
            </tr>
            <tr>
             <td colspan="2" class="end"> </td>
            </tr>
            <tr>
             <td colspan="2" class="divider"> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="selfService">
           <tbody>
            <tr>
             <td> <p>L'addebito verrà effettuato sul metodo di pagamento prescelto solamente quando gli articoli verranno spediti.</p> </td>
            </tr>
            <tr>
             <td> <p> Desideri apportare delle modifiche al tuo ordine? Visita la nostra pagina di aiuto <a>Modifica i dettagli dell'ordine</a> per maggiori informazioni e per visualizzare i nostri video. </p> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="closing">
           <tbody>
            <tr>
             <td> <p> A presto,<br> <span class="signature"> <strong>Amazon.it</strong> </span> </p> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="marketingContent">
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="legalCopy">
           <tbody>
            <tr>
             <td> <p> Gli articoli venduti da Amazon EU Sarl sono soggetti all'Imposta sul Valore Aggiunto nel territorio di destinazione della merce in conformità alle leggi vigenti sulle cd. vendite a distanza. Se il tuo ordine contiene molteplici articoli acquistati presso Amazon EU Sarl e i nostri venditori terzi, potrai essere soggetto all'Imposta sul Valore Aggiunto regolata dalle norme stabilite dal venditore terzo e la sua sede operativa. </p> <p> Per maggiori informazioni, visita la nostra pagina di aiuto <a>Iva e fatturazione</a>. </p> </td>
            </tr>
            <tr>
             <td> <p> Questa e-mail costituisce una semplice conferma di ricezione del tuo ordine. Il contratto di vendita si perfeziona soltanto nel momento in cui riceverai l'e-mail che conferma la spedizione degli articoli. </p> <p> Nota: questa è un'e-mail generata automaticamente e non avremo la possibilità di leggere eventuali e-mail di risposta. Non rispondere a questo messaggio. </p> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
       </tbody>
      </table> </td>
    </tr>
   </tbody>
  </table>
 <img src="http://www.amazon.it/gp/r.html?C=2B97OIWAZEIT6&amp;K=A8YXQW0VQQTV4&amp;R=3PXP0MTBTNZPI&amp;T=E&amp;U=http%3A%2F%2Fimages-eu.amazon.com%2Fimages%2FG%2F01%2Fnav%2Ftransp.gif&amp;A=VDBSW0LEAPWY1CN6Q4SHYVXKOFQA&amp;H=ODMQ9KARDZIGABWKML3KMNFH7XMA">

</body>
</html>
eos
Document.create! original: doc1, tagged: doc1_tagged, is_tagged: true

doc2 = <<-eos
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>=20
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8" =
/>=20
  <style type=3D"text/css">
body {
=09margin:0;
=09font:12px/16px Arial, sans-serif;=09
}

a {
=09text-decoration:none;
=09color:#006699;
=09font:12px/16px Arial, sans-serif;=09
}

a img {
=09border:0;
}

h2 {
=09font-size:20px;
=09line-height:24px;
=09margin:0;
=09padding:0;
=09font-weight:normal;=09
=09color:#000 !important;
}

h3 {
=09font-size: 18px;
=09color:#cc6600;
=09margin:15px 0 0 0;
=09font-weight: normal
}

h4 {
=09font-size:14px;=09
=09margin:0;
=09font-weight:normal;
}

p {
=09margin:1px 0 8px 0;
=09font:12px/16px Arial, sans-serif;=09
}

table {
=09border-collapse:collapse;=09
}

td {
=09vertical-align: top;
=09font-size: 12px;
=09line-height: 18px;
=09font-family: Arial, sans-serif
}

/* container */
#container {
=09width:640px;
=09color:#333;
=09margin:0 auto;
}

#container .frame {
=09padding:0 20px 20px 20px;=09
}

/* content tables */
#main, #header, #summary, #desiredInformation, #orderDetails, #itemDetails,=
 #costBreakdown,
#selfService, #closing, #marketingContent, #legalCopy {
=09width:100%;
}

/* header */
#header .logo {
=09width:115px;
=09padding:20px 20px 0 0;=09
}

#header .navigation {
=09text-align:right;
=09padding:5px 0;
=09border-bottom:1px solid #ccc;
=09white-space:nowrap;
}

#header .navigation a {
=09border-right:0px solid #CCC;
=09margin-right:0px;
=09padding-right:0px;
}

#header .navigation span {
 text-decoration:none; color:#CCC;
 font-size:15px;
 font-family:Arial, sans-serif;=20
}

#header .navigation a.last {
=09border:0;
=09margin:0;
=09padding:0;
}

#header .title {
=09text-align:right;
=09padding:7px 0 5px 0;
}

#header .title img {
=09padding:0 4px 0 0;
}

/* summary */
#summary a{
=09text-decoration:none;
=09color:#006699;=09
}

#summary p {
=09margin:5px 0 0 0;
=09font:12px/16px Arial, sans-serif;
}

/* critical info */
#criticalInfo {
=09border-top:3px solid #2d3741;
=09width: 95%;=20
}

#criticalInfo td {
=09font-size:14px;
=09padding:11px 18px 18px 18px;
=09background-color:#efefef;
=09width:50%;
}

#criticalInfo .label {
=09color:#666;=09
}

#criticalInfo p {
=09margin:2px 0 9px 0;
=09font:14px Arial, sans-serif;
}

#criticalInfo span {
=09font-size:14px;
=09color:#666;"
}

#criticalInfo a {
=09font-size:11px;
=09color:#006699;
=09text-decoration:none;=09
}

/* desiredInformation */
#desiredInformation a {
=09text-decoration:none;
=09color:#006699;=09
}

/* buttons */
.button {
=09text-decoration:none !important;
=09display:block;
=09height:26px;
=09display:inline-block;
=09margin:0 0 2px 0;
}

.button.small {
=09height:20px;
}

.button .expandable {
=09float:left;
=09overflow:hidden;
}

.button .text {
=09color:#000f68;
=09font-size:12px;
=09position:relative;
=09z-index:10;
=09top:-22px;
=09left:-12px;=09
=09text-align:center;
}

.button.secondary .text {
=09left:0;=09
}

.button.small .text {
=09top:-20px;
=09left:0;
=09font-size:11px;
}

/* supporting details */
#supportingDetails {
=09font-size:11px;
=09color:#666;
=09line-height:14px;
=09margin:10px 20px;
}

#supportingDetails {
=09margin:0 18px 0 18px;=09=09
}

/* order details */
#orderDetails h3 {
=09border-bottom:1px solid #ccc;
=09margin:0 0 3px 0;
=09padding:0 0 3px 0;
}

#orderDetails .frame {
=09padding:16px 20px 6px 20px;
}

#orderDetails .orderDate {
=09color:#666666;
=09font-size:12px;
}

#orderDetails span {
=09font-size:12px;
=09color:#666;"
}

#orderDetails p {
=09margin:2px 0 9px 0;=09
}

/* item details */
#itemDetails {
=09width: 95%;
}

#itemDetails .photo {
=09width:150px;
=09text-align:center;
=09padding:16px 0 10px 0;
}

#itemDetails .photo .play img {
=09margin:3px 0 0 0;=09
}

#itemDetails .name {
=09color:#666;
=09padding:10px 0 0 0;
}

#itemDetails ul {
=09margin:0;
=09padding:0;
}

#itemDetails ul li {
=09list-style-type:none;
=09line-height:14px;
=09padding:0 0 4px 0;
}

#itemDetails ul li a {
=09font-size:14px;
}

#itemDetails .name p {
=09margin:0;
=09padding:10px 0 0 0;
=09font-size:12px;
=09line-height:16px;
}

#itemDetails .name p a {
=09font-size:12px;
=09text-decoration:none;
=09color:#006699;
}

#itemDetails .name .share {
=09margin:3px 0 15px 0;=09
}

#itemDetails .name .share a {
=09margin:4px 5px 0 0;
=09font-size:0;
}

#itemDetails .name .supportingDetails,=20
#itemDetails .name .supportingDetails a {
=09margin:8px 0 0 0;
=09font-size:12px;
}

#itemDetails .price {
=09width:80px;
=09text-align:right;
=09font-size:14px;
=09padding:10px 10px 0 0;=09
}

#itemDetails .price a {
=09text-decoration:none;
    color:#006699;
}

#itemDetails .divider {
=09border-top:1px solid #eaeaea;
=09padding:0 0 16px 0;
}

#itemDetails .name table {
        border-collapse: separate;
}

/* cost breakdown */
#costBreakdow {
=09width:95%;
}

#costBreakdown td {
=09text-align:right;
=09line-height:18px;
=09padding:0 10px 0 0;=09
}

#costBreakdown .divider {
=09border-top:1px solid #eaeaea;
=09padding:0 0 16px 0;
}

#costBreakdown .end {
=09padding:0 0 16px 0;
}

#costBreakdown .price {
=09width:150px;
}

#costBreakdown .total {
=09font-size:14px;
=09font-weight:bold;
=09font: 12px/ 16px Arial, sans-serif;
}

/* additional shipments */
#additionalShipments {
=09font-size:11px;
}

#additionalShipments h3 {
=09margin:10px 0 0 0;=09
}

#additionalShipments p {
=09margin:10px 20px 0px 20px;
}

#additionalShipments .orderDate {
=09color:#666666;
=09font-size:12px;
}

#additionalShipments .details {
=09padding:10px 20px 10px 20px;
}

#additionalShipments .details .label {
=09color:#666666;
=09font-weight:bold;=09
}

#additionalShipments .details .edd, #additionalShipments .details .quantity=
 {
=09font-weight:bold;=09
}

/* self service */
#selfService .divider {
=09border-top:1px solid #ccc;
=09padding:0 0 16px 0;
}

#selfService a{
=09text-decoration:none;
=09color:#006699;=09
}

/* closing */
#closing {
=09padding:0 0 20px 0;
=09border-collapse:none;
}

#closing p {
=09padding:0 0 20px 0;
=09border-bottom:1px solid #eaeaea;
=09margin:0;=09
}

#closing .signature {
=09font-size:16px;
=09font-weight:bold;
}

#closing a{
=09text-decoration:none;
=09color:#006699;=09
}

/* marketing content */
#marketingContent {
=09border-bottom:1px solid #ccc;
=09border-collapse:none;
=09padding:0 0 20px 0;=09
}

#marketingContent td {
}

#marketingContent td.right {
}

/* legal copy */
#legalCopy {
=09margin:20px 0 0 0;
}

#legalCopy p {
=09font-size:10px;
=09color:#666;
=09line-height:16px;
=09margin:0 0 10px 0;=09
=09font:10px;
}

#legalCopy a {
=09font-size:10px;
=09font:10px;
=09text-decoration:none;
=09color:#006699;=09
}

/* reg fee */
#regFee td {
=09colspan: 2;
=09border-top:1px solid #ccc;
}

</style>=20
  <title>
=09=09=09=09Il tuo ordine Amazon.it Transcend TS1TSJ25M3 1TB...
=09</title>=20
 </head>=20
 <body style=3D"margin: 0; font: 12px/ 16px Arial, sans-serif">=20
  <table id=3D"container" style=3D"width: 640px; color: rgb(51, 51, 51); ma=
rgin: 0 auto; border-collapse: collapse">=20
   <tbody>
    <tr>=20
     <td class=3D"frame" style=3D"padding: 0 20px 20px 20px; vertical-align=
: top; font-size: 12px; line-height: 18px; font-family: Arial, sans-serif">=
=20
      <table id=3D"main" style=3D"width: 100%; border-collapse: collapse">=
=20
       <tbody>
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"header" style=3D"width: 100%; border-collapse: colla=
pse">=20
           <tbody>
            <tr>=20
             <td rowspan=3D"2" class=3D"logo" style=3D"width: 115px; paddin=
g: 20px 20px 0 0; vertical-align: top; font-size: 12px; line-height: 18px; =
font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.it/gp/r.html?=
C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F=
%2Fwww.amazon.it%2Fref%3Dpe_386201_41597321_TE_logo&A=3DEHZRJTU805Q3XBJPPSW=
JNVMNUAOA&H=3DPBRI15BTADYP6R2KC61KSB54IQKA" title=3D"Visita Amazon.it" styl=
e=3D"text-decoration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial=
, sans-serif"> <img alt=3D"Amazon" src=3D"http://g-ec2.images-amazon.com/im=
ages/G/29/x-locale/common/logo-and-your-done._V185550511_.gif" style=3D"bor=
der: 0; width: 115px" /> </a> </td>=20
             <td class=3D"navigation" style=3D"text-align: right; padding: =
5px 0; border-bottom: 1px solid rgb(204, 204, 204); white-space: nowrap; ve=
rtical-align: top; font-size: 12px; line-height: 18px; font-family: Arial, =
sans-serif"> </td>
             <td style=3D"width: 100%; padding: 7px 5px 0; text-align: righ=
t; border-bottom: 1px solid rgb(204, 204, 204); white-space: nowrap; vertic=
al-align: top; font-size: 12px; line-height: 18px; font-family: Arial, sans=
-serif" class=3D"navigation"> <a href=3D"http://www.amazon.it/gp/r.html?C=
=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F%=
2Fwww.amazon.it%2Fgp%2Fcss%2Fyour-orders-access%2Fref%3Dpe_386201_41597321_=
TE_yo&A=3DXOFD1GJYUULMRXUE8WRUDIMVGXUA&H=3DAYBTPZ5FHJMCLS761JHXUHYMAK4A" st=
yle=3D"border-right: 0px solid rgb(204, 204, 204); margin-right: 0px; paddi=
ng-right: 0px; text-decoration: none; color: rgb(0, 102, 153); font: 12px/ =
16px Arial, sans-serif">I miei ordini</a> </td>=20
             <td class=3D"navigation" style=3D"text-align: right; padding: =
5px 0; border-bottom: 1px solid rgb(204, 204, 204); white-space: nowrap; ve=
rtical-align: top; font-size: 12px; line-height: 18px; font-family: Arial, =
sans-serif"> <span style=3D"text-decoration: none; color: rgb(204, 204, 204=
); font-size: 15px; font-family: Arial, sans-serif">&nbsp;|&nbsp;</span> <a=
 href=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLID=
L&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F%2Fwww.amazon.it%2Fgp%2Fcss%2Fyour-=
account-access%2Fref%3Dpe_386201_41597321_TE_ya&A=3DYBBAFSULQZKKTA8WRCNC11U=
FRJMA&H=3D9BQMGQDUTTW84ODJRONQQCHOZD8A" style=3D"border-right: 0px solid rg=
b(204, 204, 204); margin-right: 0px; padding-right: 0px; text-decoration: n=
one; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">Il mio ac=
count</a> <span style=3D"text-decoration: none; color: rgb(204, 204, 204); =
font-size: 15px; font-family: Arial, sans-serif">&nbsp;|&nbsp;</span> <a hr=
ef=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=
=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F%2Fwww.amazon.it%2Fref%3Dpe_386201_415=
97321_TE_cn&A=3DUT2CNNKH1AREDW2BWZUK43T6TREA&H=3DMXYPH5UMYGYR0ACOTDMGGGD6TO=
UA" style=3D"border-right: 0px solid rgb(204, 204, 204); margin-right: 0px;=
 padding-right: 0px; text-decoration: none; color: rgb(0, 102, 153); font: =
12px/ 16px Arial, sans-serif">Amazon.it</a> </td> =20
            </tr>=20
            <tr>=20
             <td colspan=3D"3" class=3D"title" style=3D"text-align: right; =
padding: 7px 0 5px 0; vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif"> <h2 style=3D"font-size: 20px; line-hei=
ght: 24px; margin: 0; padding: 0; font-weight: normal; color: rgb(0, 0, 0) =
!important">Conferma ordine</h2> Ordine n&deg;<a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttps%3A%2F%2Fwww.amazon.it%2Fgp%2Fcss%2Forder-details%3ForderId%3D171-8=
939147-1110759%26ref_%3Dpe_386201_41597321_TE_on&A=3D5LTXZPY5AAENXKAHKI1HLJ=
MLBUWA&H=3DAFOKN4AWW0UASBOGF6Y4LZYRMKEA" style=3D"text-decoration: none; co=
lor: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">171-8939147-1110=
759</a> <br /> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"summary" style=3D"width: 100%; border-collapse: coll=
apse">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <h3 style=3D"font-size: 18px; colo=
r: rgb(204, 102, 0); margin: 15px 0 0 0; font-weight: normal">Gentile Andre=
a,</h3> <p style=3D"margin: 5px 0 0 0; font: 12px/ 16px Arial, sans-serif">=
 Grazie per il tuo ordine. Ti invieremo un'e-mail quando i tuoi articoli sa=
ranno spediti. La tua data di consegna prevista &egrave; indicata in basso.=
 Puoi consultare la sezione <a href=3D"http://www.amazon.it/gp/r.html?C=3D2=
B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F%2Fww=
w.amazon.it%2Fgp%2Fcss%2Fyour-orders-access%2Fref%3Dpe_386201_41597321_TE_g=
s&A=3DXJZABSGEGAQNYYFDJ6KAOZBBLKKA&H=3DMLWLA5HIVIUDAWTTORQQZSODYI8A" style=
=3D"text-decoration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial,=
 sans-serif">I miei ordini</a> su Amazon.it per visualizzare lo stato del t=
uo ordine o apportare delle modifiche. </p> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table style=3D"border-collapse: collapse">=20
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table style=3D"width: 100%; border-top: 3px solid rgb(45, 55, 65=
); border-collapse: collapse" id=3D"criticalInfo">=20
           <tbody>
            <tr>=20
             <td style=3D"font-size: 14px; padding: 11px 18px 18px 18px; ba=
ckground-color: rgb(239, 239, 239); width: 50%; vertical-align: top; line-h=
eight: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 2px 0 9px=
 0; font: 14px Arial, sans-serif"> <span style=3D"font-size: 14px; color: r=
gb(102, 102, 102)">La tua data di consegna prevista &egrave;: </span> <br /=
> <b> mercoled&igrave; 11 febbraio 2015 - <br /> gioved&igrave; 12 febbraio=
 2015 </b> </p> <p style=3D"margin: 2px 0 9px 0; font: 14px Arial, sans-ser=
if"> <span style=3D"font-size: 14px; color: rgb(102, 102, 102)">La tua moda=
lit&agrave; di spedizione &egrave;: </span> <br /> <b> 3-5 giorni </b> </p>=
 <a href=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSK=
LIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F%2Fwww.amazon.it%2Fgp%2Fcss%2For=
der-details%3ForderId%3D171-8939147-1110759%26ref_%3Dpe_386201_41597321_TE_=
on_sh&A=3DNZVHKDNVFAGXLDXGIVGQPIQGGRGA&H=3DXOHETDRJ5ZFHJNCEI1WOI7HOSW0A" st=
yle=3D"font-size: 11px; color: rgb(0, 102, 153); text-decoration: none; fon=
t: 12px/ 16px Arial, sans-serif"> <img alt=3D"I miei ordini" border=3D"0" i=
d=3D"yourOrders" src=3D"http://g-ec2.images-amazon.com/images/G/29/x-locale=
/cs/te/orderdetailsIT._V359483499_.png" style=3D"border: 0" /> </a> </td>=
=20
             <td style=3D"font-size: 14px; padding: 11px 18px 18px 18px; ba=
ckground-color: rgb(239, 239, 239); width: 50%; vertical-align: top; line-h=
eight: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 2px 0 9px=
 0; font: 14px Arial, sans-serif"> <span style=3D"font-size: 14px; color: r=
gb(102, 102, 102)">L'ordine sar&agrave; spedito a:</span> <br /> <b> Andrea=
 Jemmett <br /> Via Melo da Bari, 199 <br /> Bari, BA 70121 <br /> Italia <=
/b> </p> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"background-color: rgb(256, 256, 256=
); padding: 10px 0px 0px 0px; font-size: 14px; width: 50%; vertical-align: =
top; line-height: 18px; font-family: Arial, sans-serif"> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"border-bottom: 1px solid rgb(204, 204, 204); vertical=
-align: top; font-size: 12px; line-height: 18px; font-family: Arial, sans-s=
erif"> <h3 style=3D"font-size: 18px; color: rgb(204, 102, 0); margin: 15px =
0 0 0; font-weight: normal">Dettagli ordine</h3> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"orderDetails" style=3D"width: 100%; border-collapse:=
 collapse">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> Ordine n&deg;<a href=3D"http://www=
.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&=
T=3DC&U=3Dhttps%3A%2F%2Fwww.amazon.it%2Fgp%2Fcss%2Forder-details%3ForderId%=
3D171-8939147-1110759%26ref_%3Dpe_386201_41597321_TE_on&A=3D5LTXZPY5AAENXKA=
HKI1HLJMLBUWA&H=3DAFOKN4AWW0UASBOGF6Y4LZYRMKEA" style=3D"text-decoration: n=
one; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">171-89391=
47-1110759</a> <br /> <span style=3D"font-size: 12px; color: rgb(102, 102, =
102)">Effettuato venerd&igrave; 06 febbraio 2015</span> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"padding-left: 32px; vertical-align: top; font-size: 1=
2px; line-height: 18px; font-family: Arial, sans-serif">=20
          <table style=3D"width: 95%; border-collapse: collapse" id=3D"item=
Details">=20
           <tbody>
            <tr>=20
             <td class=3D"photo" style=3D"width: 150px; text-align: center;=
 padding: 16px 0 10px 0; vertical-align: top; font-size: 12px; line-height:=
 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.it/gp/=
r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp=
%3A%2F%2Fwww.amazon.it%2Fdp%2FB005MNGQ6C%2Fref%3Dpe_386201_41597321_TE_item=
_image&A=3D5PAYVM9CWOE5050MREBNCYSXWNIA&H=3DJFMZQFVYSPYGDRJ75QDCOY4A4R4A" t=
itle=3D"B005MNGQ6C" style=3D"text-decoration: none; color: rgb(0, 102, 153)=
; font: 12px/ 16px Arial, sans-serif"> <img id=3D"asin" src=3D"http://ecx.i=
mages-amazon.com/images/I/31f9dtmKL-L._SCLZZZZZZZ__SY115_SX115_.jpg" style=
=3D"border: 0" /> </a> </td>=20
             <td class=3D"name" style=3D"color: rgb(102, 102, 102); padding=
: 10px 0 0 0; vertical-align: top; font-size: 12px; line-height: 18px; font=
-family: Arial, sans-serif"> <a href=3D"http://www.amazon.it/gp/r.html?C=3D=
2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%2Fww=
w.amazon.it%2Fdp%2FB005MNGQ6C%2Fref%3Dpe_386201_41597321_TE_item&A=3D34I8DH=
AAPA1CEKJZ8ERPVF6ITTGA&H=3DZUZU0WPZOWAGX4KMC81RY3ZGLDOA" style=3D"text-deco=
ration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">=
 Transcend TS1TSJ25M3 1TB Hard Disk Portatile 2.5&quot;, USB 3.0, Alloggiam=
ento Antiurto, Nero/Antracite </a> <br /> Condizione: Nuovo <br /> Venduto =
da <a href=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QG=
SKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%2Fwww.amazon.it%2Fgp%2Fhelp%2F=
seller%2Fhome.html%2Fref%3Dpe_386201_41597321_TE_seller%3Fie%3DUTF8%26selle=
r%3DA3QZ8CVCV8QA1K&A=3DNQ33NO6AJTE7SBQ093KQOJXAQAKA&H=3DP6DXJKYVER9SSI3KMNF=
PBLL4EUMA" style=3D"text-decoration: none; color: rgb(0, 102, 153); font: 1=
2px/ 16px Arial, sans-serif">berlin foto</a> <br /> <a href=3D"http://www.a=
mazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=
=3DC&U=3Dhttp%3A%2F%2Fwww.amazon.it%2Flogistica_amazon%3Fref%3DTE_helpfba%2=
6ref_%3Dpe_386201_41597321&A=3DLYHGOKTAEDHD4H4ERRUSWDU0S74A&H=3DL6TTEWLAKFA=
VXTC3J48LLKL6AJIA" style=3D"text-decoration: none; color: rgb(0, 102, 153);=
 font: 12px/ 16px Arial, sans-serif">Gestito da Logistica di Amazon </a> <b=
r />=20
              <div style=3D"vertical-align: top; align=3Dcenter;">=20
               <table border=3D"0" cellspacing=3D"4" cellpadding=3D"0" styl=
e=3D"border-collapse: separate">=20
                <tbody style=3D"vertical-align: bottom;">=20
                 <tr>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_fa_doce%2F187-6731444-6042200%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Fwww.facebook.com%252Fdialog%252Ffeed%253Fapp_id%253=
D164734381262%2526caption%253D%2526display%253Dpopup%2526link%253Dhttp%2525=
3A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB005MNGQ6C%25252Fref%25253Dcm_=
sw_r_fa_doce%2526name%253D%2526picture%253Dhttp%25253A%25252F%25252Fecx.ima=
ges-amazon.com%25252Fimages%25252FI%25252F31f9dtmKL-L._SCLZZZZZZZ__SY115_SX=
115_.jpg%2526redirect_uri%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252F=
dp%25252FB005MNGQ6C%25252Fref%25253Dcm_sw_r_fa_doce%26source%3Dstandards%26=
token%3D6BD0FB927CC51E76FF446584B1040F70EA7E88E1&A=3DPH7YULKEYAJCPCP8Q9ROK1=
H6VBAA&H=3DQSBMAXUAAP4RVNUTYRIW9CJCYVKA" title=3D"Share on Facebook" style=
=3D"text-decoration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial,=
 sans-serif"> <img src=3D"http://g-ecx.images-amazon.com/images/G/01/x-loca=
le/personalization/live-meter/facebook._V199133872_.gif" width=3D"16" alt=
=3D"Facebook" style=3D"vertical-align: middle; border: 0" height=3D"16" bor=
der=3D"0" /> </a> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_tw_doce%2F187-6731444-6042200%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Ftwitter.com%252Fshare%253Fcount%253Dnone%2526origin=
al_referer%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB005MN=
GQ6C%25252Fref%25253Dcm_sw_r_tw_doce%2526related%253Damazon%25252Camazondea=
ls%25252Camazonmp3%2526text%253DTranscend%252520TS1TSJ25M3%2525201TB%252520=
Hard%252520Disk%252520Portatile%2525202.5%252526%25252334%25253B%25252C%252=
520USB%2525203.0%25252C%252520Alloggiamento%252520Antiurto%25252C%252520Ner=
o%25252FAntracite%252520por%252520Amazon%2526twitterURL%253Dhttp%25253A%252=
52F%25252Fwww.amazon.it%25252Fdp%25252FB005MNGQ6C%25252Fref%25253Dcm_sw_r_t=
w_doce%2526via%253Damazon%26source%3Dstandards%26token%3D7A1A4AE8F6CE0BD277=
D8295E58702D283F329C0F&A=3DJJTCBGEQSYNY5CSA1QT7QGFHR0QA&H=3D2YHVFAMJIWJOCNB=
ZXDPWNC4XXWCA" title=3D"Share on Twitter" style=3D"text-decoration: none; c=
olor: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif"> <img src=3D"ht=
tp://g-ecx.images-amazon.com/images/G/01/x-locale/communities/social/twitte=
r._V388046070_.gif" width=3D"16" alt=3D"Twitter" style=3D"vertical-align: m=
iddle; border: 0" height=3D"16" border=3D"0" /> </a> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_pi_doce%2F187-6731444-6042200%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Fpinterest.com%252Fpin%252Fcreate%252Fbutton%252F%25=
3Fdescription%253DTranscend%252520TS1TSJ25M3%2525201TB%252520Hard%252520Dis=
k%252520Portatile%2525202.5%252526%25252334%25253B%25252C%252520USB%2525203=
.0%25252C%252520Alloggiamento%252520Antiurto%25252C%252520Nero%25252FAntrac=
ite%252520por%252520Amazon%25252C%252520http%25253A%25252F%25252Fwww.amazon=
.it%25252Fdp%25252FB005MNGQ6C%25252Fref%25253Dcm_sw_r_pi_doce%2526is_video%=
253Dfalse%2526media%253Dhttp%25253A%25252F%25252Fecx.images-amazon.com%2525=
2Fimages%25252FI%25252F31f9dtmKL-L._SCLZZZZZZZ__SY115_SX115_.jpg%2526title%=
253D%2526url%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB005=
MNGQ6C%25252Fref%25253Dcm_sw_r_pi_doce%26source%3Dstandards%26token%3D9F58B=
366258E1A8B5259E9BEF3482E02341F42D3&A=3D41FP97JPI1BAYYR35RVU7FJY7KGA&H=3DMA=
JNB2MVAFNVLTZIYPUZ7E8E9IQA" title=3D"Pin it on Pinterest" style=3D"text-dec=
oration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif"=
> <img src=3D"http://g-ecx.images-amazon.com/images/G/01/x-locale/communiti=
es/social/pinterest._V149279734_.png" width=3D"16" alt=3D"Pinterest" style=
=3D"vertical-align: middle; border: 0" height=3D"16" border=3D"0" /> </a> <=
/td>=20
                 </tr>=20
                </tbody>=20
               </table>=20
              </div> </td>=20
             <td class=3D"price" style=3D"width: 80px; text-align: right; f=
ont-size: 14px; padding: 10px 10px 0 0; vertical-align: top; line-height: 1=
8px; font-family: Arial, sans-serif"> <strong>EUR 69,00</strong> <br /> </t=
d>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"padding-left: 32px; vertical-align: top; font-size: 1=
2px; line-height: 18px; font-family: Arial, sans-serif">=20
          <table style=3D"width: 95%; border-collapse: collapse" id=3D"cost=
Breakdown">=20
           <tbody>
            <tr>=20
             <td colspan=3D"2" class=3D"divider" style=3D"border-top: 1px s=
olid rgb(234, 234, 234); padding: 0 0 16px 0; text-align: right; line-heigh=
t: 18px; vertical-align: top; font-size: 12px; font-family: Arial, sans-ser=
if"> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"text-align: right; line-height: 18px; padding: 0 =
10px 0 0; vertical-align: top; font-size: 12px; font-family: Arial, sans-se=
rif"> Totale parziale degli articoli: </td>=20
             <td class=3D"price" style=3D"width: 150px; text-align: right; =
line-height: 18px; padding: 0 10px 0 0; vertical-align: top; font-size: 12p=
x; font-family: Arial, sans-serif"> EUR 69,00 </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"text-align: right; line-height: 18px; padding: 0 =
10px 0 0; vertical-align: top; font-size: 12px; font-family: Arial, sans-se=
rif"> Costi di spedizione: </td>=20
             <td class=3D"price" style=3D"width: 150px; text-align: right; =
line-height: 18px; padding: 0 10px 0 0; vertical-align: top; font-size: 12p=
x; font-family: Arial, sans-serif"> EUR 0,00 </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; font: 12px/ 16px Arial=
, sans-serif"></p> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; font: 12px/ 16px Arial=
, sans-serif"></p> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; font: 12px/ 16px Arial=
, sans-serif"></p> </td>=20
            </tr>=20
            <tr>=20
             <td class=3D"total" style=3D"font-size: 14px; font-weight: bol=
d; font: 12px/ 16px Arial, sans-serif; text-align: right; line-height: 18px=
; padding: 0 10px 0 0; vertical-align: top; font-family: Arial, sans-serif"=
> <strong> Totale IVA inclusa (ove applicabile):</strong> </td>=20
             <td class=3D"total" style=3D"font-size: 14px; font-weight: bol=
d; font: 12px/ 16px Arial, sans-serif; text-align: right; line-height: 18px=
; padding: 0 10px 0 0; vertical-align: top; font-family: Arial, sans-serif"=
> <strong>EUR 69,00</strong> </td>=20
            </tr>=20
            <tr>=20
             <td rowspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> Metodo di pagamento selezionato: </td>=20
             <td class=3D"price" style=3D"width: 150px; text-align: right; =
line-height: 18px; padding: 0 10px 0 0; vertical-align: top; font-size: 12p=
x; font-family: Arial, sans-serif"> Mastercard </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" class=3D"end" style=3D"padding: 0 0 16px 0; =
text-align: right; line-height: 18px; vertical-align: top; font-size: 12px;=
 font-family: Arial, sans-serif"> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" class=3D"divider" style=3D"border-top: 1px s=
olid rgb(234, 234, 234); padding: 0 0 16px 0; text-align: right; line-heigh=
t: 18px; vertical-align: top; font-size: 12px; font-family: Arial, sans-ser=
if"> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"selfService" style=3D"width: 100%; border-collapse: =
collapse">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; f=
ont: 12px/ 16px Arial, sans-serif">L'addebito verr&agrave; effettuato sul m=
etodo di pagamento prescelto solamente quando gli articoli verranno spediti=
.</p> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; f=
ont: 12px/ 16px Arial, sans-serif"> Desideri apportare delle modifiche al t=
uo ordine? Visita la nostra pagina di aiuto <a href=3D"http://www.amazon.it=
/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3D=
http%3A%2F%2Fwww.amazon.it%2Fmodificare_ordine%3Fref_%3Dpe_386201_41597321_=
TE_ss&A=3DTWBWNBKPAQKAHOKKI2GBT3T5DTIA&H=3DADISWXFHTIHRK3DEKZ1FYCHRSBYA" st=
yle=3D"text-decoration: none; color: rgb(0, 102, 153); font: 12px/ 16px Ari=
al, sans-serif">Modifica i dettagli dell'ordine</a> per maggiori informazio=
ni e per visualizzare i nostri video. </p> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"closing" style=3D"width: 100%; padding: 0 0 20px 0; =
border-collapse: none">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"padding: 0 0 20px 0; b=
order-bottom: 1px solid rgb(234, 234, 234); margin: 0; font: 12px/ 16px Ari=
al, sans-serif"> A presto,<br /> <span class=3D"signature" style=3D"font-si=
ze: 16px; font-weight: bold"> <strong>Amazon.it</strong> </span> </p> </td>=
=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"marketingContent" style=3D"width: 100%; border-botto=
m: 1px solid rgb(204, 204, 204); border-collapse: none; padding: 0 0 20px 0=
">=20
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"legalCopy" style=3D"width: 100%; margin: 20px 0 0 0;=
 border-collapse: collapse">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"font-size: 10px; color=
: rgb(102, 102, 102); line-height: 16px; margin: 0 0 10px 0; font: 10px"> G=
li articoli indicati come &quot;Logistica di Amazon&quot; sono venduti da v=
enditori terzi su Amazon Marketplace e sono depositati presso un Centro di =
distribuzione Amazon che poi li spedir&agrave; direttamente ai clienti. I w=
arehousedeals sono articoli venduti da Amazon EU Sarl e gestiti con la <a h=
ref=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&=
R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%2Fwww.amazon.it%2Flogistica_amazon%3F=
ref%3DTE_helpfba%26ref_%3Dpe_386201_41597321&A=3DLYHGOKTAEDHD4H4ERRUSWDU0S7=
4A&H=3DL6TTEWLAKFAVXTC3J48LLKL6AJIA" style=3D"font-size: 10px; font: 10px; =
text-decoration: none; color: rgb(0, 102, 153)">Logistica di Amazon</a>. </=
p> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"font-size: 10px; color=
: rgb(102, 102, 102); line-height: 16px; margin: 0 0 10px 0; font: 10px"> G=
li articoli venduti da Amazon EU Sarl sono soggetti all'Imposta sul Valore =
Aggiunto nel territorio di destinazione della merce in conformit&agrave; al=
le leggi vigenti sulle cd. vendite a distanza. Se il tuo ordine contiene mo=
lteplici articoli acquistati presso Amazon EU Sarl e i nostri venditori ter=
zi, potrai essere soggetto all'Imposta sul Valore Aggiunto regolata dalle n=
orme stabilite dal venditore terzo e la sua sede operativa. </p> <p style=
=3D"font-size: 10px; color: rgb(102, 102, 102); line-height: 16px; margin: =
0 0 10px 0; font: 10px"> Per maggiori informazioni, visita la nostra pagina=
 di aiuto <a href=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA=
2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%2Fwww.amazon.it%2Fiva_f=
atturazione%3Fref_%3Dpe_386201_41597321_TE_vat&A=3DLAKUIVCBZT1N4JPGKLEURGVA=
AA0A&H=3DITAVD4PX0WTDQLNZAML3Y2DOQXOA" style=3D"font-size: 10px; font: 10px=
; text-decoration: none; color: rgb(0, 102, 153)">Iva e fatturazione</a>. <=
/p> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"font-size: 10px; color=
: rgb(102, 102, 102); line-height: 16px; margin: 0 0 10px 0; font: 10px"> S=
e i tuoi articoli sono stati acquistati presso i venditori terzi di Amazon =
Marketplace, il venditore potrebbe chiederti ulteriori informazioni, quali =
il numero di Partita Iva o il tuo Codice Fiscale, ai fini di emettere una f=
attura valida. </p> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"font-size: 10px; color=
: rgb(102, 102, 102); line-height: 16px; margin: 0 0 10px 0; font: 10px"> Q=
uesta e-mail costituisce una semplice conferma di ricezione del tuo ordine.=
 Il contratto di vendita si perfeziona soltanto nel momento in cui ricevera=
i l'e-mail che conferma la spedizione degli articoli. </p> <p style=3D"font=
-size: 10px; color: rgb(102, 102, 102); line-height: 16px; margin: 0 0 10px=
 0; font: 10px"> Nota: questa &egrave; un'e-mail generata automaticamente e=
 non avremo la possibilit&agrave; di leggere eventuali e-mail di risposta. =
Non rispondere a questo messaggio. </p> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
       </tbody>
      </table> </td>=20
    </tr>=20
   </tbody>
  </table> =20
 <img src=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGS=
KLIDL&R=3DBVB1JPYHQO0B&T=3DE&U=3Dhttp%3A%2F%2Fimages-eu.amazon.com%2Fimages=
%2FG%2F01%2Fnav%2Ftransp.gif&A=3DTJH2AH1Y5ASTPKPNGTAHFE44A08A&H=3DZTNOA4AT2=
FASWJQH48ROM3THHAIA" /></body>
</html>=20
eos
doc2_tagged = <<-eos
<html><head>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>
				Il tuo ordine Amazon.it Transcend TS1TSJ25M3 1TB...
	</title>
 </head>
 <body>
  <table id="container">
   <tbody>
    <tr>
     <td class="frame">
      <table id="main">
       <tbody>
        <tr>
         <td>
          <table id="header">
           <tbody>
            <tr>
             <td rowspan="2" class="logo"> <a title="Visita Amazon.it"> <img alt="Amazon" src="http://g-ec2.images-amazon.com/images/G/29/x-locale/common/logo-and-your-done._V185550511_.gif"> </a> </td>
             <td class="navigation"> </td>
             <td class="navigation"> <a>I miei ordini</a> </td>
             <td class="navigation"> <span>&nbsp;|&nbsp;</span> <a>Il mio account</a> <span>&nbsp;|&nbsp;</span> <a>Amazon.it</a> </td>
            </tr>
            <tr>
             <td colspan="3" class="title"> <h2>Conferma ordine</h2> Ordine n°<a>171-8939147-1110759</a> <br> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="summary">
           <tbody>
            <tr>
             <td> <h3>Gentile Andrea,</h3> <p> Grazie per il tuo ordine. Ti invieremo un'e-mail quando i tuoi articoli saranno spediti. La tua data di consegna prevista è indicata in basso. Puoi consultare la sezione <a>I miei ordini</a> su Amazon.it per visualizzare lo stato del tuo ordine o apportare delle modifiche. </p> </td>
            </tr>
            <tr>
             <td> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table>
          </table> </td>
        </tr>
        <tr data-ariel-orders-condition="open" data-ariel-orders="true" data-ariel-order-condition="open" data-ariel-order="true">
         <td>
          <table id="criticalInfo">
           <tbody>
            <tr>
             <td> <p> <span>La tua data di consegna prevista è: </span> <br> <b> mercoledì 11 febbraio 2015 - <br> giovedì 12 febbraio 2015 </b> </p> <p> <span>La tua modalità di spedizione è: </span> <br> <b> 3-5 giorni </b> </p> <a> <img alt="I miei ordini" border="0" id="yourOrders" src="http://g-ec2.images-amazon.com/images/G/29/x-locale/cs/te/orderdetailsIT._V359483499_.png"> </a> </td>
             <td> <p> <span>L'ordine sarà spedito a:</span> <br> <b> Andrea Jemmett <br> Via Melo da Bari, 199 <br> Bari, BA 70121 <br> Italia </b> </p> </td>
            </tr>
            <tr>
             <td colspan="2"> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-order="true">
         <td> <h3>Dettagli ordine</h3> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-order="true">
         <td>
          <table id="orderDetails">
           <tbody>
            <tr>
             <td> Ordine n°<a>171-8939147-1110759</a> <br> <span>Effettuato venerdì <span data-ariel-date="true" data-ariel-date-condition="open">06 febbraio 2015</span></span> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-order="true">
         <td>
          <table id="itemDetails">
           <tbody>
            <tr>
             <td class="photo" data-ariel-products-condition="open" data-ariel-products="true" data-ariel-product-condition="open" data-ariel-product="true"> <a title="B005MNGQ6C"> <img id="asin" src="http://ecx.images-amazon.com/images/I/31f9dtmKL-L._SCLZZZZZZZ__SY115_SX115_.jpg"> </a> </td>
             <td class="name" data-ariel-products="true" data-ariel-product="true"> <a> <span data-ariel-product_name="true" data-ariel-product_name-condition="open">Transcend TS1TSJ25M3 1TB Hard Disk Portatile 2.5", USB 3.0, Alloggiamento Antiurto, Nero/Antracite</span> </a> <br> Condizione: Nuovo <br> Venduto da <a>berlin foto</a> <br> <a>Gestito da Logistica di Amazon </a> <br>
              <div>
               <table border="0" cellspacing="4" cellpadding="0">
                <tbody>
                 <tr>
                  <td> </td>
                  <td> <a title="Share on Facebook"> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/personalization/live-meter/facebook._V199133872_.gif" width="16" alt="Facebook" height="16" border="0"> </a> </td>
                  <td> <a title="Share on Twitter"> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/communities/social/twitter._V388046070_.gif" width="16" alt="Twitter" height="16" border="0"> </a> </td>
                  <td> <a title="Pin it on Pinterest"> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/communities/social/pinterest._V149279734_.png" width="16" alt="Pinterest" height="16" border="0"> </a> </td>
                 </tr>
                </tbody>
               </table>
              </div> </td>
             <td class="price" data-ariel-products="true" data-ariel-products-condition="close" data-ariel-product="true" data-ariel-product-condition="close"> <strong><span data-ariel-product_price="true" data-ariel-product_price-condition="open">EUR 69,00</span></strong> <br> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-orders-condition="close" data-ariel-order="true" data-ariel-order-condition="close">
         <td>
          <table id="costBreakdown">
           <tbody>
            <tr>
             <td colspan="2" class="divider"> </td>
            </tr>
            <tr>
             <td> Totale parziale degli articoli: </td>
             <td class="price"> EUR 69,00 </td>
            </tr>
            <tr>
             <td> Costi di spedizione: </td>
             <td class="price"> EUR 0,00 </td>
            </tr>
            <tr>
             <td colspan="2"> <p></p> </td>
            </tr>
            <tr>
             <td colspan="2"> <p></p> </td>
            </tr>
            <tr>
             <td colspan="2"> <p></p> </td>
            </tr>
            <tr>
             <td class="total"> <strong> Totale IVA inclusa (ove applicabile):</strong> </td>
             <td class="total"> <strong><span data-ariel-total="true" data-ariel-total-condition="open">EUR 69,00</span></strong> </td>
            </tr>
            <tr>
             <td rowspan="2"> Metodo di pagamento selezionato: </td>
             <td class="price"> Mastercard </td>
            </tr>
            <tr>
             <td colspan="2" class="end"> </td>
            </tr>
            <tr>
             <td colspan="2" class="divider"> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="selfService">
           <tbody>
            <tr>
             <td> <p>L'addebito verrà effettuato sul metodo di pagamento prescelto solamente quando gli articoli verranno spediti.</p> </td>
            </tr>
            <tr>
             <td> <p> Desideri apportare delle modifiche al tuo ordine? Visita la nostra pagina di aiuto <a>Modifica i dettagli dell'ordine</a> per maggiori informazioni e per visualizzare i nostri video. </p> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="closing">
           <tbody>
            <tr>
             <td> <p> A presto,<br> <span class="signature"> <strong>Amazon.it</strong> </span> </p> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="marketingContent">
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="legalCopy">
           <tbody>
            <tr>
             <td> <p> Gli articoli indicati come "Logistica di Amazon" sono venduti da venditori terzi su Amazon Marketplace e sono depositati presso un Centro di distribuzione Amazon che poi li spedirà direttamente ai clienti. I warehousedeals sono articoli venduti da Amazon EU Sarl e gestiti con la <a>Logistica di Amazon</a>. </p> </td>
            </tr>
            <tr>
             <td> <p> Gli articoli venduti da Amazon EU Sarl sono soggetti all'Imposta sul Valore Aggiunto nel territorio di destinazione della merce in conformità alle leggi vigenti sulle cd. vendite a distanza. Se il tuo ordine contiene molteplici articoli acquistati presso Amazon EU Sarl e i nostri venditori terzi, potrai essere soggetto all'Imposta sul Valore Aggiunto regolata dalle norme stabilite dal venditore terzo e la sua sede operativa. </p> <p> Per maggiori informazioni, visita la nostra pagina di aiuto <a>Iva e fatturazione</a>. </p> </td>
            </tr>
            <tr>
             <td> <p> Se i tuoi articoli sono stati acquistati presso i venditori terzi di Amazon Marketplace, il venditore potrebbe chiederti ulteriori informazioni, quali il numero di Partita Iva o il tuo Codice Fiscale, ai fini di emettere una fattura valida. </p> </td>
            </tr>
            <tr>
             <td> <p> Questa e-mail costituisce una semplice conferma di ricezione del tuo ordine. Il contratto di vendita si perfeziona soltanto nel momento in cui riceverai l'e-mail che conferma la spedizione degli articoli. </p> <p> Nota: questa è un'e-mail generata automaticamente e non avremo la possibilità di leggere eventuali e-mail di risposta. Non rispondere a questo messaggio. </p> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
       </tbody>
      </table> </td>
    </tr>
   </tbody>
  </table>
 <img src="http://www.amazon.it/gp/r.html?C=2B97OIWAZEIT6&amp;K=A2CUI6QGSKLIDL&amp;R=BVB1JPYHQO0B&amp;T=E&amp;U=http%3A%2F%2Fimages-eu.amazon.com%2Fimages%2FG%2F01%2Fnav%2Ftransp.gif&amp;A=TJH2AH1Y5ASTPKPNGTAHFE44A08A&amp;H=ZTNOA4AT2FASWJQH48ROM3THHAIA">

</body></html>
eos
doc2 = doc2.unpack('M').join
Document.create! original: doc2, tagged: doc2_tagged, is_tagged: true

doc3 = <<-eos
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>=20
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8" =
/>=20
  <style type=3D"text/css">
body {
=09margin:0;
=09font:12px/16px Arial, sans-serif;=09
}

a {
=09text-decoration:none;
=09color:#006699;
=09font:12px/16px Arial, sans-serif;=09
}

a img {
=09border:0;
}

h2 {
=09font-size:20px;
=09line-height:24px;
=09margin:0;
=09padding:0;
=09font-weight:normal;=09
=09color:#000 !important;
}

h3 {
=09font-size: 18px;
=09color:#cc6600;
=09margin:15px 0 0 0;
=09font-weight: normal
}

h4 {
=09font-size:14px;=09
=09margin:0;
=09font-weight:normal;
}

p {
=09margin:1px 0 8px 0;
=09font:12px/16px Arial, sans-serif;=09
}

table {
=09border-collapse:collapse;=09
}

td {
=09vertical-align: top;
=09font-size: 12px;
=09line-height: 18px;
=09font-family: Arial, sans-serif
}

/* container */
#container {
=09width:640px;
=09color:#333;
=09margin:0 auto;
}

#container .frame {
=09padding:0 20px 20px 20px;=09
}

/* content tables */
#main, #header, #summary, #desiredInformation, #orderDetails, #itemDetails,=
 #costBreakdown,
#selfService, #closing, #marketingContent, #legalCopy {
=09width:100%;
}

/* header */
#header .logo {
=09width:115px;
=09padding:20px 20px 0 0;=09
}

#header .navigation {
=09text-align:right;
=09padding:5px 0;
=09border-bottom:1px solid #ccc;
=09white-space:nowrap;
}

#header .navigation a {
=09border-right:0px solid #CCC;
=09margin-right:0px;
=09padding-right:0px;
}

#header .navigation span {
 text-decoration:none; color:#CCC;
 font-size:15px;
 font-family:Arial, sans-serif;=20
}

#header .navigation a.last {
=09border:0;
=09margin:0;
=09padding:0;
}

#header .title {
=09text-align:right;
=09padding:7px 0 5px 0;
}

#header .title img {
=09padding:0 4px 0 0;
}

/* summary */
#summary a{
=09text-decoration:none;
=09color:#006699;=09
}

#summary p {
=09margin:5px 0 0 0;
=09font:12px/16px Arial, sans-serif;
}

/* critical info */
#criticalInfo {
=09border-top:3px solid #2d3741;
=09width: 95%;=20
}

#criticalInfo td {
=09font-size:14px;
=09padding:11px 18px 18px 18px;
=09background-color:#efefef;
=09width:50%;
}

#criticalInfo .label {
=09color:#666;=09
}

#criticalInfo p {
=09margin:2px 0 9px 0;
=09font:14px Arial, sans-serif;
}

#criticalInfo span {
=09font-size:14px;
=09color:#666;"
}

#criticalInfo a {
=09font-size:11px;
=09color:#006699;
=09text-decoration:none;=09
}

/* desiredInformation */
#desiredInformation a {
=09text-decoration:none;
=09color:#006699;=09
}

/* buttons */
.button {
=09text-decoration:none !important;
=09display:block;
=09height:26px;
=09display:inline-block;
=09margin:0 0 2px 0;
}

.button.small {
=09height:20px;
}

.button .expandable {
=09float:left;
=09overflow:hidden;
}

.button .text {
=09color:#000f68;
=09font-size:12px;
=09position:relative;
=09z-index:10;
=09top:-22px;
=09left:-12px;=09
=09text-align:center;
}

.button.secondary .text {
=09left:0;=09
}

.button.small .text {
=09top:-20px;
=09left:0;
=09font-size:11px;
}

/* supporting details */
#supportingDetails {
=09font-size:11px;
=09color:#666;
=09line-height:14px;
=09margin:10px 20px;
}

#supportingDetails {
=09margin:0 18px 0 18px;=09=09
}

/* order details */
#orderDetails h3 {
=09border-bottom:1px solid #ccc;
=09margin:0 0 3px 0;
=09padding:0 0 3px 0;
}

#orderDetails .frame {
=09padding:16px 20px 6px 20px;
}

#orderDetails .orderDate {
=09color:#666666;
=09font-size:12px;
}

#orderDetails span {
=09font-size:12px;
=09color:#666;"
}

#orderDetails p {
=09margin:2px 0 9px 0;=09
}

/* item details */
#itemDetails {
=09width: 95%;
}

#itemDetails .photo {
=09width:150px;
=09text-align:center;
=09padding:16px 0 10px 0;
}

#itemDetails .photo .play img {
=09margin:3px 0 0 0;=09
}

#itemDetails .name {
=09color:#666;
=09padding:10px 0 0 0;
}

#itemDetails ul {
=09margin:0;
=09padding:0;
}

#itemDetails ul li {
=09list-style-type:none;
=09line-height:14px;
=09padding:0 0 4px 0;
}

#itemDetails ul li a {
=09font-size:14px;
}

#itemDetails .name p {
=09margin:0;
=09padding:10px 0 0 0;
=09font-size:12px;
=09line-height:16px;
}

#itemDetails .name p a {
=09font-size:12px;
=09text-decoration:none;
=09color:#006699;
}

#itemDetails .name .share {
=09margin:3px 0 15px 0;=09
}

#itemDetails .name .share a {
=09margin:4px 5px 0 0;
=09font-size:0;
}

#itemDetails .name .supportingDetails,=20
#itemDetails .name .supportingDetails a {
=09margin:8px 0 0 0;
=09font-size:12px;
}

#itemDetails .price {
=09width:80px;
=09text-align:right;
=09font-size:14px;
=09padding:10px 10px 0 0;=09
}

#itemDetails .price a {
=09text-decoration:none;
    color:#006699;
}

#itemDetails .divider {
=09border-top:1px solid #eaeaea;
=09padding:0 0 16px 0;
}

#itemDetails .name table {
        border-collapse: separate;
}

/* cost breakdown */
#costBreakdow {
=09width:95%;
}

#costBreakdown td {
=09text-align:right;
=09line-height:18px;
=09padding:0 10px 0 0;=09
}

#costBreakdown .divider {
=09border-top:1px solid #eaeaea;
=09padding:0 0 16px 0;
}

#costBreakdown .end {
=09padding:0 0 16px 0;
}

#costBreakdown .price {
=09width:150px;
}

#costBreakdown .total {
=09font-size:14px;
=09font-weight:bold;
=09font: 12px/ 16px Arial, sans-serif;
}

/* additional shipments */
#additionalShipments {
=09font-size:11px;
}

#additionalShipments h3 {
=09margin:10px 0 0 0;=09
}

#additionalShipments p {
=09margin:10px 20px 0px 20px;
}

#additionalShipments .orderDate {
=09color:#666666;
=09font-size:12px;
}

#additionalShipments .details {
=09padding:10px 20px 10px 20px;
}

#additionalShipments .details .label {
=09color:#666666;
=09font-weight:bold;=09
}

#additionalShipments .details .edd, #additionalShipments .details .quantity=
 {
=09font-weight:bold;=09
}

/* self service */
#selfService .divider {
=09border-top:1px solid #ccc;
=09padding:0 0 16px 0;
}

#selfService a{
=09text-decoration:none;
=09color:#006699;=09
}

/* closing */
#closing {
=09padding:0 0 20px 0;
=09border-collapse:none;
}

#closing p {
=09padding:0 0 20px 0;
=09border-bottom:1px solid #eaeaea;
=09margin:0;=09
}

#closing .signature {
=09font-size:16px;
=09font-weight:bold;
}

#closing a{
=09text-decoration:none;
=09color:#006699;=09
}

/* marketing content */
#marketingContent {
=09border-bottom:1px solid #ccc;
=09border-collapse:none;
=09padding:0 0 20px 0;=09
}

#marketingContent td {
}

#marketingContent td.right {
}

/* legal copy */
#legalCopy {
=09margin:20px 0 0 0;
}

#legalCopy p {
=09font-size:10px;
=09color:#666;
=09line-height:16px;
=09margin:0 0 10px 0;=09
=09font:10px;
}

#legalCopy a {
=09font-size:10px;
=09font:10px;
=09text-decoration:none;
=09color:#006699;=09
}

/* reg fee */
#regFee td {
=09colspan: 2;
=09border-top:1px solid #ccc;
}

</style>=20
  <title>
=09=09=09=09Il tuo ordine Amazon.it Lomography - Diana F+ Senza... e 2 altr=
i articoli
=09</title>=20
 </head>=20
 <body style=3D"margin: 0; font: 12px/ 16px Arial, sans-serif">=20
  <table id=3D"container" style=3D"width: 640px; color: rgb(51, 51, 51); ma=
rgin: 0 auto; border-collapse: collapse">=20
   <tbody>
    <tr>=20
     <td class=3D"frame" style=3D"padding: 0 20px 20px 20px; vertical-align=
: top; font-size: 12px; line-height: 18px; font-family: Arial, sans-serif">=
=20
      <table id=3D"main" style=3D"width: 100%; border-collapse: collapse">=
=20
       <tbody>
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"header" style=3D"width: 100%; border-collapse: colla=
pse">=20
           <tbody>
            <tr>=20
             <td rowspan=3D"2" class=3D"logo" style=3D"width: 115px; paddin=
g: 20px 20px 0 0; vertical-align: top; font-size: 12px; line-height: 18px; =
font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.it/gp/r.html?=
C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F=
%2Fwww.amazon.it%2Fref%3Dpe_386201_41597321_TE_logo&A=3DEHZRJTU805Q3XBJPPSW=
JNVMNUAOA&H=3DPBRI15BTADYP6R2KC61KSB54IQKA" title=3D"Visita Amazon.it" styl=
e=3D"text-decoration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial=
, sans-serif"> <img alt=3D"Amazon" src=3D"http://g-ec2.images-amazon.com/im=
ages/G/29/x-locale/common/logo-and-your-done._V185550511_.gif" style=3D"bor=
der: 0; width: 115px" /> </a> </td>=20
             <td class=3D"navigation" style=3D"text-align: right; padding: =
5px 0; border-bottom: 1px solid rgb(204, 204, 204); white-space: nowrap; ve=
rtical-align: top; font-size: 12px; line-height: 18px; font-family: Arial, =
sans-serif"> </td>
             <td style=3D"width: 100%; padding: 7px 5px 0; text-align: righ=
t; border-bottom: 1px solid rgb(204, 204, 204); white-space: nowrap; vertic=
al-align: top; font-size: 12px; line-height: 18px; font-family: Arial, sans=
-serif" class=3D"navigation"> <a href=3D"http://www.amazon.it/gp/r.html?C=
=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F%=
2Fwww.amazon.it%2Fgp%2Fcss%2Fyour-orders-access%2Fref%3Dpe_386201_41597321_=
TE_yo&A=3DXOFD1GJYUULMRXUE8WRUDIMVGXUA&H=3DAYBTPZ5FHJMCLS761JHXUHYMAK4A" st=
yle=3D"border-right: 0px solid rgb(204, 204, 204); margin-right: 0px; paddi=
ng-right: 0px; text-decoration: none; color: rgb(0, 102, 153); font: 12px/ =
16px Arial, sans-serif">I miei ordini</a> </td>=20
             <td class=3D"navigation" style=3D"text-align: right; padding: =
5px 0; border-bottom: 1px solid rgb(204, 204, 204); white-space: nowrap; ve=
rtical-align: top; font-size: 12px; line-height: 18px; font-family: Arial, =
sans-serif"> <span style=3D"text-decoration: none; color: rgb(204, 204, 204=
); font-size: 15px; font-family: Arial, sans-serif">&nbsp;|&nbsp;</span> <a=
 href=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLID=
L&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F%2Fwww.amazon.it%2Fgp%2Fcss%2Fyour-=
account-access%2Fref%3Dpe_386201_41597321_TE_ya&A=3DYBBAFSULQZKKTA8WRCNC11U=
FRJMA&H=3D9BQMGQDUTTW84ODJRONQQCHOZD8A" style=3D"border-right: 0px solid rg=
b(204, 204, 204); margin-right: 0px; padding-right: 0px; text-decoration: n=
one; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">Il mio ac=
count</a> <span style=3D"text-decoration: none; color: rgb(204, 204, 204); =
font-size: 15px; font-family: Arial, sans-serif">&nbsp;|&nbsp;</span> <a hr=
ef=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=
=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F%2Fwww.amazon.it%2Fref%3Dpe_386201_415=
97321_TE_cn&A=3DUT2CNNKH1AREDW2BWZUK43T6TREA&H=3DMXYPH5UMYGYR0ACOTDMGGGD6TO=
UA" style=3D"border-right: 0px solid rgb(204, 204, 204); margin-right: 0px;=
 padding-right: 0px; text-decoration: none; color: rgb(0, 102, 153); font: =
12px/ 16px Arial, sans-serif">Amazon.it</a> </td> =20
            </tr>=20
            <tr>=20
             <td colspan=3D"3" class=3D"title" style=3D"text-align: right; =
padding: 7px 0 5px 0; vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif"> <h2 style=3D"font-size: 20px; line-hei=
ght: 24px; margin: 0; padding: 0; font-weight: normal; color: rgb(0, 0, 0) =
!important">Conferma ordine</h2> Ordine n&deg;<a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttps%3A%2F%2Fwww.amazon.it%2Fgp%2Fcss%2Forder-details%3ForderId%3D404-1=
346776-6080321%26ref_%3Dpe_386201_41597321_TE_on&A=3DVB96ANERM6VMIPJYBVMT2S=
VXDC0A&H=3DWPHAEPOJIBBCKKRGLQEJCJPUZGSA" style=3D"text-decoration: none; co=
lor: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">404-1346776-6080=
321</a> <br /> Ordine n&deg;<a href=3D"http://www.amazon.it/gp/r.html?C=3D2=
B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F%2Fww=
w.amazon.it%2Fgp%2Fcss%2Forder-details%3ForderId%3D404-5857848-3037909%26re=
f_%3Dpe_386201_41597321_TE_on&A=3DUO3QN8XSNBS0LVKYDJBLHBMCDOQA&H=3D56ILYXM6=
OPGRZVXRFCLDKPWNI0IA" style=3D"text-decoration: none; color: rgb(0, 102, 15=
3); font: 12px/ 16px Arial, sans-serif">404-5857848-3037909</a> <br /> </td=
>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"summary" style=3D"width: 100%; border-collapse: coll=
apse">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <h3 style=3D"font-size: 18px; colo=
r: rgb(204, 102, 0); margin: 15px 0 0 0; font-weight: normal">Gentile Andre=
a,</h3> <p style=3D"margin: 5px 0 0 0; font: 12px/ 16px Arial, sans-serif">=
 Grazie per il tuo ordine. Ti invieremo un'e-mail quando i tuoi articoli sa=
ranno spediti. La tua data di consegna prevista &egrave; indicata in basso.=
 Puoi consultare la sezione <a href=3D"http://www.amazon.it/gp/r.html?C=3D2=
B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F%2Fww=
w.amazon.it%2Fgp%2Fcss%2Fyour-orders-access%2Fref%3Dpe_386201_41597321_TE_g=
s&A=3DXJZABSGEGAQNYYFDJ6KAOZBBLKKA&H=3DMLWLA5HIVIUDAWTTORQQZSODYI8A" style=
=3D"text-decoration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial,=
 sans-serif">I miei ordini</a> su Amazon.it per visualizzare lo stato del t=
uo ordine o apportare delle modifiche. </p> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 5px 0 0 0; fon=
t: 12px/ 16px Arial, sans-serif"> Gli articoli acquistati sono stati suddiv=
isi in 2 ordini. </p> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table style=3D"border-collapse: collapse">=20
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"border-bottom: 1px solid rgb(204, 204, 204); vertical=
-align: top; font-size: 12px; line-height: 18px; font-family: Arial, sans-s=
erif"> <h3 style=3D"font-size: 18px; color: rgb(204, 102, 0); margin: 15px =
0 0 0; font-weight: normal">Dettagli ordine</h3> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"padding-left: 32px; vertical-align: top; font-size: 1=
2px; line-height: 18px; font-family: Arial, sans-serif">=20
          <table id=3D"orderDetails" style=3D"width: 100%; border-collapse:=
 collapse">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> Ordine n&deg;<a href=3D"http://www=
.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&=
T=3DC&U=3Dhttps%3A%2F%2Fwww.amazon.it%2Fgp%2Fcss%2Forder-details%3ForderId%=
3D404-1346776-6080321%26ref_%3Dpe_386201_41597321_TE_on&A=3DVB96ANERM6VMIPJ=
YBVMT2SVXDC0A&H=3DWPHAEPOJIBBCKKRGLQEJCJPUZGSA" style=3D"text-decoration: n=
one; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">404-13467=
76-6080321</a> <br /> <span style=3D"font-size: 12px; color: rgb(102, 102, =
102)">Effettuato gioved&igrave; 18 dicembre 2014</span> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"padding-left: 32px; vertical-align: top; font-size: 1=
2px; line-height: 18px; font-family: Arial, sans-serif">=20
          <table id=3D"criticalInfo" style=3D"border-top: 3px solid rgb(45,=
 55, 65); width: 95%; border-collapse: collapse">=20
           <tbody>
            <tr>=20
             <td style=3D"font-size: 14px; padding: 11px 18px 18px 18px; ba=
ckground-color: rgb(239, 239, 239); width: 50%; vertical-align: top; line-h=
eight: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 2px 0 9px=
 0; font: 14px Arial, sans-serif"> <span style=3D"font-size: 14px; color: r=
gb(102, 102, 102)">La tua data di consegna prevista &egrave;: </span> <br /=
> <b> marted&igrave; 23 dicembre 2014 - <br /> mercoled&igrave; 24 dicembre=
 2014 </b> </p> <p style=3D"margin: 2px 0 9px 0; font: 14px Arial, sans-ser=
if"> <span style=3D"font-size: 14px; color: rgb(102, 102, 102)">La tua moda=
lit&agrave; di spedizione &egrave;: </span> <br /> <b> 3-5 giorni </b> </p>=
 <a href=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSK=
LIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F%2Fwww.amazon.it%2Fgp%2Fcss%2For=
der-details%3ForderId%3D404-1346776-6080321%26ref_%3Dpe_386201_41597321_TE_=
on_sh&A=3DCHVB8ART2UYE3UB0PUOAQTEI05AA&H=3DA301CPHHV4ZAAAJFNPH4BCN5HQGA" st=
yle=3D"font-size: 11px; color: rgb(0, 102, 153); text-decoration: none; fon=
t: 12px/ 16px Arial, sans-serif"> <img alt=3D"I miei ordini" border=3D"0" i=
d=3D"yourOrders" src=3D"http://g-ec2.images-amazon.com/images/G/29/x-locale=
/cs/te/orderdetailsIT._V359483499_.png" style=3D"border: 0" /> </a> </td>=
=20
             <td style=3D"font-size: 14px; padding: 11px 18px 18px 18px; ba=
ckground-color: rgb(239, 239, 239); width: 50%; vertical-align: top; line-h=
eight: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 2px 0 9px=
 0; font: 14px Arial, sans-serif"> <span style=3D"font-size: 14px; color: r=
gb(102, 102, 102)">L'ordine sar&agrave; spedito a:</span> <br /> <b> Andrea=
 Jemmett <br /> Via Melo da Bari, 199 <br /> Bari, BA 70121 <br /> Italia <=
/b> </p> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"background-color: rgb(256, 256, 256=
); padding: 10px 0px 0px 0px; font-size: 14px; width: 50%; vertical-align: =
top; line-height: 18px; font-family: Arial, sans-serif"> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"padding-left: 32px; vertical-align: top; font-size: 1=
2px; line-height: 18px; font-family: Arial, sans-serif">=20
          <table style=3D"width: 95%; border-collapse: collapse" id=3D"item=
Details">=20
           <tbody>
            <tr>=20
             <td class=3D"photo" style=3D"width: 150px; text-align: center;=
 padding: 16px 0 10px 0; vertical-align: top; font-size: 12px; line-height:=
 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.it/gp/=
r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp=
%3A%2F%2Fwww.amazon.it%2Fdp%2FB001RCT9YS%2Fref%3Dpe_386201_41597321_TE_item=
_image&A=3DBJCNO8R9VUIMJHKKNT2LLDHCVWAA&H=3DEZMLW2ZRAPXYJTDSFUVCNHDDA7IA" t=
itle=3D"B001RCT9YS" style=3D"text-decoration: none; color: rgb(0, 102, 153)=
; font: 12px/ 16px Arial, sans-serif"> <img id=3D"asin" src=3D"http://ecx.i=
mages-amazon.com/images/I/31Z1LDU0aDL._SCLZZZZZZZ__SY115_SX115_.jpg" style=
=3D"border: 0" /> </a> </td>=20
             <td class=3D"name" style=3D"color: rgb(102, 102, 102); padding=
: 10px 0 0 0; vertical-align: top; font-size: 12px; line-height: 18px; font=
-family: Arial, sans-serif"> <a href=3D"http://www.amazon.it/gp/r.html?C=3D=
2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%2Fww=
w.amazon.it%2Fdp%2FB001RCT9YS%2Fref%3Dpe_386201_41597321_TE_item&A=3DMO53YK=
T649VAAN11CWEZ0R7SAHOA&H=3DXDAXVFN5BPHIB32N3EYFL2ANMMWA" style=3D"text-deco=
ration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">=
 Lomography Color Negative 400 ISO 35mm confezione da 3 </a> <br /> Condizi=
one: Nuovo <br /> Venduto da <a href=3D"http://www.amazon.it/gp/r.html?C=3D=
2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%2Fww=
w.amazon.it%2Fgp%2Fhelp%2Fseller%2Fhome.html%2Fref%3Dpe_386201_41597321_TE_=
seller%3Fie%3DUTF8%26seller%3DA2U9XI5N4ZJ0WQ&A=3DHI4CYBP2UDCZAOKNXYMMCPYTKS=
GA&H=3DYJOZMTUL9YMTIJOSHU6PFCJ8AU4A" style=3D"text-decoration: none; color:=
 rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">Bear &amp; Bear Gift=
s</a> <br /> <a href=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=
=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%2Fwww.amazon.it%2Fl=
ogistica_amazon%3Fref%3DTE_helpfba%26ref_%3Dpe_386201_41597321&A=3DLYHGOKTA=
EDHD4H4ERRUSWDU0S74A&H=3DL6TTEWLAKFAVXTC3J48LLKL6AJIA" style=3D"text-decora=
tion: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">Ge=
stito da Logistica di Amazon </a> <br />=20
              <div style=3D"vertical-align: top; align=3Dcenter;">=20
               <table border=3D"0" cellspacing=3D"4" cellpadding=3D"0" styl=
e=3D"border-collapse: separate">=20
                <tbody style=3D"vertical-align: bottom;">=20
                 <tr>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_fa_doce%2F180-2007234-8924916%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Fwww.facebook.com%252Fdialog%252Ffeed%253Fapp_id%253=
D164734381262%2526caption%253D%2526display%253Dpopup%2526link%253Dhttp%2525=
3A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB001RCT9YS%25252Fref%25253Dcm_=
sw_r_fa_doce%2526name%253D%2526picture%253Dhttp%25253A%25252F%25252Fecx.ima=
ges-amazon.com%25252Fimages%25252FI%25252F31Z1LDU0aDL._SCLZZZZZZZ__SY115_SX=
115_.jpg%2526redirect_uri%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252F=
dp%25252FB001RCT9YS%25252Fref%25253Dcm_sw_r_fa_doce%26source%3Dstandards%26=
token%3D6BD0FB927CC51E76FF446584B1040F70EA7E88E1&A=3DY75KYMN0QEK5IAKPFNVZZQ=
DAQVQA&H=3DGATNEVH55MZFKSZ1E4MQSWLAYFCA" style=3D"text-decoration: none; co=
lor: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif"> <img src=3D"htt=
p://g-ecx.images-amazon.com/images/G/01/x-locale/personalization/live-meter=
/facebook._V199133872_.gif" width=3D"16" alt=3D"Facebook" style=3D"vertical=
-align: middle; border: 0" height=3D"16" border=3D"0" /> </a> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_tw_doce%2F180-2007234-8924916%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Ftwitter.com%252Fshare%253Fcount%253Dnone%2526origin=
al_referer%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB001RC=
T9YS%25252Fref%25253Dcm_sw_r_tw_doce%2526related%253Damazon%25252Camazondea=
ls%25252Camazonmp3%2526text%253DLomography%252520Color%252520Negative%25252=
0400%252520ISO%25252035mm%252520confezione%252520da%2525203%252520por%25252=
0Amazon%2526twitterURL%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252Fdp%=
25252FB001RCT9YS%25252Fref%25253Dcm_sw_r_tw_doce%2526via%253Damazon%26sourc=
e%3Dstandards%26token%3D7A1A4AE8F6CE0BD277D8295E58702D283F329C0F&A=3DSF25VG=
YRYYBWRS9ADAVIHAIUPEIA&H=3DY3YKLSDMLQBIAPVXXYGDVVJRMYCA" style=3D"text-deco=
ration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">=
 <img src=3D"http://g-ecx.images-amazon.com/images/G/01/x-locale/communitie=
s/social/twitter._V388046070_.gif" width=3D"16" alt=3D"Twitter" style=3D"ve=
rtical-align: middle; border: 0" height=3D"16" border=3D"0" /> </a> </td>=
=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_pi_doce%2F180-2007234-8924916%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Fpinterest.com%252Fpin%252Fcreate%252Fbutton%252F%25=
3Fdescription%253DLomography%252520Color%252520Negative%252520400%252520ISO=
%25252035mm%252520confezione%252520da%2525203%252520por%252520Amazon%25252C=
%252520http%25253A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB001RCT9YS%252=
52Fref%25253Dcm_sw_r_pi_doce%2526is_video%253Dfalse%2526media%253Dhttp%2525=
3A%25252F%25252Fecx.images-amazon.com%25252Fimages%25252FI%25252F31Z1LDU0aD=
L._SCLZZZZZZZ__SY115_SX115_.jpg%2526title%253D%2526url%253Dhttp%25253A%2525=
2F%25252Fwww.amazon.it%25252Fdp%25252FB001RCT9YS%25252Fref%25253Dcm_sw_r_pi=
_doce%26source%3Dstandards%26token%3D9F58B366258E1A8B5259E9BEF3482E02341F42=
D3&A=3DVJAFTYQNHT3Z3AO9V2VT3XK525SA&H=3DAI1U3THRAZZUG2ELGMLH8BUEL5SA" style=
=3D"text-decoration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial,=
 sans-serif"> <img src=3D"http://g-ecx.images-amazon.com/images/G/01/x-loca=
le/communities/social/pinterest._V149279734_.png" width=3D"16" alt=3D"Pinte=
rest" style=3D"vertical-align: middle; border: 0" height=3D"16" border=3D"0=
" /> </a> </td>=20
                 </tr>=20
                </tbody>=20
               </table>=20
              </div> </td>=20
             <td class=3D"price" style=3D"width: 80px; text-align: right; f=
ont-size: 14px; padding: 10px 10px 0 0; vertical-align: top; line-height: 1=
8px; font-family: Arial, sans-serif"> <strong>EUR 14,43</strong> <br /> </t=
d>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"padding-left: 32px; vertical-align: top; font-size: 1=
2px; line-height: 18px; font-family: Arial, sans-serif">=20
          <table style=3D"width: 95%; border-collapse: collapse" id=3D"item=
Details">=20
           <tbody>
            <tr>=20
             <td class=3D"photo" style=3D"width: 150px; text-align: center;=
 padding: 16px 0 10px 0; vertical-align: top; font-size: 12px; line-height:=
 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.it/gp/=
r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp=
%3A%2F%2Fwww.amazon.it%2Fdp%2FB007EQMOQG%2Fref%3Dpe_386201_41597321_TE_item=
_image&A=3DQXSPD52HJMCLCWA6J56Y201BN4QA&H=3DMQY07WYOA375RRM0JMMEWT6ABPUA" t=
itle=3D"B007EQMOQG" style=3D"text-decoration: none; color: rgb(0, 102, 153)=
; font: 12px/ 16px Arial, sans-serif"> <img id=3D"asin" src=3D"http://ecx.i=
mages-amazon.com/images/I/41FHh9MveYL._SCLZZZZZZZ__SY115_SX115_.jpg" style=
=3D"border: 0" /> </a> </td>=20
             <td class=3D"name" style=3D"color: rgb(102, 102, 102); padding=
: 10px 0 0 0; vertical-align: top; font-size: 12px; line-height: 18px; font=
-family: Arial, sans-serif"> <a href=3D"http://www.amazon.it/gp/r.html?C=3D=
2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%2Fww=
w.amazon.it%2Fdp%2FB007EQMOQG%2Fref%3Dpe_386201_41597321_TE_item&A=3DZB6WTF=
XVNUYHZHL2BEGXS2SQ5OUA&H=3DGCKIPVEMFBALKFMSWEAWLNCFW70A" style=3D"text-deco=
ration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">=
 3 pellicole bianco e nero Lady Grey formato 35mm / 400 ISO </a> <br /> Con=
dizione: Nuovo <br /> Venduto da <a href=3D"http://www.amazon.it/gp/r.html?=
C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%=
2Fwww.amazon.it%2Fgp%2Fhelp%2Fseller%2Fhome.html%2Fref%3Dpe_386201_41597321=
_TE_seller%3Fie%3DUTF8%26seller%3DA2U9XI5N4ZJ0WQ&A=3DHI4CYBP2UDCZAOKNXYMMCP=
YTKSGA&H=3DYJOZMTUL9YMTIJOSHU6PFCJ8AU4A" style=3D"text-decoration: none; co=
lor: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">Bear &amp; Bear =
Gifts</a> <br /> <a href=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT=
6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%2Fwww.amazon.it%=
2Flogistica_amazon%3Fref%3DTE_helpfba%26ref_%3Dpe_386201_41597321&A=3DLYHGO=
KTAEDHD4H4ERRUSWDU0S74A&H=3DL6TTEWLAKFAVXTC3J48LLKL6AJIA" style=3D"text-dec=
oration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif"=
>Gestito da Logistica di Amazon </a> <br />=20
              <div style=3D"vertical-align: top; align=3Dcenter;">=20
               <table border=3D"0" cellspacing=3D"4" cellpadding=3D"0" styl=
e=3D"border-collapse: separate">=20
                <tbody style=3D"vertical-align: bottom;">=20
                 <tr>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_fa_doce%2F177-4412013-0141025%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Fwww.facebook.com%252Fdialog%252Ffeed%253Fapp_id%253=
D164734381262%2526caption%253D%2526display%253Dpopup%2526link%253Dhttp%2525=
3A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB007EQMOQG%25252Fref%25253Dcm_=
sw_r_fa_doce%2526name%253D%2526picture%253Dhttp%25253A%25252F%25252Fecx.ima=
ges-amazon.com%25252Fimages%25252FI%25252F41FHh9MveYL._SCLZZZZZZZ__SY115_SX=
115_.jpg%2526redirect_uri%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252F=
dp%25252FB007EQMOQG%25252Fref%25253Dcm_sw_r_fa_doce%26source%3Dstandards%26=
token%3D6BD0FB927CC51E76FF446584B1040F70EA7E88E1&A=3DHVSSR7CL5OBZPACEMHGE2J=
O0EDEA&H=3DFFSLBB11JBBMIERWHSDGUV7HWBWA" style=3D"text-decoration: none; co=
lor: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif"> <img src=3D"htt=
p://g-ecx.images-amazon.com/images/G/01/x-locale/personalization/live-meter=
/facebook._V199133872_.gif" width=3D"16" alt=3D"Facebook" style=3D"vertical=
-align: middle; border: 0" height=3D"16" border=3D"0" /> </a> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_tw_doce%2F177-4412013-0141025%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Ftwitter.com%252Fshare%253Fcount%253Dnone%2526origin=
al_referer%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB007EQ=
MOQG%25252Fref%25253Dcm_sw_r_tw_doce%2526related%253Damazon%25252Camazondea=
ls%25252Camazonmp3%2526text%253D3%252520pellicole%252520bianco%252520e%2525=
20nero%252520%252520Lady%252520Grey%252520formato%25252035mm%252520%25252F%=
252520400%252520ISO%252520por%252520Amazon%2526twitterURL%253Dhttp%25253A%2=
5252F%25252Fwww.amazon.it%25252Fdp%25252FB007EQMOQG%25252Fref%25253Dcm_sw_r=
_tw_doce%2526via%253Damazon%26source%3Dstandards%26token%3D7A1A4AE8F6CE0BD2=
77D8295E58702D283F329C0F&A=3DN664AWGFVLJBLZGHCWHBRPMJNKGA&H=3DTTBULYKRH885A=
PGKNZRGFHXESUQA" style=3D"text-decoration: none; color: rgb(0, 102, 153); f=
ont: 12px/ 16px Arial, sans-serif"> <img src=3D"http://g-ecx.images-amazon.=
com/images/G/01/x-locale/communities/social/twitter._V388046070_.gif" width=
=3D"16" alt=3D"Twitter" style=3D"vertical-align: middle; border: 0" height=
=3D"16" border=3D"0" /> </a> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_pi_doce%2F177-4412013-0141025%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Fpinterest.com%252Fpin%252Fcreate%252Fbutton%252F%25=
3Fdescription%253D3%252520pellicole%252520bianco%252520e%252520nero%252520%=
252520Lady%252520Grey%252520formato%25252035mm%252520%25252F%252520400%2525=
20ISO%252520por%252520Amazon%25252C%252520http%25253A%25252F%25252Fwww.amaz=
on.it%25252Fdp%25252FB007EQMOQG%25252Fref%25253Dcm_sw_r_pi_doce%2526is_vide=
o%253Dfalse%2526media%253Dhttp%25253A%25252F%25252Fecx.images-amazon.com%25=
252Fimages%25252FI%25252F41FHh9MveYL._SCLZZZZZZZ__SY115_SX115_.jpg%2526titl=
e%253D%2526url%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB0=
07EQMOQG%25252Fref%25253Dcm_sw_r_pi_doce%26source%3Dstandards%26token%3D9F5=
8B366258E1A8B5259E9BEF3482E02341F42D3&A=3D4TBQOAX9RAM7GHSQ5N73P8EV0DAA&H=3D=
NUE33OWORTABUY93WJT7PJQ84I0A" style=3D"text-decoration: none; color: rgb(0,=
 102, 153); font: 12px/ 16px Arial, sans-serif"> <img src=3D"http://g-ecx.i=
mages-amazon.com/images/G/01/x-locale/communities/social/pinterest._V149279=
734_.png" width=3D"16" alt=3D"Pinterest" style=3D"vertical-align: middle; b=
order: 0" height=3D"16" border=3D"0" /> </a> </td>=20
                 </tr>=20
                </tbody>=20
               </table>=20
              </div> </td>=20
             <td class=3D"price" style=3D"width: 80px; text-align: right; f=
ont-size: 14px; padding: 10px 10px 0 0; vertical-align: top; line-height: 1=
8px; font-family: Arial, sans-serif"> <strong>EUR 18,89</strong> <br /> </t=
d>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"padding-left: 32px; vertical-align: top; font-size: 1=
2px; line-height: 18px; font-family: Arial, sans-serif">=20
          <table style=3D"width: 95%; border-collapse: collapse" id=3D"cost=
Breakdown">=20
           <tbody>
            <tr>=20
             <td colspan=3D"2" class=3D"divider" style=3D"border-top: 1px s=
olid rgb(234, 234, 234); padding: 0 0 16px 0; text-align: right; line-heigh=
t: 18px; vertical-align: top; font-size: 12px; font-family: Arial, sans-ser=
if"> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"text-align: right; line-height: 18px; padding: 0 =
10px 0 0; vertical-align: top; font-size: 12px; font-family: Arial, sans-se=
rif"> Totale parziale degli articoli: </td>=20
             <td class=3D"price" style=3D"width: 150px; text-align: right; =
line-height: 18px; padding: 0 10px 0 0; vertical-align: top; font-size: 12p=
x; font-family: Arial, sans-serif"> EUR 33,32 </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"text-align: right; line-height: 18px; padding: 0 =
10px 0 0; vertical-align: top; font-size: 12px; font-family: Arial, sans-se=
rif"> Costi di spedizione: </td>=20
             <td class=3D"price" style=3D"width: 150px; text-align: right; =
line-height: 18px; padding: 0 10px 0 0; vertical-align: top; font-size: 12p=
x; font-family: Arial, sans-serif"> EUR 0,00 </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; font: 12px/ 16px Arial=
, sans-serif"></p> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; font: 12px/ 16px Arial=
, sans-serif"></p> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; font: 12px/ 16px Arial=
, sans-serif"></p> </td>=20
            </tr>=20
            <tr>=20
             <td class=3D"total" style=3D"font-size: 14px; font-weight: bol=
d; font: 12px/ 16px Arial, sans-serif; text-align: right; line-height: 18px=
; padding: 0 10px 0 0; vertical-align: top; font-family: Arial, sans-serif"=
> <strong> Totale IVA inclusa (ove applicabile):</strong> </td>=20
             <td class=3D"total" style=3D"font-size: 14px; font-weight: bol=
d; font: 12px/ 16px Arial, sans-serif; text-align: right; line-height: 18px=
; padding: 0 10px 0 0; vertical-align: top; font-family: Arial, sans-serif"=
> <strong>EUR 33,32</strong> </td>=20
            </tr>=20
            <tr>=20
             <td rowspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> Metodo di pagamento selezionato: </td>=20
             <td class=3D"price" style=3D"width: 150px; text-align: right; =
line-height: 18px; padding: 0 10px 0 0; vertical-align: top; font-size: 12p=
x; font-family: Arial, sans-serif"> Mastercard </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" class=3D"end" style=3D"padding: 0 0 16px 0; =
text-align: right; line-height: 18px; vertical-align: top; font-size: 12px;=
 font-family: Arial, sans-serif"> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" class=3D"divider" style=3D"border-top: 1px s=
olid rgb(234, 234, 234); padding: 0 0 16px 0; text-align: right; line-heigh=
t: 18px; vertical-align: top; font-size: 12px; font-family: Arial, sans-ser=
if"> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"padding-left: 32px; vertical-align: top; font-size: 1=
2px; line-height: 18px; font-family: Arial, sans-serif">=20
          <table id=3D"orderDetails" style=3D"width: 100%; border-collapse:=
 collapse">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> Ordine n&deg;<a href=3D"http://www=
.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&=
T=3DC&U=3Dhttps%3A%2F%2Fwww.amazon.it%2Fgp%2Fcss%2Forder-details%3ForderId%=
3D404-5857848-3037909%26ref_%3Dpe_386201_41597321_TE_on&A=3DUO3QN8XSNBS0LVK=
YDJBLHBMCDOQA&H=3D56ILYXM6OPGRZVXRFCLDKPWNI0IA" style=3D"text-decoration: n=
one; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">404-58578=
48-3037909</a> <br /> <span style=3D"font-size: 12px; color: rgb(102, 102, =
102)">Effettuato gioved&igrave; 18 dicembre 2014</span> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"padding-left: 32px; vertical-align: top; font-size: 1=
2px; line-height: 18px; font-family: Arial, sans-serif">=20
          <table id=3D"criticalInfo" style=3D"border-top: 3px solid rgb(45,=
 55, 65); width: 95%; border-collapse: collapse">=20
           <tbody>
            <tr>=20
             <td style=3D"font-size: 14px; padding: 11px 18px 18px 18px; ba=
ckground-color: rgb(239, 239, 239); width: 50%; vertical-align: top; line-h=
eight: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 2px 0 9px=
 0; font: 14px Arial, sans-serif"> <span style=3D"font-size: 14px; color: r=
gb(102, 102, 102)">La tua data di consegna prevista &egrave;: </span> <br /=
> <b> marted&igrave; 23 dicembre 2014 - <br /> marted&igrave; 30 dicembre 2=
014 </b> </p> <p style=3D"margin: 2px 0 9px 0; font: 14px Arial, sans-serif=
"> <span style=3D"font-size: 14px; color: rgb(102, 102, 102)">La tua modali=
t&agrave; di spedizione &egrave;: </span> <br /> <b> 3-5 giorni </b> </p> <=
a href=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLI=
DL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttps%3A%2F%2Fwww.amazon.it%2Fgp%2Fcss%2Forde=
r-details%3ForderId%3D404-5857848-3037909%26ref_%3Dpe_386201_41597321_TE_on=
_sh&A=3D4SKCSE19ONGQF8JU4MXCNQQFJEMA&H=3D87UUJA9YZE3XQ625KIALK0WWQAYA" styl=
e=3D"font-size: 11px; color: rgb(0, 102, 153); text-decoration: none; font:=
 12px/ 16px Arial, sans-serif"> <img alt=3D"I miei ordini" border=3D"0" id=
=3D"yourOrders" src=3D"http://g-ec2.images-amazon.com/images/G/29/x-locale/=
cs/te/orderdetailsIT._V359483499_.png" style=3D"border: 0" /> </a> </td>=20
             <td style=3D"font-size: 14px; padding: 11px 18px 18px 18px; ba=
ckground-color: rgb(239, 239, 239); width: 50%; vertical-align: top; line-h=
eight: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 2px 0 9px=
 0; font: 14px Arial, sans-serif"> <span style=3D"font-size: 14px; color: r=
gb(102, 102, 102)">L'ordine sar&agrave; spedito a:</span> <br /> <b> Andrea=
 Jemmett <br /> Via Melo da Bari, 199 <br /> Bari, BA 70121 <br /> Italia <=
/b> </p> <p style=3D"margin: 2px 0 9px 0; font: 14px Arial, sans-serif"> <i=
mg src=3D"http://g-ecx.images-amazon.com/images/G/01/x-locale/cs/te/icon-gi=
ft.png" /> <strong>Quest'ordine include uno o pi&ugrave; articoli che hai c=
ontrassegnato come regali</strong> </p> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"background-color: rgb(256, 256, 256=
); padding: 10px 0px 0px 0px; font-size: 14px; width: 50%; vertical-align: =
top; line-height: 18px; font-family: Arial, sans-serif"> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"padding-left: 32px; vertical-align: top; font-size: 1=
2px; line-height: 18px; font-family: Arial, sans-serif">=20
          <table style=3D"width: 95%; border-collapse: collapse" id=3D"item=
Details">=20
           <tbody>
            <tr>=20
             <td class=3D"photo" style=3D"width: 150px; text-align: center;=
 padding: 16px 0 10px 0; vertical-align: top; font-size: 12px; line-height:=
 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.it/gp/=
r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp=
%3A%2F%2Fwww.amazon.it%2Fdp%2FB002OL2FX8%2Fref%3Dpe_386201_41597321_TE_item=
_image&A=3DUZITWRWXAYZLUAO5MTXF3ZE817QA&H=3DY6LZHFS85EAWLATWGUKAAQDILDMA" t=
itle=3D"B002OL2FX8" style=3D"text-decoration: none; color: rgb(0, 102, 153)=
; font: 12px/ 16px Arial, sans-serif"> <img id=3D"asin" src=3D"http://ecx.i=
mages-amazon.com/images/I/41Y1sJY3RFL._SCLZZZZZZZ__SY115_SX115_.jpg" style=
=3D"border: 0" /> </a> </td>=20
             <td class=3D"name" style=3D"color: rgb(102, 102, 102); padding=
: 10px 0 0 0; vertical-align: top; font-size: 12px; line-height: 18px; font=
-family: Arial, sans-serif"> <a href=3D"http://www.amazon.it/gp/r.html?C=3D=
2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%2Fww=
w.amazon.it%2Fdp%2FB002OL2FX8%2Fref%3Dpe_386201_41597321_TE_item&A=3DZCCSEB=
D1QTYPHAQIDDKW8SPAHX4A&H=3D1MSXFBT5SGZGQSFQ8AMWPBBNVC0A" style=3D"text-deco=
ration: none; color: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif">=
 Lomography - Diana F+ Senza Flash </a> <br /> Condizione: Nuovo <br /> Ven=
duto da <a href=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2C=
UI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%2Fwww.amazon.it%2Fgp%2Fhe=
lp%2Fseller%2Fhome.html%2Fref%3Dpe_386201_41597321_TE_seller%3Fie%3DUTF8%26=
seller%3DA25S0QDDTI3HXO&A=3DMO0AEFA7OUE4JIBYGCHHOHMYI6KA&H=3DPNWXIUQFGCUBEP=
0RMQ5FPRBE7WEA" style=3D"text-decoration: none; color: rgb(0, 102, 153); fo=
nt: 12px/ 16px Arial, sans-serif">TOPANBIETER999</a> <br /> <a href=3D"http=
://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPY=
HQO0B&T=3DC&U=3Dhttp%3A%2F%2Fwww.amazon.it%2Flogistica_amazon%3Fref%3DTE_he=
lpfba%26ref_%3Dpe_386201_41597321&A=3DLYHGOKTAEDHD4H4ERRUSWDU0S74A&H=3DL6TT=
EWLAKFAVXTC3J48LLKL6AJIA" style=3D"text-decoration: none; color: rgb(0, 102=
, 153); font: 12px/ 16px Arial, sans-serif">Gestito da Logistica di Amazon =
</a> <br /> Confezione regalo: S&igrave; <br /> Messaggio di auguri: Buon N=
atale Squiki mia! :) Dal Dott. Squiki <br />=20
              <div style=3D"vertical-align: top; align=3Dcenter;">=20
               <table border=3D"0" cellspacing=3D"4" cellpadding=3D"0" styl=
e=3D"border-collapse: separate">=20
                <tbody style=3D"vertical-align: bottom;">=20
                 <tr>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_fa_doce%2F189-6525316-6417337%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Fwww.facebook.com%252Fdialog%252Ffeed%253Fapp_id%253=
D164734381262%2526caption%253D%2526display%253Dpopup%2526link%253Dhttp%2525=
3A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB002OL2FX8%25252Fref%25253Dcm_=
sw_r_fa_doce%2526name%253D%2526picture%253Dhttp%25253A%25252F%25252Fecx.ima=
ges-amazon.com%25252Fimages%25252FI%25252F41Y1sJY3RFL._SCLZZZZZZZ__SY115_SX=
115_.jpg%2526redirect_uri%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252F=
dp%25252FB002OL2FX8%25252Fref%25253Dcm_sw_r_fa_doce%26source%3Dstandards%26=
token%3D6BD0FB927CC51E76FF446584B1040F70EA7E88E1&A=3DWHK6NCETO9ECRGZSTVZMPN=
TZBOOA&H=3DM5LHPVWBKCAJC7FWAD7BXHOLFVCA" style=3D"text-decoration: none; co=
lor: rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif"> <img src=3D"htt=
p://g-ecx.images-amazon.com/images/G/01/x-locale/personalization/live-meter=
/facebook._V199133872_.gif" width=3D"16" alt=3D"Facebook" style=3D"vertical=
-align: middle; border: 0" height=3D"16" border=3D"0" /> </a> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_tw_doce%2F189-6525316-6417337%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Ftwitter.com%252Fshare%253Fcount%253Dnone%2526origin=
al_referer%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB002OL=
2FX8%25252Fref%25253Dcm_sw_r_tw_doce%2526related%253Damazon%25252Camazondea=
ls%25252Camazonmp3%2526text%253DLomography%252520-%252520Diana%252520F%2525=
2B%252520Senza%252520Flash%252520por%252520Amazon%2526twitterURL%253Dhttp%2=
5253A%25252F%25252Fwww.amazon.it%25252Fdp%25252FB002OL2FX8%25252Fref%25253D=
cm_sw_r_tw_doce%2526via%253Damazon%26source%3Dstandards%26token%3D7A1A4AE8F=
6CE0BD277D8295E58702D283F329C0F&A=3DV0LWSRRJQPIDZMASR9ROHP3UBFWA&H=3DYGULMO=
QDS4K6W7CEZE2TYMNTEUQA" style=3D"text-decoration: none; color: rgb(0, 102, =
153); font: 12px/ 16px Arial, sans-serif"> <img src=3D"http://g-ecx.images-=
amazon.com/images/G/01/x-locale/communities/social/twitter._V388046070_.gif=
" width=3D"16" alt=3D"Twitter" style=3D"vertical-align: middle; border: 0" =
height=3D"16" border=3D"0" /> </a> </td>=20
                  <td style=3D"vertical-align: top; font-size: 12px; line-h=
eight: 18px; font-family: Arial, sans-serif"> <a href=3D"http://www.amazon.=
it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=
=3Dhttp%3A%2F%2Fwww.amazon.com%3A80%2Fgp%2Fredirect.html%2Fref%3Dpe_386201_=
41597321_cm_sw_cl_pi_doce%2F189-6525316-6417337%3F_encoding%3DUTF8%26locati=
on%3Dhttp%253A%252F%252Fpinterest.com%252Fpin%252Fcreate%252Fbutton%252F%25=
3Fdescription%253DLomography%252520-%252520Diana%252520F%25252B%252520Senza=
%252520Flash%252520por%252520Amazon%25252C%252520http%25253A%25252F%25252Fw=
ww.amazon.it%25252Fdp%25252FB002OL2FX8%25252Fref%25253Dcm_sw_r_pi_doce%2526=
is_video%253Dfalse%2526media%253Dhttp%25253A%25252F%25252Fecx.images-amazon=
.com%25252Fimages%25252FI%25252F41Y1sJY3RFL._SCLZZZZZZZ__SY115_SX115_.jpg%2=
526title%253D%2526url%253Dhttp%25253A%25252F%25252Fwww.amazon.it%25252Fdp%2=
5252FB002OL2FX8%25252Fref%25253Dcm_sw_r_pi_doce%26source%3Dstandards%26toke=
n%3D9F58B366258E1A8B5259E9BEF3482E02341F42D3&A=3D6XHDDB1JWAGBJF2HHR4K2WHPZ0=
WA&H=3DPIEJBH2VXBP47ZAQBAXRRAOL3QOA" style=3D"text-decoration: none; color:=
 rgb(0, 102, 153); font: 12px/ 16px Arial, sans-serif"> <img src=3D"http://=
g-ecx.images-amazon.com/images/G/01/x-locale/communities/social/pinterest._=
V149279734_.png" width=3D"16" alt=3D"Pinterest" style=3D"vertical-align: mi=
ddle; border: 0" height=3D"16" border=3D"0" /> </a> </td>=20
                 </tr>=20
                </tbody>=20
               </table>=20
              </div> </td>=20
             <td class=3D"price" style=3D"width: 80px; text-align: right; f=
ont-size: 14px; padding: 10px 10px 0 0; vertical-align: top; line-height: 1=
8px; font-family: Arial, sans-serif"> <strong>EUR 45,59</strong> <br /> </t=
d>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"padding-left: 32px; vertical-align: top; font-size: 1=
2px; line-height: 18px; font-family: Arial, sans-serif">=20
          <table style=3D"width: 95%; border-collapse: collapse" id=3D"cost=
Breakdown">=20
           <tbody>
            <tr>=20
             <td colspan=3D"2" class=3D"divider" style=3D"border-top: 1px s=
olid rgb(234, 234, 234); padding: 0 0 16px 0; text-align: right; line-heigh=
t: 18px; vertical-align: top; font-size: 12px; font-family: Arial, sans-ser=
if"> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"text-align: right; line-height: 18px; padding: 0 =
10px 0 0; vertical-align: top; font-size: 12px; font-family: Arial, sans-se=
rif"> Totale parziale degli articoli: </td>=20
             <td class=3D"price" style=3D"width: 150px; text-align: right; =
line-height: 18px; padding: 0 10px 0 0; vertical-align: top; font-size: 12p=
x; font-family: Arial, sans-serif"> EUR 45,59 </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"text-align: right; line-height: 18px; padding: 0 =
10px 0 0; vertical-align: top; font-size: 12px; font-family: Arial, sans-se=
rif"> Costi di spedizione: </td>=20
             <td class=3D"price" style=3D"width: 150px; text-align: right; =
line-height: 18px; padding: 0 10px 0 0; vertical-align: top; font-size: 12p=
x; font-family: Arial, sans-serif"> EUR 0,00 </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"text-align: right; line-height: 18px; padding: 0 =
10px 0 0; vertical-align: top; font-size: 12px; font-family: Arial, sans-se=
rif"> Confezione regalo: </td>=20
             <td class=3D"price" style=3D"width: 150px; text-align: right; =
line-height: 18px; padding: 0 10px 0 0; vertical-align: top; font-size: 12p=
x; font-family: Arial, sans-serif"> EUR 2,99 </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; font: 12px/ 16px Arial=
, sans-serif"></p> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; font: 12px/ 16px Arial=
, sans-serif"></p> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; font: 12px/ 16px Arial=
, sans-serif"></p> </td>=20
            </tr>=20
            <tr>=20
             <td class=3D"total" style=3D"font-size: 14px; font-weight: bol=
d; font: 12px/ 16px Arial, sans-serif; text-align: right; line-height: 18px=
; padding: 0 10px 0 0; vertical-align: top; font-family: Arial, sans-serif"=
> <strong> Totale IVA inclusa (ove applicabile):</strong> </td>=20
             <td class=3D"total" style=3D"font-size: 14px; font-weight: bol=
d; font: 12px/ 16px Arial, sans-serif; text-align: right; line-height: 18px=
; padding: 0 10px 0 0; vertical-align: top; font-family: Arial, sans-serif"=
> <strong>EUR 48,58</strong> </td>=20
            </tr>=20
            <tr>=20
             <td rowspan=3D"2" style=3D"text-align: right; line-height: 18p=
x; padding: 0 10px 0 0; vertical-align: top; font-size: 12px; font-family: =
Arial, sans-serif"> Metodo di pagamento selezionato: </td>=20
             <td class=3D"price" style=3D"width: 150px; text-align: right; =
line-height: 18px; padding: 0 10px 0 0; vertical-align: top; font-size: 12p=
x; font-family: Arial, sans-serif"> Mastercard </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" class=3D"end" style=3D"padding: 0 0 16px 0; =
text-align: right; line-height: 18px; vertical-align: top; font-size: 12px;=
 font-family: Arial, sans-serif"> </td>=20
            </tr>=20
            <tr>=20
             <td colspan=3D"2" class=3D"divider" style=3D"border-top: 1px s=
olid rgb(234, 234, 234); padding: 0 0 16px 0; text-align: right; line-heigh=
t: 18px; vertical-align: top; font-size: 12px; font-family: Arial, sans-ser=
if"> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"selfService" style=3D"width: 100%; border-collapse: =
collapse">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"margin: 1px 0 8px 0; f=
ont: 12px/ 16px Arial, sans-serif"> Desideri apportare delle modifiche al t=
uo ordine? Visita la nostra pagina di aiuto <a href=3D"http://www.amazon.it=
/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3D=
http%3A%2F%2Fwww.amazon.it%2Fmodificare_ordine%3Fref_%3Dpe_386201_41597321_=
TE_ss&A=3DTWBWNBKPAQKAHOKKI2GBT3T5DTIA&H=3DADISWXFHTIHRK3DEKZ1FYCHRSBYA" st=
yle=3D"text-decoration: none; color: rgb(0, 102, 153); font: 12px/ 16px Ari=
al, sans-serif">Modifica i dettagli dell'ordine</a> per maggiori informazio=
ni e per visualizzare i nostri video. </p> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"closing" style=3D"width: 100%; padding: 0 0 20px 0; =
border-collapse: none">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"padding: 0 0 20px 0; b=
order-bottom: 1px solid rgb(234, 234, 234); margin: 0; font: 12px/ 16px Ari=
al, sans-serif"> A presto,<br /> <span class=3D"signature" style=3D"font-si=
ze: 16px; font-weight: bold"> <strong>Amazon.it</strong> </span> </p> </td>=
=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"marketingContent" style=3D"width: 100%; border-botto=
m: 1px solid rgb(204, 204, 204); border-collapse: none; padding: 0 0 20px 0=
">=20
          </table> </td>=20
        </tr>=20
        <tr>=20
         <td style=3D"vertical-align: top; font-size: 12px; line-height: 18=
px; font-family: Arial, sans-serif">=20
          <table id=3D"legalCopy" style=3D"width: 100%; margin: 20px 0 0 0;=
 border-collapse: collapse">=20
           <tbody>
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"font-size: 10px; color=
: rgb(102, 102, 102); line-height: 16px; margin: 0 0 10px 0; font: 10px"> G=
li articoli indicati come &quot;Logistica di Amazon&quot; sono venduti da v=
enditori terzi su Amazon Marketplace e sono depositati presso un Centro di =
distribuzione Amazon che poi li spedir&agrave; direttamente ai clienti. I w=
arehousedeals sono articoli venduti da Amazon EU Sarl e gestiti con la <a h=
ref=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGSKLIDL&=
R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%2Fwww.amazon.it%2Flogistica_amazon%3F=
ref%3DTE_helpfba%26ref_%3Dpe_386201_41597321&A=3DLYHGOKTAEDHD4H4ERRUSWDU0S7=
4A&H=3DL6TTEWLAKFAVXTC3J48LLKL6AJIA" style=3D"font-size: 10px; font: 10px; =
text-decoration: none; color: rgb(0, 102, 153)">Logistica di Amazon</a>. </=
p> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"font-size: 10px; color=
: rgb(102, 102, 102); line-height: 16px; margin: 0 0 10px 0; font: 10px"> G=
li articoli venduti da Amazon EU Sarl sono soggetti all'Imposta sul Valore =
Aggiunto nel territorio di destinazione della merce in conformit&agrave; al=
le leggi vigenti sulle cd. vendite a distanza. Se il tuo ordine contiene mo=
lteplici articoli acquistati presso Amazon EU Sarl e i nostri venditori ter=
zi, potrai essere soggetto all'Imposta sul Valore Aggiunto regolata dalle n=
orme stabilite dal venditore terzo e la sua sede operativa. </p> <p style=
=3D"font-size: 10px; color: rgb(102, 102, 102); line-height: 16px; margin: =
0 0 10px 0; font: 10px"> Per maggiori informazioni, visita la nostra pagina=
 di aiuto <a href=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA=
2CUI6QGSKLIDL&R=3DBVB1JPYHQO0B&T=3DC&U=3Dhttp%3A%2F%2Fwww.amazon.it%2Fiva_f=
atturazione%3Fref_%3Dpe_386201_41597321_TE_vat&A=3DLAKUIVCBZT1N4JPGKLEURGVA=
AA0A&H=3DITAVD4PX0WTDQLNZAML3Y2DOQXOA" style=3D"font-size: 10px; font: 10px=
; text-decoration: none; color: rgb(0, 102, 153)">Iva e fatturazione</a>. <=
/p> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"font-size: 10px; color=
: rgb(102, 102, 102); line-height: 16px; margin: 0 0 10px 0; font: 10px"> S=
e i tuoi articoli sono stati acquistati presso i venditori terzi di Amazon =
Marketplace, il venditore potrebbe chiederti ulteriori informazioni, quali =
il numero di Partita Iva o il tuo Codice Fiscale, ai fini di emettere una f=
attura valida. </p> </td>=20
            </tr>=20
            <tr>=20
             <td style=3D"vertical-align: top; font-size: 12px; line-height=
: 18px; font-family: Arial, sans-serif"> <p style=3D"font-size: 10px; color=
: rgb(102, 102, 102); line-height: 16px; margin: 0 0 10px 0; font: 10px"> Q=
uesta e-mail costituisce una semplice conferma di ricezione del tuo ordine.=
 Il contratto di vendita si perfeziona soltanto nel momento in cui ricevera=
i l'e-mail che conferma la spedizione degli articoli. </p> <p style=3D"font=
-size: 10px; color: rgb(102, 102, 102); line-height: 16px; margin: 0 0 10px=
 0; font: 10px"> Nota: questa &egrave; un'e-mail generata automaticamente e=
 non avremo la possibilit&agrave; di leggere eventuali e-mail di risposta. =
Non rispondere a questo messaggio. </p> </td>=20
            </tr>=20
           </tbody>
          </table> </td>=20
        </tr>=20
       </tbody>
      </table> </td>=20
    </tr>=20
   </tbody>
  </table> =20
 <img src=3D"http://www.amazon.it/gp/r.html?C=3D2B97OIWAZEIT6&K=3DA2CUI6QGS=
KLIDL&R=3DBVB1JPYHQO0B&T=3DE&U=3Dhttp%3A%2F%2Fimages-eu.amazon.com%2Fimages=
%2FG%2F01%2Fnav%2Ftransp.gif&A=3DTJH2AH1Y5ASTPKPNGTAHFE44A08A&H=3DZTNOA4AT2=
FASWJQH48ROM3THHAIA" /></body>
</html>=20
eos
doc3 = doc3.unpack('M').join
doc3_tagged = <<-eos

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/assets/document.tagged.js"></script><link rel="stylesheet" type="text/css" href="/assets/document.tagged.css">

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <title>
				Il tuo ordine Amazon.it Lomography - Diana F+ Senza... e 2 altri articoli
	</title>
 </head>
 <body>
  <table id="container">
   <tbody>
    <tr>
     <td class="frame">
      <table id="main">
       <tbody>
        <tr>
         <td>
          <table id="header">
           <tbody>
            <tr>
             <td rowspan="2" class="logo"> <a title="Visita Amazon.it"> <img alt="Amazon" src="http://g-ec2.images-amazon.com/images/G/29/x-locale/common/logo-and-your-done._V185550511_.gif"> </a> </td>
             <td class="navigation"> </td>
             <td class="navigation"> <a>I miei ordini</a> </td>
             <td class="navigation"> <span> | </span> <a>Il mio account</a> <span> | </span> <a>Amazon.it</a> </td>
            </tr>
            <tr>
             <td colspan="3" class="title"> <h2>Conferma ordine</h2> Ordine n°<a>404-1346776-6080321</a> <br> Ordine n°<a>404-5857848-3037909</a> <br> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="summary">
           <tbody>
            <tr>
             <td> <h3>Gentile Andrea,</h3> <p> Grazie per il tuo ordine. Ti invieremo un'e-mail quando i tuoi articoli saranno spediti. La tua data di consegna prevista è indicata in basso. Puoi consultare la sezione <a>I miei ordini</a> su Amazon.it per visualizzare lo stato del tuo ordine o apportare delle modifiche. </p> </td>
            </tr>
            <tr>
             <td> <p> Gli articoli acquistati sono stati suddivisi in 2 ordini. </p> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table>
          </table> </td>
        </tr>
        <tr>
         <td> <h3>Dettagli ordine</h3> </td>
        </tr>
        <tr data-ariel-orders-condition="open" data-ariel-orders="true" data-ariel-order-condition="open" data-ariel-order="true">
         <td>
          <table id="orderDetails">
           <tbody>
            <tr>
             <td> Ordine n°<a>404-1346776-6080321</a> <br> <span>Effettuato giovedì <span data-ariel-date="true" data-ariel-date-condition="open">18 dicembre 2014</span></span> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-order="true">
         <td>
          <table id="criticalInfo">
           <tbody>
            <tr>
             <td> <p> <span>La tua data di consegna prevista è: </span> <br> <b> martedì 23 dicembre 2014 - <br> mercoledì 24 dicembre 2014 </b> </p> <p> <span>La tua modalità di spedizione è: </span> <br> <b> 3-5 giorni </b> </p> <a> <img alt="I miei ordini" border="0" id="yourOrders" src="http://g-ec2.images-amazon.com/images/G/29/x-locale/cs/te/orderdetailsIT._V359483499_.png"> </a> </td>
             <td> <p> <span>L'ordine sarà spedito a:</span> <br> <b> Andrea Jemmett <br> Via Melo da Bari, 199 <br> Bari, BA 70121 <br> Italia </b> </p> </td>
            </tr>
            <tr>
             <td colspan="2"> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-order="true" data-ariel-products-condition="open" data-ariel-products="true">
         <td>
          <table id="itemDetails">
           <tbody>
            <tr>
             <td class="photo" data-ariel-product-condition="open" data-ariel-product="true"> <a title="B001RCT9YS"> <img id="asin" src="http://ecx.images-amazon.com/images/I/31Z1LDU0aDL._SCLZZZZZZZ__SY115_SX115_.jpg"> </a> </td>
             <td class="name" data-ariel-product="true"> <a> <span data-ariel-product_name="true" data-ariel-product_name-condition="open">Lomography Color Negative 400 ISO 35mm confezione da 3</span> </a> <br> Condizione: Nuovo <br> Venduto da <a>Bear &amp; Bear Gifts</a> <br> <a>Gestito da Logistica di Amazon </a> <br>
              <div>
               <table border="0" cellspacing="4" cellpadding="0">
                <tbody>
                 <tr>
                  <td> </td>
                  <td> <a> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/personalization/live-meter/facebook._V199133872_.gif" width="16" alt="Facebook" height="16" border="0"> </a> </td>
                  <td> <a> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/communities/social/twitter._V388046070_.gif" width="16" alt="Twitter" height="16" border="0"> </a> </td>
                  <td> <a> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/communities/social/pinterest._V149279734_.png" width="16" alt="Pinterest" height="16" border="0"> </a> </td>
                 </tr>
                </tbody>
               </table>
              </div> </td>
             <td class="price" data-ariel-product="true" data-ariel-product-condition="close"> <strong><span data-ariel-product_price="true" data-ariel-product_price-condition="open">EUR 14,43</span></strong> <br> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-order="true" data-ariel-products="true" data-ariel-products-condition="close">
         <td>
          <table id="itemDetails">
           <tbody>
            <tr>
             <td class="photo" data-ariel-product-condition="open" data-ariel-product="true"> <a title="B007EQMOQG"> <img id="asin" src="http://ecx.images-amazon.com/images/I/41FHh9MveYL._SCLZZZZZZZ__SY115_SX115_.jpg"> </a> </td>
             <td class="name" data-ariel-product="true"> <a> <span data-ariel-product_name="true" data-ariel-product_name-condition="open">3 pellicole bianco e nero Lady Grey formato 35mm / 400 ISO</span> </a> <br> Condizione: Nuovo <br> Venduto da <a>Bear &amp; Bear Gifts</a> <br> <a>Gestito da Logistica di Amazon </a> <br>
              <div>
               <table border="0" cellspacing="4" cellpadding="0">
                <tbody>
                 <tr>
                  <td> </td>
                  <td> <a> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/personalization/live-meter/facebook._V199133872_.gif" width="16" alt="Facebook" height="16" border="0"> </a> </td>
                  <td> <a> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/communities/social/twitter._V388046070_.gif" width="16" alt="Twitter" height="16" border="0"> </a> </td>
                  <td> <a> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/communities/social/pinterest._V149279734_.png" width="16" alt="Pinterest" height="16" border="0"> </a> </td>
                 </tr>
                </tbody>
               </table>
              </div> </td>
             <td class="price" data-ariel-product="true" data-ariel-product-condition="close"> <strong><span data-ariel-product_price="true" data-ariel-product_price-condition="open">EUR 18,89</span></strong> <br> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-order="true" data-ariel-order-condition="close">
         <td>
          <table id="costBreakdown">
           <tbody>
            <tr>
             <td colspan="2" class="divider"> </td>
            </tr>
            <tr>
             <td> Totale parziale degli articoli: </td>
             <td class="price"> EUR 33,32 </td>
            </tr>
            <tr>
             <td> Costi di spedizione: </td>
             <td class="price"> EUR 0,00 </td>
            </tr>
            <tr>
             <td colspan="2"> <p></p> </td>
            </tr>
            <tr>
             <td colspan="2"> <p></p> </td>
            </tr>
            <tr>
             <td colspan="2"> <p></p> </td>
            </tr>
            <tr>
             <td class="total"> <strong> Totale IVA inclusa (ove applicabile):</strong> </td>
             <td class="total"> <strong><span data-ariel-total="true" data-ariel-total-condition="open">EUR 33,32</span></strong> </td>
            </tr>
            <tr>
             <td rowspan="2"> Metodo di pagamento selezionato: </td>
             <td class="price"> Mastercard </td>
            </tr>
            <tr>
             <td colspan="2" class="end"> </td>
            </tr>
            <tr>
             <td colspan="2" class="divider"> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-order-condition="open" data-ariel-order="true">
         <td>
          <table id="orderDetails">
           <tbody>
            <tr>
             <td> Ordine n°<a>404-5857848-3037909</a> <br> <span>Effettuato giovedì <span data-ariel-date="true" data-ariel-date-condition="open">18 dicembre 2014</span></span> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-order="true">
         <td>
          <table id="criticalInfo">
           <tbody>
            <tr>
             <td> <p> <span>La tua data di consegna prevista è: </span> <br> <b> martedì 23 dicembre 2014 - <br> martedì 30 dicembre 2014 </b> </p> <p> <span>La tua modalità di spedizione è: </span> <br> <b> 3-5 giorni </b> </p> <a> <img alt="I miei ordini" border="0" id="yourOrders" src="http://g-ec2.images-amazon.com/images/G/29/x-locale/cs/te/orderdetailsIT._V359483499_.png"> </a> </td>
             <td> <p> <span>L'ordine sarà spedito a:</span> <br> <b> Andrea Jemmett <br> Via Melo da Bari, 199 <br> Bari, BA 70121 <br> Italia </b> </p> <p> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/cs/te/icon-gift.png"> <strong>Quest'ordine include uno o più articoli che hai contrassegnato come regali</strong> </p> </td>
            </tr>
            <tr>
             <td colspan="2"> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-order="true">
         <td>
          <table id="itemDetails">
           <tbody>
            <tr>
             <td class="photo" data-ariel-products-condition="open" data-ariel-products="true" data-ariel-product-condition="open" data-ariel-product="true"> <a title="B002OL2FX8"> <img id="asin" src="http://ecx.images-amazon.com/images/I/41Y1sJY3RFL._SCLZZZZZZZ__SY115_SX115_.jpg"> </a> </td>
             <td class="name" data-ariel-products="true" data-ariel-product="true"> <a> <span data-ariel-product_name="true" data-ariel-product_name-condition="open">Lomography - Diana F+ Senza Flash</span> </a> <br> Condizione: Nuovo <br> Venduto da <a>TOPANBIETER999</a> <br> <a>Gestito da Logistica di Amazon </a> <br> Confezione regalo: Sì <br> Messaggio di auguri: Buon Natale Squiki mia! :) Dal Dott. Squiki <br>
              <div>
               <table border="0" cellspacing="4" cellpadding="0">
                <tbody>
                 <tr>
                  <td> </td>
                  <td> <a> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/personalization/live-meter/facebook._V199133872_.gif" width="16" alt="Facebook" height="16" border="0"> </a> </td>
                  <td> <a> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/communities/social/twitter._V388046070_.gif" width="16" alt="Twitter" height="16" border="0"> </a> </td>
                  <td> <a> <img src="http://g-ecx.images-amazon.com/images/G/01/x-locale/communities/social/pinterest._V149279734_.png" width="16" alt="Pinterest" height="16" border="0"> </a> </td>
                 </tr>
                </tbody>
               </table>
              </div> </td>
             <td class="price" data-ariel-products="true" data-ariel-products-condition="close" data-ariel-product="true" data-ariel-product-condition="close"> <strong><span data-ariel-product_price="true" data-ariel-product_price-condition="open">EUR 45,59</span></strong> <br> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr data-ariel-orders="true" data-ariel-orders-condition="close" data-ariel-order="true" data-ariel-order-condition="close">
         <td>
          <table id="costBreakdown">
           <tbody>
            <tr>
             <td colspan="2" class="divider"> </td>
            </tr>
            <tr>
             <td> Totale parziale degli articoli: </td>
             <td class="price"> EUR 45,59 </td>
            </tr>
            <tr>
             <td> Costi di spedizione: </td>
             <td class="price"> EUR 0,00 </td>
            </tr>
            <tr>
             <td> Confezione regalo: </td>
             <td class="price"> EUR 2,99 </td>
            </tr>
            <tr>
             <td colspan="2"> <p></p> </td>
            </tr>
            <tr>
             <td colspan="2"> <p></p> </td>
            </tr>
            <tr>
             <td colspan="2"> <p></p> </td>
            </tr>
            <tr>
             <td class="total"> <strong> Totale IVA inclusa (ove applicabile):</strong> </td>
             <td class="total"> <strong><span data-ariel-total="true" data-ariel-total-condition="open">EUR 48,58</span></strong> </td>
            </tr>
            <tr>
             <td rowspan="2"> Metodo di pagamento selezionato: </td>
             <td class="price"> Mastercard </td>
            </tr>
            <tr>
             <td colspan="2" class="end"> </td>
            </tr>
            <tr>
             <td colspan="2" class="divider"> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="selfService">
           <tbody>
            <tr>
             <td> <p> Desideri apportare delle modifiche al tuo ordine? Visita la nostra pagina di aiuto <a>Modifica i dettagli dell'ordine</a> per maggiori informazioni e per visualizzare i nostri video. </p> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="closing">
           <tbody>
            <tr>
             <td> <p> A presto,<br> <span class="signature"> <strong>Amazon.it</strong> </span> </p> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="marketingContent">
          </table> </td>
        </tr>
        <tr>
         <td>
          <table id="legalCopy">
           <tbody>
            <tr>
             <td> <p> Gli articoli indicati come "Logistica di Amazon" sono venduti da venditori terzi su Amazon Marketplace e sono depositati presso un Centro di distribuzione Amazon che poi li spedirà direttamente ai clienti. I warehousedeals sono articoli venduti da Amazon EU Sarl e gestiti con la <a>Logistica di Amazon</a>. </p> </td>
            </tr>
            <tr>
             <td> <p> Gli articoli venduti da Amazon EU Sarl sono soggetti all'Imposta sul Valore Aggiunto nel territorio di destinazione della merce in conformità alle leggi vigenti sulle cd. vendite a distanza. Se il tuo ordine contiene molteplici articoli acquistati presso Amazon EU Sarl e i nostri venditori terzi, potrai essere soggetto all'Imposta sul Valore Aggiunto regolata dalle norme stabilite dal venditore terzo e la sua sede operativa. </p> <p> Per maggiori informazioni, visita la nostra pagina di aiuto <a>Iva e fatturazione</a>. </p> </td>
            </tr>
            <tr>
             <td> <p> Se i tuoi articoli sono stati acquistati presso i venditori terzi di Amazon Marketplace, il venditore potrebbe chiederti ulteriori informazioni, quali il numero di Partita Iva o il tuo Codice Fiscale, ai fini di emettere una fattura valida. </p> </td>
            </tr>
            <tr>
             <td> <p> Questa e-mail costituisce una semplice conferma di ricezione del tuo ordine. Il contratto di vendita si perfeziona soltanto nel momento in cui riceverai l'e-mail che conferma la spedizione degli articoli. </p> <p> Nota: questa è un'e-mail generata automaticamente e non avremo la possibilità di leggere eventuali e-mail di risposta. Non rispondere a questo messaggio. </p> </td>
            </tr>
           </tbody>
          </table> </td>
        </tr>
       </tbody>
      </table> </td>
    </tr>
   </tbody>
  </table>
 <img src="http://www.amazon.it/gp/r.html?C=2B97OIWAZEIT6&amp;K=A2CUI6QGSKLIDL&amp;R=BVB1JPYHQO0B&amp;T=E&amp;U=http%3A%2F%2Fimages-eu.amazon.com%2Fimages%2FG%2F01%2Fnav%2Ftransp.gif&amp;A=TJH2AH1Y5ASTPKPNGTAHFE44A08A&amp;H=ZTNOA4AT2FASWJQH48ROM3THHAIA">

</body>
</html>
eos
Document.create! original: doc3, tagged: doc3_tagged, is_tagged: true

[%w(Orders orders), %w(Order order), %w(Data date), %w(Products products), %w(Product product), ['Product name', 'product_name'], ['Product price', 'product_price'], %w(Total total)].map { |t| Tag.create! name: t[0], token: 'ariel-'+t[1] }
