Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA2F3303B
	for <lists+ath10k@lfdr.de>; Mon,  3 Jun 2019 14:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BudO3CrnmDFVOR7Y8Ay5agoLzzCVfye/vrd703aa9Lc=; b=Ed1ziEY6Z6vqBF
	xv+eUYtusZV2FGdy/OVDsGafKc0jEEXocieKQ5JzR818i8Ufwds93PQMbbDR2dMc90NSRZIG8ETOr
	TOdipf2Rtog/aoZ5rqKraH/vT2rVDSBZGIG8XG28SMjPZEmGEYiz+aUhIcxy31legU08nVZ4Sqiqp
	6KeuewM8AsqYE7eup3sYQMkAAkPKz3xoupbd+yJuSnaVYfypywvXXOMPGH0mvdQnjFVqYayw4O0lL
	9Z/QddzDrsGbI0JzKQeydYQ+6nkX5TFQGGFVP0MgBDEwAXt9sK6FiXox58zCvXR28kk05r3kkDukn
	EorIq0qvVfXtMg3rGBRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmQZ-0001WT-62; Mon, 03 Jun 2019 12:51:03 +0000
Received: from mail-eopbgr760092.outbound.protection.outlook.com
 ([40.107.76.92] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmQV-0001W4-8X
 for ath10k@lists.infradead.org; Mon, 03 Jun 2019 12:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dedrone.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e4VF50oTwq++pQ6XQC07u+/GHun7T6JVr/6K3+ZtwwQ=;
 b=Hf4tVVD6SyPyLmLaMicy3kp5fYZAqooccxvj6XeKX+kJPwMXjWM0aoEHv2w22B9fgxdClduMDOU6NSUypSL07Lxsvxg3yhE17n3j3O16xfp/Dv878zflq4SmnjfWIgTjsSNeYaXAij6I6woHhMZ3DZe99QUw5VEC/we7/hYXjoc=
Received: from BN8PR15MB3169.namprd15.prod.outlook.com (20.179.72.152) by
 BN8PR15MB2642.namprd15.prod.outlook.com (20.179.138.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Mon, 3 Jun 2019 12:50:54 +0000
Received: from BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3]) by BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3%5]) with mapi id 15.20.1943.018; Mon, 3 Jun 2019
 12:50:54 +0000
From: Patrick Daume <patrick.daume@dedrone.com>
To: "kvalo@codeaurora.org" <kvalo@codeaurora.org>
Subject: Re: Qualcomm Atheros QCA6174 monitoring mode receiving no data
Thread-Topic: Qualcomm Atheros QCA6174 monitoring mode receiving no data
Thread-Index: AQHVF5c28GKXVbl/KUKifPWHGZ9U+6aJrXN/gAA5U4A=
Date: Mon, 3 Jun 2019 12:50:54 +0000
Message-ID: <1559566253.12864.47.camel@dedrone.com>
References: <1559296628.11260.4.camel@dedrone.com>
 <87lfyjyq9c.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87lfyjyq9c.fsf@kamboji.qca.qualcomm.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=patrick.daume@dedrone.com; 
