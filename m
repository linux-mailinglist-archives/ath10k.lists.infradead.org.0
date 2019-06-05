Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A743C36066
	for <lists+ath10k@lfdr.de>; Wed,  5 Jun 2019 17:38:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAkKifMJJ99GoQfp0qR6b1UVLU8Gsv+6ulJxnusYmsM=; b=iRqECZEGbmMbYP
	UQM9sJa88Sl7pXkX8ftX8qoZxzmGaV7wvcG8GrUaBS52j8evHT0ekA9wBlT/UU2fNkZyBBeT/KG++
	agWMZ8Kf3RIJq90Qxf0tBZNh6ke3lHP5yd+wZF0RW5iB4xaV3Ju7oZ9Ay8ppqDOz72YgVm+2w7brl
	PtHGEQhLOobB96652UxNmOQtrveih7yyeIUgdlJ+lMJfg4bx/F3N+fGe/wCi0wgR2XQaGVOO3Y+dQ
	HpLG8q4TQiNhMsw1nMTUhCAEkFqRWB7BUvtQlbDRGW/lWMbcr7lwKCUX0ve+F+w2HE/f4W6bLsjO5
	sZFxUWCpi6NZ6gnQrwGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYXzx-0005uq-J8; Wed, 05 Jun 2019 15:38:45 +0000
Received: from mail-eopbgr800113.outbound.protection.outlook.com
 ([40.107.80.113] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYXzt-0005uV-LT
 for ath10k@lists.infradead.org; Wed, 05 Jun 2019 15:38:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dedrone.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fvZFYyyxsgxQCuHtzYaJ10iiFYltG+7PV1c3r9/l0ug=;
 b=qt7rt9HICz6UZS5jmBU3YXSHwEnoKXC22CgMplXW2JQ8eErpAveKmIaJvIEzirwWxN2fJms61fyHLLq1ykT9sga7vNZgJgnk69ko36j0sivg45BIovETIoSgm8wMna6NDGuSH5bG1UO8RhRPF/xURkNxcaG2fWyQeKxwYiTWI/c=
Received: from BN8PR15MB3169.namprd15.prod.outlook.com (20.179.72.152) by
 BN8PR15MB3508.namprd15.prod.outlook.com (20.179.76.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Wed, 5 Jun 2019 15:38:38 +0000
Received: from BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3]) by BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3%5]) with mapi id 15.20.1943.018; Wed, 5 Jun 2019
 15:38:37 +0000
