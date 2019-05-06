Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3507143C8
	for <lists+ath10k@lfdr.de>; Mon,  6 May 2019 05:36:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5f6lvaFdnPfK88/s5fKAQ5GA5CcdeIIbQlVfLqvcS0=; b=IJ8yf528OZk6+/
	BHDSLPdXrjnXaJzrgiLlkrSLLjYiV8KjcdQX5k0lIhgMRZlTs3Ymzplt0uxLkbfVhBwVo6+QTm9Rd
	ihqt+iLDclsl4dvx/acJFP7XLwoQ+iDDhQjwN3lzFDE6zZPhw5vzyobF9EGkSVDLRueWRrH+yIMDm
	GcJIQep94e0Uz2I2Hte4bMCaxOAnr7vDn0Q3760+OeBNxho0StZtI/m7bgAmNTVhsghiy1//cck0V
	oRSiTmSc33aadZFPJnSYkPa1GJ1L7yovph9lxitqwQhKbRw+LNNgrZxCcio4B/3QQ22qI/JAfaORo
	zHF71z3nGDqydECdFnGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNUQV-0007Us-KG; Mon, 06 May 2019 03:36:27 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNUQR-0007UQ-39
 for ath10k@lists.infradead.org; Mon, 06 May 2019 03:36:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1557113783; x=1588649783;
 h=from:to:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=FJYivjZbrPAzjP8N2lf2nfOKMQc2057EY3klycf7Sik=;
 b=Sj4qOm3XFDUU4cL/lMTcXzt6AZoQfDG+fDEAIAFLiIxZm9Pj4BuIo2Vl
 HaL7FSCKFwhAd+2uMUdjuXcg/ocEZT1som3Cty2c6G2kuWwck/XPAC6rT
 raQKMWXwxSqely+2i9tfUVw4CCbGpRN0jA9uLIOCu6XHdJB83V6v/auD8 U=;
Subject: RE: ath10k: Two missing sdio patches
Thread-Topic: ath10k: Two missing sdio patches
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 06 May 2019 11:36:18 +0800
X-IronPort-AV: E=McAfee;i="5900,7806,9248"; a="28607844"
Received: from aptaiexm02a.ap.qualcomm.com ([10.249.150.11])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 06 May 2019 11:36:18 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02a.ap.qualcomm.com (10.249.150.11) with Microsoft SMTP Server (TLS)
 id 15.0.1395.4; Mon, 6 May 2019 11:36:16 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1395.000; Mon, 6 May 2019 11:36:16 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Erik Stromdahl <erik.stromdahl@gmail.com>, "kvalo@codeaurora.org"
 <kvalo@codeaurora.org>, "wgong@codeaurora.org" <wgong@codeaurora.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Thread-Index: AQHVA04Q+aKEArpR20yUJP5NqRj6LaZdchlA
Date: Mon, 6 May 2019 03:36:16 +0000
Message-ID: <68e788e5355c4f689e85d526b89da6a7@aptaiexm02f.ap.qualcomm.com>
References: <1d5b4f00-2da8-b435-9122-07f93890dda9@gmail.com>
In-Reply-To: <1d5b4f00-2da8-b435-9122-07f93890dda9@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_203623_420303_F7319C27 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.226 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Erik
> Stromdahl
> Sent: Sunday, May 5, 2019 10:23 PM
> To: kvalo@codeaurora.org; wgong@codeaurora.org;
> ath10k@lists.infradead.org
> Subject: [EXT] ath10k: Two missing sdio patches
> 
> Hej Kalle, Wen,
> 
> I see there are lots of SDIO patches coming in to the mailing ath10k list, great!
> 
> I while back I submitted two patches that adds an inline wrapper for an htt
> op.
> 
> patchwork:
> https://patchwork.kernel.org/project/linux-wireless/list/?series=97099
> 
> Without these patches I get a panic due to calling a NULL pointer callback
> with SDIO.
> 
> It is the htt->tx_ops->htt_h2t_aggr_cfg_msg() in ath10k_htt_setup() that
> causes the panic.
> 
> Kalle:
> I notice that you don't have these patches in your pending-sdio-usb branch.
> 
> Wen:
> Do you have any other patch that fixes this issue (I can't see how it can work
> without
> these patches unless you have some other fix)?
> 
Hi Erik,
I do not have other patch to fix the issue.
The patch change the ath10k_htt_h2t_aggr_cfg_msg to htt->tx_ops->htt_h2t_aggr_cfg_msg in ath10k_htt_setup.
https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/drivers/net/wireless/ath/ath10k/htt.c?id=5cbb117477501df2f8b3a384b042b08cd7174c92
I used chromeos which does not include the upper patch.
> --
> Erik
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
