Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC1D30C2D
	for <lists+ath10k@lfdr.de>; Fri, 31 May 2019 11:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9mwzNjZeBml2EVsUfOzg0ghByZ0qDjcG0KveKSH+QoI=; b=AGNkinIeSw6I2o
	s7j9RZIp5/sMshq5vZ163hLTmuLjtupGRWlAZYq1pab8C+LQj9QxqmS761xg0LiWSnXURIEOKFQnN
	qea5HllHrvNExCckdplI8mYKjRoTU91omFtTSU7GZjWXB4lkyMjwufHgpOXir5/TGLB3oJnZywYsU
	aFFUIuxEb61uKHvtFmRfpBs2IUnZ8DUVOCX+a9KKVwNOW6n8Bgrqk6a0LSHq0Kr7DlVCZAAhGn/Mt
	H7sxpCikFVI/HU2nNSW4xY5g9xsdYgv5RHdZNU3V68/yAw0EJNbSuBw61rZNC4OpvlGVtI/E14aRh
	4AEQZBGuQnVkz6NRM1IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWeHn-0002ZU-Vo; Fri, 31 May 2019 09:57:19 +0000
Received: from mail-eopbgr800092.outbound.protection.outlook.com
 ([40.107.80.92] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWeHj-0002Yl-W4
 for ath10k@lists.infradead.org; Fri, 31 May 2019 09:57:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dedrone.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/nvL5iYiRLMRdh/ttIMxkZ+8e3ccLTGxt/Nd5UatIJw=;
 b=c2wtE5r6+RZ4ws2fTzVgUUENmrWri4jS8eyrKAxX/mMPM86bVl/cPkCBXndz/D/9AiiAmJETs+fj7sY3LNptUgyNRGqnXIvCdSM1w8cnmpQRB6tLpZpHOeh9GitVo7VnxLop9ACnnZVlI7z2f6TMS1IVahf+gDuIaFlQL2NYPKA=
Received: from BN8PR15MB3169.namprd15.prod.outlook.com (20.179.72.152) by
 BN8PR15MB2980.namprd15.prod.outlook.com (20.178.220.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Fri, 31 May 2019 09:57:09 +0000
Received: from BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3]) by BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3%5]) with mapi id 15.20.1922.021; Fri, 31 May 2019
 09:57:09 +0000
