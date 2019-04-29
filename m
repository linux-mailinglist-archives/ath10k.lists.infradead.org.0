Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF161E599
	for <lists+ath10k@lfdr.de>; Mon, 29 Apr 2019 16:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dX3E+qbvcMJgGYeuRX80/MccMCLiirKDMw+TDWSewSw=; b=Q2p7x9WQ41Lhx8
	2QRIedJaWoQPTNoeEI8zRLJf4Lgj1Kck4g6mxWUIv0CM/gvwd8YP406GNGLBf0fo0ceakujld0kuC
	YTV2mO094exOMX4XvAvn4+7FO5F6R3VT7KtvkP3mMlezpAMbnS7OOU8hZIzJKEzj6ekpcX8tqe7XU
	vTcWxGWgBGOEU2nnJMRE8KrY6aMaw/Mq1iPlrLlThjw13n1B8beTmcdvHywkAdM1FJFxVs+1MxqcV
	UXm7d7vY/eXMTUs3AAC9faph5JQmwEhE9l5X1LDQCsryiDMqJ2iBYBETJCIPWbpjnCToSL+qK2APn
	jFvusczB4yJbOUddvtGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7kY-0003gG-NW; Mon, 29 Apr 2019 14:59:22 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7kV-0003fw-2p
 for ath10k@lists.infradead.org; Mon, 29 Apr 2019 14:59:20 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B155B607DF; Mon, 29 Apr 2019 14:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556549958;
 bh=vSlMT+EoIY/OAuBhrigeLDJkHMwznLgATF4JPvlYlAo=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=lPLueDBikMl7Ex/ajXR2xFYimRrETZvs1LqTmDih4qYweFTRniJdscXrQ1jS5vK8O
 vwC9cIGotwZuawVEPXezQ35mnuotZKHB2z1WmZtZAXvYvHpHREY4U6bA1P7cBpR2qc
 6P9FR/xqFKNjV/d4rUCqdVO6phxoCwUObOQJMrp8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 354496029B;
 Mon, 29 Apr 2019 14:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556549958;
 bh=vSlMT+EoIY/OAuBhrigeLDJkHMwznLgATF4JPvlYlAo=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=VItJRSSPUm+4gioyjmhGc/AJP61zaI7BwqqEaqNTTFOwzfRn1PQ0iA3TC4Dbld1Nt
 5Fzj4mBA2I5ouIibVFbJJOO/LbOp00XHMhCyuec+5JPqMBU8b71rMwS9me2X+/08sO
 5qIe7JqgBDtcmrF1YwHGbOtUWyhX304snFVvuMzA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 354496029B
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath: DFS JP domain W56 fixed pulse type 3 RADAR detection
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1551893771-22485-1-git-send-email-tamizhr@codeaurora.org>
References: <1551893771-22485-1-git-send-email-tamizhr@codeaurora.org>
To: Tamizh chelvam <tamizhr@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190429145918.B155B607DF@smtp.codeaurora.org>
Date: Mon, 29 Apr 2019 14:59:18 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_075919_143331_66DC51AA 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anilkumar Kolli <akolli@codeaurora.org>, linux-wireless@vger.kernel.org,
 Tamizh chelvam <tamizhr@codeaurora.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Tamizh chelvam <tamizhr@codeaurora.org> wrote:

> Increase pulse width range from 1-2usec to 0-4usec.
> During data traffic HW occasionally fails detecting radar pulses,
> so that SW cannot get enough radar reports to achieve the success rate.
> 
> Tested ath10k hw and fw:
> 	* QCA9888(10.4-3.5.1-00052)
> 	* QCA4019(10.4-3.2.1.1-00017)
> 	* QCA9984(10.4-3.6-00104)
> 	* QCA988X(10.2.4-1.0-00041)
> 
> Tested ath9k hw: AR9300
> 
> Tested-by: Tamizh chelvam <tamizhr@codeaurora.org>
> Signed-off-by: Tamizh chelvam <tamizhr@codeaurora.org>
> Signed-off-by: Anilkumar Kolli <akolli@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

d8792393a783 ath: DFS JP domain W56 fixed pulse type 3 RADAR detection

-- 
https://patchwork.kernel.org/patch/10841487/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
