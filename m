Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D02081B54BA
	for <lists+ath10k@lfdr.de>; Thu, 23 Apr 2020 08:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cc2dipAbix4mNot7HQEw9rRsmb+gNb1RmizYpxOCSa4=; b=CtEuRRMLk8caHm
	30IFO6hHd0aWr6kAiGTklczpUkQvP1Q4erKY6kTQ785vquUxhbtA1CNlEjA9ONtZoyPXf6wohi++w
	AMVqvhr+l154ph/HNEftD5SmA9DRQog+6+7btdyF2fjN9I356oEUM8IuYX3bn0IuvuyuvQS6tqXUD
	AAyDqBpGVjlhzJyHoCQprBecEHfa9/qG4IRG6EI2lKdFO+d9q2USOfksEDyN09fNXua1Ev8BoLctt
	2Rbec+1JpPD4zYTxQjzglBhlNegnZJ/UtNAnrmLayX4Xr0mW1Q6tAinZdgYlDYDLNevYPYMjCqinL
	a2Ot6Dh88nb1wOjJ4o5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVOW-0008LC-Dm; Thu, 23 Apr 2020 06:31:32 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVOQ-0008JM-Hn
 for ath10k@lists.infradead.org; Thu, 23 Apr 2020 06:31:29 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587623487; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=JWdOKARKVZs7UePq/d5QYKFe6b8sjNaAYgTY5R3kAO0=;
 b=ncYB/YxuqAe1Q3P4nzLrwqFLPfNX9TzPxD8S8hxIx5l84ff0u/XI67EIrJxY9sBVQjL1qaMK
 cbd7sOwhaoksK0Zu4BNzdB6yXgVhx/6rzm0MzNuuUgRomYB3sekgeo2ah9gyMHjrRAegVPN0
 OK3HukZmQ9iBfy5/t1b5zynOiWo=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea13639.7fedc5f47228-smtp-out-n01;
 Thu, 23 Apr 2020 06:31:21 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 38039C432C2; Thu, 23 Apr 2020 06:31:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7C763C433D2;
 Thu, 23 Apr 2020 06:31:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7C763C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2 2/2] ath10k: Set sk_pacing_shift to 6 for 11AC WiFi
 chips
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1533724802-30944-3-git-send-email-wgong@codeaurora.org>
References: <1533724802-30944-3-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200423063121.38039C432C2@smtp.codeaurora.org>
Date: Thu, 23 Apr 2020 06:31:21 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_233127_813380_81F56174 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
Cc: johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> Upstream kernel has an interface to help adjust sk_pacing_shift to help
> improve TCP UL throughput.
> The sk_pacing_shift is 8 in mac80211, this is based on test with 11N
> WiFi chips with ath9k. For QCA6174/QCA9377 PCI 11AC chips, the 11AC
> VHT80 TCP UL throughput testing result shows 6 is the optimal.
> Overwrite the sk_pacing_shift to 6 in ath10k driver for QCA6174/9377 PCI.
> 
> Tested with QCA6174 PCI with firmware
> WLAN.RM.4.4.1-00109-QCARMSWPZ-1, but this will also affect QCA9377 PCI.
> It's not a regression with new firmware releases.
> 
> There have 2 test result of different settings:
> 
> ARM CPU based device with QCA6174A PCI with different
> sk_pacing_shift:
> 
>  sk_pacing_shift  throughput(Mbps)             CPU utilization
>          6            500(-P5)      ~75% idle, Focus on CPU1: ~14%idle
>          7            454(-P5)      ~80% idle, Focus on CPU1: ~4%idle
>          8               288        ~90% idle, Focus on CPU1: ~35%idle
>          9              ~200        ~92% idle, Focus on CPU1: ~50%idle
> 
> 5G TCP UL VTH80 on X86 platform with QCA6174A PCI with sk_packing_shift
> set to 6:
> 
>   tcp_limit_output_bytes            throughput(Mbps)
>  default(262144)+1 Stream                 336
>  default(262144)+2 Streams                558
>  default(262144)+3 Streams                584
>  default(262144)+4 Streams                602
>  default(262144)+5 Streams                598
>  changed(2621440)+1 Stream                598
>  changed(2621440)+2 Streams               601
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

The final result of this patch is unclear so I'm dropping this. Please
resend if the issue still exists.

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/patch/10559733/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
