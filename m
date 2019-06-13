Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE624346D
	for <lists+ath10k@lfdr.de>; Thu, 13 Jun 2019 10:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMDEZ++iZpL8L3nDszMSTt0s++XseqR4RJMTzmRi/tY=; b=hzKPwjVlbrvADQ
	iGkIadfi3090xXmEd1lTHnYtB7FKwy2Jq9lwxTishDs6zDdy35yRvHRFogcjNof4edptWCoSsxNqH
	s07U97QF0rEpl3sKjclvu4ckex3x50FKWA7NW5asAWDipKkodejg1bC3ZXs2GYsgJ6BXRYRgn/po0
	XVxmCHDBZjXEyuGKvFP1hd5+5n93S9ZVE/WB6nRj3fgVl0odsYGpH7GaAwe5XSrisVm0o+1ZijN4h
	/SMl5nMecG6MRtgfkKta/LzDnpQG2/mKk/3+35loDGNSpRadA3aw13a5s5QHmMN+N0Qov88VO1F5o
	YhFjANZxRetpd3tbspDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLUx-0004CF-Rb; Thu, 13 Jun 2019 08:54:19 +0000
Received: from mail-eopbgr710112.outbound.protection.outlook.com
 ([40.107.71.112] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLUr-0004Bn-At
 for ath10k@lists.infradead.org; Thu, 13 Jun 2019 08:54:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dedrone.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LFBxFwaXNOuMhTXww93E6kGbBuVyuW5akXF/adQPKWk=;
 b=AKWDhbzNyHYwo/bpLbFMniqHNMdq/glc5x/KTQrfysxLcLRBf/8RdKXMapGn6sTdIXbFJJiJL0IZLj9aOu+dLq8x0FR7NgVnJ+2AG6e7vTsqjZQ+Cmh548ZbEOiMiWtlpsSL9LO+fO4+888nKCCfwWU0q+XMwf+CkOsiVe8Av9c=
Received: from BN8PR15MB3169.namprd15.prod.outlook.com (20.179.72.152) by
 BN8PR15MB2819.namprd15.prod.outlook.com (20.179.140.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Thu, 13 Jun 2019 08:54:10 +0000
Received: from BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3]) by BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3%5]) with mapi id 15.20.1965.018; Thu, 13 Jun 2019
 08:54:10 +0000
From: Patrick Daume <patrick.daume@dedrone.com>
To: "kvalo@codeaurora.org" <kvalo@codeaurora.org>
Subject: Re: Qualcomm Atheros QCA6174 monitoring mode receiving no data
Thread-Topic: Qualcomm Atheros QCA6174 monitoring mode receiving no data
Thread-Index: AQHVF5c28GKXVbl/KUKifPWHGZ9U+6aJrXN/gAA5U4CAAqPKg4AAr7wAgAwhpoA=
Date: Thu, 13 Jun 2019 08:54:10 +0000
Message-ID: <1560416049.23005.9.camel@dedrone.com>
References: <1559296628.11260.4.camel@dedrone.com>
 <87lfyjyq9c.fsf@kamboji.qca.qualcomm.com>
 <1559566253.12864.47.camel@dedrone.com>
 <87zhmwvcs5.fsf@kamboji.qca.qualcomm.com>
 <1559749116.10289.19.camel@dedrone.com>
