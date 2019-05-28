Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 513192BD32
	for <lists+ath10k@lfdr.de>; Tue, 28 May 2019 04:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyaMSxVh7v+cb84dYT+WEdajdNDzK8feiSiUdauMz7c=; b=EWanT48AxMLyBl
	1z0fce8Xwgw1DpEsBo8LMTW4SH5tqcifQR05OSbekkJ6KrbUbqhyNvXFGn1prhXHkrT7r79OpPVCg
	vJ3Q/1ZzHtOW0igbo0dpaAHKkZhggzHo1k+lsC8tNFoV5nIJIfFKIE1OzVgv7+DdhABpXU4ByTtTY
	mNRflSwOWER54NTiBEFLJhqvfNoLMqwyaws6UMD0K/nA1Z+U/HjxNxiZzhgVCIFllgR12g76ajkbT
	kerqMhC1grRrHMj0CiTk0kUZLVNGqlpjzMGaJYk61Y6DKjIwFzPXD0rsKEsp7sBPb+NGEBWpigWFF
	h2d83dNDqSTRq/K6omYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVRnm-0002bJ-8e; Tue, 28 May 2019 02:25:22 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVRni-0002aW-E0
 for ath10k@lists.infradead.org; Tue, 28 May 2019 02:25:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1559010318; x=1590546318;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=WLnDk5Mnjr31/8vRYU/58Mtb42f28Ex/mJLgUCh5Rqg=;
 b=crfrfsInxuvI6sS53yu0Aq4ru0NQxTTXaDO+AiAJIeNUiEL1fd7voVB2
 NxKbLLkIXkuSF2T5dEroTRgTYeVspQDUKV2/g9Mzxl09NR2fubwwusXj1
 uHJf7whib2TXtvc/mdJ9HZ/S7M/bdvNzNffig814v5MYdMKGR/x8p+Hir A=;
Subject: RE: [PATCH] ath10k: add support for simulate crash on SDIO chip
Thread-Topic: [PATCH] ath10k: add support for simulate crash on SDIO chip
Received: from ironmsg02-tai.qualcomm.com ([10.249.140.7])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 28 May 2019 10:25:14 +0800
X-IronPort-AV: E=McAfee;i="5900,7806,9270"; a="30538387"
Received: from aptaiexm02e.ap.qualcomm.com ([10.249.150.15])
 by ironmsg02-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 28 May 2019 10:25:09 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02e.ap.qualcomm.com (10.249.150.15) with Microsoft SMTP Server (TLS)
 id 15.0.1395.4; Tue, 28 May 2019 10:25:07 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1395.000; Tue, 28 May 2019 10:25:07 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHU/ktg0k6a4wyR5kyzZvSP6GJAC6Z/+7UQ
Date: Tue, 28 May 2019 02:25:07 +0000
Message-ID: <9d7964c815c54582a304e49e4667c0f5@aptaiexm02f.ap.qualcomm.com>
References: <1555406865-21514-1-git-send-email-wgong@codeaurora.org>
 <CANMq1KBjupZeuw3hmQHbYui4G9+Ni7SPPE1SNqG9=89iVhFjgg@mail.gmail.com>
In-Reply-To: <CANMq1KBjupZeuw3hmQHbYui4G9+Ni7SPPE1SNqG9=89iVhFjgg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_192518_744514_B1029313 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.226 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Claire Chang <tientzu@chromium.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Nicolas
> Boichat
> Sent: Monday, April 29, 2019 1:21 PM
> To: Wen Gong <wgong@codeaurora.org>
> Cc: Claire Chang <tientzu@chromium.org>; linux-wireless@vger.kernel.org;
> ath10k@lists.infradead.org
> Subject: [EXT] Re: [PATCH] ath10k: add support for simulate crash on SDIO
> chip
> 
> Err, so you consider _any_ CPU interrupt to be caused by the FW
> crashing? Is that correct? If so, please at least add a comment.
> 
> Otherwise, maybe you should run this only if
> MBOX_CPU_STATUS_ENABLE_ASSERT_MASK is set in cpu_int_status?
> 
> >         return ret;
> >  }
> >

Hi Nicolas,
New patch has uploaded for the change
https://patchwork.kernel.org/patch/10921341/
[v2] ath10k: add support for simulate crash on SDIO chip

https://patchwork.kernel.org/patch/10955189/
[v3] ath10k: add support for firmware crash recovery on SDIO chip

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
