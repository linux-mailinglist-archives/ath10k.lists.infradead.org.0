Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991E01C4F38
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 09:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUe82WAhGsnh46xZgsCyUgGC0Mvi+fD1dTQVDHTrFNA=; b=BOH7X8jPbXwFN5
	2d20w5ekZPCCP9i31gNNKJ8IRgcMK/kVH5tUhgk5A42xvt9fI0/e+8zh8ECBgWESzjgZJrKNnfiHW
	6Bs18sV89JjBCrXmfWa+wjuwJk7ke7OQgboR8yCJFX9Wgo4+Cq5aOVvelqHHa+o6BKUtJCxvmMzEz
	pt6wohkEzUXgmSA5HtVdKqeuTeo+GzwQ1RZEMF5zzPPiKWIa6c6YrW4uyQyGOPPSj8djOt/m33xJE
	c5PZDODlrYwaGoB5l4hiSptlSJkLWUKkMtndo3rlyiVVKDC8f4eiX5i/cskIQL9mWxT86/eQwb5NH
	Vus3deSdWtsRwn5epEGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVs72-0007jw-5l; Tue, 05 May 2020 07:35:32 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVs6h-0004Z1-CM
 for ath10k@lists.infradead.org; Tue, 05 May 2020 07:35:16 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588664111; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=jdXUih/dw2RAA3j/VDK1UHup5SgT35MJVZ77UKLjMnw=;
 b=TQDEvZlcZvASrFzwObQZwqFBv+PyuxwPGBnf8jV54aBdFDMAsUB6Nr54l2Y//kEZZSwgUDDH
 DricyuVdwFDpCe2SfmhFoJ9G+sIQy9j2NdvyOfk9L1A2B8hZUGgDvm4JJkrKSx+rmVRbOzKC
 JeM+NY0Oq0z75pVtLteqB6z6Qm4=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb1172e.7f0d1be42ea0-smtp-out-n03;
 Tue, 05 May 2020 07:35:10 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 09023C433F2; Tue,  5 May 2020 07:35:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B6844C433D2;
 Tue,  5 May 2020 07:35:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B6844C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: remove the max_sched_scan_reqs value
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191114050001.4658-1-wgong@codeaurora.org>
References: <20191114050001.4658-1-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200505073510.09023C433F2@smtp.codeaurora.org>
Date: Tue,  5 May 2020 07:35:10 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_003511_650834_4BE726EF 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> The struct cfg80211_wowlan of NET_DETECT WoWLAN feature share the same
> struct cfg80211_sched_scan_request together with scheduled scan request
> feature, and max_sched_scan_reqs of wiphy is only used for sched scan,
> and ath10k does not support scheduled scan request feature, so ath10k
> does not set flag NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR, but ath10k
> set max_sched_scan_reqs of wiphy to a non zero value 1, then function
> nl80211_add_commands_unsplit of cfg80211 will set it support command
> NL80211_CMD_START_SCHED_SCAN because max_sched_scan_reqs is a non zero
> value, but actually ath10k not support it, then it leads a mismatch result
> for sched scan of cfg80211, then application shill found the mismatch and
> stop running case of MAC random address scan and then the case fail.
> 
> After remove max_sched_scan_reqs value, it keeps match for sched scan and
> case of MAC random address scan pass.
> 
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
> Tested with QCA6174 PCIe with firmware WLAN.RM.4.4.1-00110-QCARMSWP-1.
> 
> Fixes: ce834e280f2f875 ("ath10k: support NET_DETECT WoWLAN feature")
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

d431f8939c14 ath10k: remove the max_sched_scan_reqs value

-- 
https://patchwork.kernel.org/patch/11243015/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
