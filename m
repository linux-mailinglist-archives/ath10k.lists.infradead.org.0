Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5A24347A
	for <lists+ath10k@lfdr.de>; Thu, 13 Jun 2019 11:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkGxgbofU+uuXXpXs1f5zXVZvz/ftT+RFyoxrqyYk1A=; b=ER+XXMG8zDPb9f
	De9eNbQFV9GoQGuWH2vqVTGqYwmmzIZgvUDxaEJRza71Dh/ANpEeZV7jff1KIpMrMmUZ701H3aRVh
	OwIxrpHOp9JiScxTA8ECNIuZb1wbfAXBvB8xZbqBEFLjNFxu2eu3hHIqRXbraRO9RhDD6BpvxQhG8
	DMgjPwCzZyMG57zzKm7nxBjtuZnK/hjisJLdR2qFJfMJyMx509XM+QV6OO8U1xn2XnP2kG6WwfpZT
	hp+8VQiiMgVpxyTrQBau7VzKeoL5k+DO1x4IQDB+J1rf1BZrP0uFn0yN2hUoxUnCPfN3MzJqHlMeK
	a0I4OyR9OoNcGgwDrOtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLdq-000088-I0; Thu, 13 Jun 2019 09:03:30 +0000
Received: from mail-eopbgr770090.outbound.protection.outlook.com
 ([40.107.77.90] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLdm-00007W-G7
 for ath10k@lists.infradead.org; Thu, 13 Jun 2019 09:03:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dedrone.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qDxrmBco6u90NV6MhYvNmE6+Cn8GmTVtRuANS/XZHwE=;
 b=ejXb/ZEEP+vHl9nDin/5Q8y7SBylIv11jTFbQV7TBpSw2teCFvis2xXXbbwfl2vJ+D4LtS+wICDqyS8PQAw3AZvn5r49InfUSCh4p86TCy2soII9l3uWhKSJYuWWGc970E831WIPvearcZcc8s69BaVBrswD0RlBtfRKoGBiSe4=
Received: from BN8PR15MB3169.namprd15.prod.outlook.com (20.179.72.152) by
 BN8PR15MB2819.namprd15.prod.outlook.com (20.179.140.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Thu, 13 Jun 2019 09:03:22 +0000
Received: from BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3]) by BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3%5]) with mapi id 15.20.1965.018; Thu, 13 Jun 2019
 09:03:22 +0000
From: Patrick Daume <patrick.daume@dedrone.com>
To: "kvalo@codeaurora.org" <kvalo@codeaurora.org>
Subject: Re: Qualcomm Atheros QCA6174 monitoring mode receiving no data
Thread-Topic: Qualcomm Atheros QCA6174 monitoring mode receiving no data
Thread-Index: AQHVF5c28GKXVbl/KUKifPWHGZ9U+6aJrXN/gAA5U4CAAqPKg4AAr7wAgAwhpoCAAAKTAA==
Date: Thu, 13 Jun 2019 09:03:22 +0000
Message-ID: <1560416602.23005.13.camel@dedrone.com>
References: <1559296628.11260.4.camel@dedrone.com>
 <87lfyjyq9c.fsf@kamboji.qca.qualcomm.com>
 <1559566253.12864.47.camel@dedrone.com>
 <87zhmwvcs5.fsf@kamboji.qca.qualcomm.com>
 <1559749116.10289.19.camel@dedrone.com>
 <1560416049.23005.9.camel@dedrone.com>
