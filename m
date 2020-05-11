Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3B31CD9EE
	for <lists+ath10k@lfdr.de>; Mon, 11 May 2020 14:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wy/zvmYyt5m9mpTYFgSYm5lsFz2JCBqIVJQNbL218Kw=; b=pUdAkmWhuLjkCe
	FRSQRkkSqqzPFer/HRVDy7gpozDS03EMwRKElddYeFNQDM5+w2xuz7736NnACkjRqoN5D2h+QYV5V
	HodshyZntHxMr7+y8rIYUTrBvEOfPAuOI0uFdzw2Lv+QB1vKGeE8r21nVgmO95pR4guboImHpb1Lg
	C3szM0zaG7BscZdK5OfQvIX/forZeLZFNCLcI3PVMqWCvbooy8dWJYOiQ1/UGef3J9f4qJhwKnahz
	uOy2TBM2PEEQSWbJwiaW7Wkgn7AP6BS2PqohqNoJ8WZHUQE2sSScGyOH/6q3P+dpDGAXQ+iMw8Xmj
	p6clcgmslQOdnUymLjkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7cO-0007tP-24; Mon, 11 May 2020 12:33:12 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7cJ-0007sh-O1
 for ath10k@lists.infradead.org; Mon, 11 May 2020 12:33:09 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589200388; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=RfkZZdm4+9xPZMaooBJAUM5yHqUuxllDLzV8gnGuH2Y=;
 b=MfCYrDom8/V1plU/xpAjtRNe7RZTWKtUE7JFgJ4STiXzTW7znuldjhHiLg3kNG8YOfFLi6KL
 CY6aDUDAQleRjSrr7NQ/AT/ZmAxTVwBmr+BzwE3Be5gYiXzTds93WbQIqRJIuksaYH9ArQkx
 RfxRsokJtORx3LNjKwGHpSffY0w=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb94602.7f2fa0b173b0-smtp-out-n02;
 Mon, 11 May 2020 12:33:06 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 46C87C43637; Mon, 11 May 2020 12:33:05 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B6C25C432C2;
 Mon, 11 May 2020 12:33:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B6C25C432C2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: Remove msdu from idr when management pkt send
 fails
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1588667015-25490-1-git-send-email-pillair@codeaurora.org>
References: <1588667015-25490-1-git-send-email-pillair@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200511123305.46C87C43637@smtp.codeaurora.org>
Date: Mon, 11 May 2020 12:33:05 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_053308_276160_406020AD 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Rakesh Pillai <pillair@codeaurora.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Rakesh Pillai <pillair@codeaurora.org> wrote:

> Currently when the sending of any management pkt
> via wmi command fails, the packet is being unmapped
> freed in the error handling. But the idr entry added,
> which is used to track these packet is not getting removed.
> 
> Hence, during unload, in wmi cleanup, all the entries
> in IDR are removed and the corresponding buffer is
> attempted to be freed. This can cause a situation where
> one packet is attempted to be freed twice.
> 
> Fix this error by rmeoving the msdu from the idr
> list when the sending of a management packet over
> wmi fails.
> 
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1
> 
> Fixes: 1807da49733e ("ath10k: wmi: add management tx by reference support over wmi")
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

c730c477176a ath10k: Remove msdu from idr when management pkt send fails

-- 
https://patchwork.kernel.org/patch/11528409/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
