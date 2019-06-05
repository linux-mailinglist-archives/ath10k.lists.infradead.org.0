Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F05B35789
	for <lists+ath10k@lfdr.de>; Wed,  5 Jun 2019 09:19:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3+B0YbJyBfQM31Fj2wKguAXGIfelIZfhLgF4zybYK8=; b=If/1cpgtQi/y0v
	JdqjsbwaR9NfOrpMXs6Sipm+ptIZRts9cbe+fXH1KehvnLBN5oIxVbnHPa3p3a/oFz/yMbF5Rp9Vu
	PVnQf6jrwBWS08dwXCSLA2ij83qaiMk0tqh3SLta6snW0Lq7p3UWQaSpsh/S79bkQ/p/fFIf39e30
	hcvV5DrECs1xmOURM3zTs9O0DdDjcOjt0Z+wrRbG90Zv6WkXm0yhJHL5F2lkap+wlny9Pf6cJYRn+
	YIn0i4ztqABE6HLChaArJPyYuFZiKtmsNCdBX5giZjeGJbY99eM3PCzm0KeGaufvJuMWh4jxpZj1l
	m7WYeDjUmKoGwRf1TWvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQCR-00065H-UV; Wed, 05 Jun 2019 07:19:07 +0000
Received: from mail-bn3nam04on070e.outbound.protection.outlook.com
 ([2a01:111:f400:fe4e::70e]
 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQCK-00064f-DI
 for ath10k@lists.infradead.org; Wed, 05 Jun 2019 07:19:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dedrone.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f0kzZnZg/nEGQ6Q2aKGNnyE5M3kMPt/pu3igqAe1bYg=;
 b=YJBORR0f38xZaEE8OnavGRKt0W6peU4JVB9MW8L9Cgr2hCv5I5FWqp7WyNe4gDbB865AUjq2hPqCfK8+26xYTEGoAbKeQ/akJl4iGlHXTwV+KAUCQ0wpt87Yu86kH0w2V2TZOMRMbPKIhPvs5ljB6l0aqWAKX0LRHY2T7fehk9w=
Received: from BN8PR15MB3169.namprd15.prod.outlook.com (20.179.72.152) by
 BN8PR15MB2964.namprd15.prod.outlook.com (20.178.220.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Wed, 5 Jun 2019 07:18:56 +0000
Received: from BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3]) by BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3%5]) with mapi id 15.20.1943.018; Wed, 5 Jun 2019
 07:18:56 +0000
From: Patrick Daume <patrick.daume@dedrone.com>
To: "kvalo@codeaurora.org" <kvalo@codeaurora.org>
Subject: Re: Qualcomm Atheros QCA6174 monitoring mode receiving no data
Thread-Topic: Qualcomm Atheros QCA6174 monitoring mode receiving no data
Thread-Index: AQHVF5c28GKXVbl/KUKifPWHGZ9U+6aJrXN/gAA5U4CAAqPKg4AAJCEA
Date: Wed, 5 Jun 2019 07:18:56 +0000
Message-ID: <1559719136.12864.63.camel@dedrone.com>
References: <1559296628.11260.4.camel@dedrone.com>
 <87lfyjyq9c.fsf@kamboji.qca.qualcomm.com>
 <1559566253.12864.47.camel@dedrone.com>
 <87zhmwvcs5.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87zhmwvcs5.fsf@kamboji.qca.qualcomm.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=patrick.daume@dedrone.com; 
