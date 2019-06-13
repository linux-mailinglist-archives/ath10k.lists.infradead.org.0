Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AA24347B
	for <lists+ath10k@lfdr.de>; Thu, 13 Jun 2019 11:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9dmMz675cR0CDdSBpebXkDOZzKEO4qcx8YOMT1LDV70=; b=rkVS16M9xvlJxD
	JbZa4DArOWOfduJNoeeLTjnYOYG+PBWLTq/iHcRQVjEIWaK5rX9XV8bUH48pheb8Y2rXXwkm0E5kD
	Q+r4nrviFIDsOOr/0+YCpgYYbAj9hFhufhGP++ExK5exERw2IpMADcu0vmI2DE1aQ6726ANYlDbLr
	PEvoyiK8SFBcoA+LEuyUhpa+2q1s7P3CquSUeOdNKELl+HKqtZKq31YpMQ+tzgpasSLD3iA7xrjj6
	xkQWdRXSCJJTYOvVRgMHLO4xR90Rb461Afacix6EboW/BQlQRcN7OoX+Zwxhp6XUKvaAEsXGeA4Ub
	k3Xcd73QNO5uTqyPhNgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLf2-0000HM-W8; Thu, 13 Jun 2019 09:04:45 +0000
Received: from mail-eopbgr770133.outbound.protection.outlook.com
 ([40.107.77.133] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLer-0000GV-AQ
 for ath10k@lists.infradead.org; Thu, 13 Jun 2019 09:04:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dedrone.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pxaaj7zau7r7hxbv7TClXIqsdvSO1ojuBRBwXFwv0sY=;
 b=tYigceLxstylmtv2C7nyDtPcSOtpgDjtb8wZbDI5UojoirPJuPol/DRlp9MnwuTO1ONIrw5KMHCPukrN4jSqeRff2YOgyP1a9fzbGkQJCbPRBA0bnIy4TrFFKh7lQOJAORiT4JR0HIdR/vYIr+nCf3zauk4KEpkYPm4ug+lNzC8=
Received: from BN8PR15MB3169.namprd15.prod.outlook.com (20.179.72.152) by
 BN8PR15MB3233.namprd15.prod.outlook.com (20.179.73.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Thu, 13 Jun 2019 09:04:31 +0000
Received: from BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3]) by BN8PR15MB3169.namprd15.prod.outlook.com
 ([fe80::a48c:35eb:52c6:d1c3%5]) with mapi id 15.20.1965.018; Thu, 13 Jun 2019
 09:04:31 +0000
