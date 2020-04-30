Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6931BEEF5
	for <lists+ath10k@lfdr.de>; Thu, 30 Apr 2020 06:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXhG9vto7tgyULsP0cUjAgcDNW4tQlucpZj57QCWS/8=; b=QSqBUdjBnQXtxZ
	2r4/FzNrmGDjPTmEQqFYTHbTsm+neSgnXqsoRv82sLMlPm1yZ7CE4q7EV6HfFnH1Sz04RkzvbEdL5
	Iw9ljnty2EdkND9PdxkaoGAOC0F+XkD/vLjxHTx9RVnY2CKxGCi5DROU0Ja1BohpZPPP4/lovvXuW
	LzA6VYdA6rxeS2Fq4voLsSKQpBbNMRRHWmQe7euaHIzJREWGfiRg47EeiTob2gVBI6Q8fJf2797zy
	AXETXxUSh8w8yanqJAiIIqj4C2qNiDUf+/HXXju7+Y9lmwiQiqclR20aCWUrHdrKSjUgDlYKngK5v
	Dwr+95q06bM27BvteJYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU0c4-0008JE-O4; Thu, 30 Apr 2020 04:15:52 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU0c0-0008Hj-Rh
 for ath10k@lists.infradead.org; Thu, 30 Apr 2020 04:15:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1588220148; x=1619756148;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=ViLJC0woW1sx8ZrBL92FIBL8TiA5sa0RMjcydQDosGw=;
 b=r5XCHfXgYikLeWW8YS6NqESO5yWwM8lLgtFqbV0sIsfphsFuY1U6RrhB
 MLe5RIRtlnNLwtqBhKMTZgPfDEMw5EQj2C1tbR6tsfqwTatJyQHm7RtSF
 +0vuPzIQoi2EXtoe1JZZiiZuy8/b07Wf4whbNaKKjvG4skjf/xOs3rQz2 A=;
Subject: RE: Ath10k reboot regression with v5.7-rc1 on dragonboard 845c
Thread-Topic: Ath10k reboot regression with v5.7-rc1 on dragonboard 845c
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 29 Apr 2020 21:15:47 -0700
Received: from nasanexm03b.na.qualcomm.com ([10.85.0.98])
 by ironmsg03-sd.qualcomm.com with ESMTP/TLS/AES256-SHA;
 29 Apr 2020 21:15:47 -0700
Received: from APSANEXR01E.ap.qualcomm.com (10.85.0.38) by
 nasanexm03b.na.qualcomm.com (10.85.0.98) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 29 Apr 2020 21:15:47 -0700
Received: from nasanexm03e.na.qualcomm.com (10.85.0.48) by
 APSANEXR01E.ap.qualcomm.com (10.85.0.38) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 29 Apr 2020 21:15:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (199.106.107.6)
 by nasanexm03e.na.qualcomm.com (10.85.0.48) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Wed, 29 Apr 2020 21:15:43 -0700
