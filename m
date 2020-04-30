Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5121BF0A1
	for <lists+ath10k@lfdr.de>; Thu, 30 Apr 2020 08:56:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVW/22Ycs9FTUTpAMTPPv5F7wlqINvgzA/UONqKemyY=; b=JcEwnDRcUr8xsf
	+IF+XXlK6JjRHQtoSLqXQVnenoMRpjrUbm/HcADEKk9N0lQ3lmyUjeMvSYUMIrXIvVmdUwQi+iJcH
	UQtlAPJHp3PfotlFUgJe7kHe6X/ompXGEENE8/EFsdVZeEdOjKVicca/n59m2wiPpzUaUHY0HnfXY
	VB2939QOG1sBw8sr2AqEGd6vjbaPJt1RDWZAqJdCJY9jyqySbFOhhrGCsPKEnvSyYLXnrQ6Jp1z7D
	olCVJJ1mATPhW5TgtDTrOEyjRhsfOc0o50LFQqsVYihtuAksRF1ZmV6zoRGAbcMy/HRyfN938zW2n
	vtpzlP8dRt2/0lMIem8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU37e-0001vS-7p; Thu, 30 Apr 2020 06:56:38 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU37Z-0001v4-WD
 for ath10k@lists.infradead.org; Thu, 30 Apr 2020 06:56:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1588229794; x=1619765794;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=j9ayCX3P5syV02J/UaV8PNK6Oa6S8x12wgWWg8AXKCA=;
 b=H2DLdHnw+G4RSpgFYIlbVjX2kdKgrmK2kW2XctrcF7jw9a9GvhYyOsVD
 dN6EZPXKk+rJuwiiZdqPN3VzH4TKgz95CkiEJVWf+H8j4/qLA4TsHDo0g
 g0qTC9dAHSieVD8vdItL0FNDUy3KKDZGzQqyeffzZU3JKhQGO+ipnsLRz s=;
Subject: RE: Ath10k reboot regression with v5.7-rc1 on dragonboard 845c
Thread-Topic: Ath10k reboot regression with v5.7-rc1 on dragonboard 845c
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 29 Apr 2020 23:56:31 -0700
Received: from nasanexm03a.na.qualcomm.com ([10.85.0.103])
 by ironmsg02-sd.qualcomm.com with ESMTP/TLS/AES256-SHA;
 29 Apr 2020 23:56:31 -0700
Received: from eusanexr01f.eu.qualcomm.com (10.85.0.101) by
 nasanexm03a.na.qualcomm.com (10.85.0.103) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 29 Apr 2020 23:56:30 -0700
