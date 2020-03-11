Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A2F181E37
	for <lists+ath10k@lfdr.de>; Wed, 11 Mar 2020 17:46:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxk01RNdOGlrQHu2gqN47ymf/c3MMxUbiYyGAXOHqeM=; b=BSyOI3ASHfzOc0
	4CB30edqdRB75xa8xZA1aVBn6D5SP6DN5tOozwn9niaYpUG2CLyAnEiSrGoyvXn7Fp5gjzbUrviZ5
	bt2+N0f4n7ZtK0Y74fMGCfF6o02y5X5WDSGHaXRc79jl3YbGCgPJpXbdxFzwk5CSr+J2JgxLIfhTi
	TvQSvvlgD2EUGg6K59V5PM+8GBLL0lNp45Azz8FU8EzopcNBWdRc2d259S7cCGmGMWdmrjyje66uc
	3QzBhZjeVaVzx6W0tE6oXBeZ6l2DVwqSPKlwO8C7JvXnkPx1u6kG1E3iNfKsl/FOx7fg9RHbtGbM6
	DflRsOVC1y/guCbZiqEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4VJ-0001ys-8e; Wed, 11 Mar 2020 16:46:45 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4VD-0001yT-LH
 for ath10k@lists.infradead.org; Wed, 11 Mar 2020 16:46:41 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1583945199; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=UhXC7/qsMc5z5an8m2+8QfRfmwemVdL8yXwo8p3PF1Y=;
 b=peqBR5osOodnaMu0AaPYNLgNEbq588ylNfDpK8uRCYBcq0sGt5k36u3vLflGMqGGfon3cxhf
 m4IOWXrHdNQPEzx9QMMB1L9PUa41hvhBrTz6NvGfljLwZAaTytQbkbgHk+KjDXgXJmWlmezI
 VPMLQmwsdJuS2KO2glcjGFwHTxo=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e6915ed.7fe9bd9835e0-smtp-out-n03;
 Wed, 11 Mar 2020 16:46:37 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 82D46C433BA; Wed, 11 Mar 2020 16:46:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0A13CC433CB;
 Wed, 11 Mar 2020 16:46:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0A13CC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: fix not registering airtime of 11a station with
 WMM disable
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1582171405-27236-1-git-send-email-yiboz@codeaurora.org>
References: <1582171405-27236-1-git-send-email-yiboz@codeaurora.org>
To: Yibo Zhao <yiboz@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200311164636.82D46C433BA@smtp.codeaurora.org>
Date: Wed, 11 Mar 2020 16:46:36 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_094639_759517_21126BEC 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Yibo Zhao <yiboz@codeaurora.org> wrote:

> The tid of 11a station with WMM disable reported by FW is 0x10 in
> tx completion. The tid 16 is mapped to a NULL txq since buffer
> MMPDU capbility is not supported. Then 11a station's airtime will
> not be registered due to NULL txq check. As a results, airtime of
> 11a station keeps unchanged in debugfs system.
> 
> Mask the tid along with IEEE80211_QOS_CTL_TID_MASK to make it in
> the valid range.
> 
> Hardwares tested : QCA9984
> Firmwares tested : 10.4-3.10-00047
> 
> Signed-off-by: Yibo Zhao <yiboz@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

f9680c75d187 ath10k: fix not registering airtime of 11a station with WMM disable

-- 
https://patchwork.kernel.org/patch/11393223/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