In-Reply-To: <1559749116.10289.19.camel@dedrone.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=patrick.daume@dedrone.com; 
x-originating-ip: [80.69.200.138]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: def4ffd5-f04a-4267-1ccc-08d6efdcb3c2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR15MB2819; 
x-ms-traffictypediagnostic: BN8PR15MB2819:
x-microsoft-antispam-prvs: <BN8PR15MB28197CCEA67DEE7D31DC9A11E6EF0@BN8PR15MB2819.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(136003)(366004)(396003)(39840400004)(189003)(199004)(14454004)(256004)(14444005)(44832011)(476003)(11346002)(68736007)(305945005)(2501003)(446003)(26005)(103116003)(2616005)(76176011)(508600001)(486006)(2351001)(66066001)(7736002)(36756003)(99286004)(6916009)(186003)(81166006)(316002)(91956017)(66446008)(8676002)(1730700003)(6116002)(229853002)(4326008)(25786009)(5660300002)(6506007)(6246003)(3846002)(6512007)(71200400001)(64756008)(73956011)(6436002)(66476007)(5640700003)(76116006)(6486002)(66556008)(8936002)(66946007)(53936002)(71190400001)(86362001)(102836004)(81156014)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR15MB2819;
 H:BN8PR15MB3169.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: dedrone.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0nNwIwxRAvPEnYK14NqQVE5jy9a5EcEJ8R+9K2JPMIIRtf5MZ6eFgYqCXrF9Lj/uoqOJTKPDSJxTTopkGt+ntVAOGtDsRbcgGO5wvcRfOU1jTS42BYbv6MiyjIL/MR2NvncvH/uLPyG8UttbK8BbLbR/WT0tT8R5gYtnGMPptNkknpa9JWXyxVE3CfQaTZYZ8uUvnqLdJ2IFJqM1uyt0U09zQmaDgh3JtCiBWUimuL0LsiaBXkopGJEEfqR/Jmyk+JLvJtm2q0ZcjwrUJzMkSMaB2mqzUkvYjiX/7izp4kU33/X5sP63CJ40azT4uJiV7TQ0ERsKtyLu+4uugph1M8GGPqKCz5ApIENCIa0oLnKh8+wyEZJ/Hv/JuD7i7k76ER12IxAEJccX+zu8GuC218RfLLae4tpBR7sTLIZbfnk=
Content-ID: <C4B1459A05C9B547AF19D3A437D721A5@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: dedrone.com
X-MS-Exchange-CrossTenant-Network-Message-Id: def4ffd5-f04a-4267-1ccc-08d6efdcb3c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 08:54:10.3202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ea7e0db4-c796-41ba-a144-9bdd2f4c6231
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: patrick.daume@dedrone.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR15MB2819
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_015413_439323_5EDD1F98 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.112 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.29
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