From: Patrick Daume <patrick.daume@dedrone.com>
To: "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Subject: ath10k kernel cannot allocate memory after some ifupdown cycles
Thread-Topic: ath10k kernel cannot allocate memory after some ifupdown cycles
Thread-Index: AQHVIccCJWosMi+xpE6AO5nT/Iuu7Q==
Date: Thu, 13 Jun 2019 09:04:30 +0000
Message-ID: <1560416670.23005.15.camel@dedrone.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=patrick.daume@dedrone.com; 
x-originating-ip: [80.69.200.138]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d62609b-45b7-4023-4779-08d6efde257c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR15MB3233; 
x-ms-traffictypediagnostic: BN8PR15MB3233:
x-microsoft-antispam-prvs: <BN8PR15MB32331120E76B0DBB4AE40028E6EF0@BN8PR15MB3233.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(346002)(39840400004)(366004)(396003)(199004)(189003)(25786009)(14454004)(99286004)(8936002)(66066001)(508600001)(5660300002)(6512007)(256004)(486006)(86362001)(2616005)(476003)(8676002)(102836004)(2906002)(7736002)(44832011)(26005)(53936002)(6506007)(305945005)(5640700003)(186003)(81156014)(66946007)(81166006)(66556008)(6916009)(76116006)(71200400001)(66476007)(103116003)(73956011)(3846002)(64756008)(6486002)(6436002)(36756003)(2351001)(66446008)(68736007)(316002)(2501003)(91956017)(71190400001)(6116002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR15MB3233;
 H:BN8PR15MB3169.namprd15.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: dedrone.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5v2vTLxGDeDdxCbEdJ7So7UsxVr+DFvGtLFoTK5VLgisU+6EN6VBLOGE4qZBLHa8DNxqQNmlHdxTTEdboo8OW1TjftKqohSBbgFzSvge4CDVT7VcV35TWBYT4bZWxjFVm6V+2bML2T/FgeiCqppKWpF1ZaiPZo4D/egdQYMGjmsJfDTDuIAbR1xJ1QhIPv78NZL4Yro8U/GsifPBOwGJLAU3KhtA1x49l7ZOnl06CLSxEHxIK3y1QPV/RmoVYZmL/VubNJoQA+0n1ho8UC9osJYwoqbE+lGQ8EywT2TfsZKteRR8SQGkldyFXy6jOZs4N5GyO1n+3/nDbESC6i6+8nt8OOsb9YEHe4iZzvLAuOdJJLTCiKtSjrTCXNx9Z0fm31XZmppph2GB54ufn/Ls2HiJ0biYEBEbujp/vcAnFps=
Content-ID: <B76E552F0675CC48B7C86964F5658E2E@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: dedrone.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d62609b-45b7-4023-4779-08d6efde257c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 09:04:30.7935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ea7e0db4-c796-41ba-a144-9bdd2f4c6231
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: patrick.daume@dedrone.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR15MB3233
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_020433_624373_52630016 
X-CRM114-Status: UNSURE (   4.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.133 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

I've an SparkLan WPEQ-261ACN(BT) Qualcomm Atheros QCA6174 chipset on an 4.4.38 Kernel with the newest kernel backport 'v5.1-rc2'.
When i toggle the wlan0 interface in 10s cycles then the kernel cannot allocate memory after a while.
Can anyone point out which patches may be relavant to fix this issue?

watch -n 10 sudo ./toggle.sh
+ sudo ifup wlan0
RTNETLINK answers: Cannot allocate memory
+ sleep 10s
+ sudo ifdown wlan0

dmesg
[ 1917.775193] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
[ 1917.812460] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 1943.467822] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
[ 1943.508383] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 1969.157238] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
[ 1969.196090] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 1994.850710] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
[ 1994.891609] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 2020.546382] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
[ 2020.587174] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 2046.241897] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
[ 2046.283581] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 2071.937823] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
[ 2071.979395] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 2097.633628] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
[ 2097.675403] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 2123.330689] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
[ 2123.381449] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 2149.033861] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
[ 2149.080214] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 2174.734434] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
[ 2174.776393] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 2200.413865] ath10k_pci 0000:01:00.0: failed to write diag value at 0xa7000: -12
[ 2200.423219] ath10k_pci 0000:01:00.0: failed to download firmware via diag interface:-12
[ 2200.433298] ath10k_pci 0000:01:00.0: failed to upload firmware via diag ce, trying BMI: -12
[ 2200.992785] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
[ 2201.034673] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
[ 2216.242340] ath10k_pci 0000:01:00.0: failed to read hi_board_data address: -12
[ 2226.622023] ath10k_pci 0000:01:00.0: Failed to get pcie state addr: -12
[ 2226.629859] ath10k_pci 0000:01:00.0: failed to setup init config: -12
[ 2226.637622] ath10k_pci 0000:01:00.0: Could not init hif: -12


hwinfo
description: Ethernet interface
product: QCA6174 802.11ac Wireless Network Adapter
vendor: Qualcomm Atheros
physical id: 0
bus info: pci@0000:01:00.0
logical name: wlan0
version: 32
serial: [REMOVED]
width: 64 bits
clock: 33MHz
capabilities: bus_master cap_list ethernet physical
configuration: broadcast=yes driver=ath10k_pci driverversion=4.4.38 firmware=WLAN.RM.4.4.1.c3-00030 latency=0 link=no multicast=yes
resources: irq:452 memory:50200000-503fffff


>>
#/bin/bash

set -x

sudo ifup wlan0
sleep 10s
sudo ifdown wlan0
<<
_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
