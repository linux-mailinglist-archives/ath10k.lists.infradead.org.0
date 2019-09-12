Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A632AB102C
	for <lists+ath10k@lfdr.de>; Thu, 12 Sep 2019 15:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSI8AMcC3P/X/uw4brLCgmTtGaR+niD6Sguy5C6M49I=; b=qPAlGXhaoyOGd1
	vrc8p5uZk51tZSTpPrlekX950/ruZCu/Zlu6SLEs5u4n3usxmx82TXpih9XX2XBEyimyYedjOrfBT
	x7dRfe5kc0Iyge9DvMfNY35eQLTPZon1K49YqyKgdSe7ktgYoYiL0bgExW44objZ4HBte3C7hirGs
	40cSN196UB+Uh220B/p3ja/pW0wCFcL8G1ds9/zmtObx6d8miZ5hopHL8WcrwY1aBwRSejWmbUv4J
	y2yDYmhhVDK9FwL4d/SsOIpAizkErEBUnla5yGSffY9XuAj+W7nRBjJe42MXXS/WzaFs18jJzshY7
	8BKTEw4yIb7mUriBcwEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8PMP-0000Qw-GQ; Thu, 12 Sep 2019 13:42:09 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8PMK-0000Qa-7P
 for ath10k@lists.infradead.org; Thu, 12 Sep 2019 13:42:05 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 66E9A6055A; Thu, 12 Sep 2019 13:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568295722;
 bh=Gjz7qFe3GqZ9wYkOJyZqf5Epxw35IB5gqGpCWz3xNWY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Uqx0buhKAg6qhPc464+t8SEXT86DP27khnRjMxxPPHTgbMd+4feYpCbptiRourzxR
 DNRAEIDdWfIhArKJKvyjS6FekHQ1Zx8t1ooxFqb8rjpNsp3SMXfIbKH9YD3BFmI5Hu
 3t9zXaawpo95hYujv68j6N+m9MgK8LaDWK1XJbQ0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F2F0A602F8;
 Thu, 12 Sep 2019 13:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568295722;
 bh=Gjz7qFe3GqZ9wYkOJyZqf5Epxw35IB5gqGpCWz3xNWY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Uqx0buhKAg6qhPc464+t8SEXT86DP27khnRjMxxPPHTgbMd+4feYpCbptiRourzxR
 DNRAEIDdWfIhArKJKvyjS6FekHQ1Zx8t1ooxFqb8rjpNsp3SMXfIbKH9YD3BFmI5Hu
 3t9zXaawpo95hYujv68j6N+m9MgK8LaDWK1XJbQ0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org F2F0A602F8
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH] ath10k: Fix channel info parsing for non tlv target
References: <1552044366-9186-1-git-send-email-pillair@codeaurora.org>
Date: Thu, 12 Sep 2019 16:41:58 +0300
In-Reply-To: <1552044366-9186-1-git-send-email-pillair@codeaurora.org> (Rakesh
 Pillai's message of "Fri, 8 Mar 2019 16:56:06 +0530")
Message-ID: <87r24lk4wp.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_064204_310993_D706637F 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Rakesh Pillai <pillair@codeaurora.org> writes:

> The tlv targets such as WCN3990 send more data in
> the chan info event, which is not sent by the non tlv
> targets. There is a minimum size check in the wmi event for
> non-tlv targets and hence we cannot update the common
> channel info structure.
>
> If the common channel info structure is updated, the
> size check for chan info event for non-tlv targets
> will fail and return -EPROTO

This is the code in question:

static int ath10k_wmi_op_pull_ch_info_ev(struct ath10k *ar, struct sk_buff *skb,
					 struct wmi_ch_info_ev_arg *arg)
{
	struct wmi_chan_info_event *ev = (void *)skb->data;

	if (skb->len < sizeof(*ev))
		return -EPROTO;

	skb_pull(skb, sizeof(*ev));
	arg->err_code = ev->err_code;
	arg->freq = ev->freq;
	arg->cmd_flags = ev->cmd_flags;
	arg->noise_floor = ev->noise_floor;
	arg->rx_clear_count = ev->rx_clear_count;
	arg->cycle_count = ev->cycle_count;

	return 0;
}

And here I see a disconnection between firmware and ath10k. The design
philosophy in firmware is that if the firmware does not provide all
fields, for example cycle_count in this event, the host driver is
supposed to replace the missing field with value zero and continue
normally. Obviously ath10k does not do that and instead it drops the
whole WMI event, which causes breakup like this.

The quick fix (having separate structs for TLV and 10.x interfaces) in
this patch is ok, but in the future if similar field additions arise we
need to remember to fix ath10k event parsing so that both new ath10k
will continue to work with older firmwares.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
