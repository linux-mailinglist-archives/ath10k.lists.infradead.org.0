Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B008657BF
	for <lists+ath10k@lfdr.de>; Thu, 11 Jul 2019 15:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14iHfP8BYmAdhsy+/L+cZK4w9HhfAODpaMvpAI9PrMA=; b=LnjnC+Savw7P/S
	Xq0iRbt5DInVOOaFOWidODQagKi1KkhmCESH9oZB0Uo6ek33JtWayl5nJyTBAqRZdH0s+YzQw7hCD
	sG+escn6gL2qUtq8TENoz9Hzla462rBJCmJ5DmOzzL5f6BOe1j5wD+6c9SjhH6HrZh/bEOH5Wbs6P
	va0SCwk+Nnc+FRKTMv/x0j38fM5FOOXQXj6h3beB9zIrtGRDnri1IdfdJS3V9GenDG0sY/slz7iF+
	nX+9qRwVKK0+CEjop3dApjJ0zFYm/p0dhjcRApVu0Hu+bKEtsvRW8mqIl8kVFixZMMGTr7RYDtpS1
	0vdIgywe9olTY0/76sEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYte-0006VE-3O; Thu, 11 Jul 2019 13:14:02 +0000
Received: from mx0b-00183b01.pphosted.com ([67.231.157.42]
 helo=mx0a-00183b01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYta-0006UZ-3w
 for ath10k@lists.infradead.org; Thu, 11 Jul 2019 13:14:00 +0000
Received: from pps.filterd (m0048104.ppops.net [127.0.0.1])
 by mx0b-00183b01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6BD8KCK020504; Thu, 11 Jul 2019 07:13:55 -0600
Received: from nam01-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam01lp2058.outbound.protection.outlook.com [104.47.33.58])
 by mx0b-00183b01.pphosted.com with ESMTP id 2tnxk30x4x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 11 Jul 2019 07:13:55 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F08GH0IbXtG7nqF0rySiopDHZv6DNgHQxxhuiIVnIDBsB7CvF5TKtv56251H2C8gVxKTB71e9OMAReOoPuj2MjrLvI3SCT4yRnDAOsl2cB9PmwtqcoM7b/00gfcPT0ts1y6YEcLICqwCde+E1u7h18Ict2ZkgvZaKcXac+J46AjHsUABftawTwKFZOSUIC5S1TSNKnAZJd1RaYlcD2bbui5+Qc7heMzH+WGhe5jNt1UThthF5HOKDKkha0em7Lhy5x0RJIsyPoX99pPtduA/gM4A/vg5KkavVd6ZlS3eV4KKyzmyBauuJMAcYpEFuLkBPl55p2IKNVF5ngfRBtRAYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RbEOMLnZ7nRPuDNmMbghi0PFE5FZoOPs6WUOqLyFnSw=;
 b=CtfGFBEAxKcLIgo56mcNHTm2VC+E7esugYPC0j3i1MhV2GZmTTsA+zu87ShK/uWSnqkfiss9gVa0iIoyfNAwClVKFapDJNEffqChUvR+vMI1eydq2n5kfysCj1NQC6ubccv3J8pRF6/AtyC/iDAaRnXfkH11V9bddfVMCueo7REyJ9xyA7+BTIt2eDi21l2xaRuVVxe2Zv6x/1rEGGjYHGeRNTnyIxCYPdyYaMYU5QhQuQkYmo2EjuJqm8uX3l4l33KyZNY0DRri/XnEgioTohq+65UtaFP5MFq9t7syxFLtdYPH7A5sNsMDOR66v7CAtyDbRmnlaQVxt4cMa2lUYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=quantenna.com;dmarc=pass action=none
 header.from=quantenna.com;dkim=pass header.d=quantenna.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quantenna.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RbEOMLnZ7nRPuDNmMbghi0PFE5FZoOPs6WUOqLyFnSw=;
 b=mMOJ4lNlCGLC+6AANmqudzd9pwiuk2FfqPUQRfOHnO1LIaVDE6QtyHH54wx9RSvRXKL93zUg8TPJuVYB/K4QNNSdUzunuL45dwA9sSFecYlBMOyAWfl0ESUQmPxWctDShJI5A5vryk4xDeTywK1KW1bkcxGus7x/VJwN5Tztw9s=