x-originating-ip: [80.69.200.138]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f288513-8b03-4952-302f-08d6e8221de2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:BN8PR15MB2642; 
x-ms-traffictypediagnostic: BN8PR15MB2642:
x-microsoft-antispam-prvs: <BN8PR15MB26426A4A033DB36D703A305BE6140@BN8PR15MB2642.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0057EE387C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(39840400004)(396003)(366004)(346002)(376002)(189003)(199004)(6436002)(81156014)(81166006)(8936002)(6486002)(25786009)(8676002)(1730700003)(2906002)(2351001)(2501003)(6512007)(91956017)(76116006)(508600001)(76176011)(229853002)(66446008)(64756008)(71200400001)(71190400001)(14454004)(66556008)(5640700003)(73956011)(66946007)(66476007)(86362001)(5660300002)(36756003)(99286004)(186003)(26005)(14444005)(256004)(6916009)(6506007)(4326008)(316002)(6246003)(53936002)(66066001)(102836004)(7736002)(476003)(11346002)(103116003)(2616005)(486006)(44832011)(305945005)(68736007)(6116002)(446003)(3846002)(473944003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR15MB2642;
 H:BN8PR15MB3169.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: dedrone.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BTv9jYniPQ9uEV2S6qkNJo/hYJAwIw+bU0qwRIfuhVOmeRQH4xCsV0BQsyyxallq7taF5Swk7/Yzy+szkUOzLXhcj5+/tm8n2jGvF/oNx4TkRXB1Yolgw0H33S19ofVM3ARTU5s0ii03Qp6CP5g+Z5ee54U8FyOs+Ox9UXww8JLolm0chMgY3d3wUd808Bw8SY9K9UQUFI6TSC/yFeMqmvQPl/qb30Ig/eJAf4D0RBicwf7qZzstjQ+mHxM0iEwH2rr/RWs0utVZ6DhE+gE3LkDwShmzU6/VxvHVVy3Dw/hU7eHRzQQuBjTQ5DrrNJdz1Za9j+zjkFnY5bXDCnFNxqKkEyYPZQQAu+KwbGz50S878mxsWqMZo9f/w3XswbIkoB9HysRiHT1A7tHmrBw4/uDmEzLrjHg4b1426st2oDQ=
Content-ID: <6A96FD3150A1B7449A22B531A50132E8@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: dedrone.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f288513-8b03-4952-302f-08d6e8221de2
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2019 12:50:54.5639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ea7e0db4-c796-41ba-a144-9bdd2f4c6231
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: patrick.daume@dedrone.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR15MB2642
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_055059_402579_1A75C72D 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.92 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

SSBidWlsZCB0aGUga2VybmVsOiA1LjEuMC1yYzctd3QtYXRoKyBmcm9tIHRoZSByZXBvc2l0b3J5
IChnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQva3ZhbG8vYXRo
LmdpdCnCoA0KYW5kIHJlcGxhY2UgV0xBTi5STS40LjQuMS0wMDEzMi1RQ0FSTVNXUC0xIHdpdGgg
Ii9saWIvZmlybXdhcmUvYXRoMTBrL1FDQTYxNzQvaHczLjAvZmlybXdhcmUtNi5iaW4iLsKgDQoN
ClNhbWUgYmVoYXZpb2l1ciBhcyBvYnNlcnZlZCBiZWZvcmUuIFRoZSBpbnRlcmZhY2UgcmVjZWl2
ZXMgbm8gZGF0YSBpbiBtb25pdG9yaW5nIG1vZGUuIFdoaWxlIG1hbmFnZWQgbW9kZSBzZWVtcyB0
byB3b3JrLg0KDQo6fiQgdW5hbWUgLWENCkxpbnV4IDUuMS4wLXJjNy13dC1hdGgrICMzIFNNUCBG
cmkgTWF5IDE3IDE0OjU4OjI3IENFU1QgMjAxOSB4ODZfNjQgeDg2XzY0IHg4Nl82NCBHTlUvTGlu
dXgNCjp+JCBzdWRvIHNlcnZpY2UgbmV0d29yay1tYW5hZ2VyIHN0b3ANCjp+JCBzdWRvIGxzaHcg
LXNhbml0aXplDQoqLXBjaToxDQrCoMKgwqDCoMKgZGVzY3JpcHRpb246IFBDSSBicmlkZ2UNCsKg
wqDCoMKgwqBwcm9kdWN0OiBTdW5yaXNlIFBvaW50LUxQIFBDSSBFeHByZXNzIFJvb3QgUG9ydCAj
OQ0KwqDCoMKgwqDCoHZlbmRvcjogSW50ZWwgQ29ycG9yYXRpb24NCsKgwqDCoMKgwqBwaHlzaWNh
bCBpZDogMWQNCsKgwqDCoMKgwqBidXMgaW5mbzogcGNpQDAwMDA6MDA6MWQuMA0KwqDCoMKgwqDC
oHZlcnNpb246IGYxDQrCoMKgwqDCoMKgd2lkdGg6IDMyIGJpdHMNCsKgwqDCoMKgwqBjbG9jazog
MzNNSHoNCsKgwqDCoMKgwqBjYXBhYmlsaXRpZXM6IHBjaSBwY2lleHByZXNzIG1zaSBwbSBub3Jt
YWxfZGVjb2RlIGJ1c19tYXN0ZXIgY2FwX2xpc3QNCsKgwqDCoMKgwqBjb25maWd1cmF0aW9uOiBk
cml2ZXI9cGNpZXBvcnQNCsKgwqDCoMKgwqByZXNvdXJjZXM6IGlycToxMjMgbWVtb3J5OmRmMDAw
MDAwLWRmMWZmZmZmDQrCoMKgwqAqLW5ldHdvcmsNCsKgwqDCoMKgwqDCoMKgwqBkZXNjcmlwdGlv
bjogV2lyZWxlc3MgaW50ZXJmYWNlDQrCoMKgwqDCoMKgwqDCoMKgcHJvZHVjdDogUUNBNjE3NCA4
MDIuMTFhYyBXaXJlbGVzcyBOZXR3b3JrIEFkYXB0ZXINCsKgwqDCoMKgwqDCoMKgwqB2ZW5kb3I6
IFF1YWxjb21tIEF0aGVyb3MNCsKgwqDCoMKgwqDCoMKgwqBwaHlzaWNhbCBpZDogMA0KwqDCoMKg
wqDCoMKgwqDCoGJ1cyBpbmZvOiBwY2lAMDAwMDowMjowMC4wDQrCoMKgwqDCoMKgwqDCoMKgbG9n
aWNhbCBuYW1lOiB3bHAyczANCsKgwqDCoMKgwqDCoMKgwqB2ZXJzaW9uOiAzMg0KwqDCoMKgwqDC
oMKgwqDCoHNlcmlhbDogW1JFTU9WRURdDQrCoMKgwqDCoMKgwqDCoMKgd2lkdGg6IDY0IGJpdHMN
CsKgwqDCoMKgwqDCoMKgwqBjbG9jazogMzNNSHoNCsKgwqDCoMKgwqDCoMKgwqBjYXBhYmlsaXRp
ZXM6IHBtIG1zaSBwY2lleHByZXNzIGJ1c19tYXN0ZXIgY2FwX2xpc3QgbG9naWNhbCB3aXJlbGVz
cw0KwqDCoMKgwqDCoMKgwqDCoGNvbmZpZ3VyYXRpb246IGJyb2FkY2FzdD15ZXMgZHJpdmVyPWF0
aDEwa19wY2kgZHJpdmVydmVyc2lvbj01LjEuMC1yYzctd3QtYXRoKyBmaXJtd2FyZT1XTEFOLlJN
LjQuNC4xLTAwMTMyLVFDQVJNU1dQLTEgbGF0ZW5jeT0wIGxpbms9eWVzIG11bHRpY2FzdD15ZXMg
d2lyZWxlc3M9SUVFRSA4MDIuMTENCsKgwqDCoMKgwqDCoMKgwqByZXNvdXJjZXM6IGlycToxMzQg
bWVtb3J5OmRmMDAwMDAwLWRmMWZmZmZmDQo6fiQgc3VkbyBpZmNvbmZpZyB3bHAyczAgZG93bg0K
On4kIHN1ZG8gaXcgZGV2IHdscDJzMCBzZXQgdHlwZSBtb25pdG9yDQo6fiQgc3VkbyBpdyBkZXYN
CnBoeSMwDQoJSW50ZXJmYWNlIHdscDJzMA0KCQlpZmluZGV4IDQNCgkJd2RldiAweDENCgkJdHlw
ZSBtb25pdG9yDQoJCXR4cG93ZXIgMC4wMCBkQm0NCjp+JCBzdWRvIGlmY29uZmlnIHdscDJzMCB1
cA0KOn4kIGRtZXNnDQpbwqDCoMKgwqA0LjU4NTg3Nl0gY2ZnODAyMTE6IExvYWRpbmcgY29tcGls
ZWQtaW4gWC41MDkgY2VydGlmaWNhdGVzIGZvciByZWd1bGF0b3J5IGRhdGFiYXNlDQpbwqDCoMKg
wqA0LjU4NzQ4OF0gY2ZnODAyMTE6IExvYWRlZCBYLjUwOSBjZXJ0ICdzZm9yc2hlZTogMDBiMjhk
ZGY0N2FlZjljZWE3Jw0KW8KgwqDCoMKgNC45NDg3NzFdIGF0aDEwa19wY2kgMDAwMDowMjowMC4w
OiBxY2E2MTc0IGh3My4yIHRhcmdldCAweDA1MDMwMDAwIGNoaXBfaWQgMHgwMDM0MGFmZiBzdWIg
MWRhYzowMjYxDQpbwqDCoMKgwqA0Ljk0ODc3M10gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IGtj
b25maWcgZGVidWcgMCBkZWJ1Z2ZzIDEgdHJhY2luZyAxIGRmcyAwIHRlc3Rtb2RlIDANClvCoMKg
wqDCoDQuOTQ5MTgyXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogZmlybXdhcmUgdmVyIFdMQU4u
Uk0uNC40LjEtMDAxMzItUUNBUk1TV1AtMSBhcGkgNiBmZWF0dXJlcyB3b3dsYW4saWdub3JlLW90
cCxtZnAgY3JjMzIgNzlmNGRiODYNClvCoMKgwqDCoDUuMDE1MzAwXSBhdGgxMGtfcGNpIDAwMDA6
MDI6MDAuMDogYm9hcmRfZmlsZSBhcGkgMiBibWlfaWQgTi9BIGNyYzMyIDRlZDM1NjllDQpbwqDC
oMKgwqA1LjA3NzM1MV0gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IFVBUlQgcHJpbnRzIGVuYWJs
ZWQNClvCoMKgwqDCoDUuMTQ1NjA4XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogdW5zdXBwb3J0
ZWQgSFRDIHNlcnZpY2UgaWQ6IDE1MzYNClvCoMKgwqDCoDUuMzk5MjQ4XSBhdGgxMGtfcGNpIDAw
MDA6MDI6MDAuMDogaHR0LXZlciAzLjYwIHdtaS1vcCA0IGh0dC1vcCAzIGNhbCBvdHAgbWF4LXN0
YSAzMiByYXcgMCBod2NyeXB0byAxDQpbwqDCoMKgwqA1LjUwNjYzMV0gYXRoOiBFRVBST00gcmVn
ZG9tYWluOiAweDZjDQpbwqDCoMKgwqA1LjUwNjYzMl0gYXRoOiBFRVBST00gaW5kaWNhdGVzIHdl
IHNob3VsZCBleHBlY3QgYSBkaXJlY3QgcmVncGFpciBtYXANClvCoMKgwqDCoDUuNTA2NjMzXSBh
dGg6IENvdW50cnkgYWxwaGEyIGJlaW5nIHVzZWQ6IDAwDQpbwqDCoMKgwqA1LjUwNjYzM10gYXRo
OiBSZWdwYWlyIHVzZWQ6IDB4NmMNClvCoMKgwqDCoDUuNTIxNTU4XSBhdGgxMGtfcGNpIDAwMDA6
MDI6MDAuMCB3bHAyczA6IHJlbmFtZWQgZnJvbSB3bGFuMA0KW8KgwqDCoMKgOS4zNDk2MjRdIGF0
aDEwa19wY2kgMDAwMDowMjowMC4wOiBVQVJUIHByaW50cyBlbmFibGVkDQpbwqDCoMKgwqA5LjQx
NzgyNF0gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IHVuc3VwcG9ydGVkIEhUQyBzZXJ2aWNlIGlk
OiAxNTM2DQpbwqDCoDE3Mi42MDIwNThdIGF0aDEwa19wY2kgMDAwMDowMjowMC4wOiBVQVJUIHBy
aW50cyBlbmFibGVkDQpbwqDCoDE3Mi42NzA3OTRdIGF0aDEwa19wY2kgMDAwMDowMjowMC4wOiB1
bnN1cHBvcnRlZCBIVEMgc2VydmljZSBpZDogMTUzNg0KW8KgwqAxNzMuMDY1ODU1XSBJUHY2OiBB
RERSQ09ORihORVRERVZfQ0hBTkdFKTogd2xwMnMwOiBsaW5rIGJlY29tZXMgcmVhZHkNClvCoMKg
MTk5Ljg4MDIxOF0gZGV2aWNlIHdscDJzMCBlbnRlcmVkIHByb21pc2N1b3VzIG1vZGUNClvCoMKg
MjY2LjQ0NjA3OF0gZGV2aWNlIHdscDJzMCBsZWZ0IHByb21pc2N1b3VzIG1vZGUNCg0KOn4kIHN1
ZG8gdGNwZHVtcCAtaSB3bHAyczANCnRjcGR1bXA6IHZlcmJvc2Ugb3V0cHV0IHN1cHByZXNzZWQs
IHVzZSAtdiBvciAtdnYgZm9yIGZ1bGwgcHJvdG9jb2wgZGVjb2RlDQpsaXN0ZW5pbmcgb24gd2xw
MnMwLCBsaW5rLXR5cGUgSUVFRTgwMl8xMV9SQURJTyAoODAyLjExIHBsdXMgcmFkaW90YXAgaGVh
ZGVyKSwgY2FwdHVyZSBzaXplIDI2MjE0NCBieXRlcw0KXkMNCjAgcGFja2V0cyBjYXB0dXJlZA0K
MCBwYWNrZXRzIHJlY2VpdmVkIGJ5IGZpbHRlcg0KMCBwYWNrZXRzIGRyb3BwZWQgYnkga2VybmVs
DQoNCg0KIyBtYW5hZ2VkIG1vZGUgdGVzdA0KOn4kIHN1ZG8gaWZjb25maWcgd2xwMnMwIGRvd24N
Cjp+JCBzdWRvIGl3IGRldiB3bHAyczAgc2V0IHR5cGUgbWFuYWdlZA0KOn4kIHN1ZG8gaWZjb25m
aWcgd2xwMnMwIHVwDQo6fiQgaXcgZGV2DQpwaHkjMA0KCUludGVyZmFjZSB3bHAyczANCgkJaWZp
bmRleCA0DQoJCXdkZXYgMHgxDQoJCXR5cGUgbWFuYWdlZA0KCQl0eHBvd2VyIDAuMDAgZEJtDQo6
fiQgc3VkbyBpdyB3bHAyczAgc2Nhbg0KQlNTIHh4eHh4eHh4eHh4eHh4KG9uIHdscDJzMCkNCglU
U0Y6IDQ1ODgxNTYxMDkxODQgdXNlYyAoNTNkLCAwMjoyOToxNikNCglmcmVxOiAyNDM3DQoJYmVh
Y29uIGludGVydmFsOiAxMDAgVFVzDQoJY2FwYWJpbGl0eTogRVNTIFByaXZhY3kgU2hvcnRQcmVh
bWJsZSBTaG9ydFNsb3RUaW1lICgweDA0MzEpDQoJc2lnbmFsOiAtODQuMDAgZEJtDQoJbGFzdCBz
ZWVuOiA0NDQwIG1zIGFnbw0KCUluZm9ybWF0aW9uIGVsZW1lbnRzIGZyb20gUHJvYmUgUmVzcG9u
c2UgZnJhbWU6DQoJU1NJRDogeHh4eHh4eHh4eHh4eA0KCVN1cHBvcnRlZCByYXRlczogMS4wKiAy
LjAqIDUuNSogMTEuMCogNi4wKiA5LjAgMTIuMCogMTguMMKgDQoJRFMgUGFyYW1ldGVyIHNldDog
Y2hhbm5lbCA2DQoJVElNOiBEVElNIENvdW50IDAgRFRJTSBQZXJpb2QgMSBCaXRtYXAgQ29udHJv
bCAweDAgQml0bWFwWzBdIDB4MA0KCUVSUDogPG5vIGZsYWdzPg0KCUV4dGVuZGVkIHN1cHBvcnRl
ZCByYXRlczogMjQuMCogMzYuMCA0OC4wIDU0LjDCoA0KCUJTUyBMb2FkOg0KCQnCoCogc3RhdGlv
biBjb3VudDogNA0KCQnCoCogY2hhbm5lbCB1dGlsaXNhdGlvbjogNzUvMjU1DQoJCcKgKiBhdmFp
bGFibGUgYWRtaXNzaW9uIGNhcGFjaXR5OiAwIFsqMzJ1c10NCglIVCBjYXBhYmlsaXRpZXM6DQoJ
CUNhcGFiaWxpdGllczogMHgxYWMNCgkJCUhUMjANCgkJCVNNIFBvd2VyIFNhdmUgZGlzYWJsZWQN
CgkJCVJYIEhUMjAgU0dJDQoJCQlUWCBTVEJDDQoJCQlSWCBTVEJDIDEtc3RyZWFtDQoJCQlNYXgg
QU1TRFUgbGVuZ3RoOiAzODM5IGJ5dGVzDQoJCQlObyBEU1NTL0NDSyBIVDQwDQoJCU1heGltdW0g
UlggQU1QRFUgbGVuZ3RoIDY1NTM1IGJ5dGVzIChleHBvbmVudDogMHgwMDMpDQoJCU1pbmltdW0g
UlggQU1QRFUgdGltZSBzcGFjaW5nOiA4IHVzZWMgKDB4MDYpDQoJCUhUIFRYL1JYIE1DUyByYXRl
IGluZGV4ZXMgc3VwcG9ydGVkOiAwLTIzDQoJSFQgb3BlcmF0aW9uOg0KCQnCoCogcHJpbWFyeSBj
aGFubmVsOiA2DQoJCcKgKiBzZWNvbmRhcnkgY2hhbm5lbCBvZmZzZXQ6IG5vIHNlY29uZGFyeQ0K
CQnCoCogU1RBIGNoYW5uZWwgd2lkdGg6IDIwIE1Ieg0KCQnCoCogUklGUzogMA0KCQnCoCogSFQg
cHJvdGVjdGlvbjogbm9ubWVtYmVyDQoJCcKgKiBub24tR0YgcHJlc2VudDogMQ0KCQnCoCogT0JT
UyBub24tR0YgcHJlc2VudDogMA0KCQnCoCogZHVhbCBiZWFjb246IDANCgkJwqAqIGR1YWwgQ1RT
IHByb3RlY3Rpb246IDANCgkJwqAqIFNUQkMgYmVhY29uOiAwDQoJCcKgKiBMLVNJRyBUWE9QIFBy
b3Q6IDANCgkJwqAqIFBDTyBhY3RpdmU6IDANCgkJwqAqIFBDTyBwaGFzZTogMA0KCUV4dGVuZGVk
IGNhcGFiaWxpdGllczoNCgkJwqAqIE9wZXJhdGluZyBNb2RlIE5vdGlmaWNhdGlvbg0KCVdNTToJ
wqAqIFBhcmFtZXRlciB2ZXJzaW9uIDENCgkJwqAqIEJFOiBDVyAxNS0xMDIzLCBBSUZTTiAzDQoJ
CcKgKiBCSzogQ1cgMTUtMTAyMywgQUlGU04gNw0KCQnCoCogVkk6IENXIDctMTUsIEFJRlNOIDIs
IFRYT1AgMzAwOCB1c2VjDQoJCcKgKiBWTzogQ1cgMy03LCBBSUZTTiAyLCBUWE9QIDE1MDQgdXNl
Yw0KCVJTTjoJwqAqIFZlcnNpb246IDENCgkJwqAqIEdyb3VwIGNpcGhlcjogQ0NNUA0KCQnCoCog
UGFpcndpc2UgY2lwaGVyczogQ0NNUA0KCQnCoCogQXV0aGVudGljYXRpb24gc3VpdGVzOiBQU0sN
CgkJwqAqIENhcGFiaWxpdGllczogMS1QVEtTQS1SQyAxLUdUS1NBLVJDICgweDAwMDApDQouLi4u
Li4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBr
IG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
