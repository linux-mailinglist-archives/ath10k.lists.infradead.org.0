Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5542B181DE0
	for <lists+ath10k@lfdr.de>; Wed, 11 Mar 2020 17:31:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuEiA+4mh+MBHDtrBqmzB+wZfiTZFay7JGDL7UQk0N8=; b=OSx3nFEk0YSBo0
	6XzCzH6MwN5/0aiTLvCJHLFfdGUQX73HCN4XP9/3SrBTLPJRrtfSXtXpiWKHlT0rFTB0YBK8Hsw7I
	oaSOZW6EqlpR5JYURXHmPsm5LYA7IA0jfL6smFJEK83Afu/S2dStzyJaTQA1uZ+Vmu09bJQnirpWd
	KWHaRDzsS2jhRjpacV4KTkiy/FyiOysAjMkhwFx7PjFy0V01BqhRoom3+7Wt6UASgdlK3A76CDxh0
	CuTDLULGkm8NFpYC88LrDUrzUszHSO+EJXkbEYRaLi/k9ibDbAhhMTuMj/Ik9aMZnl93uewRRTSwt
	f0diAolxl65pOExz2xXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4GF-0002Y1-Hm; Wed, 11 Mar 2020 16:31:11 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4GA-0002XS-Es
 for ath10k@lists.infradead.org; Wed, 11 Mar 2020 16:31:09 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1583944267; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=FuX6jHTN4rvyPzYI5f4BFjj3vh0elEt4FR+gnyaTJcU=;
 b=aVkq6Vxl6IUqWpna8swUHox2N8IVhfV3qQKANytQ4EO0tFdQ7zo3gtThqvg9qKsfcxWOC3bN
 33F0l6CMwjxvXnLJwrmutXDKT0Xr0rUeLydzfisc7lQstmH8+ZglVU2ykBb2R60RD1zHbbfs
 /prBjAE70iwE8DnmAT71LBO683w=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e691246.7ffad0f44d18-smtp-out-n03;
 Wed, 11 Mar 2020 16:31:02 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8C1E0C43636; Wed, 11 Mar 2020 16:31:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D3785C433D2;
 Wed, 11 Mar 2020 16:31:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D3785C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: avoid consecutive OTP download to reduce boot time
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1578378195-25780-1-git-send-email-mkenna@codeaurora.org>
References: <1578378195-25780-1-git-send-email-mkenna@codeaurora.org>
To: Maharaja Kennadyrajan <mkenna@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200311163102.8C1E0C43636@smtp.codeaurora.org>
Date: Wed, 11 Mar 2020 16:31:02 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_093107_662537_70144485 
X-CRM114-Status: UNSURE (   9.30  )
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 Vikas Patel <vikpatel@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Maharaja Kennadyrajan <mkenna@codeaurora.org> wrote:

> Currently, OTP is downloaded twice in case of "pre-cal-dt"
> and "pre-cal-file" to fetch the board ID and takes around
> ~2 sec more boot uptime.
> 
> First OTP download happens in "ath10k_core_probe_fw" and
> second in ath10k_core_start. First boot does not need OTP
> download in core start when valid board id acquired.
> 
> The second OTP download is required upon core stop/start.
> 
> This patch skips the OTP download when first OTP download
> has acquired a valid board id. This patch also marks board
> id invalid in "ath10k_core_stop", which will force the OTP
> download in ath10k_core_start and fetches valid board id.
> 
> Tested HW: QCA9984
> Tested FW: 10.4-3.6-00104
> 
> Signed-off-by: Vikas Patel <vikpatel@codeaurora.org>
> Signed-off-by: Maharaja Kennadyrajan <mkenna@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

a4b9f641e858 ath10k: avoid consecutive OTP download to reduce boot time

-- 
https://patchwork.kernel.org/patch/11320473/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
