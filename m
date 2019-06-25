Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 565DF54F4E
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 14:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+mwn/iQ0Dago5acV8wI/YnlnrYiggICsuZtzsdxYIk=; b=TIVc9JCvXTdZvT
	bMWtkXDMdjtNlxDQP8y6jrztDjIUMmls5EgoYzT3z3gyuvcpKA9/Y6AQRfA2RuazmX290MztXSchD
	w/RRNIBbzve87URYbE6mNVKrTqEfYjbCGOFT0mIIFqoEepYtm/yYdD3eJsZrym5rUc/pfTb/YoEcT
	iwLNAgvmYDNeZnxkGoEfJYuR+NStxpVPnSjh/k15TKYxsvb+SF/WtNe5V+aWu3tZTjD3WmcGn8v6i
	PqCqJhsutweDUJSlKTB+e2vR2uf2rTRkmPQTud/gleSlHl/3PkOpv6oc2HCaCQ/8m8VrfL62PqQP2
	Nf9y5QkPwPBzZuAdLlyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkth-0002Tp-Of; Tue, 25 Jun 2019 12:50:05 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfktb-0002T2-06
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 12:50:00 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id AB02D601B4; Tue, 25 Jun 2019 12:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561466998;
 bh=mr/xt+cVO5VfX8b/8gPbYA+kREY82BW9CmvRxREWjL8=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=TXXha/82m3Ck5WTbTkTYjQETpV+2tvuY3tEp+f+qgOutpV8vB5SR8UOQ5qffU9kDI
 aJm0AVVC/1kqu8PaiHHKK4CxOC+wah0nJkFvIVH16l5zIMRJ9i6fiNW0x1smQoRoID
 +5s9sKh1MO8j867yLNEuWE37vlBd+HyEnFFj1gxI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id D350D601E7;
 Tue, 25 Jun 2019 12:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561466998;
 bh=mr/xt+cVO5VfX8b/8gPbYA+kREY82BW9CmvRxREWjL8=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=eMIGOK6Ze9OgngPXA1DwipHbXZAHTtVtp6rTEXbHvyTVoavvInn40y62qsQ9YhPtB
 NoGM7gFk2yCa61KvviEGBHZQhNaEGU4DXKnuujL41YW77wdVUMeP/r605jDJO/xK75
 tOCLZT5W26DePkZu7qxnRLnGXq/YrnkevCYbteyo=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org D350D601E7
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCHv2] ath10k: Add wrapper function to ath10k debug
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1556283505-29539-1-git-send-email-vnaralas@codeaurora.org>
References: <1556283505-29539-1-git-send-email-vnaralas@codeaurora.org>
To: Venkateswara Naralasetty <vnaralas@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625124958.AB02D601B4@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 12:49:58 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_054959_076770_67E51D32 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Venkateswara Naralasetty <vnaralas@codeaurora.org>,
 linux-wireless@vger.kernel.org, Kan Yan <kyan@chromium.org>,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Venkateswara Naralasetty <vnaralas@codeaurora.org> wrote:

> ath10k_dbg() is called in ath10k_process_rx() with huge set of arguments
> which is causing CPU overhead even when debug_mask is not set.
> Good improvement was observed in the receive side performance when call
> to ath10k_dbg() is avoided in the RX path.
> 
> Since currently all debug messages are sent via tracing infrastructure,
> we cannot entirely avoid calling ath10k_dbg. Therefore, call to
> ath10k_dbg() is made conditional based on tracing config in the driver.
> 
> Trasmit performance remains unchanged with this patch; below are some
> experimental results with this patch and tracing disabled.
> 
> mesh mode:
> 
> 		w/o this patch          with this patch
> Traffic       TP      CPU Usage      TP      CPU usage
> 
> TCP          840Mbps    76.53%      960Mbps    78.14%
> UDP          1030Mbps   74.58%      1132Mbps   74.31%
> 
> Infra mode:
> 
> 		w/o this patch          with this patch
> Traffic        TP      CPU Usage      TP      CPU usage
> 
> TCP Rx       1241Mbps   80.89%      1270Mbps   73.50%
> UDP Rx       1433Mbps   81.77%      1472Mbps   72.80%
> 
> Tested platform	: IPQ8064
> hardware used	: QCA9984
> firmware ver	: ver 10.4-3.5.3-00057
> 
> Signed-off-by: Kan Yan <kyan@chromium.org>
> Signed-off-by: Venkateswara Naralasetty <vnaralas@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

9d740d6380e5 ath10k: Add wrapper function to ath10k debug

-- 
https://patchwork.kernel.org/patch/10919117/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