From: Patrick Daume <patrick.daume@dedrone.com>
To: "kvalo@codeaurora.org" <kvalo@codeaurora.org>
Subject: Re: Qualcomm Atheros QCA6174 monitoring mode receiving no data
Thread-Topic: Qualcomm Atheros QCA6174 monitoring mode receiving no data
Thread-Index: AQHVF5c28GKXVbl/KUKifPWHGZ9U+6aJrXN/gAA5U4CAAqPKg4AAr7wA
Date: Wed, 5 Jun 2019 15:38:37 +0000
Message-ID: <1559749116.10289.19.camel@dedrone.com>
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
x-ms-office365-filtering-correlation-id: 0447621f-0002-4f98-aba5-08d6e9cbe0cc
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR15MB3508; 
x-ms-traffictypediagnostic: BN8PR15MB3508:
x-microsoft-antispam-prvs: <BN8PR15MB35084E8D34C58D164B8B4FA2E6160@BN8PR15MB3508.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(366004)(376002)(136003)(396003)(39840400004)(199004)(189003)(508600001)(36756003)(2616005)(256004)(6512007)(66446008)(66946007)(476003)(44832011)(73956011)(25786009)(99286004)(6506007)(1730700003)(76116006)(8676002)(6246003)(26005)(229853002)(7736002)(305945005)(14454004)(486006)(66066001)(446003)(64756008)(66556008)(6436002)(91956017)(68736007)(66476007)(5640700003)(6486002)(8936002)(81156014)(4326008)(3846002)(5660300002)(103116003)(186003)(102836004)(6916009)(6116002)(81166006)(316002)(2906002)(86362001)(76176011)(71190400001)(53936002)(2501003)(71200400001)(2351001)(11346002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR15MB3508;
 H:BN8PR15MB3169.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: dedrone.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: e1SM1qtaNmDYm0lVYG1IhhB7HzrRghMTLbN0e4+T/CxSVvoTgREiln8RJajjV3u0CAAlmnjFwmZ+xZtXiGtLJYSa+QApMV7+1yDd07NUQY8/i09ubwWrp1OQHncbYaFC2p7V4J6R9f8njiSSDAmDQ/B5ADMc1+TkYwPg6Vg7NxoggmSGbqt7IhzU/yYO8bNYpUoqrX6HN3J8USQm9ihGtRHXrEBGQ1MbpAnGPsXP31odjZ1I/pZIIin4WpmbN4giPgIdH+p/l0Mu2mVsYz16gZ/52BblQZ4T/GVoTxWyTArGwRIdNJ4e9jhr38lvpVIGF6/w0Oifrf15dJYlId3C0DjI1gcszTG9PWzYPf2vMAMT18TjenvyIhLA48iITfxy39UIWD2VpPOVVUOuqy13qT32jYFG0unT8YmjHAMhCNU=
Content-ID: <A66ECFEA8A72AD45BD460ECCD412A93B@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: dedrone.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0447621f-0002-4f98-aba5-08d6e9cbe0cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 15:38:37.7347 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ea7e0db4-c796-41ba-a144-9bdd2f4c6231
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: patrick.daume@dedrone.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR15MB3508
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_083841_759306_DB439D7C 
X-CRM114-Status: UNSURE (   4.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.113 listed in list.dnswl.org]
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

SSB0ZXN0IGl0IHdpdGggbW9kcHJvYmUgb3B0aW9uIHJhd21vZGU9MSBhbmQgaXQgc2VlbXMgdG8g
d29yay4NCg0Kc29sdXRpb246DQoNCmxpbnV4IGtlcm5lbCA1LjEuMC1yYzctd3QtYXRoKw0KZmly
bXdhcmU6IFdMQU4uUk0uNC40LjEuYzMtMDAwMzANCg0Kc3VkbyBtb2Rwcm9iZSBhdGgxMGtfY29y
ZSByYXdtb2RlPTENCnN1ZG8gbW9kcHJvYmUgYXRoMTBrX3BjaQ0KDQoNCkJ1dCBpZiBpIGNhbGwg
dGNwZHVtcCBmb3IgYSB3aGlsZSBpIGdvdCBzb21lIGVycm9yIHRyYWNlcyBpbiBkbWVzZy4NCkhv
dw0KY2FuIGkgZml4IHRoaXM/DQoNClvCoMKgMjgxLjEwMTY4Ml3CoMKgcGluY3RybF9pbnRlbCBb
bGFzdCB1bmxvYWRlZDogY2ZnODAyMTFdDQpbwqDCoDI4MS4xMDE2OTRdIENQVTogMSBQSUQ6IDAg
Q29tbTogc3dhcHBlci8xIFRhaW50ZWQ6IEfCoMKgwqDCoMKgwqDCoMKgV8KgwqDCoMKgwqDCoMKg
wqDCoDUuMS4wLXJjNy13dC1hdGgrICMzDQpbwqDCoDI4MS4xMDE2OTddIEhhcmR3YXJlIG5hbWU6
wqDCoC8sIEJJT1MgNS4xMSAwMy8yNC8yMDE2DQpbwqDCoDI4MS4xMDE3MDNdIFJJUDogMDAxMDpz
a2JfdHJpbSsweDJkLzB4MzANClvCoMKgMjgxLjEwMTcwOF0gQ29kZTogMDAgMDAgMzkgNzcgNzAg
NzcgMDIgZjMgYzMgOGIgNDcgNzQgODUgYzAgNzUgMWEgNDggOGIgODcgYzggMDAgMDAgMDAgNDgg
MmIgODcgYzAgMDAgMDAgMDAgODkgNzcgNzAgMDEgYzYgODkgYjcgYjggMDAgMDAgMDAgYzMgPDBm
PiAwYiBjMyAwZiAxZiA0NCAwMCAwMCA4YiA4NyBlOCAwMCAwMCAwMCA4YiA5NiBkMCAwMCAwMCAw
MCAwMSBkMA0KW8KgwqAyODEuMTAxNzEyXSBSU1A6IDAwMTg6ZmZmZjlkNDdkZGE4M2NlMCBFRkxB
R1M6IDAwMDEwMjA2DQpbwqDCoDI4MS4xMDE3MTddIFJBWDogMDAwMDAwMDAwMDAwMDRjYyBSQlg6
IDAwMDAwMDAwMDAwMDgwMDAgUkNYOiBmZmZmOWQ0N2RkYTgzZTYwDQpbwqDCoDI4MS4xMDE3MjBd
IFJEWDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6IDAwMDAwMDAwMDAwMDBhZTAgUkRJOiBmZmZmOWQ0
N2QzZWViZjAwDQpbwqDCoDI4MS4xMDE3MjNdIFJCUDogMDAwMDAwMDAwMDAwMDAwNCBSMDg6IDAw
MDAwMDAwMDAwMDAwMDAgUjA5OiAwMDAwMDAwMDAwMDAwMDAwDQpbwqDCoDI4MS4xMDE3MjZdIFIx
MDogZmZmZmYyYzA1MTU4ZDg0MCBSMTE6IGZmZmY5ZDQzYjQ0N2U0YjggUjEyOiAwMDAwMDAwMDAw
MDAwMDAwDQpbwqDCoDI4MS4xMDE3MjldIFIxMzogMDAwMDAwMDAwMDAwNDAwMCBSMTQ6IGZmZmY5
ZDQ3ZDA0MjE2MjAgUjE1OiBmZmZmOWQ0N2QzZWViZjAwDQpbwqDCoDI4MS4xMDE3MzRdIEZTOsKg
wqAwMDAwMDAwMDAwMDAwMDAwKDAwMDApIEdTOmZmZmY5ZDQ3ZGRhODAwMDAoMDAwMCkga25sR1M6
MDAwMDAwMDAwMDAwMDAwMA0KW8KgwqAyODEuMTAxNzM3XSBDUzrCoMKgMDAxMCBEUzogMDAwMCBF
UzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMNClvCoMKgMjgxLjEwMTc0MV0gQ1IyOiAwMDAw
NTYxMTBmMDU4MGE0IENSMzogMDAwMDAwMDNhMTIwZTAwMyBDUjQ6IDAwMDAwMDAwMDAzNjA2ZTAN
ClvCoMKgMjgxLjEwMTc0NF0gRFIwOiAwMDAwMDAwMDAwMDAwMDAwIERSMTogMDAwMDAwMDAwMDAw
MDAwMCBEUjI6IDAwMDAwMDAwMDAwMDAwMDANClvCoMKgMjgxLjEwMTc0N10gRFIzOiAwMDAwMDAw
MDAwMDAwMDAwIERSNjogMDAwMDAwMDBmZmZlMGZmMCBEUjc6IDAwMDAwMDAwMDAwMDA0MDANClvC
oMKgMjgxLjEwMTc0OV0gQ2FsbCBUcmFjZToNClvCoMKgMjgxLjEwMTc1NV3CoMKgPElSUT4NClvC
oMKgMjgxLjEwMTc5OF3CoMKgYXRoMTBrX2h0dF9yeF9oX21wZHUrMHg2YTUvMHhhYjAgW2F0aDEw
a19jb3JlXQ0KW8KgwqAyODEuMTAxODEzXcKgwqA/IHN3aW90bGJfbWFwKzB4NmIvMHgxYzANClvC
oMKgMjgxLjEwMTg0Nl3CoMKgYXRoMTBrX2h0dF90eHJ4X2NvbXBsX3Rhc2srMHhjNGYvMHgxNDkw
IFthdGgxMGtfY29yZV0NClvCoMKgMjgxLjEwMTg2NF3CoMKgYXRoMTBrX3BjaV9uYXBpX3BvbGwr
MHg1MS8weDEzMCBbYXRoMTBrX3BjaV0NClvCoMKgMjgxLjEwMTg3Nl3CoMKgbmV0X3J4X2FjdGlv
bisweDI3ZS8weDNkMA0KW8KgwqAyODEuMTAxODg4XcKgwqBfX2RvX3NvZnRpcnErMHhmZC8weDJk
OA0KW8KgwqAyODEuMTAxODk5XcKgwqBpcnFfZXhpdCsweGFlLzB4YjANClvCoMKgMjgxLjEwMTkw
Nl3CoMKgZG9fSVJRKzB4NTIvMHhlMA0KW8KgwqAyODEuMTAxOTEzXcKgwqBjb21tb25faW50ZXJy
dXB0KzB4Zi8weGYNClvCoMKgMjgxLjEwMTkxN13CoMKgPC9JUlE+DQpbwqDCoDI4MS4xMDE5Mjhd
IFJJUDogMDAxMDpjcHVpZGxlX2VudGVyX3N0YXRlKzB4YzQvMHg0NjANClvCoMKgMjgxLjEwMTkz
Ml0gQ29kZTogZTggNzEgZjcgOTAgZmYgODAgN2MgMjQgMGYgMDAgNzQgMTcgOWMgNTggMGYgMWYg
NDQgMDAgMDAgZjYgYzQgMDIgMGYgODUgNjUgMDMgMDAgMDAgMzEgZmYgZTggYjMgZjYgOTYgZmYg
ZmIgNjYgMGYgMWYgNDQgMDAgMDAgPDQ1PiA4NSBlNCAwZiA4OCAzNSAwMyAwMCAwMCA0YyAyYiA3
YyAyNCAxMCA0OCBiYSBjZiBmNyA1MyBlMyBhNSA5Yg0KW8KgwqAyODEuMTAxOTM2XSBSU1A6IDAw
MTg6ZmZmZmFjZWY0MTk0M2U4OCBFRkxBR1M6IDAwMDAwMjQ2IE9SSUdfUkFYOiBmZmZmZmZmZmZm
ZmZmZmRkDQpbwqDCoDI4MS4xMDE5NDFdIFJBWDogZmZmZjlkNDdkZGFhMmM4MCBSQlg6IGZmZmZm
ZmZmYWQyZDc4NjAgUkNYOiAwMDAwMDAwMDAwMDAwMDFmDQpbwqDCoDI4MS4xMDE5NDRdIFJEWDog
MDAwMDAwMDAwMDAwMDAwMCBSU0k6IDAwMDAwMDAwMmQ5NTg0MDMgUkRJOiAwMDAwMDAwMDAwMDAw
MDAwDQpbwqDCoDI4MS4xMDE5NDddIFJCUDogZmZmZjlkNDdkZGFhYzEwMCBSMDg6IGZmZmZmZmZj
YThmMTI2YTcgUjA5OiBmZmZmOWQ0N2RkYWExY2E0DQpbwqDCoDI4MS4xMDE5NTBdIFIxMDogMDAw
MDAwMDAwMDAwMDAxOCBSMTE6IDAwMDAwMDAwMDAwMDI2MTUgUjEyOiAwMDAwMDAwMDAwMDAwMDA4
DQpbwqDCoDI4MS4xMDE5NTNdIFIxMzogMDAwMDAwMDAwMDAwMDAwOCBSMTQ6IGZmZmZmZmZmYWQy
ZDc4NjAgUjE1OiAwMDAwMDA0MTcyZjJmNDUzDQpbwqDCoDI4MS4xMDE5NjVdwqDCoD8gY3B1aWRs
ZV9lbnRlcl9zdGF0ZSsweDlmLzB4NDYwDQpbwqDCoDI4MS4xMDE5NzJdwqDCoGRvX2lkbGUrMHgy
MDIvMHgyODANClvCoMKgMjgxLjEwMTk4MF3CoMKgY3B1X3N0YXJ0dXBfZW50cnkrMHgxOS8weDIw
DQpbwqDCoDI4MS4xMDE5OTBdwqDCoHN0YXJ0X3NlY29uZGFyeSsweDE3YS8weDFkMA0KW8KgwqAy
ODEuMTAxOTk5XcKgwqBzZWNvbmRhcnlfc3RhcnR1cF82NCsweGE0LzB4YjANClvCoMKgMjgxLjEw
MjAwNl0gLS0tWyBlbmQgdHJhY2UgMjNkYzZkZGIwOTMzOTZjNSBdLS0tDQpbwqDCoDMwNi4xMjY0
NTRdIGRldmljZSB3bHAyczAgZW50ZXJlZCBwcm9taXNjdW91cyBtb2RlDQpbwqDCoDMxNy43MDA4
MzVdIGRldmljZSB3bHAyczAgbGVmdCBwcm9taXNjdW91cyBtb2RlCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBr
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9hdGgxMGsK