x-originating-ip: [80.69.200.138]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fdbda8cc-aedd-477d-3d4e-08d6e98612b5
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:BN8PR15MB2964; 
x-ms-traffictypediagnostic: BN8PR15MB2964:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN8PR15MB2964BEF53A51FB2764E46264E6160@BN8PR15MB2964.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39830400003)(346002)(366004)(376002)(136003)(199004)(189003)(66556008)(66446008)(66946007)(14454004)(66476007)(6116002)(446003)(76116006)(508600001)(6486002)(2351001)(3846002)(4326008)(5640700003)(256004)(6916009)(11346002)(73956011)(7736002)(2501003)(76176011)(966005)(8936002)(53936002)(8676002)(6246003)(1730700003)(81166006)(81156014)(86362001)(26005)(6306002)(6512007)(64756008)(91956017)(102836004)(476003)(6506007)(5660300002)(66066001)(486006)(305945005)(186003)(2616005)(68736007)(6436002)(25786009)(71200400001)(103116003)(99286004)(44832011)(71190400001)(229853002)(2906002)(36756003)(316002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR15MB2964;
 H:BN8PR15MB3169.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: dedrone.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FG2GNyG0hOZ4T/sUpvvqWmzFsi8dFK90N2fqKE6A6BGPkOcuByY0FpVY7lgXoCLeGMmZ742Gcj73VuOnIIiOYA+/R4WMbBwYibtsEU4QL2CEH8ZcOO9i8huYf14DTJf8zdcHn2o88C/s9jlu+Ov5qtv0lp3c5zeakTA7tEupZi5qmKHDlXeXlLANI8TdytmcdkxFs2VErXuUHNVzPm6ebrP1BzcWCToNgWdSkX1RMSd1HJ9a4BcfpB0WMyMGBrEkJ4aR4BaM98qPjWnySnryIvgtT+ZtQzMCYTYiTEEo7vxG7ciUJLr/8JG3sH3XE1EL0w8vlf/7QSUHhCygbiaPtNEnleYhz2JoPcrAo4HRxe5QYLBTdjxfFsr/4JkhqKQEH5Zc/4x/RVEhl+BXYbTGKmKxi0Mnc0OAuZrE86/L65E=
Content-ID: <1D3B07256F5AE440863510AC7E4616D1@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: dedrone.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdbda8cc-aedd-477d-3d4e-08d6e98612b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 07:18:56.6631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ea7e0db4-c796-41ba-a144-9bdd2f4c6231
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: patrick.daume@dedrone.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR15MB2964
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_001903_455887_E1B9EE7C 
X-CRM114-Status: UNSURE (   4.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

PiBJbmRlZWQsIHRoYXQgZmlybXdhcmUgdmVyc2lvbiBkb2VzIG5vdCBoYXZlIHJhdyBtb2RlIGVu
YWJsZWQgKCJyYXcgMCIpLg0KPiBDYW4geW91IHRyeSB0aGlzIG9uZToNCj4gDQo+IGh0dHBzOi8v
Z2l0aHViLmNvbS9rdmFsby9hdGgxMGstZmlybXdhcmUvYmxvYi9tYXN0ZXIvUUNBNjE3NC9odzMu
MC80LjQuMS5jMy9maXJtd2FyZS02LmJpbl9XTEFOLlJNLjQuNC4xLmMzLTAwMDMwDQo+IA0KSSd2
ZSB0cmllZCB0aGUgwqBmaXJtd2FyZSBXTEFOLlJNLjQuNC4xLmMzLTAwMDMwLg0KTm8gY2hhbmdl
cyBvbiAoInJhdyAwIikuDQpUaGUgaW50ZXJmYWNlIHJlY2VpdmVzIG5vIGRhdGEgaW4gbW9uaXRv
cmluZyBtb2RlIGZ1cnRoZXJtb3JlLg0KDQpbwqDCoMKgwqA0LjcxODAzMl0gYXRoMTBrX3BjaSAw
MDAwOjAyOjAwLjA6IGVuYWJsaW5nIGRldmljZSAoMDAwMCAtPiAwMDAyKQ0KW8KgwqDCoMKgNC43
MTg3MjldIGF0aDEwa19wY2kgMDAwMDowMjowMC4wOiBwY2kgaXJxIG1zaSBvcGVyX2lycV9tb2Rl
IDIgaXJxX21vZGUgMCByZXNldF9tb2RlIDANClvCoMKgwqDCoDUuMDA1MzA5XSBhdGgxMGtfcGNp
IDAwMDA6MDI6MDAuMDogcWNhNjE3NCBodzMuMiB0YXJnZXQgMHgwNTAzMDAwMCBjaGlwX2lkIDB4
MDAzNDBhZmYgc3ViIDFkYWM6MDI2MQ0KW8KgwqDCoMKgNS4wMDUzMTJdIGF0aDEwa19wY2kgMDAw
MDowMjowMC4wOiBrY29uZmlnIGRlYnVnIDAgZGVidWdmcyAxIHRyYWNpbmcgMSBkZnMgMCB0ZXN0
bW9kZSAwDQpbwqDCoMKgwqA1LjAwNTc2OF0gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6IGZpcm13
YXJlIHZlciBXTEFOLlJNLjQuNC4xLmMzLTAwMDMwIGFwaSA2IGZlYXR1cmVzIHdvd2xhbixpZ25v
cmUtb3RwLG5vLTRhZGRyLXBhZCxyYXctbW9kZSxtZnAgY3JjMzIgOWEyMDE1MzANClvCoMKgwqDC
oDUuMDc1MzMzXSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogYm9hcmRfZmlsZSBhcGkgMiBibWlf
aWQgTi9BIGNyYzMyIDRlZDM1NjllDQpbwqDCoMKgwqA1LjEzOTM2MF0gYXRoMTBrX3BjaSAwMDAw
OjAyOjAwLjA6IFVBUlQgcHJpbnRzIGVuYWJsZWQNClvCoMKgwqDCoDUuMjAzMDM5XSBhdGgxMGtf
cGNpIDAwMDA6MDI6MDAuMDogdW5zdXBwb3J0ZWQgSFRDIHNlcnZpY2UgaWQ6IDE1MzYNClvCoMKg
wqDCoDUuNDYxMDg0XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMDogaHR0LXZlciAzLjYyIHdtaS1v
cCA0IGh0dC1vcCAzIGNhbCBvdHAgbWF4LXN0YSAzMiByYXcgMCBod2NyeXB0byAxDQpbwqDCoMKg
wqA1LjU2OTk4M10gYXRoOiBFRVBST00gcmVnZG9tYWluOiAweDZjDQpbwqDCoMKgwqA1LjU2OTk4
NV0gYXRoOiBFRVBST00gaW5kaWNhdGVzIHdlIHNob3VsZCBleHBlY3QgYSBkaXJlY3QgcmVncGFp
ciBtYXANClvCoMKgwqDCoDUuNTY5OTg2XSBhdGg6IENvdW50cnkgYWxwaGEyIGJlaW5nIHVzZWQ6
IDAwDQpbwqDCoMKgwqA1LjU2OTk4Nl0gYXRoOiBSZWdwYWlyIHVzZWQ6IDB4NmMNClvCoMKgwqDC
oDUuNTc4MDI1XSBhdGgxMGtfcGNpIDAwMDA6MDI6MDAuMCB3bHAyczA6IHJlbmFtZWQgZnJvbSB3
bGFuMA0KW8KgwqDCoMKgNS44MDE2MjldIGF0aDEwa19wY2kgMDAwMDowMjowMC4wOiBVQVJUIHBy
aW50cyBlbmFibGVkDQpbwqDCoMKgwqA1Ljg2NTIyNl0gYXRoMTBrX3BjaSAwMDAwOjAyOjAwLjA6
IHVuc3VwcG9ydGVkIEhUQyBzZXJ2aWNlIGlkOg0KMTUzNgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYXRoMTBrCg==