T24gTWksIDIwMTktMDYtMDUgYXQgMTc6MzggKzAyMDAsIFBhdHJpY2sgRGF1bWUgd3JvdGU6DQo+
IEkgdGVzdCBpdCB3aXRoIG1vZHByb2JlIG9wdGlvbiByYXdtb2RlPTEgYW5kIGl0IHNlZW1zIHRv
IHdvcmsuDQo+IA0KPiBzb2x1dGlvbjoNCj4gDQo+IGxpbnV4IGtlcm5lbCA1LjEuMC1yYzctd3Qt
YXRoKw0KPiBmaXJtd2FyZTogV0xBTi5STS40LjQuMS5jMy0wMDAzMA0KPiANCj4gc3VkbyBtb2Rw
cm9iZSBhdGgxMGtfY29yZSByYXdtb2RlPTENCj4gc3VkbyBtb2Rwcm9iZSBhdGgxMGtfcGNpDQo+
IA0KPiANCj4gQnV0IGlmIGkgY2FsbCB0Y3BkdW1wIGZvciBhIHdoaWxlIGkgZ290IHNvbWUgZXJy
b3IgdHJhY2VzIGluIGRtZXNnLg0KPiBIb3cNCj4gY2FuIGkgZml4IHRoaXM/DQo+IA0KPiBbwqDC
oDI4MS4xMDE2ODJdwqDCoHBpbmN0cmxfaW50ZWwgW2xhc3QgdW5sb2FkZWQ6IGNmZzgwMjExXQ0K
PiBbwqDCoDI4MS4xMDE2OTRdIENQVTogMSBQSUQ6IDAgQ29tbTogc3dhcHBlci8xIFRhaW50ZWQ6
DQo+IEfCoMKgwqDCoMKgwqDCoMKgV8KgwqDCoMKgwqDCoMKgwqDCoDUuMS4wLXJjNy13dC1hdGgr
ICMzDQo+IFvCoMKgMjgxLjEwMTY5N10gSGFyZHdhcmUgbmFtZTrCoMKgLywgQklPUyA1LjExIDAz
LzI0LzIwMTYNCj4gW8KgwqAyODEuMTAxNzAzXSBSSVA6IDAwMTA6c2tiX3RyaW0rMHgyZC8weDMw
DQo+IFvCoMKgMjgxLjEwMTcwOF0gQ29kZTogMDAgMDAgMzkgNzcgNzAgNzcgMDIgZjMgYzMgOGIg
NDcgNzQgODUgYzAgNzUgMWENCj4gNDggOGIgODcgYzggMDAgMDAgMDAgNDggMmIgODcgYzAgMDAg
MDAgMDAgODkgNzcgNzAgMDEgYzYgODkgYjcgYjggMDANCj4gMDAgMDAgYzMgPDBmPiAwYiBjMyAw
ZiAxZiA0NCAwMCAwMCA4YiA4NyBlOCAwMCAwMCAwMCA4YiA5NiBkMCAwMCAwMA0KPiAwMCAwMSBk
MA0KPiBbwqDCoDI4MS4xMDE3MTJdIFJTUDogMDAxODpmZmZmOWQ0N2RkYTgzY2UwIEVGTEFHUzog
MDAwMTAyMDYNCj4gW8KgwqAyODEuMTAxNzE3XSBSQVg6IDAwMDAwMDAwMDAwMDA0Y2MgUkJYOiAw
MDAwMDAwMDAwMDA4MDAwIFJDWDoNCj4gZmZmZjlkNDdkZGE4M2U2MA0KPiBbwqDCoDI4MS4xMDE3
MjBdIFJEWDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6IDAwMDAwMDAwMDAwMDBhZTAgUkRJOg0KPiBm
ZmZmOWQ0N2QzZWViZjAwDQo+IFvCoMKgMjgxLjEwMTcyM10gUkJQOiAwMDAwMDAwMDAwMDAwMDA0
IFIwODogMDAwMDAwMDAwMDAwMDAwMCBSMDk6DQo+IDAwMDAwMDAwMDAwMDAwMDANCj4gW8KgwqAy
ODEuMTAxNzI2XSBSMTA6IGZmZmZmMmMwNTE1OGQ4NDAgUjExOiBmZmZmOWQ0M2I0NDdlNGI4IFIx
MjoNCj4gMDAwMDAwMDAwMDAwMDAwMA0KPiBbwqDCoDI4MS4xMDE3MjldIFIxMzogMDAwMDAwMDAw
MDAwNDAwMCBSMTQ6IGZmZmY5ZDQ3ZDA0MjE2MjAgUjE1Og0KPiBmZmZmOWQ0N2QzZWViZjAwDQo+
IFvCoMKgMjgxLjEwMTczNF0gRlM6wqDCoDAwMDAwMDAwMDAwMDAwMDAoMDAwMCkgR1M6ZmZmZjlk
NDdkZGE4MDAwMCgwMDAwKQ0KPiBrbmxHUzowMDAwMDAwMDAwMDAwMDAwDQo+IFvCoMKgMjgxLjEw
MTczN10gQ1M6wqDCoDAwMTAgRFM6IDAwMDAgRVM6IDAwMDAgQ1IwOiAwMDAwMDAwMDgwMDUwMDMz
DQo+IFvCoMKgMjgxLjEwMTc0MV0gQ1IyOiAwMDAwNTYxMTBmMDU4MGE0IENSMzogMDAwMDAwMDNh
MTIwZTAwMyBDUjQ6DQo+IDAwMDAwMDAwMDAzNjA2ZTANCj4gW8KgwqAyODEuMTAxNzQ0XSBEUjA6
IDAwMDAwMDAwMDAwMDAwMDAgRFIxOiAwMDAwMDAwMDAwMDAwMDAwIERSMjoNCj4gMDAwMDAwMDAw
MDAwMDAwMA0KPiBbwqDCoDI4MS4xMDE3NDddIERSMzogMDAwMDAwMDAwMDAwMDAwMCBEUjY6IDAw
MDAwMDAwZmZmZTBmZjAgRFI3Og0KPiAwMDAwMDAwMDAwMDAwNDAwDQo+IFvCoMKgMjgxLjEwMTc0
OV0gQ2FsbCBUcmFjZToNCj4gW8KgwqAyODEuMTAxNzU1XcKgwqA8SVJRPg0KPiBbwqDCoDI4MS4x
MDE3OThdwqDCoGF0aDEwa19odHRfcnhfaF9tcGR1KzB4NmE1LzB4YWIwIFthdGgxMGtfY29yZV0N
Cj4gW8KgwqAyODEuMTAxODEzXcKgwqA/IHN3aW90bGJfbWFwKzB4NmIvMHgxYzANCj4gW8KgwqAy
ODEuMTAxODQ2XcKgwqBhdGgxMGtfaHR0X3R4cnhfY29tcGxfdGFzaysweGM0Zi8weDE0OTAgW2F0
aDEwa19jb3JlXQ0KPiBbwqDCoDI4MS4xMDE4NjRdwqDCoGF0aDEwa19wY2lfbmFwaV9wb2xsKzB4
NTEvMHgxMzAgW2F0aDEwa19wY2ldDQo+IFvCoMKgMjgxLjEwMTg3Nl3CoMKgbmV0X3J4X2FjdGlv
bisweDI3ZS8weDNkMA0KPiBbwqDCoDI4MS4xMDE4ODhdwqDCoF9fZG9fc29mdGlycSsweGZkLzB4
MmQ4DQo+IFvCoMKgMjgxLjEwMTg5OV3CoMKgaXJxX2V4aXQrMHhhZS8weGIwDQo+IFvCoMKgMjgx
LjEwMTkwNl3CoMKgZG9fSVJRKzB4NTIvMHhlMA0KPiBbwqDCoDI4MS4xMDE5MTNdwqDCoGNvbW1v
bl9pbnRlcnJ1cHQrMHhmLzB4Zg0KPiBbwqDCoDI4MS4xMDE5MTddwqDCoDwvSVJRPg0KPiBbwqDC
oDI4MS4xMDE5MjhdIFJJUDogMDAxMDpjcHVpZGxlX2VudGVyX3N0YXRlKzB4YzQvMHg0NjANCj4g
W8KgwqAyODEuMTAxOTMyXSBDb2RlOiBlOCA3MSBmNyA5MCBmZiA4MCA3YyAyNCAwZiAwMCA3NCAx
NyA5YyA1OCAwZiAxZg0KPiA0NCAwMCAwMCBmNiBjNCAwMiAwZiA4NSA2NSAwMyAwMCAwMCAzMSBm
ZiBlOCBiMyBmNiA5NiBmZiBmYiA2NiAwZiAxZg0KPiA0NCAwMCAwMCA8NDU+IDg1IGU0IDBmIDg4
IDM1IDAzIDAwIDAwIDRjIDJiIDdjIDI0IDEwIDQ4IGJhIGNmIGY3IDUzDQo+IGUzIGE1IDliDQo+
IFvCoMKgMjgxLjEwMTkzNl0gUlNQOiAwMDE4OmZmZmZhY2VmNDE5NDNlODggRUZMQUdTOiAwMDAw
MDI0NiBPUklHX1JBWDoNCj4gZmZmZmZmZmZmZmZmZmZkZA0KPiBbwqDCoDI4MS4xMDE5NDFdIFJB
WDogZmZmZjlkNDdkZGFhMmM4MCBSQlg6IGZmZmZmZmZmYWQyZDc4NjAgUkNYOg0KPiAwMDAwMDAw
MDAwMDAwMDFmDQo+IFvCoMKgMjgxLjEwMTk0NF0gUkRYOiAwMDAwMDAwMDAwMDAwMDAwIFJTSTog
MDAwMDAwMDAyZDk1ODQwMyBSREk6DQo+IDAwMDAwMDAwMDAwMDAwMDANCj4gW8KgwqAyODEuMTAx
OTQ3XSBSQlA6IGZmZmY5ZDQ3ZGRhYWMxMDAgUjA4OiBmZmZmZmZmY2E4ZjEyNmE3IFIwOToNCj4g
ZmZmZjlkNDdkZGFhMWNhNA0KPiBbwqDCoDI4MS4xMDE5NTBdIFIxMDogMDAwMDAwMDAwMDAwMDAx
OCBSMTE6IDAwMDAwMDAwMDAwMDI2MTUgUjEyOg0KPiAwMDAwMDAwMDAwMDAwMDA4DQo+IFvCoMKg
MjgxLjEwMTk1M10gUjEzOiAwMDAwMDAwMDAwMDAwMDA4IFIxNDogZmZmZmZmZmZhZDJkNzg2MCBS
MTU6DQo+IDAwMDAwMDQxNzJmMmY0NTMNCj4gW8KgwqAyODEuMTAxOTY1XcKgwqA/IGNwdWlkbGVf
ZW50ZXJfc3RhdGUrMHg5Zi8weDQ2MA0KPiBbwqDCoDI4MS4xMDE5NzJdwqDCoGRvX2lkbGUrMHgy
MDIvMHgyODANCj4gW8KgwqAyODEuMTAxOTgwXcKgwqBjcHVfc3RhcnR1cF9lbnRyeSsweDE5LzB4
MjANCj4gW8KgwqAyODEuMTAxOTkwXcKgwqBzdGFydF9zZWNvbmRhcnkrMHgxN2EvMHgxZDANCj4g
W8KgwqAyODEuMTAxOTk5XcKgwqBzZWNvbmRhcnlfc3RhcnR1cF82NCsweGE0LzB4YjANCj4gW8Kg
wqAyODEuMTAyMDA2XSAtLS1bIGVuZCB0cmFjZSAyM2RjNmRkYjA5MzM5NmM1IF0tLS0NCj4gW8Kg
wqAzMDYuMTI2NDU0XSBkZXZpY2Ugd2xwMnMwIGVudGVyZWQgcHJvbWlzY3VvdXMgbW9kZQ0KPiBb
wqDCoDMxNy43MDA4MzVdIGRldmljZSB3bHAyczAgbGVmdCBwcm9taXNjdW91cyBtb2RlDQoNCg0K
DQoNCg0KDQoNCg0KaHR0Lmg6MjIyNg0KDQovKg0KwqAqIFNob3VsZCBiZTogc2l6ZW9mKHN0cnVj
dCBodHRfaG9zdF9yeF9kZXNjKSArIG1heCByeCBNU0RVIHNpemUsDQo+PiAqIHNpemVvZihzdHJ1
Y3QgaHR0X2hvc3RfcnhfZGVzYykgMzYwIGJ5dGVzICsgbWF4IE1QRFUvfk1EU1Ugc2l6ZQ0KODAy
LjExQUMgMTYuMzg0IGJ5dGVzICgyXjE0KSArICgyXjkpDQrCoCogcm91bmRlZCB1cCB0byBhIGNh
Y2hlIGxpbmUgc2l6ZS4NCsKgKi8NCj4+ICNkZWZpbmUgSFRUX1JYX0JVRl9TSVpFIDE2ODk2DQoj
ZGVmaW5lIEhUVF9SWF9NU0RVX1NJWkUgKEhUVF9SWF9CVUZfU0laRSAtIChpbnQpc2l6ZW9mKHN0
cnVjdA0KaHR0X3J4X2Rlc2MpKQ0KDQoNCg0KDQoNCmh0dF9yeC5jOjEzOTAsIGF0aDEwa19odHRf
cnhfaF91bmRlY2FwX3Jhdw0KDQppZiAoV0FSTl9PTl9PTkNFKCEoaXNfZmlyc3QgJiYgaXNfbGFz
dCkgJiYgIW1zZHVfbGltaXRfZXJyKSkNCglyZXR1cm47DQoNCi8qIFdlIHNlZSB6ZXJvIGxlbmd0
aCBtc2R1cyBhbmQgZ3JlYXRlciBtYXggbGVuZ2h0IG1zZHVzLA0KwqAqIG5vdCBzdXJlIHdoeS4g
QXQgbGVhc3QgZG9uJ3QgdHJ5IHRvIHRyaW0gaXQgZnVydGhlci4NCsKgKi8NCj4+IGlmICh1bmxp
a2VseShtc2R1LT5sZW4gPCBGQ1NfTEVOIHx8IG1zZHUtPmxlbiA+IEhUVF9SWF9NU0RVX1NJWkUp
KQ0KPj4JcmV0dXJuOw0KDQpza2JfdHJpbShtc2R1LCBtc2R1LT5sZW4gLSBGQ1NfTEVOKTsNCg0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsg
bWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