Received: from nasanexm03h.na.qualcomm.com (10.85.0.50) by
 eusanexr01f.eu.qualcomm.com (10.85.0.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 29 Apr 2020 23:56:28 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (199.106.107.6)
 by nasanexm03h.na.qualcomm.com (10.85.0.50) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Wed, 29 Apr 2020 23:56:28 -0700
Received: from SN6PR02MB4622.namprd02.prod.outlook.com (2603:10b6:805:b2::32)
 by SN6PR02MB4158.namprd02.prod.outlook.com (2603:10b6:805:2c::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Thu, 30 Apr
 2020 06:56:26 +0000
Received: from SN6PR02MB4622.namprd02.prod.outlook.com
 ([fe80::4042:4e18:473e:3a1d]) by SN6PR02MB4622.namprd02.prod.outlook.com
 ([fe80::4042:4e18:473e:3a1d%4]) with mapi id 15.20.2958.020; Thu, 30 Apr 2020
 06:56:26 +0000
From: Rakesh Pillai <pillair@qti.qualcomm.com>
To: "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Govind Singh <govinds@qti.qualcomm.com>
Thread-Index: AQHWHqYUNwrOUST4QUiv3mC9t6vfoaiRJigAgAAUzgA=
Date: Thu, 30 Apr 2020 06:56:26 +0000
Message-ID: <SN6PR02MB462255CF0672F6BC80DB266A91AA0@SN6PR02MB4622.namprd02.prod.outlook.com>
References: <CAMi1Hd1ReJnYsw3Rg6ECGM-7zzciRqJvJGUm3tuYtHhmGipnZA@mail.gmail.com>
 <DM5PR02MB38935D19B8733C543FDC8BA09CAA0@DM5PR02MB3893.namprd02.prod.outlook.com>
 <20200430053934.GA9449@Mani-XPS-13-9360>
In-Reply-To: <20200430053934.GA9449@Mani-XPS-13-9360>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none
 header.from=qti.qualcomm.com;
x-originating-ip: [183.83.68.41]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58d1f36c-64f4-45c2-7aa2-08d7ecd39a11
x-ms-traffictypediagnostic: SN6PR02MB4158:
x-ld-processed: 98e9ba89-e1a1-4e38-9007-8bdabc25de1d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR02MB4158F8A325E957386E70233791AA0@SN6PR02MB4158.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0389EDA07F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KvxII/WCPRhqzOfBsq4mXEQgfJBVbIRRuLyjF7+01ELR07RcrBhqn5U1qK1HoNzEh8E2+1G7dK1VL1ojM48bDTTV22y3K8t3IS+5eMRnLdtx/PdCxhvl4rlgBUx6oa8ga1Z3TY0DU6OqZcJBovQ0q1kGBwh8Sv2TUxU8mt7iwEPOojwoijAJNAxlQy57Fr8sa5r5wHYIzSMskkULrtrxs2zW5uiQara4xTm5MzwLOeRj5b92/AkRP75urANND6OzCIgK4Dcpjb8dXcpS32dIJEvFOh+Cjxy0SVu7GytniGbD7a/vuZmXnIBQVUHdjOEwAXD/1D39ZxdT5VwMbpuy6Tj2dUkARbYmtLmJRQlg2FBEaMyIh76dn/pVejmZcd5VmZtQb44z3FulPQvMYfLzBeMNp+63BYErSsjjyaSci0pl8pQ65pW+SrRSe3HqQtqVSHqeTolzT3AYF/quMJ78cmZISAt0p1OgkGzs3zYsvvz5+Rr0XNjno0oYKUGBuF32cy0SSlRGeslphLBSuY2JWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR02MB4622.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(366004)(39860400002)(376002)(136003)(346002)(6506007)(5660300002)(9686003)(33656002)(52536014)(4326008)(6636002)(55016002)(53546011)(966005)(8936002)(26005)(478600001)(316002)(8676002)(76116006)(66446008)(54906003)(66476007)(71200400001)(64756008)(7696005)(186003)(66946007)(66556008)(110136005)(86362001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: J4+VSjEeJqFEFlOVb4XbLg0N50dqfQIF/6cPswsBfKwez8IUIGa3tA8AkomZDHQqX/GRqwQsgH4yRISlg6ajFnkdj5SjfFV72CdvALiqcfHc1pjD3TMn/mv75xoiqly5F/pyUQdLF2h80tAwS4BZX7y03os0kaIVCaDRfpHKc4LEOc0b/RIDE7GdbCmqT53wSiZRFFSzaiTsBnJd4fdb9noNBjnMTbdkXJjdcyg8J45fCQZUS2GtnhZ6VwBnDwGoEr98d0VocrrA0G1LzC14krvLguhPzG0hSjjx2HPhiDFs0VXPRyyMwNJt0UTToOiHNy4AdN5QZTS+2cvlh2g2FBzmWeBPQnVj681ioBI3/cnS0TVVoxb0J7FNLLfvLe9dF7756aBk4Y0u3/d/uKsq+pt+8ME6Um12iZm57HF4QgTyvmK7jQYHulTiVWyk6m3mCrF82kFOYxdZj/pN9WMAB5miPm1mEXUo4AOx/qi0BATSmexD5z9wwiS5eov9zl3xv+ahSECQaaPs0RVEIPjTO5vA25M+bgnpC9ugthZIsu1N0el+G3cnWgeBsrWxBVdoYtHIg5I5FxWfiYJlA5H37DnHOHB3AuXSiA/uoU2m7Wv86YpUrehhfUWXy00T21Jc8gapcUp/AODgbJwrYYHu6r9VocYE01DDLe38FutTi7AaIjp+L32KnaKmLHhXIn1xuoAXHyN7agh5vSH/7Ph3PbE8sBE2fmX8NinflFB4096cPz/30JSkaxF4IbmitA8Uk6CzOJaplMdCFYFWoIDPPtEUhCi8777oYouuWHibL74=
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C3Vg9+f4QA6v+TKCwspQCodetxb28HtGBG3b5GGrRGa0eaNMSeGvS5nQ9BM3B7NycziwLRGvlqu7mc6rwuKH0gBjk3pCOg3wmHFLnwX5awbLnUt8TzpcPJkr/5iWLqymbi85x4BH8CIH6KBwRDbfkcJ+6u1FTbbeHH9bss2h3PmP2dhlzs9IcBU41q/rq0CRM8jgJfhu+lCJqHdUdxl5sgbqKfuMhXvzjAArb65BLBRp0Qefo3W8jhN3GJqdcTuOCsTfDvOyy5jM6VFUnANu0wvcPJyO5w2IByBlxjFZPseWBRv7fkHGBgimbHFPX2clZx9pdiAUgCpNJiEHIF6aNQ==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LET8DQR8BAwu4/QpKZ4KHXkKDJMuP1S7Rc/XtxK+6Is=;
 b=kwPfAMv5uHymM8KDQDwVBsZ9LinzqU5IdYqwjxI926qsKeglMT/1gAz0MAwOh6UqkfHIrKW84RmjhgE4BvyTj6OSrgThs9oGlyVwR4oonUZ3I1zYu7pe1H4y/TuDwZ8zSWyvp5zM6yLD3s/03lOCN/Bz849ZFvWl/BwDXAKW0eiyI/VDJzk0EO/H1DAbu++cP0wU2gXsbHza6D40bwk0GAw4XRL09q4fZ/vlH3apoaXxl4lT1OZJaRmlD0ZTkokw3RQ9AICXOXsETd80qzyox+iHK/WJNs6WfwASfrTj3AhXKu0xEd3xi8DGz/AaY4NN788y6RTPzu0CbCGcPwverQ==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qti.qualcomm.com; dmarc=pass action=none
 header.from=qti.qualcomm.com; dkim=pass header.d=qti.qualcomm.com; arc=none
dkim-signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=qualcomm.onmicrosoft.com; s=selector1-qualcomm-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LET8DQR8BAwu4/QpKZ4KHXkKDJMuP1S7Rc/XtxK+6Is=;
 b=J2V8R2D5avmmFZmZcraRP7tR3G3QIsja9cnamzvi1U71S576lthtGM+W1aaj+oU8UHA0hreGTH7NwkyyqF3RRn9oHu+jWU6sxv86nKa4EKJkKbko4OLotbMTvVxeuJ3Ns8g1CJ1hE71E6wPpv1QqmWNagPAf1GYMaCEeLdInP+4=
x-ms-exchange-crosstenant-network-message-id: 58d1f36c-64f4-45c2-7aa2-08d7ecd39a11
x-ms-exchange-crosstenant-originalarrivaltime: 30 Apr 2020 06:56:26.2066 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 98e9ba89-e1a1-4e38-9007-8bdabc25de1d
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: 9dg6vEn78JW9k6rl23aOu0Ir6uwkAsBRQPeXfZOjcObi2cW6DqL7GRByEt1DKs+mvYcqCpLlGuQqlZknsF1XMK/KaeixMvW2QjRx3uYi838=
x-ms-exchange-transport-crosstenantheadersstamped: SN6PR02MB4158
MIME-Version: 1.0
X-OriginatorOrg: qti.qualcomm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_235634_257573_6D45682B 
X-CRM114-Status: GOOD (  21.51  )
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
Cc: Amit Pundir <amit.pundir@linaro.org>, John Stultz <john.stultz@linaro.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Mani,

Reply inline


Thanks,
Rakesh Pillai

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of
> Manivannan Sadhasivam
> Sent: Thursday, April 30, 2020 11:10 AM
> To: Govind Singh <govinds@qti.qualcomm.com>
> Cc: Amit Pundir <amit.pundir@linaro.org>; John Stultz
> <john.stultz@linaro.org>; ath10k@lists.infradead.org;
> bjorn.andersson@linaro.org
> Subject: [EXT] Re: Ath10k reboot regression with v5.7-rc1 on dragonboard
> 845c
>
> Hi Govind,
>
> On Thu, Apr 30, 2020 at 04:15:42AM +0000, Govind Singh wrote:
> > Hi Amit,
> > Seems del_server is being notified early due to qrtr-ns migration from
> userspace to kernel prior remote(modem + wifi) actually went down.
>
> Sorry I don't get this. In-kernel NS just receives DEL_SERVER message from
> remote endpoint and it removes the entry for it and broadcasts to all
> observers.
>
> I think the issue is (as Bjorn suspected), previously we didn't catch the
> DEL_SERVER message from modem during shutdown/reboot but now we
> are able to do
> because NS is still running.
>
> > As per of del_server we are removing the MSA permission via SCM call, but
> remote(wifi user pd in modem Q6) is still accessing the region.
> >
>
> This looks odd. Why should the remote send DEL_SERVER if it is still accessing
> the region? Or if that's the expected behaviour, we shouldn't remove the
> MSA
> permission at this point in ath10k?



As a part of ath10k driver unload, when we release the qmi handle,
The ath10k qmi client receives a SERVER_EXIT (which has not been initiated from modem/wlan).
In server_exit processing we unmap the MSA permissions.

I am fixing this, to not handle the SERVER_EXIT if we have released the qmi handle.


>
> Thanks,
> Mani
>
> > BR,
> > Govind
> >
> > -----Original Message-----
> > From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Amit
> Pundir
> > Sent: Wednesday, April 29, 2020 9:51 PM
> > To: ath10k@lists.infradead.org
> > Cc: bjorn.andersson@linaro.org; John Stultz <john.stultz@linaro.org>;
> manivannan.sadhasivam@linaro.org
> > Subject: [EXT] Ath10k reboot regression with v5.7-rc1 on dragonboard 845c
> >
> > Hi,
> >
> > I see a reboot regression with v5.7-rc1 on Dragonboard 845c
> > (wcn3990/ath10k_snoc) running AOSP. "reboot" or "reboot bootloader"
> > commands do not work as expected when the board is connected to WiFi
> AP. I see "ath10k_snoc 18800000.wifi: firmware crashed"... dump in dmesg
> and board reboots into usb debug/crash mode. I do not see this reboot
> regression when the board is not connected to WiFi.
> >
> > It started with qrtr-ns migration from userspace to kernel which landed in
> v5.7-rc1. I didn't run into this reboot issue when I was running qrtr-ns
> userspace tool. According to Mani, in-kernel qrtr-ns just live long enough to
> catch modem shutdown requests and advertise it to the modem, unlike the
> userspace tool. Which seem to be the case here. I further narrowed it down
> to ath10k_qmi_remove_msa_permission()
> > call in ath10k shutdown path. If I comment out that function call then the
> reboot command works as expected.
> >
> > Any thoughts as to what might be going wrong? I do not understand
> qrtr/ath10k/qmi to see how msa permissions are getting mapped-unmapped
> here. I'd be happy to help debug things.
> >
> > Regards,
> > Amit Pundir
> >
> > _______________________________________________
> > ath10k mailing list
> > ath10k@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/ath10k
>
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
