Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69585149B17
	for <lists+ath10k@lfdr.de>; Sun, 26 Jan 2020 15:29:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fk9caDnmrDKibEMP8gJsKwzkDWmIV4Ukk8JBBAwjnB0=; b=b4mT/D1lmIIibV
	WCJTmspoXNy36WsTXMJEU3cyA242MfCiP2ZUxgX+X+nVlkC4bNzLLB9NMp6XrX1p9nBVjQj2H/Knx
	nvzL14OgoiGPqshwRen4DUOKbrzony/vuuT9yIA2AbOvf1h/B8z8JQz/1MAPrW2Q2d/izo1U6xJn5
	jfZ/LIXyVXYcwVZg9zqcCbuyYqj7dMw1Y4ZhuCAEkXtp1GfWEpPVTQ5Vms07Ajk+99+Ji6L6gLLLk
	qziCdUeMZlPhPRa5EvPu0WvppdiuovImtHrNQYLTZ5Wfe4DbBHFaAB5OJjbAAla/0UrVRsnoDunkE
	NKzRQ9VLVXxAISYm51Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivivB-0008Qo-VL; Sun, 26 Jan 2020 14:29:53 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iviv8-0008Jl-SG
 for ath10k@lists.infradead.org; Sun, 26 Jan 2020 14:29:52 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580048990; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=IIMDGd4zV+ZgbPiKxg03y4lXV+gjwEI2OaWScM763GA=;
 b=GXFa/NamNSEaxgT6bfvRMOYkdYVKEznEjsidjmRUw6n27DRj2iWYQROvOFblQHZYZF/SnaBx
 3gWaTn60YkRE/Bxi6w5lykJLbH2GthkUefTtWGxZVLFn3zEDWXTfZ4Gmj0T3iS5kPbGSrt86
 s/QNvLQ+F4uxZw/0QNUxstRzej0=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2da25e.7f017f0483e8-smtp-out-n02;
 Sun, 26 Jan 2020 14:29:50 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 885F1C43383; Sun, 26 Jan 2020 14:29:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0ACB1C433CB;
 Sun, 26 Jan 2020 14:29:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0ACB1C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Add newlines to printk messages
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200123232456.36197-1-swboyd@chromium.org>
References: <20200123232456.36197-1-swboyd@chromium.org>
To: Stephen Boyd <swboyd@chromium.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200126142949.885F1C43383@smtp.codeaurora.org>
Date: Sun, 26 Jan 2020 14:29:49 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_062950_975180_440D170E 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Stephen Boyd <swboyd@chromium.org> wrote:

> Some printks in here don't have newlines at the end, meaning the log
> will be sort of hard to read. Add newlines.
> 
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

79a4b788451d ath10k: Add newlines to printk messages

-- 
https://patchwork.kernel.org/patch/11349347/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