Received: from DM5PR02MB3893.namprd02.prod.outlook.com (2603:10b6:4:b8::17) by
 DM5PR02MB2540.namprd02.prod.outlook.com (2603:10b6:3:48::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19; Thu, 30 Apr 2020 04:15:42 +0000
Received: from DM5PR02MB3893.namprd02.prod.outlook.com
 ([fe80::ff:25e7:f691:9ddc]) by DM5PR02MB3893.namprd02.prod.outlook.com
 ([fe80::ff:25e7:f691:9ddc%7]) with mapi id 15.20.2937.026; Thu, 30 Apr 2020
 04:15:42 +0000
From: Govind Singh <govinds@qti.qualcomm.com>
To: Amit Pundir <amit.pundir@linaro.org>, "ath10k@lists.infradead.org"
 <ath10k@lists.infradead.org>
Thread-Index: AQHWHkJIUTn+VqKnAUm0g6LtU+0noqiRDQ9A
Date: Thu, 30 Apr 2020 04:15:42 +0000
Message-ID: <DM5PR02MB38935D19B8733C543FDC8BA09CAA0@DM5PR02MB3893.namprd02.prod.outlook.com>
References: <CAMi1Hd1ReJnYsw3Rg6ECGM-7zzciRqJvJGUm3tuYtHhmGipnZA@mail.gmail.com>
In-Reply-To: <CAMi1Hd1ReJnYsw3Rg6ECGM-7zzciRqJvJGUm3tuYtHhmGipnZA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none
 header.from=qti.qualcomm.com;
x-originating-ip: [122.169.147.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ca985ec-cccb-488c-d019-08d7ecbd25e5
x-ms-traffictypediagnostic: DM5PR02MB2540:
x-ld-processed: 98e9ba89-e1a1-4e38-9007-8bdabc25de1d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR02MB254058A7FD0EE55A79D0AA639CAA0@DM5PR02MB2540.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0389EDA07F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7PgD917raTUud99fKySr0LqKwdH1pu3VCiW3S8bxjeZG8TUnR4q7dO2jZFSPpGClmUMtgSqOWIolXO2CE71dxSCN53pUdd1WcBmAx7Bs6YvyxQG/7r8DzZB3Cu6Ts1L+2Ppb+XoBMPE8EXQeoXog2DVRVrq/COGZ2kR6+RIC0kbONvpOQAHBP5WeKwZCbSiP3B7SAdTASsAey1cUapbwtjYqERgXwd7UU1hFdPHKfkkFo5pLbPsTduQQozqcF+gaGA4E2j3knWArSQ/yxx3jsg6OQIzhXw4mVACPr8ywdNCxe9md7kmfNcGXF99rHB+knYapDAOJNo+ZuUxePPy9AxzSK0adkvpx7s1Qc/kk4NUMOs9vM2pwTMkpdFXm6N+u35XsKRtFh+a9gsBecdo2tSYQp0SpIs+r6wIfAfp4bKf/vA1F0TYcYH04Cc+tXFCe1zLYISVTPuorngCZ+1mYshROOnwPcyY0QyJS18H7gTCwXU05rFnvYgHAyUXmwZfrdE9zf1kc2O1ZrqBAwZlx/g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR02MB3893.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(396003)(346002)(136003)(366004)(376002)(7696005)(76116006)(5660300002)(8936002)(66946007)(8676002)(478600001)(966005)(4326008)(53546011)(33656002)(9686003)(55016002)(2906002)(186003)(71200400001)(26005)(6506007)(86362001)(66556008)(64756008)(54906003)(110136005)(316002)(66446008)(66476007)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: d+cQg6xJKAvFCBsXpbMis+iF87ywYtuo0UtAOPinw2RlkIEGO9ztdqKGyViuOK8Euaadt+e8mtt6X55P3DCgbJ6XAWAF5dr7uM70vXNepU85UK8SlK1Dfwr6jESdLIqusbuZGL/XPh8c1pNN+G1BjMUeu5FbXDp/iYe7HjSsGbUfrCU3mHiRUKbPmn8uGATe+7Nq6/Z47lcY0I3030EFxnFWRiS2hkZy/BjyMLQDWxLI4mQcvKIKLghEgqj97b3rDkwZeGt7FnJ5upcEKxaicFOv2uHSAYogA1O39LsiLXhlybafTUjvFR3/b6XDFvlSJgH7AD+OZxD05DgjGreaKSp20hhgh3Ci1rzIwZT+H6W6acP+DtWYWSwpxukDyMqGSEbB5t+zFdC61vnox8NM1+c3L9VY5cZO5I6Z+KQRyVLLngYyZP1nFnzqt+CIlOTthf7ERq7OzdDePTUbh8Oya6pY3KufbVFUYsx1BjcVL1z13HwDgHlfnk/ArHEEhaS0ZRR75LotSHWheEtnYf6n4qgNdWmB7E0cGT9XlUkbjhuCjf7JFX98U3iYQTfxudh8u3Rgih1Yu/Td0ZMM77TTJsSyFk9w/FmjsxYbIkJs6SWhvkKh9/01B3fC+pq36DBrD1h8/9yNgbI/agD/LTS8P1r3iHJ1gk1uP4H0JK3P0Qxqfg4fM+Lq9IQnhKJnb+5s3yWEtMATHdWo4DIYyKZcFEacIJoH8z+VPhsc7wvYIHI+mev0i1wRJMraDUbkNSWLsUILdOSqsIkZPvHSmW0jN+joJ6v6FLLQQwoR0JxnIaXf7gDoUwaHInoLJevdqX6S
x-ms-exchange-transport-forked: True
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BdxNUmiURyQwZ7M+AIS1uMCxrDaBuU6F1AReWkxCz+Ib0QvWj8BGpnCE6G7EeD3PyUWMrIEdvS5Disv9yruPXS3vpbmT46z+3fsFYYtvwxd5Pe+i8pvBC6FnJpCGR6qcoJVpBYbN7Swyobdpv55MMg3QdflhheYUTCxjMUTvFv4oZh8MjdG2pjn4QCvER8ppHowK/3yyQKqIG0YiYr/sUKrIJQO2YsRoJ5j1rbkErlSsOdv6QbjFXIri9ezUH/0X0f/MwZc6kJr8zWhqxG6g6XSM3KT5mSQhRMqffk3hmSdste+xbmKzu3OyZzAXDp6clFT/ViOc99eux4BqBWxXtQ==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KL5ykfOBeORsUB7XbgTQF9/k1M/Td3CCP+IGvjmcVKU=;
 b=lmURdGY4uhZT2RP7HZSihccShDpkotrQjqd9vLt0Y8IRsXKSLzwzHNlTXEZj2gk5A3dxvz3tVw7kOcaAadZjxPJ5qqLGZEJjZZomvXDLA8gmjLfPdu2izmqz7ZsEBiLVdYlXpzH88GhWhp+bRJuDUIY5plTUWsBpOhBUnK9YNfhEDgLtOmkf0+u9Enhwxt6ds0sUCP5kkG8x+ZoxesJz/G0x9+hjL+jrjXj02Xtje0/XXi+kf2t84L192JG90M3opug82Ex7yKxkcJFDsSdKC1M7xcvNA7twDwaFkPAT3fzuEhl3TulAwCLOc3k/VYWPF71UQvyvFPEnf3hUO7dOOQ==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qti.qualcomm.com; dmarc=pass action=none
 header.from=qti.qualcomm.com; dkim=pass header.d=qti.qualcomm.com; arc=none
dkim-signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualcomm.onmicrosoft.com; s=selector1-qualcomm-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KL5ykfOBeORsUB7XbgTQF9/k1M/Td3CCP+IGvjmcVKU=;
 b=ltBny9n22s5TwJ2zWFZUG5qe7/4/yG9ilerHIXsEzicNgei8oCXSOV2x63fwAETRyqV7wfBE/6Ev1n78kjDas7eNTNCCJ5fn6KJc1gPgM52jPk9OQ+t95f2XXGQTM8ojASAJjpfuxoBBpkJTqSVgttteGVxGfviXWDTb/Y9Jkas=
x-ms-exchange-crosstenant-network-message-id: 3ca985ec-cccb-488c-d019-08d7ecbd25e5
x-ms-exchange-crosstenant-originalarrivaltime: 30 Apr 2020 04:15:42.4586 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 98e9ba89-e1a1-4e38-9007-8bdabc25de1d
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: 3dAfJwWep2VQJjGEB8lpFTGuVhICQbXgb+CmVlR6iRi8j6d11TAcl1DvBEIGprdlq7tDs0RvD7OVWWATOIFkWH36grAfrHMjaP0gBSb8zrc=
x-ms-exchange-transport-crosstenantheadersstamped: DM5PR02MB2540
MIME-Version: 1.0
X-OriginatorOrg: qti.qualcomm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_211548_934531_B04AD09C 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [199.106.114.39 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 John Stultz <john.stultz@linaro.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Amit,
Seems del_server is being notified early due to qrtr-ns migration from userspace to kernel prior remote(modem + wifi) actually went down.
As per of del_server we are removing the MSA permission via SCM call, but remote(wifi user pd in modem Q6) is still accessing the region.

BR,
Govind

-----Original Message-----
From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Amit Pundir
Sent: Wednesday, April 29, 2020 9:51 PM
To: ath10k@lists.infradead.org
Cc: bjorn.andersson@linaro.org; John Stultz <john.stultz@linaro.org>; manivannan.sadhasivam@linaro.org
Subject: [EXT] Ath10k reboot regression with v5.7-rc1 on dragonboard 845c

Hi,

I see a reboot regression with v5.7-rc1 on Dragonboard 845c
(wcn3990/ath10k_snoc) running AOSP. "reboot" or "reboot bootloader"
commands do not work as expected when the board is connected to WiFi AP. I see "ath10k_snoc 18800000.wifi: firmware crashed"... dump in dmesg and board reboots into usb debug/crash mode. I do not see this reboot regression when the board is not connected to WiFi.

It started with qrtr-ns migration from userspace to kernel which landed in v5.7-rc1. I didn't run into this reboot issue when I was running qrtr-ns userspace tool. According to Mani, in-kernel qrtr-ns just live long enough to catch modem shutdown requests and advertise it to the modem, unlike the userspace tool. Which seem to be the case here. I further narrowed it down to ath10k_qmi_remove_msa_permission()
call in ath10k shutdown path. If I comment out that function call then the reboot command works as expected.

Any thoughts as to what might be going wrong? I do not understand qrtr/ath10k/qmi to see how msa permissions are getting mapped-unmapped here. I'd be happy to help debug things.

Regards,
Amit Pundir

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