From: Patrick Daume <patrick.daume@dedrone.com>
To: "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Subject: Qualcomm Atheros QCA6174 monitoring mode receiving no data
Thread-Topic: Qualcomm Atheros QCA6174 monitoring mode receiving no data
Thread-Index: AQHVF5c28GKXVbl/KUKifPWHGZ9U+w==
Date: Fri, 31 May 2019 09:57:09 +0000
Message-ID: <1559296628.11260.4.camel@dedrone.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=patrick.daume@dedrone.com; 
x-originating-ip: [80.69.200.138]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1da153f-2221-41bd-34c3-08d6e5ae58e6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BN8PR15MB2980; 
x-ms-traffictypediagnostic: BN8PR15MB2980:
x-microsoft-antispam-prvs: <BN8PR15MB2980A797B00572C38EC6CBE7E6190@BN8PR15MB2980.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00540983E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39840400004)(346002)(376002)(396003)(366004)(189003)(199004)(66946007)(25786009)(73956011)(103116003)(81156014)(26005)(81166006)(64756008)(6506007)(86362001)(66066001)(6916009)(66476007)(66556008)(2906002)(8676002)(2351001)(186003)(71190400001)(91956017)(76116006)(71200400001)(66446008)(68736007)(99286004)(316002)(2501003)(3846002)(6116002)(256004)(14444005)(2616005)(36756003)(102836004)(6512007)(6486002)(486006)(44832011)(5640700003)(53936002)(7736002)(5660300002)(6436002)(14454004)(305945005)(8936002)(478600001)(476003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR15MB2980;
 H:BN8PR15MB3169.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: dedrone.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6eRTHLJZ5JWcqIE79AU/fbD2yeuAzI4fwsyt0mdpZViGAUVvCfF5zXJ9wtJTlqXRw5714BE9+jrSqg38heTwGH23JyZ6B7V5Mqt1ZugebPtPRWd4uhj6KEAv2BbzSIVGJZ+ulj1NbLVBORS7z4o+wEreu26rmoWL0Ku62J89nFy5ccJrk7McSa9B1RTLChpwVZm9p/qsyLx9Mmv2QImXC7bi2GKD2LoF6yPylzIfNShi2/uSPMad7qq8Si+8KoBZRw33bvL9o+ZnDIAHqRWrdSdYi7K2N/CnnMF6C4mfZu5Z3fpkLhfemrCiyqh8bTvpZBW1d4fZ/TSzvDeG5z1LC6RDRVEs3nL/PMF+op1PvU4PnIjD+O1NDoadk5hYL3ZB4x+y0kD1aPTdIjVn94PFJQFes5usL3DI1NZTN9UrDjQ=
Content-ID: <72B658548A19CB4EB714E7609D1B2782@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: dedrone.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1da153f-2221-41bd-34c3-08d6e5ae58e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2019 09:57:09.4387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ea7e0db4-c796-41ba-a144-9bdd2f4c6231
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: patrick.daume@dedrone.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR15MB2980
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_025716_159977_E421E2CB 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.92 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

SSd2ZSBhbiBTcGFya0xhbiBXUEVRLTI2MUFDTihCVCkgUXVhbGNvbW0gQXRoZXJvcyBRQ0E2MTc0
IGNoaXBzZXQgb24gYW4gNC40LjEgS2VybmVsLg0KSWYgSSBicmluZyB0aGUgY2hpcCBpbiBtb2lu
aXRvciBtb2RlIHNvbWUgRGF0YS0sIFFvUy0sIEFja25vd2xlZGdtZW50LXBhY2tldHMgYXJlIG5v
dGFibHkgbWlzc2luZy4NCkZvciBjb21wYXJpc29uIEkgdXNlZCB0Y3BkdW1wIGluIHBhcmFsbGVs
IHdpY2ggYW4gSW50ZWwgV2lyZWxlc3MgMzE2MCBjaGlwLg0KT25seSBCZWFjb25zLCBQcm9iZSBS
ZXF1ZXN0cyBhbmQgUmVzcG9uc2Ugd2VyZSByZWNvcmRlZC4NCg0KSSB0cmllZCB0byB1cGRhdGUg
dGhlIGtlcm5lbCB0byAnNC45LjE0MCcgYW5kIHRoZSBmaXJtd2FyZSB0byAnV0xBTi5STS40LjQu
MS0wMDA3OS1RQ0FSTVNXUFotMScgcmVzdWx0aW5nIGluIHRoZSBtb25pdG9yaW5nIG1vZGUgSW50
ZXJmYWNlIHJlY2VpdmluZyBubyBkYXRhIGF0IGFsbC4NCkkgYWxzbyB0cmllZCBkaWZmZXJlbnQg
dmVyc2lvbiBvZiB0aGUgZmlybXdhcmUgaW4gY29tYmluYXRpb24gd2l0aCBiYWNrcG9ydHMgb24g
dGhlIDQuNC4xIEtlcm5lbC7CoA0KQWxsIHJlbGV2YW50IGJhY2twb3J0cyBzdGFydGluZyBmcm9t
ICd2NC4xNC1yYzInIHNob3cgdGhlIHNhbWUgYmVoYXZpb3VyIGluIG1vbml0b3IgbW9kZcKgDQoo
aW5jbHVkaW5nIHRlc3RzIHdpdGggdGhlICdXTEFOLlJNLjQuNC4xLTAwMDc5LVFDQVJNU1dQWi0x
JywgJzQuNC4xLmMzJywgJzQuNC4xLmMyJyBmaXJtd2FyZSBpbiBjb21iaW5hdGlvbiB3aXRoICd2
NC4xNC1yYzInLCAndjQuMjAuMTcnLCAndjUuMC41JyAndjUuMS1yYzInIGJhY2twb3J0cynCoMKg
wqDCoMKgwqDCoA0KDQpDYW4gYW55b25lIHBvaW50IG91dCB3aGljaCBwYXRjaGVzIG1heSBiZSBy
ZWxhdmFudD8NCklzIHRoZSBtb25pdG9yaW5nIG1vZGUgbm8gbG9uZ2VyIHN1cHBvcnRlZCB3aXRo
IGEgbmV3ZXIgZmlybXdhcmUvZHJpdmVyIHZlcnNpb24/DQpJcyB0aGUgbG93ZXIgYW1vdW50IG9m
IHBhY2thZ2VzIGEgZmlybXdhcmUgbGltaXRhdGlvbiBvciBwb3NzaWJsZSB0byB3b3JrIGFyb3Vu
ZCBpbiB0aGUgZHJpdmVyPw0KDQpsc2h3ID4+DQrCoMKgwqDCoMKgKi1wY2kNCsKgwqDCoMKgwqDC
oMKgwqDCoMKgZGVzY3JpcHRpb246IFBDSSBicmlkZ2UNCsKgwqDCoMKgwqDCoMKgwqDCoMKgcHJv
ZHVjdDogTlZJRElBIENvcnBvcmF0aW9uDQrCoMKgwqDCoMKgwqDCoMKgwqDCoHZlbmRvcjogTlZJ
RElBIENvcnBvcmF0aW9uDQrCoMKgwqDCoMKgwqDCoMKgwqDCoHBoeXNpY2FsIGlkOiAxDQrCoMKg
wqDCoMKgwqDCoMKgwqDCoGJ1cyBpbmZvOiBwY2lAMDAwMDowMDowMS4wDQrCoMKgwqDCoMKgwqDC
oMKgwqDCoHZlcnNpb246IGExDQrCoMKgwqDCoMKgwqDCoMKgwqDCoHdpZHRoOiAzMiBiaXRzDQrC
oMKgwqDCoMKgwqDCoMKgwqDCoGNsb2NrOiAzM01Ieg0KwqDCoMKgwqDCoMKgwqDCoMKgwqBjYXBh
YmlsaXRpZXM6IHBjaSBub3JtYWxfZGVjb2RlIGJ1c19tYXN0ZXIgY2FwX2xpc3QNCsKgwqDCoMKg
wqDCoMKgwqDCoMKgY29uZmlndXJhdGlvbjogZHJpdmVyPXBjaWVwb3J0DQrCoMKgwqDCoMKgwqDC
oMKgwqDCoHJlc291cmNlczogaXJxOjM4OCBtZW1vcnk6NTAyMDAwMDAtNTAzZmZmZmYNCsKgwqDC
oMKgwqDCoMKgwqAqLW5ldHdvcmsNCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGVzY3JpcHRp
b246IGludGVyZmFjZQ0KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwcm9kdWN0OiBRQ0E2MTc0
IDgwMi4xMWFjIFdpcmVsZXNzIE5ldHdvcmsgQWRhcHRlcg0KwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqB2ZW5kb3I6IFF1YWxjb21tIEF0aGVyb3MNCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cGh5c2ljYWwgaWQ6IDANCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnVzIGluZm86IHBjaUAw
MDAwOjAxOjAwLjANCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbG9naWNhbCBuYW1lOiB3bGFu
MA0KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2ZXJzaW9uOiAzMg0KwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBzZXJpYWw6IFtSRU1PVkVEXQ0KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3
aWR0aDogNjQgYml0cw0KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjbG9jazogMzNNSHoNCsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FwYWJpbGl0aWVzOiBidXNfbWFzdGVyIGNhcF9saXN0
IGxvZ2ljYWwNCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29uZmlndXJhdGlvbjogYnJvYWRj
YXN0PXllcyBkcml2ZXI9YXRoMTBrX3BjaSBkcml2ZXJ2ZXJzaW9uPTQuNC4zOC02LWRlZHJvbmUg
ZmlybXdhcmU9V0xBTi5STS4yLjAtMDAxODAtUUNBUk1TV1BaLTEgbGF0ZW5jeT0wIGxpbms9eWVz
IG11bHRpY2FzdD15ZXMNCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVzb3VyY2VzOiBpcnE6
NDUyIG1lbW9yeTo1MDIwMDAwMC01MDNmZmZmZg0KDQpsc2h3ID4+DQrCoMKgwqDCoMKgKi1wY2k6
MA0KwqDCoMKgwqDCoMKgwqDCoMKgwqBkZXNjcmlwdGlvbjogUENJIGJyaWRnZQ0KwqDCoMKgwqDC
oMKgwqDCoMKgwqBwcm9kdWN0OiBOVklESUEgQ29ycG9yYXRpb24NCsKgwqDCoMKgwqDCoMKgwqDC
oMKgdmVuZG9yOiBOVklESUEgQ29ycG9yYXRpb24NCsKgwqDCoMKgwqDCoMKgwqDCoMKgcGh5c2lj
YWwgaWQ6IDEwMA0KwqDCoMKgwqDCoMKgwqDCoMKgwqBidXMgaW5mbzogcGNpQDAwMDA6MDA6MDAu
MA0KwqDCoMKgwqDCoMKgwqDCoMKgwqB2ZXJzaW9uOiBhMQ0KwqDCoMKgwqDCoMKgwqDCoMKgwqB3
aWR0aDogMzIgYml0cw0KwqDCoMKgwqDCoMKgwqDCoMKgwqBjbG9jazogMzNNSHoNCsKgwqDCoMKg
wqDCoMKgwqDCoMKgY2FwYWJpbGl0aWVzOiBwY2kgbm9ybWFsX2RlY29kZSBidXNfbWFzdGVyIGNh
cF9saXN0DQrCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbmZpZ3VyYXRpb246IGRyaXZlcj1wY2llcG9y
dA0KwqDCoMKgwqDCoMKgwqDCoMKgwqByZXNvdXJjZXM6IGlycToxMzAgbWVtb3J5OjMyMjAwMDAw
LTMyMmZmZmZmDQrCoMKgwqDCoMKgwqDCoMKgKi1uZXR3b3JrDQrCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGRlc2NyaXB0aW9uOiBpbnRlcmZhY2UNCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cHJvZHVjdDogV2lyZWxlc3MgMzE2MA0KwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2ZW5kb3I6
IEludGVsIENvcnBvcmF0aW9uDQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBoeXNpY2FsIGlk
OiAwDQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJ1cyBpbmZvOiBwY2lAMDAwMDowMTowMC4w
DQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxvZ2ljYWwgbmFtZTogd2xhbjANCsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgdmVyc2lvbjogODMNCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
c2VyaWFsOiBbUkVNT1ZFRF0NCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgd2lkdGg6IDY0IGJp
dHMNCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2xvY2s6IDMzTUh6DQrCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGNhcGFiaWxpdGllczogYnVzX21hc3RlciBjYXBfbGlzdCBsb2dpY2FsDQrC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbmZpZ3VyYXRpb246IGJyb2FkY2FzdD15ZXMgZHJp
dmVyPWl3bHdpZmkgZHJpdmVydmVyc2lvbj0zLjEwLjQwIGZpcm13YXJlPTI1LjMwLjEzLjAgbGF0
ZW5jeT0wIGxpbms9eWVzIG11bHRpY2FzdD15ZXMNCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cmVzb3VyY2VzOiBpcnE6NjQzIG1lbW9yeTozMjIwMDAwMC0zMjIwMWZmZg0KDQoNCg0KbHNodyBh
ZnRlciBrZXJuZWwgYW5kIGZpcm13YXJlIHVwZGF0ZSA+Pg0KwqDCoMKgwqDCoCotcGNpDQrCoMKg
wqDCoMKgwqDCoMKgwqDCoGRlc2NyaXB0aW9uOiBQQ0kgYnJpZGdlDQrCoMKgwqDCoMKgwqDCoMKg
wqDCoHByb2R1Y3Q6IE5WSURJQSBDb3Jwb3JhdGlvbg0KwqDCoMKgwqDCoMKgwqDCoMKgwqB2ZW5k
b3I6IE5WSURJQSBDb3Jwb3JhdGlvbg0KwqDCoMKgwqDCoMKgwqDCoMKgwqBwaHlzaWNhbCBpZDog
MQ0KwqDCoMKgwqDCoMKgwqDCoMKgwqBidXMgaW5mbzogcGNpQDAwMDA6MDA6MDEuMA0KwqDCoMKg
wqDCoMKgwqDCoMKgwqB2ZXJzaW9uOiBhMQ0KwqDCoMKgwqDCoMKgwqDCoMKgwqB3aWR0aDogMzIg
Yml0cw0KwqDCoMKgwqDCoMKgwqDCoMKgwqBjbG9jazogMzNNSHoNCsKgwqDCoMKgwqDCoMKgwqDC
oMKgY2FwYWJpbGl0aWVzOiBwY2kgbm9ybWFsX2RlY29kZSBidXNfbWFzdGVyIGNhcF9saXN0DQrC
oMKgwqDCoMKgwqDCoMKgwqDCoGNvbmZpZ3VyYXRpb246IGRyaXZlcj1wY2llcG9ydA0KwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXNvdXJjZXM6IGlycTozODEgbWVtb3J5OjQwMjAwMDAwLTQwM2ZmZmZm
DQrCoMKgwqDCoMKgwqDCoMKgKi1uZXR3b3JrDQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRl
c2NyaXB0aW9uOiBXaXJlbGVzcyBpbnRlcmZhY2UNCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cHJvZHVjdDogUUNBNjE3NCA4MDIuMTFhYyBXaXJlbGVzcyBOZXR3b3JrIEFkYXB0ZXINCsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgdmVuZG9yOiBRdWFsY29tbSBBdGhlcm9zDQrCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHBoeXNpY2FsIGlkOiAwDQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGJ1cyBpbmZvOiBwY2lAMDAwMDowMTowMC4wDQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxv
Z2ljYWwgbmFtZTogd2xhbjANCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmVyc2lvbjogMzIN
CsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2VyaWFsOiBbUkVNT1ZFRF0NCsKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgd2lkdGg6IDY0IGJpdHMNCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
Y2xvY2s6IDMzTUh6DQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhcGFiaWxpdGllczogYnVz
X21hc3RlciBjYXBfbGlzdCBsb2dpY2FsIHdpcmVsZXNzDQrCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGNvbmZpZ3VyYXRpb246IGJyb2FkY2FzdD15ZXMgZHJpdmVyPWF0aDEwa19wY2kgZHJpdmVy
dmVyc2lvbj00LjkuMTQwLXRlZ3JhIGZpcm13YXJlPVdMQU4uUk0uNC40LjEtMDAwNzktUUNBUk1T
V1BaLTEgbGF0ZW5jeT0wIGxpbms9eWVzIG11bHRpY2FzdD15ZXMgd2lyZWxlc3M9SUVFRSA4MDIu
MTENCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVzb3VyY2VzOiBpcnE6NDQ2IG1lbW9yeTo0
MDIwMDAwMC00MDNmZmZmZg0KDQoNCmRtZXNnID4+DQpbwqDCoMKgwqA4LjEyNTE2M10gYXRoMTBr
X3BjaSAwMDAwOjAxOjAwLjA6IGVuYWJsaW5nIGRldmljZSAoMDAwMCAtPiAwMDAyKQ0KW8KgwqDC
oMKgOC4xMjgyODNdIGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiBwY2kgaXJxIG1zaSBvcGVyX2ly
cV9tb2RlIDIgaXJxX21vZGUgMCByZXNldF9tb2RlIDANClvCoMKgwqDCoDguNDA3ODE0XSBhdGgx
MGtfcGNpIDAwMDA6MDE6MDAuMDogRGlyZWN0IGZpcm13YXJlIGxvYWQgZm9yIGF0aDEway9wcmUt
Y2FsLXBjaS0wMDAwOjAxOjAwLjAuYmluIGZhaWxlZCB3aXRoIGVycm9yIC0yDQpbwqDCoMKgwqA4
LjQwNzgxN10gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IEZhbGxpbmcgYmFjayB0byB1c2VyIGhl
bHBlcg0KW8KgwqDCoMKgOC40MTA0NDddIGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiBEaXJlY3Qg
ZmlybXdhcmUgbG9hZCBmb3IgYXRoMTBrL2NhbC1wY2ktMDAwMDowMTowMC4wLmJpbiBmYWlsZWQg
d2l0aCBlcnJvciAtMg0KW8KgwqDCoMKgOC40MTA0NTBdIGF0aDEwa19wY2kgMDAwMDowMTowMC4w
OiBGYWxsaW5nIGJhY2sgdG8gdXNlciBoZWxwZXINClvCoMKgwqDCoDguNDI1NjY4XSBhdGgxMGtf
cGNpIDAwMDA6MDE6MDAuMDogcWNhNjE3NCBodzMuMiB0YXJnZXQgMHgwNTAzMDAwMCBjaGlwX2lk
IDB4MDAzNDBhZmYgc3ViIDFkYWM6MDI2MQ0KW8KgwqDCoMKgOC40MjU2NzJdIGF0aDEwa19wY2kg
MDAwMDowMTowMC4wOiBrY29uZmlnIGRlYnVnIDEgZGVidWdmcyAxIHRyYWNpbmcgMCBkZnMgMCB0
ZXN0bW9kZSAwDQpbwqDCoMKgwqA4LjQyNjQwNl0gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IGZp
cm13YXJlIHZlciBXTEFOLlJNLjQuNC4xLTAwMDc5LVFDQVJNU1dQWi0xIGFwaSA2IGZlYXR1cmVz
IHdvd2xhbixpZ25vcmUtb3RwIGNyYzMyIGZkODY5YmViDQpbwqDCoMKgwqA4LjQ5Mzk4N10gYXRo
MTBrX3BjaSAwMDAwOjAxOjAwLjA6IGJvYXJkX2ZpbGUgYXBpIDIgYm1pX2lkIE4vQSBjcmMzMiA0
ZWQzNTY5ZQ0KDQoNCnN1ZG8gaWZjb25maWcgd2xhbjAgZG93bg0KaXcgZGV2IHdsYW4wIHNldCB0
eXBlIG1vbml0b3INCmlmY29uZmlnIHdsYW4wIHVwDQppdyBkZXYgd2xhbjAgc2V0IGZyZXEgMjQx
Mg0KdGNwZHVtcCAtaSB3bGFuMA0KDQo+Pj4NCnRjcGR1bXA6IHZlcmJvc2Ugb3V0cHV0IHN1cHBy
ZXNzZWQsIHVzZSAtdiBvciAtdnYgZm9yIGZ1bGwgcHJvdG9jb2wgZGVjb2RlDQpsaXN0ZW5pbmcg
b24gd2xhbjAsIGxpbmstdHlwZSBJRUVFODAyXzExX1JBRElPICg4MDIuMTEgcGx1cyByYWRpb3Rh
cCBoZWFkZXIpLCBjYXB0dXJlIHNpemUgMjYyMTQ0IGJ5dGVzDQowIHBhY2tldHMgY2FwdHVyZWQN
CjAgcGFja2V0cyByZWNlaXZlZCBieSBmaWx0ZXINCjAgcGFja2V0cyBkcm9wcGVkIGJ5IGtlcm5l
bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsg
bWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
