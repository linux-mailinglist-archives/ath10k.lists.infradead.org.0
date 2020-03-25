Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F99191DFC
	for <lists+ath10k@lfdr.de>; Wed, 25 Mar 2020 01:23:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FMSyV7UgvbMIcGEVMrFzgtNNSWmlRS1urSYHoc8a3Dg=; b=CQ/N3v+8ou/Zhc
	A4PWQU/I2yEUYFuWjfdvw1zDdtPkc7K880N0DG4fimmJnMBXaOFJFFZ6iciJon9a/T47wA0j4s0MB
	pJ1qmi3iP/mnI3t8srZf3/1+c8FDJniPWP0PpaTBmQ544iKpo0o9MHNVhgXyCzF/8R1JCoD+dm0bQ
	vwkZcJLUeFqeGT+R1Yl7+kq4pN0tyI1V6LTdpaW6+d/Do9x9ibXG21AJm0+lQh1NjXKZr4tCQSCHJ
	5/natsoocKF/qw3Snsqj4JDOsBh22OygULr749AIj/jFL5E5v68jZuOpkLHxqBpywmNtvhqI9JGov
	MfzaBSMnx27aSH62ucJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGtpW-0000IO-PS; Wed, 25 Mar 2020 00:23:34 +0000
Received: from mail-co1nam11on2109.outbound.protection.outlook.com
 ([40.107.220.109] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGtpT-0000Hv-9v
 for ath10k@lists.infradead.org; Wed, 25 Mar 2020 00:23:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZnMQ0/tj6GhuWYNVBMq03AdUM1CCwXMXvKXfneknk5j678fxrWqeQaqqLHyrnNakYX04N7XQwUurFUkT7jwWEZcfiLNaIRwN17LsJDH3ReOqoA7Hqgw+nOhQBlb+ygW1+7gaIjB2VXcUk61GE5DuMK8G5FnwHuYTLFlawXDjb0C5YqX1/PbWJaqfs6/T37O0TZeUXcXnetnmPjPranTIR0wcdFNCp3xZJ0Tk2wZllcf/LNXhuYD+ax2e/HQwx5VH6YAFnS6iODhup65bavMXaWim12FOQgko2fT3vStUJJxP7SscoVgq+OnSTJy+G/207pV0ELZILUkdRoA6Ari9UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p3r6VPMejDb0kcquBynlYmIdqKDWh2BkaNfmWOXeg7Q=;
 b=AeOXSL0280jfHdO13HBsTqG/28zv+ebzvfKCr/vSt78au2Q3akU0Ue4a/Txd85SGMunDNhJPh3fb9w1sYdaNB5f+Sj7g0Z4l3H5YfXyG/rBd1YWwEhZvBS9RR0F67KCo9/mwd2XjQLtG1iSTMwnBu9IDFFcRliiJ9MQcDDdp3M4s3IGmYFiZsud1gwq73+RtAMkvqQa3TSC9lRWqeIPLKQa7LAFgo7zpckxdjLfSOfUb7AJaik9VoJqZRvvjDyiy1LorrbpTNm4zNsfQ14OhXaEemgGT5OHY13G+dX8b8fGo95fp/a+/l/JmiYjTGFhjFqAveOW9a0q1/sfToabjMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silexamerica.com; dmarc=pass action=none
 header.from=silexamerica.com; dkim=pass header.d=silexamerica.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=silexamerica.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p3r6VPMejDb0kcquBynlYmIdqKDWh2BkaNfmWOXeg7Q=;
 b=EMJUPerQZu5gxxqfWIx510NGwlsZg0t9SB0oZeTqHSH7lPdYZk+1uNbt54zvwVQdWesV7BB+tEbgXvNengVXTrB9mKOmbqc1I0hboz09eXSHz9iscitGvYy2WvMPVM7sAw6lrtiSjtX+Scy1txv6NGrzvCffVfKLwd6gBrNa3Dk=
Received: from BY5PR19MB4114.namprd19.prod.outlook.com (2603:10b6:a03:227::8)
 by BY5PR19MB3476.namprd19.prod.outlook.com (2603:10b6:a03:1b9::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Wed, 25 Mar
 2020 00:23:27 +0000
Received: from BY5PR19MB4114.namprd19.prod.outlook.com
 ([fe80::f537:ed4a:25e:4ff3]) by BY5PR19MB4114.namprd19.prod.outlook.com
 ([fe80::f537:ed4a:25e:4ff3%7]) with mapi id 15.20.2835.023; Wed, 25 Mar 2020
 00:23:26 +0000
From: Dawei Chen <dchen@silexamerica.com>
To: "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Subject: ath10k-QCA9377-3 utf.bin file for regulatory compliance testing
Thread-Topic: ath10k-QCA9377-3 utf.bin file for regulatory compliance testing
Thread-Index: AQHWAjt3PFbFeL+QNkK+TMGpNUvPmQ==
Date: Wed, 25 Mar 2020 00:23:26 +0000
Message-ID: <BY5PR19MB411465B4C8BD623EC90097CECACE0@BY5PR19MB4114.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=dchen@silexamerica.com; 
x-originating-ip: [98.184.250.238]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 750c0acd-cd07-4062-9ee6-08d7d052bcd0
x-ms-traffictypediagnostic: BY5PR19MB3476:|BY5PR19MB3476:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR19MB347691AF1EB29DF4288DB4BFCACE0@BY5PR19MB3476.namprd19.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0353563E2B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39840400004)(366004)(396003)(376002)(136003)(346002)(26005)(4744005)(15650500001)(9686003)(8676002)(81166006)(8936002)(81156014)(71200400001)(966005)(7696005)(6506007)(186003)(2906002)(64756008)(316002)(52536014)(55016002)(6916009)(33656002)(66476007)(66446008)(66946007)(76116006)(5660300002)(66556008)(86362001)(508600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BY5PR19MB3476;
 H:BY5PR19MB4114.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: silexamerica.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sFKDn1StRuikLXMxlvJaFL0HD2NjEKaGPJ3YzJdy51NAU1mrtua4JA+KmXSsatSeGcswj3xg9imNcptKpdMq7ysgK+Ck+Q26hjs5MyJ1Md8Fa7C7C+5wbbEC7/K1vj72rKCez4KM8LgA7p5E0FMYpm7krQbYwm3oPDgX2yULBqBheeArrICZwhVtp74HTailT6CPDHNoN8wp6LHJJFmsHiLzB3VJwoPQj016EZg293Rww1zj+NlgJMr+gR9WfrL6NCQKiYbGehNAfFioyzNwLV43RIu+MAPnGA8MMForxFtkb4KwqMyqhCH7waR8oGDAmYj6aiz8Nj7NmBe6qUpqwidofTLpyuW/Dq322uJHhcXzcmCJat9XnWQ4vfJ0fxN2ruEOHGAvfPPAR/gT0aBMFs/9Q31ftVa2MDicXvA+6CDt6cle3JOWpvfEv7SJ+hrWSebs5x122CNl+jGYfMziyE4IKLayFFmLYfkWsB7MSknWYtxB+HJRm3CmZDHw0PX3oXTDI8mBgdj1THskqWcsLQ==
x-ms-exchange-antispam-messagedata: NSy8IoyOmTNnX7B4rhY/gKHNr8wJ8KCUIjkeej3QA79gJgznkjZMa/AhLl5HiJKMWEDBHlH2qzTzReLsIeyc7kJP2tZV1gAbA/S6UG6OmpT708lftB5SG7SKM3npcZkiICSBuU6rIrMoEG5OMArLGA==
MIME-Version: 1.0
X-OriginatorOrg: silexamerica.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 750c0acd-cd07-4062-9ee6-08d7d052bcd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2020 00:23:26.8753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b6aaf860-4a59-41a1-b5af-737a5a27e33a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f3mPEsPagW1NtffUhaD1jruMMx+ewUtkBW21B+qfMTbxCZ+JsrB73LnxfoxrA+NckFIKiIchl3tCl/TMiHhQWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR19MB3476
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_172331_347651_F4A69905 
X-CRM114-Status: UNSURE (   3.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.109 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi,

I would like to setup RF tests for a QCA9377-3 WiFi radio module for regula=
tory compliance.

I see the ath10k firmware files from the website below.=A0=A0
https://github.com/kvalo/ath10k-firmware/tree/master/QCA9377/hw1.0

However, I don't see the utf.bin (test mode) firmware file.
Where and how would one obtain the test mode firmware for the corresponding=
 ath10k firmware?=A0

Any feedback will be appreciated.

Thank you very much,

Dawei Chen

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
