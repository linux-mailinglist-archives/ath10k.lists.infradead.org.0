Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FFA65762
	for <lists+ath10k@lfdr.de>; Thu, 11 Jul 2019 14:55:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLYtUo7PegXAT1FnqhbJc4Qqn6oM9naYZx9GbtQKE/U=; b=hDbwJlyd9up5e7
	j0mYpJ6i8nlSG12s8bCAnzbZXMugrEWQIFx+e21jZ4BG6IKt58wvItu2U8d9db/cOrY9HFWxrsXkh
	fGSNz+Pu7gNRZESryODtohCe7nMshf3TfptOA1AkUbNnihGbJlUqHyjCErOp4KM1Kwa62U+9Opkgs
	9NbPrMl+/8SFtAR2zema0HA6tYkEEQj4DZp7I/V7kt2+Zp7dWkNUNo9NmcahZcphvHHkBXkym/I5Z
	01iEFtf4g4f8ygoOvyyn6Bq6R86bbajMwHIKqhwkTzVfxwgKDncABHNpscvQs8pRx+tckBdJNCUfZ
	om3bh6YETvCxoJUTu56A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYbd-0000gh-UJ; Thu, 11 Jul 2019 12:55:25 +0000
Received: from mx0b-00183b01.pphosted.com ([67.231.157.42]
 helo=mx0a-00183b01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYbO-0008I3-1G
 for ath10k@lists.infradead.org; Thu, 11 Jul 2019 12:55:12 +0000
Received: from pps.filterd (m0048104.ppops.net [127.0.0.1])
 by mx0b-00183b01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6BCqZYt008240; Thu, 11 Jul 2019 06:55:05 -0600
Received: from nam03-by2-obe.outbound.protection.outlook.com
 (mail-by2nam03lp2056.outbound.protection.outlook.com [104.47.42.56])
 by mx0b-00183b01.pphosted.com with ESMTP id 2tnxk30vnf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 11 Jul 2019 06:55:05 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GImgMg5qkeZx6+pUQm3rLjEt1a3ExO58Rce0YFmNdqV/U3X4l+GsWki8pVy9H27WAHP8xB2id3guYZQ3wa0DpPPhP9CWBlQLmg+TyNuPN0zWT1QRQ18Dob45cI8sMoBEYO2tkf++2B6lgRlmihGCC34pXSgviq7MIc9re6zQUlmr1MlY5i3b1A3eN1DsJpafh4MZU1zCbjauM2Fabgq6sJXYmuxWNTSOcVAfQck+xhxQPW2cwxAQqYQc68THK+cbFkNFNU57fMpFBcO5BxwbIPsZFmX/GsCrrHDdWNkN8GRE4+lOEuCS/RjMO38G9nx9oi8Nau63NH3rW/Fmls3V+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F95ylwJbTc+FmO+HI4xSEopLm/KBYGzwjZW5lB9o4+U=;
 b=jH0+67RXVTX/DBlzizokBPDRY5nIdlfL6vGPViFYTvnlClgfCTLK0mI50InxTv6F9M0GgXZjosqDpmbqoYi/H9CQGz7xCXcRSaSbWasyh9ePE1CK9JgqzYc0KHBTsLt47kQmnFgNDBny2xLtu1fQFi9OdF3ZfuYVESEX4LmQiccHfcIOVsugZ5V7pUa+3UouC0v93fWxkyKWz03U6bAun+SRTvCmL7rHb0o1F5pXlZDd1Jn/tAPSfNPahhH8JYXPvEeyTAcYYHw7/tLYDLMQMYHqoPfe4QEQ3byMFTM7Pxa/kVj5Tsp4ShPCMETxCatMbzuIpPFk+SF2RcwIONJgew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=quantenna.com;dmarc=pass action=none
 header.from=quantenna.com;dkim=pass header.d=quantenna.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quantenna.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F95ylwJbTc+FmO+HI4xSEopLm/KBYGzwjZW5lB9o4+U=;
 b=V44bUxq1au7cT2s2yPiIvIzpaD4Cjpvs7mU/Xl20+PpuIA4coeOnk40g/j5QUMp9vMyUIa7Gjhg+JmzE5/D0+7jXiUkncW9G1l6DPyxX8Q+UvWHwnoErvMy5vj+H9MWd7oq1tC2B6W+z3rKK6PS/pT4+E0kCoRsdwDGn5C9El8g=
Received: from SN6PR05MB4174.namprd05.prod.outlook.com (52.135.67.141) by
 SN6PR05MB5790.namprd05.prod.outlook.com (20.178.7.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.7; Thu, 11 Jul 2019 12:55:03 +0000
Received: from SN6PR05MB4174.namprd05.prod.outlook.com
 ([fe80::68da:521d:d75c:5dad]) by SN6PR05MB4174.namprd05.prod.outlook.com
 ([fe80::68da:521d:d75c:5dad%7]) with mapi id 15.20.2073.008; Thu, 11 Jul 2019
 12:55:03 +0000
Received: from SN6PR05MB4928.namprd05.prod.outlook.com (52.135.117.74) by
 SN6PR05MB5647.namprd05.prod.outlook.com (52.135.111.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.10; Thu, 11 Jul 2019 12:54:49 +0000
Received: from SN6PR05MB4928.namprd05.prod.outlook.com
 ([fe80::13f:5819:79e7:ea8f]) by SN6PR05MB4928.namprd05.prod.outlook.com
 ([fe80::13f:5819:79e7:ea8f%5]) with mapi id 15.20.2073.008; Thu, 11 Jul 2019
 12:54:49 +0000
From: Sergey Matyukevich <sergey.matyukevich.os@quantenna.com>
To: Tamizh chelvam <tamizhr@codeaurora.org>
Subject: Re: [PATCHv6 5/9] nl80211: Add netlink attribute to configure TID
 specific tx rate
Thread-Topic: [PATCHv6 5/9] nl80211: Add netlink attribute to configure TID
 specific tx rate
Thread-Index: AQHVJaGs5+plNin5xE2WE4mORkW386bFhFqA
Date: Thu, 11 Jul 2019 12:54:48 +0000
Message-ID: <20190711125442.unlaqjl5nnqgsbod@bars>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-6-git-send-email-tamizhr@codeaurora.org>
In-Reply-To: <1560835632-17405-6-git-send-email-tamizhr@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR08CA0056.namprd08.prod.outlook.com
 (2603:10b6:a03:117::33) To SN6PR05MB4928.namprd05.prod.outlook.com
 (2603:10b6:805:9d::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [195.182.157.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 38eeecce-f6b0-4bb6-86d3-08d705fef50f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR05MB5647; 
x-ms-traffictypediagnostic: SN6PR05MB5647:|SN6PR05MB5790:
x-microsoft-antispam-prvs: <SN6PR05MB56478C25D2E8B9993B9A1694A3F30@SN6PR05MB5647.namprd05.prod.outlook.com>
x-moderation-data: 7/11/2019 12:55:02 PM
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0095BCF226
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(346002)(366004)(39830400003)(396003)(376002)(136003)(189003)(199004)(436003)(81166006)(81156014)(26005)(102836004)(7736002)(2906002)(5660300002)(25786009)(8676002)(54906003)(1076003)(305945005)(186003)(6916009)(9686003)(316002)(66446008)(64756008)(6512007)(66556008)(256004)(66946007)(66476007)(6246003)(53936002)(8936002)(71200400001)(71190400001)(4326008)(6486002)(6436002)(33716001)(229853002)(99286004)(6116002)(3846002)(386003)(6506007)(86362001)(52116002)(76176011)(478600001)(486006)(476003)(11346002)(66066001)(14454004)(68736007)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR05MB5790;
 H:SN6PR05MB4174.namprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: quantenna.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0wNR0BIQWsmekyo/uvWPnQR4REYZuIVyOf0uWSiIPb4NBCsUjWuuPmGheC/xwUFqCm5s/eUZ+9zho9IyUFvwwJtYYQmpqBDiIXHggSelfHTy5HzwjJZSSI2b8gfdUFqIu22pXa7ltemixdQHbNY8LgOo6WKyrET+7dxAokauCsegpDXM109vM3W+Y+h2J8gkO/GS5NhScgD/MVuo2/neAwFoCUCjS7Oy/1YMLXOZ9sUvXsip0rqTzclc1KJ601MAWmJTFNDDlHY9gQzUgb1iX15OFOPnIpZWXtD7bBZPBr/lHrQ6sAx5RU2LxSRSuF8yAM9UqeFq5O9IRwhhQ4X1Xtuzc6xo06D3o8CiVd6Ytioa3R0G/eH0BczQ5RtHgndqPVzs8ww12BcvXYeQFm/+vGtQw9auJ/McSVxhS0Ml0ak=
Content-ID: <1C243749BB147E41A5268EBD4E997466@namprd05.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: quantenna.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38eeecce-f6b0-4bb6-86d3-08d705fef50f
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a355dbce-62b4-4789-9446-c1d5582180ff
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SPO_Arbitration_9454465f-4b3d-47c4-906a-0e3cbbb71a30@quantenna.onmicrosoft.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2019 12:55:03.6490 (UTC)
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR05MB5790
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-11_02:, , signatures=0
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_055510_483352_389DDE30 
X-CRM114-Status: GOOD (  10.56  )
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

> Introduce NL80211_TID_ATTR_CONFIG_TX_RATES in nl80211_tid_attr_config
> to accept data TID specific TX bitrate configuration
> through NL80211_CMD_SET_TID_CONFIG command. TID for which the
> this configuration is to be applied is passed in
> NL80211_TID_ATTR_CONFIG_TID attribute. TX bitrate mask values passed
> in NL80211_ATTR_TX_RATES attribute and NL80211_TID_ATTR_CONFIG_TX_RATES
> attribute will have types of the TX rate should be applied.
> When the user-space wants this configuration peer specific
> rather than being applied for all the connected stations,
> MAC address of the peer can be passed in NL80211_ATTR_MAC attribute.
> 
> Driver supporting this feature should advertise
> NL80211_EXT_FEATURE_PER_TID_TX_BITRATE_MASK and supporting per-STA data TID
> TX bitrate configuration should advertise
> NL80211_EXT_FEATURE_PER_STA_TX_BITRATE_MASK.
> 
> Signed-off-by: Tamizh chelvam <tamizhr@codeaurora.org>

...

>         if (info->attrs[NL80211_ATTR_TX_RATES]) {
> -               err = nl80211_parse_tx_bitrate_mask(info, &params.beacon_rate);
> +               err = nl80211_parse_tx_bitrate_mask(info, info->attrs,
> +                                                   NL80211_ATTR_TX_RATES,
> +                                                   &params.beacon_rate);
>                 if (err)
>                         return err;
> 

Could you please clarify this change of nl80211_parse_tx_bitrate_mask arguments.
Unless I missing something, the appropriate change for nl80211_parse_tx_bitrate_mask
is not included into this patch set.

Regards,
Sergey

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
