Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007821B965F
	for <lists+ath10k@lfdr.de>; Mon, 27 Apr 2020 07:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWRlTQLVZ6SdFHx5OXI9IEjbwz8YAaiVTuTGvhWSpaI=; b=ZdyG3Jk+gZQFof
	dPhajvh5tbPyvUSmnJIrB11wgSVf+5Cb9Knhq1ybzoDRE3qdAnyIlRmh66d1+ytSR5RISyA2+HtdV
	GEvLpkVlkBnETfK7ffpuw6JKAjKHwNjxOYABHZEd4rqF7haTEnPwQe1LvWKFAaReebpa04WIy3/21
	TOdhJrXCN6YAHBD1Ln3IdTTLePedx+fYrB5iYWEQDsGg6lKhjcD4+V/XrMNNKJw4l+/7jkntYgSUf
	gN9JeBWO89wV9ReZULBQLwxnPLzyBZo42ukGfY5i+I7XEDy6P501TcdTstEIsilqm/hL0loRAlxxe
	4lKApai+j4Zjw7GqUAXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSvuW-0004MM-Gt; Mon, 27 Apr 2020 05:02:28 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSvuS-0004DO-Fx
 for ath10k@lists.infradead.org; Mon, 27 Apr 2020 05:02:25 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587963744; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=pneIcqUKNkjA5dNSxGYhj5odGKcbp0Kn/Pe8WNrPj88=;
 b=ryvU4wshrddQ9EF+SRsTrgs3/8HtAzWpxxkJhBrHtZMUmMVHUV6KF5dpYVu7vylZBCmGty4J
 0gx841ozFaO7HL3CfFBTMY5m9zWiFHIuIt8IyyRTi1oZRvAzvyYaQW5BkPzRviFEjv1xtfwW
 dLo47Rp+z2HLkTweZk1ImJljXxo=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea6675f.7f7e48e78d18-smtp-out-n03;
 Mon, 27 Apr 2020 05:02:23 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 078CBC433F2; Mon, 27 Apr 2020 05:02:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8EC20C433D2;
 Mon, 27 Apr 2020 05:02:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8EC20C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: add statistics of tx retries and tx failed when tx
 complete disable
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200423024134.10601-1-wgong@codeaurora.org>
References: <20200423024134.10601-1-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200427050223.078CBC433F2@smtp.codeaurora.org>
Date: Mon, 27 Apr 2020 05:02:23 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_220224_586764_3EEA5680 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> When tx complete is disabled, all tx status will be set with status
> HTT_TX_COMPL_STATE_ACK and indicate to mac80211 by ieee80211_tx_status,
> then it does not have the statistics for retries and failed packets.
> count of tx retries and tx failed of command "iw wlan0 station dump"
> are both 0. If tx complete is not disabled, then firmware report the
> tx status and ath10k indicate the status to mac80211, then mac80211
> save the statistics and command "iw wlan0 station dump" show them.
> 
> for example:
> localhost ~ # iw dev wlan0 station dump
> Station 3c:28:6d:96:fd:69 (on wlan0)
> 	inactive time:	5 ms
> 	rx bytes:	1325012
> 	rx packets:	6477
> 	tx bytes:	85264
> 	tx packets:	518
> 	tx retries:	0
> 	tx failed:	0
> 
> This patch only effect chips with tx complete disabled, e.g. SDIO.
> 
> with this patch, output of command "iw dev wlan0 station dump":
> Station c4:04:15:5d:97:22 (on wlan0)
>         inactive time:  608 ms
>         rx bytes:       180366
>         rx packets:     991
>         tx bytes:       98765577
>         tx packets:     64624
>         tx retries:     14682
>         tx failed:      47086
> 
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

59a022cc14cf ath10k: add statistics of tx retries and tx failed when tx complete disable

-- 
https://patchwork.kernel.org/patch/11504903/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
