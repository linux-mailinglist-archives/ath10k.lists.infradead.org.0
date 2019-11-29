Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE29210D1F6
	for <lists+ath10k@lfdr.de>; Fri, 29 Nov 2019 08:43:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JoWA82OvrNReXtk5DU1N6qNObfuSampYLE6VSE0w+Y=; b=aWQSOctua3k8PK
	TXUjX9sypyq1jbKmsdXCePtTgtFZ6DXX6IrsYV+uARFwKA34FX8p9INPodA4iGD+V7ELGSj6lEkic
	sOE/kTjMZhcVXfhsRBKohU+USMGRcYkf7tteG4iQe+ZShcc+4ZFSxlkCOnuSN1leVQxJVwaalPc00
	PkdEcDhM3ipjrNWKIMwipFIZO7Wa6W/KIfmAQLF/8vnGd6h7j/eZoRP6vvto5XuyMaiupUS1SmXu5
	4LI/IRfif/wU6xjlPywCz1nFHb4ruEAZjA+7+MbbrixBkGhO8+LLCl9sjNjvBdHwPL6xXhztUpXES
	fS4JGeNMeREgGHljgedw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaawO-0005VI-5R; Fri, 29 Nov 2019 07:43:48 +0000
Received: from a27-186.smtp-out.us-west-2.amazonses.com ([54.240.27.186])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaawK-0005Uz-K5
 for ath10k@lists.infradead.org; Fri, 29 Nov 2019 07:43:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575013422;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=Gl2HS0wMAc+GGWoRiF/CrG8/d3aqFmKjJTUTFg3bnxI=;
 b=KVJpK3GUuYDt1fKyFTnQ7AFTLfL+VjQzhShorWNTbnpsFQ2x1CE9VCwua4WdI1Ya
 A5Qza3noWq/72sVPGFA9tXOR1IWYItSl6jkXavIaKdCZfkhuFaFR0d3Rpb7RywVA6al
 00GsngxjsuXdemsYn41Eg7Q8jK+YY2DevU08CUEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575013422;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=Gl2HS0wMAc+GGWoRiF/CrG8/d3aqFmKjJTUTFg3bnxI=;
 b=d2nb8+VRQ3jpSIV67Nh399evOGwKSZuKbxl8E4nqKmxqnvivn2M6PBhhxEBYsn7b
 drWzkCjO/7AlCrea83qizCVsycKRNtZJ5BxTop+xZRKY4eWi54cRALAqy61bvrmlDRR
 1QvNPKUtZSskYL9lQ4hcQOUHfkuhK/KMSYIr8qZw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 144D4C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: set WMI_PEER_AUTHORIZE after a firmware crash
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <0101016eaadee57a-54500c6d-4751-423f-8bab-5acd8fad2175-000000@us-west-2.amazonses.com>
References: <0101016eaadee57a-54500c6d-4751-423f-8bab-5acd8fad2175-000000@us-west-2.amazonses.com>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016eb61d95ae-7649e61b-4d0e-4e3d-93d1-37c138e4f461-000000@us-west-2.amazonses.com>
Date: Fri, 29 Nov 2019 07:43:42 +0000
X-SES-Outgoing: 2019.11.29-54.240.27.186
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_234344_687288_B9675431 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.186 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

> After the firmware crashes ath10k recovers via ieee80211_reconfig(),
> which eventually leads to firmware configuration and including the
> encryption keys. However, because there is no new auth/assoc and
> 4-way-handshake, and firmware set the authorize flag after
> 4-way-handshake, so the authorize flag in firmware is not set in
> firmware without 4-way-handshake. This will lead to a failure of data
> transmission after recovery done when using encrypted connections like
> WPA-PSK. Set authorize flag after installing keys to firmware will fix
> the issue.
> 
> This was noticed by testing firmware crashing using simulate_fw_crash
> debugfs file.
> 
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

382e51c139ef ath10k: set WMI_PEER_AUTHORIZE after a firmware crash

-- 
https://patchwork.kernel.org/patch/11263357/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
