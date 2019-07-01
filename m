Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594325C241
	for <lists+ath10k@lfdr.de>; Mon,  1 Jul 2019 19:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9uFIs0eic1ppw7OsB05ANs2BK2iNjyRH5LHtb7lgC6Y=; b=laym/lQJUTPfhx
	jALpVAnmobsMUt66PHe0Ik9SK6s6sT1VzMpt0KYZwU8Pm8uPbYgHzwYtkKxpW/Jzlr657oZ6SvDw0
	R4kjQ8/0vM8r54JuWFZfOWC2gxunI6c1JjR6VKeqe1Pa8GIF0PWmEYbTdv856PaDMzuJOm3K5zU6m
	q3w6h5o2zQeuAgrqgL3tDeQhMk7fddreC0mBCPRggZNJSSARtfFiib+a3nvNVsgS1bjgCyrmN39Ns
	tCe3BjsqWhO9jaWocQBguWB9tI59AFRiHxv0dradzJ8QXrVjOKWc8a7Oul080zKyEX+ouyRSFy7xe
	8raw2dlinN7aqjPhPKQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi0PK-000450-Gv; Mon, 01 Jul 2019 17:48:02 +0000
Received: from mail-eopbgr1310050.outbound.protection.outlook.com
 ([40.107.131.50] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi0PG-00044J-0t
 for ath10k@lists.infradead.org; Mon, 01 Jul 2019 17:47:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=teoenmingcorp.onmicrosoft.com; s=selector1-teoenmingcorp-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P6toLpWgp9qUjnkWKNfN429fY3qdu49Zfc5GorPawLg=;
 b=mfSNqAkprQ9eyO6k1qb+Hw7SQCQxaE5Z4zg33OUqQuynI6AKEZhQdSkCbTxckZFB4odKLPBNoAbT1jwP4W2/SzVVcqp6W1uIOv22xf8y13MC8KDRbW3WC0J46ztO04cR3NJgISyIgmMdM0a2EDsw6Hq5ZkVQ3iRBKKw/dq+8+RQ=
Received: from SG2PR01MB2141.apcprd01.prod.exchangelabs.com (10.170.143.19) by
 SG2PR01MB2631.apcprd01.prod.exchangelabs.com (20.177.95.150) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Mon, 1 Jul 2019 17:47:47 +0000
Received: from SG2PR01MB2141.apcprd01.prod.exchangelabs.com
 ([fe80::d503:3d71:ce06:19d2]) by SG2PR01MB2141.apcprd01.prod.exchangelabs.com
 ([fe80::d503:3d71:ce06:19d2%6]) with mapi id 15.20.2032.019; Mon, 1 Jul 2019
 17:47:47 +0000
From: Turritopsis Dohrnii Teo En Ming <ceo@teo-en-ming-corp.com>
To: "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Subject: Is ath10k an open source wireless driver for Qualcomm Atheros chips
 with IEEE 802.11ac support?
Thread-Topic: Is ath10k an open source wireless driver for Qualcomm Atheros
 chips with IEEE 802.11ac support?
Thread-Index: AdUwNQPSG6mUPYaxRXqO54EVjCo67A==
Date: Mon, 1 Jul 2019 17:47:47 +0000
Message-ID: <SG2PR01MB214108C71105FB543ED829A487F90@SG2PR01MB2141.apcprd01.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ceo@teo-en-ming-corp.com; 
x-originating-ip: [118.189.211.120]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0630757b-a188-4361-5d7f-08d6fe4c3ad2
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SG2PR01MB2631; 
x-ms-traffictypediagnostic: SG2PR01MB2631:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <SG2PR01MB26315356FA096D4DFD756C6F87F90@SG2PR01MB2631.apcprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00851CA28B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(366004)(376002)(346002)(136003)(396003)(189003)(199004)(6916009)(8676002)(81156014)(81166006)(6506007)(6436002)(73956011)(66446008)(66556008)(66476007)(66946007)(2906002)(64756008)(52536014)(74316002)(5640700003)(66066001)(2351001)(3846002)(6116002)(102836004)(76116006)(7736002)(8936002)(86362001)(966005)(476003)(55016002)(2501003)(7696005)(107886003)(316002)(4744005)(33656002)(14454004)(71200400001)(9686003)(486006)(71190400001)(186003)(6306002)(25786009)(5660300002)(305945005)(68736007)(256004)(4326008)(53936002)(99286004)(508600001)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SG2PR01MB2631;
 H:SG2PR01MB2141.apcprd01.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: teo-en-ming-corp.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CGYOE9z62Ppb2zT9KLrXJnxnNbaZe6G8WF307SJOUGTpS0YVTxsqXbswkmm1V5G3Zcit+jbeAW4qTkW0yl4WXNjqCw980KtWPETYpQpRlGInZGo5+9QGPhbeqD3xxgjkhB2turbLqhb/N2P2+twneOe+DmfMyIMbO9Cpr3wlJ5l+J1K0fyk9nZlxnthPS6gx5DWjRuNHkdUGAZ87mv1TzQXd3D3mN5jN9IJni5W42aQp7Pn91WaWq/5Kdg910KWgM/tb1gvbBtA5DjoGyzR9jZls7TUzIfHw0iyJzcYD91u7yAnwIo+YQ2yeWYrDnK/GUCY+SwvgYTH/7/zDa9viYsO308o8Kz1KzdUowl0P9P87Ez8rRmeF0yP3kzA8jd27sg2lXG0apZRkebbba9H+ckACRzG7CX8qFHxjJRl1Ay8=
MIME-Version: 1.0
X-OriginatorOrg: teo-en-ming-corp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0630757b-a188-4361-5d7f-08d6fe4c3ad2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2019 17:47:47.6179 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 23b3f6ae-c453-4b93-aec9-f17508e5885c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ceo@teo-en-ming-corp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR01MB2631
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_104758_070556_2087D77A 
X-CRM114-Status: UNSURE (   1.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.131.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Turritopsis Dohrnii Teo En Ming <ceo@teo-en-ming-corp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Good morning from Singapore,

Is ath10k an open source wireless driver for Qualcomm Atheros chips with IEEE 802.11ac support?

Thank you.





-----BEGIN EMAIL SIGNATURE-----

The Gospel for all Targeted Individuals (TIs):

[The New York Times] Microwave Weapons Are Prime Suspect in Ills of
U.S. Embassy Workers

Link: https://www.nytimes.com/2018/09/01/science/sonic-attack-cuba-microwave.html

********************************************************************************************

Singaporean Mr. Turritopsis Dohrnii Teo En Ming's Academic
Qualifications as at 14 Feb 2019

[1] https://tdtemcerts.wordpress.com/

[2] https://tdtemcerts.blogspot.sg/

[3] https://www.scribd.com/user/270125049/Teo-En-Ming

-----END EMAIL SIGNATURE-----


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