Received: from BL0PR05MB4881.namprd05.prod.outlook.com (52.132.15.79) by
 BL0PR05MB4609.namprd05.prod.outlook.com (20.177.144.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Thu, 11 Jul 2019 13:13:53 +0000
Received: from BL0PR05MB4881.namprd05.prod.outlook.com
 ([fe80::f8f9:db88:4a0e:31eb]) by BL0PR05MB4881.namprd05.prod.outlook.com
 ([fe80::f8f9:db88:4a0e:31eb%7]) with mapi id 15.20.2073.008; Thu, 11 Jul 2019
 13:13:53 +0000
Received: from SN6PR05MB4928.namprd05.prod.outlook.com (52.135.117.74) by
 SN6PR05MB4366.namprd05.prod.outlook.com (52.135.74.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Thu, 11 Jul 2019 13:13:37 +0000
Received: from SN6PR05MB4928.namprd05.prod.outlook.com
 ([fe80::13f:5819:79e7:ea8f]) by SN6PR05MB4928.namprd05.prod.outlook.com
 ([fe80::13f:5819:79e7:ea8f%5]) with mapi id 15.20.2073.008; Thu, 11 Jul 2019
 13:13:37 +0000
From: Sergey Matyukevich <sergey.matyukevich.os@quantenna.com>
To: Tamizh chelvam <tamizhr@codeaurora.org>
Subject: Re: [PATCHv6 1/9] nl80211: New netlink command for TID specific
 configuration
Thread-Topic: [PATCHv6 1/9] nl80211: New netlink command for TID specific
 configuration
Thread-Index: AQHVJaGvTjP0r5cPcEi6bnoTD8w66KbFiZwA
Date: Thu, 11 Jul 2019 13:13:37 +0000
Message-ID: <20190711131331.gyjvsbxipgfk5cmn@bars>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-2-git-send-email-tamizhr@codeaurora.org>
In-Reply-To: <1560835632-17405-2-git-send-email-tamizhr@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BY5PR16CA0030.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::43) To SN6PR05MB4928.namprd05.prod.outlook.com
 (2603:10b6:805:9d::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [195.182.157.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba8af0bc-d2f3-4cb4-5724-08d70601959a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR05MB4366; 
x-ms-traffictypediagnostic: SN6PR05MB4366:|BL0PR05MB4609:
x-microsoft-antispam-prvs: <SN6PR05MB43666CA0126B425E56632218A3F30@SN6PR05MB4366.namprd05.prod.outlook.com>
x-moderation-data: 7/11/2019 1:13:51 PM
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(376002)(39850400004)(366004)(346002)(396003)(136003)(189003)(199004)(316002)(386003)(54906003)(26005)(6506007)(8676002)(102836004)(8936002)(25786009)(186003)(7736002)(81156014)(81166006)(9686003)(229853002)(99286004)(2906002)(3846002)(6116002)(6512007)(436003)(305945005)(66476007)(53936002)(86362001)(52116002)(14444005)(6436002)(6486002)(66066001)(1076003)(6246003)(4326008)(71200400001)(446003)(66946007)(11346002)(66446008)(68736007)(71190400001)(486006)(33716001)(478600001)(5660300002)(66556008)(14454004)(6916009)(476003)(256004)(76176011)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR05MB4609;
 H:BL0PR05MB4881.namprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: quantenna.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: C4hoAyUviwlVgcZiEnsKFZTOSorFvq4+l0f4byaurQpqzOviGKUwooPutj4dXZiHUI9gL2QmOC0ckOtQLomA+jlwdoMOWXlKjbDR5aktB3g05hMtnt9FXknbg2IEuJzy1tfn3oVr1HtMDQi6IeoMxxkeBlH+JXc3zwifc/524nrPg6o5txD4YqrRpQaX2eDSsZYr45Zymj42+EL3AlhieBe1rRfAjr+dO0qQZ6UMoR803l356TN8iq0XUFc4NgkY95dYNdDphZ6B2XBuEVc72UOukakCIKy39Lz4601/ELOYXjceNNvn3sPh0an29djKMChU+MpfL8FOllkn687fRyrkVqN1uOPmq7ife/AVG6t+MUp9lYuq4bKLzJhCZ6jmh87P7vr0wHENWnK+XyZ6f2bg4QKIyXtbf9zGAyJmIoo=
Content-ID: <50EC6CBCF34F09408055F389348E0D87@namprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: quantenna.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba8af0bc-d2f3-4cb4-5724-08d70601959a
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a355dbce-62b4-4789-9446-c1d5582180ff
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SPO_Arbitration_8ec941cc-8ea6-4554-b708-3d99ebe980b5@quantenna.onmicrosoft.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 13:13:53.1757 (UTC)
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR05MB4609
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-11_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907110150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_061358_282750_85973644 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.157.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "johannes@sipsolutions.net" <johannes@sipsolutions.net>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> Add a new NL command, NL80211_CMD_SET_TID_CONFIG to support
> data TID specific configuration. This per TID configurations
> are passed in NL80211_ATTR_TID_CONFIG which is a nested
> attribute. This patch adds support to configure per TID
> noack policy through NL80211_TID_ATTR_CONFIG_NOACK attribute.
> Data TID value for this configuration will be passed through
> NL80211_TID_ATTR_CONFIG_TID attribute. When the user-space wants
> this configuration peer specific rather than being applied for
> all the connected stations, MAC address of the peer can be passed
> in NL80211_ATTR_MAC attribute. This patch introduced
> enum ieee80211_tid_conf_mask to notify the driver that which
> configuration modified.
> Driver supporting data TID specific noack policy configuration
> should be advertise through NL80211_EXT_FEATURE_PER_TID_NOACK_CONFIG
> and supporting per STA data TID noack policy configuration
> should be advertise through NL80211_EXT_FEATURE_PER_STA_NOACK_CONFIG
> 
> Signed-off-by: Tamizh chelvam <tamizhr@codeaurora.org>

...

> diff --git a/net/wireless/nl80211.c b/net/wireless/nl80211.c
> index ff760ba..4881bfb6 100644
> --- a/net/wireless/nl80211.c
> +++ b/net/wireless/nl80211.c
> @@ -281,6 +281,13 @@ static int validate_ie_attr(const struct nlattr *attr,
>                 NLA_POLICY_NESTED_ARRAY(nl80211_psmr_peer_attr_policy),
>  };
> 
> +static const struct nla_policy
> +nl80211_tid_attr_config_policy[NL80211_TID_ATTR_CONFIG_MAX + 1] = {
> +       [NL80211_TID_ATTR_CONFIG_TID] = { .type = NLA_U8 },
> +       [NL80211_TID_ATTR_CONFIG_NOACK] =
> +                       NLA_POLICY_MAX(NLA_U8, NL80211_TID_CONFIG_DISABLE),
> +};
> +

IIUC, in the current version of the patch set no specific value of
NL80211_TID_ATTR_CONFIG_TID attribute is reserved for 'apply to all tids'
command. It could be left up to drivers. But we need some convention for
userspace tools (e.g. iw) anyway.

Regards,
Sergey

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
