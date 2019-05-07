Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7E6158BD
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 07:05:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBSRdIqows6u3xaVoaEmn+fN82anhJDjNCfqly5LWLg=; b=O7j01zI9GMkFET
	udmhFqVvI5+ykHHKPnxXhwkLPm/UtMp7VErRwzP0CagONsogoOSgITiO0XalF7+J+l/OKy3ZS/acG
	VlLwP4lxvwTuj/1OglR6pK6eA3tq7VAdWf0uqLdg+pyFwB/KU6CbNbqXv3GdF24pOepQabHmwYScK
	2d9MD5+XfkQgpi2IEINPFtx3voM+QCYfufdbRYiZ8DKeCVTIQAqIcrM6FElv+mj9evtQR+MNYK7cJ
	m9WcqroRz9Itz4UarzPMNLKhDjZY4Sytras1YFF9LIvSC36LG2zPNf4ZX5VH9rDO86Ys50qc4ly8e
	3ZTYDFX+KDp1IITQtf3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNsIG-0007Ys-Ao; Tue, 07 May 2019 05:05:32 +0000
Received: from alexa-out-tai-01.qualcomm.com ([103.229.16.226])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNsIC-0007YR-HN
 for ath10k@lists.infradead.org; Tue, 07 May 2019 05:05:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=qti.qualcomm.com; i=@qti.qualcomm.com; q=dns/txt;
 s=qcdkim; t=1557205528; x=1588741528;
 h=from:to:cc:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version:subject;
 bh=UrV7zyLquGaGyp71Wl+1EFTpGEsSXpjTEyDgqzkJm58=;
 b=tN2ESxESW4rFudp5h55ijVjNfBJ/u8avbU7MrTmYrYZMRLkQOfdohe4e
 K/jyAmb50b/Imk+HigpPAcIFRySzsbRCuN7x4NZno9uI6YAK5mtQWbtct
 hJipLpWZvrW8oD1A8PZjGfpMy7zO2yGopuy8VVs+q3Lnkdr0MyZKLFJ0A c=;
Subject: RE: [PATCH] ath10k: remove mmc_hw_reset while hif power down
Thread-Topic: [PATCH] ath10k: remove mmc_hw_reset while hif power down
Received: from ironmsg03-tai.qualcomm.com ([10.249.140.8])
 by alexa-out-tai-01.qualcomm.com with ESMTP; 07 May 2019 13:05:24 +0800
X-IronPort-AV: E=McAfee;i="5900,7806,9249"; a="28693442"
Received: from aptaiexm02f.ap.qualcomm.com ([10.249.150.16])
 by ironmsg03-tai.qualcomm.com with ESMTP/TLS/AES256-SHA;
 07 May 2019 13:05:24 +0800
Received: from aptaiexm02f.ap.qualcomm.com (10.249.150.16) by
 aptaiexm02f.ap.qualcomm.com (10.249.150.16) with Microsoft SMTP Server (TLS)
 id 15.0.1395.4; Tue, 7 May 2019 13:05:22 +0800
Received: from aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1]) by
 aptaiexm02f.ap.qualcomm.com ([fe80::4152:1436:e436:faa1%19]) with mapi id
 15.00.1395.000; Tue, 7 May 2019 13:05:22 +0800
From: Wen Gong <wgong@qti.qualcomm.com>
To: Grant Grundler <grundler@google.com>, Wen Gong <wgong@codeaurora.org>
Thread-Index: AQHVAdpJadKuEaUlO02aG5lsvSOAm6ZfCRng
Date: Tue, 7 May 2019 05:05:21 +0000
Message-ID: <36950ff25c0747629e60ccb68819e93a@aptaiexm02f.ap.qualcomm.com>
References: <1556417825-13713-1-git-send-email-wgong@codeaurora.org>
 <CANEJEGug_YregN5vZq_R=ppUV5ptb4WUq_TB+JApzQ4DEO_AfQ@mail.gmail.com>
In-Reply-To: <CANEJEGug_YregN5vZq_R=ppUV5ptb4WUq_TB+JApzQ4DEO_AfQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.249.136.10]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_220528_859665_81C74980 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [103.229.16.226 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Grant
> Grundler
> Sent: Saturday, May 4, 2019 2:01 AM
> To: Wen Gong <wgong@codeaurora.org>
> Cc: linux-wireless@vger.kernel.org; ath10k@lists.infradead.org
> Subject: [EXT] Re: [PATCH] ath10k: remove mmc_hw_reset while hif power
> down
> 
> [repeating comments I made in the gerrit review for Chrome OS :
> https://chromium-
> review.googlesource.com/c/chromiumos/third_party/kernel/+/1585667
> ]
> 
> On Sat, Apr 27, 2019 at 7:17 PM Wen Gong <wgong@codeaurora.org> wrote:
> >
> > For sdio 3.0 chip, the clock will drop from 200M Hz to 50M Hz after load
> > ath10k driver, it is because mmc_hw_reset will reset the sdio's power,
> > then mmc will consider it as sdio 2.0 and drop the clock.
> 
> Wen,
> 5468e784c0600551ca03263f5255a375c05f88e7 commit message gives
> reasons
> for adding the mmc_hw_reset() call. The commit message for removing
> gives different reason for removal. Both are good but second one is
> incomplete.
> 
> The commit message for removal should ALSO explain why adding this
> call wasn't necessary in the first place OR move the call to a
> different code path.
> 
> > Remove mmc_hw_reset will avoid the drop of clock.
> 
> This commit message makes it clear the original patch introduced a new
> problem. But the original patch fixed a different problem and that
> this proposed change seems likely to re-introduce and the commit
> message should explain why that isn't true (or how the original was
> fixed differently)
Hi Grant,
The mmc_hw_reset's effect depends on the hardware layout/configure
software's behavior, recently it will effect the clock of sdio for the platform
I used. And it will still work well without mmc_hw_reset for the platform I
Used currently. 
If sdio cannot work on other platform, I think it can add flag in 
ath10k_hw_params_list for the platform to call the mmc_hw_reset depends
on the flag.
> 
> cheers,
> grant


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
