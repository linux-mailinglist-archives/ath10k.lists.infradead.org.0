Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC96CC912
	for <lists+ath10k@lfdr.de>; Sat,  5 Oct 2019 11:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ESybIKpsG5Yfh6xAgKWv16UIELXVbtv5dIIToHexoHc=; b=Yobpca5mFrsXV+
	YYNT7vpcOirZfwPQg6KYt6NaNGMdHlYJRZ4pQ23wPEXUQMPflBW1pUQhp890vjazmrh2Vbx4j086Y
	n5vFHihVgKLf3MLFmP5Cp889TbVbqh/iBN6K5igi5JDHXqHbanbSkSFj3nolxKD2XPyv2DWtDxlWX
	jWT5Me6xrVoZ52XvEX4A2EPt2mQOaNjRlKOlOW0tsksGPpZcz2pgsDa1efCAMIA7cbV6oIRvdC1do
	zKhL4+NSbhXH775Ryw4FWUwBKASNlFA8JPxIZba8VSVTbqIvjDRkZQqJ1dB9VxywsuW9NR82EhmtZ
	EJ80p3WnLflR5S4Cem9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGgFG-0007V7-2q; Sat, 05 Oct 2019 09:20:58 +0000
Received: from mail-oln040092012082.outbound.protection.outlook.com
 ([40.92.12.82] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGgFB-0007R6-TS
 for ath10k@lists.infradead.org; Sat, 05 Oct 2019 09:20:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PrYhp2duOJk2TWnODfNeBcJj13XuD4DYrA5byBjNPGq9zo+EgPrQCPww06L5PXcKsBfWhSxSyvqATA/ZIazoC6x/n7IGVG0ov/Vi0nP3xl3x8F/x5grfygxYpE6PQsS26XgNaT9WSeGcHbE3tA4WyO6XrVS76M64AL4S4BHDBMjVc/q0EKm7CBEDygd2Xz8+P1JqeALE3AcJl/t8tA5QxciDAyaQBnZDtIMUNQS+0rb9IWRmhatB8f8qiIRVxA4cKXvMKC3kanaL4Da7R2nENFPtPNlpybdsYLIE5PVaG3VComD0/HG6wSUrnM3alBfPH7+pOc/xWUYzo27CRItMqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rduj5jumBqh9H3un+sRs+yJ66GREsJdg9Cz6AM4ot9c=;
 b=io/tViS2AnMMgen0/+njB+Cuc/B3T0n1fbuyEE5MeN1HAlC8+JBlTeN8VSWy/2dW7U/bT7ywvkejK1QMJGO86GbBgmT/aMUrHO0gZ7HDcI/hBnooZCpD3+VgpkZhoY9KprNk/DewB1mOX1FHsP3Dw3konO9+ferDAELvyjfYgCzfAdWWm+MsDc59+UG2AC/frrKB6luXQrxPITCa+GUMAo/yJUQlDAaUNx5j6HXIZjrgOfWqXjomnwdWo4TDKR9Kheuk+iAsF7lXotqOLTM5klDkzzKa5CG2REH3+Wez5Z3e3NSnBDL2g6RAFMRlMmYFTjRCmsWKfkzRWLFZnCjOqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rduj5jumBqh9H3un+sRs+yJ66GREsJdg9Cz6AM4ot9c=;
 b=i9pdK7Tjyoe/xHY34e/TnnN8IdR6BzDTB9bLw3OFcjtrC/4RcHqblC4U75WeCfrjEWKrvtpII2uCKIjq7h1fCW1AteLJN/EeguyDx8KSxo/E2hfQr55CNv+mTGUK5fdxaZekVTL7DzLirkFE2d6Bxr1bZfp0J8Xwbmim6WwHqRJhRrUUCZ+w/OgCEo8lNXsskwim3hLYbwM4chXpjuZMegUA9hHTxP/NR8LEVf+ZiuvcYnUxCwfEqZ+n1qdMiKVt4F0neMLJVjMYnij4Vq0wzFzGF5R2faI26uRGL61g4MSruQFjPYKacBIls62ZxNYVRzrEEV0dE93pqIfDuGGxqQ==
Received: from DM3NAM05FT036.eop-nam05.prod.protection.outlook.com
 (10.152.98.58) by DM3NAM05HT165.eop-nam05.prod.protection.outlook.com
 (10.152.99.96) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.7; Sat, 5 Oct
 2019 09:20:50 +0000
Received: from MWHPR0701MB3724.namprd07.prod.outlook.com (10.152.98.56) by
 DM3NAM05FT036.mail.protection.outlook.com (10.152.98.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.8 via Frontend Transport; Sat, 5 Oct 2019 09:20:50 +0000
Received: from MWHPR0701MB3724.namprd07.prod.outlook.com
 ([fe80::84c5:d116:bb89:9aad]) by MWHPR0701MB3724.namprd07.prod.outlook.com
 ([fe80::84c5:d116:bb89:9aad%6]) with mapi id 15.20.2305.023; Sat, 5 Oct 2019
 09:20:50 +0000
From: Craig Stadler <cstadler18@hotmail.com>
To: "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Subject: Podcast topic suggestion/tip
Thread-Topic: Podcast topic suggestion/tip
Thread-Index: AQHVe14tOJF3o7TXnEi7oOPO2MKqwg==
Date: Sat, 5 Oct 2019 09:20:50 +0000
Message-ID: <MWHPR0701MB37246C2224C764115E655974DC990@MWHPR0701MB3724.namprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: CH2PR17CA0001.namprd17.prod.outlook.com
 (2603:10b6:610:53::11) To MWHPR0701MB3724.namprd07.prod.outlook.com
 (2603:10b6:301:7e::29)
x-incomingtopheadermarker: OriginalChecksum:4804131FF5CF11555DB10A5DC2CFA5A29BCFD84111A221F6344716BA359F1C78;
 UpperCasedChecksum:3760ED5EEA611C080FDA90AD6E8F8E3FF4B2551CE048A088F163F138087DAA8B;
 SizeAsReceived:7340; Count:48
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [IRZ7bQ0GCd0g4XEz2q66yqa0Ap+QdhFG]
x-microsoft-original-message-id: <7e9d886846f1e2f98668cbfae37c8988@DESKTOP-C39SCAG>
x-ms-publictraffictype: Email
x-incomingheadercount: 48
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: DM3NAM05HT165:
x-ms-exchange-purlcount: 3
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dGE3LdWrgTqDMsa+yATG6FvrtHMYtamz8+s6Her2vrikNIir1dLgQ8eIlDGCuEdsCZQm7lqoqjaDKKEfNGMx2slk1cVht9FNBjkD+Ku+u1HMMSwAaJqFtWPtPGJ5V2YB5FQ0nXZ910GimSkz0Q392XyNjhjtMGha8iwdhmQKMeyGCIcSGmoHL8SUVu1MWsK+ZHppBADDe2rxcMdXac8D/7MNq5BYa8iomjl0xDain7k=
x-ms-exchange-transport-forked: True
Content-ID: <8FF8CA55C1BF29489AA6712997A39111@namprd07.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fdaa41e-036b-4dbf-2239-08d74975501f
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2019 09:20:50.6290 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3NAM05HT165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_022054_038491_A8330135 
X-CRM114-Status: UNSURE (   3.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.12.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.92.12.82 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (cstadler18[at]hotmail.com)
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cstadler18[at]hotmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Greetings, please consider these resources for discussion as they relate to online privacy concerns.

Suggested Resources :
https://axcessnews.com/business/tech/online-video-search-and-other-tools-that-maintain-your-privacy_9142/
http://collegian.csufresno.edu/2019/05/01/how-do-you-find-videos-outside-of-youtube/
https://alltopstartups.com/2019/04/29/meet-petey-vid-a-coder-and-his-cat-take-on-video-search/

Thank you,
Craig


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