In-Reply-To: <1560416049.23005.9.camel@dedrone.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=patrick.daume@dedrone.com; 
x-originating-ip: [80.69.200.138]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 44b14710-6c1a-42e2-3080-08d6efddfcbb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR15MB2819; 
x-ms-traffictypediagnostic: BN8PR15MB2819:
x-microsoft-antispam-prvs: <BN8PR15MB281970795DA6F815587B633CE6EF0@BN8PR15MB2819.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(346002)(366004)(136003)(376002)(396003)(189003)(199004)(3846002)(6246003)(71200400001)(6512007)(6506007)(66556008)(6486002)(76116006)(8936002)(66476007)(6436002)(73956011)(64756008)(5640700003)(316002)(91956017)(66446008)(81166006)(8676002)(25786009)(5660300002)(6116002)(1730700003)(229853002)(4326008)(2906002)(81156014)(102836004)(86362001)(71190400001)(53936002)(66946007)(305945005)(68736007)(11346002)(14454004)(44832011)(476003)(14444005)(256004)(4744005)(7736002)(36756003)(486006)(66066001)(2351001)(99286004)(186003)(6916009)(26005)(2501003)(446003)(76176011)(508600001)(2616005)(103116003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR15MB2819;
 H:BN8PR15MB3169.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: dedrone.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fmLHpaGjW5v7z7UtPJzkDr+lgT7+j6X2W/DdNd1yEjFKB76wo3OBcYFmxiy+onGSi2ALK9Jo5MsmXZLEHcslVRYHC8/XsAyeI+OGRXUOjQ26lPhxlgQKOKiVemC0PrEN3ygkT1YWsPzdm9thB50q5t8cio9N46ovLUjEB/puqvl+CVYyU4rJNHla8h2jyiciYa7D8enlfOiHYk73Dy4bCqVRjiv+ctSemQurrm9bhrLSv9Bw5WnCwvoV5WguYxmQ/NP9IYJ6zZMSUW9iUjLsELtlVryz1+MbLGLAndNDDKe8jqDuHeJ9eouUVvYGwoFnVk9mGfiswnEuofE3f/BKxveIZrLBYK4uzdM4+ZaGkV0lXLNG6ApsUXGPFDJFLYym24zRN9brwb2Kdjuutu6mkUv4qr71jq4LkZXrF8mCxqc=
Content-ID: <DD3FBA7EAC5A444999594522A6F09F38@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: dedrone.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44b14710-6c1a-42e2-3080-08d6efddfcbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 09:03:22.4801 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ea7e0db4-c796-41ba-a144-9bdd2f4c6231
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: patrick.daume@dedrone.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR15MB2819
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_020326_543010_FEAE0E04 
X-CRM114-Status: UNSURE (   4.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.90 listed in list.dnswl.org]
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

SSBoYXZlIGEgc29sdXRpb24gZm9yIHRoaXMgaXNzdWUsDQpwbGVhc2UgZmluZCBvdXQgaWYgaXRz
IHRoZSByaWdodCB3YXkNCg0KaHR0Lmg6MjIyNg0KDQovKg0KwqAqIFNob3VsZCBiZTogc2l6ZW9m
KHN0cnVjdCBodHRfaG9zdF9yeF9kZXNjKSArIG1heCByeCBNU0RVIHNpemUsDQo+PiAqIHNpemVv
ZihzdHJ1Y3QgaHR0X2hvc3RfcnhfZGVzYykgMzYwIGJ5dGVzICsgbWF4IE1QRFUvfk1EU1Ugc2l6
ZQ0KODAyLjExQUMgMTYuMzg0IGJ5dGVzICgyXjE0KSArICgyXjkpDQrCoCogcm91bmRlZCB1cCB0
byBhIGNhY2hlIGxpbmUgc2l6ZS4NCsKgKi8NCj4+ICNkZWZpbmUgSFRUX1JYX0JVRl9TSVpFIDE2
ODk2DQojZGVmaW5lIEhUVF9SWF9NU0RVX1NJWkUgKEhUVF9SWF9CVUZfU0laRSAtIChpbnQpc2l6
ZW9mKHN0cnVjdA0KaHR0X3J4X2Rlc2MpKQ0KDQoNCg0KDQoNCmh0dF9yeC5jOjEzOTAsIGF0aDEw
a19odHRfcnhfaF91bmRlY2FwX3Jhdw0KDQppZiAoV0FSTl9PTl9PTkNFKCEoaXNfZmlyc3QgJiYg
aXNfbGFzdCkgJiYgIW1zZHVfbGltaXRfZXJyKSkNCsKgwqDCoMKgwqDCoMKgwqByZXR1cm47DQoN
Ci8qIFdlIHNlZSB6ZXJvIGxlbmd0aCBtc2R1cyBhbmQgZ3JlYXRlciBtYXggbGVuZ2h0IG1zZHVz
LA0KwqAqIG5vdCBzdXJlIHdoeS4gQXQgbGVhc3QgZG9uJ3QgdHJ5IHRvIHRyaW0gaXQgZnVydGhl
ci4NCsKgKi8NCj4+IGlmICh1bmxpa2VseShtc2R1LT5sZW4gPCBGQ1NfTEVOIHx8IG1zZHUtPmxl
biA+IEhUVF9SWF9NU0RVX1NJWkUpKQ0KPj7CoMKgwqDCoMKgwqByZXR1cm47DQoNCnNrYl90cmlt
KG1zZHUsIG1zZHUtPmxlbiAtIEZDU19MRU4pOwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRo
MTBrCg==
