Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA2C191369
	for <lists+ath10k@lfdr.de>; Tue, 24 Mar 2020 15:40:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=047tEFkwEmaV6y1xOSwnPazX4cqm7ipmeoK7i5WkjEg=; b=VMrAgcVo1PhGUe
	+NUF/a52IMFGpr0ELr/CUECUa6wwl0X2N4Bnqdkm1Bpbx+DogKgmsG175tFCk9yxSgqtlqnw7z8Ww
	60D4jllpxFyBrX8O/HFp2ZY6K35OnsJ95RG6t0vP0uAFL73jCpHNWVmzNb9lSPGDX34VqLofUVj+b
	9TNyBSSEwasys0H9Z/a/mlpBxkZYEuH6m+QmmJBSuriulCxqWfeUBLO/qNSfyfpku0sE/BlFVc+05
	4pE+/LADm8IWJGuRGLWgf34o+WkmfdOCrlZz8/TbBfUM/YBuCiLgYdbrjmevGYj1sLt5ex+YNTnf3
	QOfjzSuyTVyNrC9Yb4yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkjI-0001T1-Of; Tue, 24 Mar 2020 14:40:32 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkjE-0001SS-3d
 for ath10k@lists.infradead.org; Tue, 24 Mar 2020 14:40:30 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585060827; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=VfQKcT7khd2+6JZyPuSQg6Rf6tDnonZTjbtFC7brpe0=;
 b=opIkm3KIcffZpGR4JL0NQ3+UnsHueVb2d1ykLVnmFo8qt7XJRjK4CP8FoLSMk4zeWhg2hahs
 ePQWIF/QTCRIME2Di8iwK1glnjJcpUE7eFeoCSjfrw+pxg/HCZeUYTN9Z7v6HoV8FHj6Sup6
 wGYM6GJ9mBB6Nm4I3pIIX3ni6L8=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7a1bda.7ff2cea63e68-smtp-out-n01;
 Tue, 24 Mar 2020 14:40:26 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 944F3C433D2; Tue, 24 Mar 2020 14:40:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 46117C433CB;
 Tue, 24 Mar 2020 14:40:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 46117C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Yu Wang <yyuwang@codeaurora.org>
Subject: Re: [PATCH v2 2/2] ath10k: correct legacy rate in tx stats
References: <1574147982-3956-1-git-send-email-yyuwang@codeaurora.org>
 <0101016e82882548-361b3da4-fd9b-4ba9-95b6-a5d782d4a1c8-000000@us-west-2.amazonses.com>
Date: Tue, 24 Mar 2020 16:40:21 +0200
In-Reply-To: <0101016e82882548-361b3da4-fd9b-4ba9-95b6-a5d782d4a1c8-000000@us-west-2.amazonses.com>
 (Yu Wang's message of "Tue, 19 Nov 2019 07:19:50 +0000")
Message-ID: <87h7yd4y0a.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_074029_125712_57189906 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Yu Wang <yyuwang@codeaurora.org> writes:

> When working in station mode, after connected to a legacy
> AP, 11g only, for example, the tx bitrate is incorrect in
> output of command 'iw wlan0 link'.
>
> That's because the legacy tx bitrate value reported by
> firmware is not well handled:
> For QCA6174, the value represents rate index, but treated
> as a real rate;
> For QCA9888, the value is real rate, with unit 'Mbps', but
> treated as '100kbps'.
>
> To fix this issue:
> 1. Translate the rate index to real rate for QCA6174;
> 2. Translate the rate from 'Mbps' to 'kbps' for QCA9888.
>
> Tested with:
> QCA6174 PCIe with firmware WLAN.RM.4.4.1.c3-00031.
> QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
> QCA9888 PCIe with firmware 10.4-3.9.0.2-00040.
>
> Signed-off-by: Yu Wang <yyuwang@codeaurora.org>

[...]

> @@ -3723,6 +3729,74 @@ static void ath10k_htt_rx_sec_ind_handler(struct ath10k *ar,
>  	spin_unlock_bh(&ar->data_lock);
>  }
>  
> +static int
> +ath10k_htt_update_ratecode(struct ath10k *ar, struct ath10k_sta *arsta,
> +			   u8 *ratecode)
> +{
> +	u8 hw_rate, preamble;
> +	u16 bitrate;
> +	int i;
> +	const struct ieee80211_rate *bitrates;
> +	bool cck;
> +	struct ieee80211_chanctx_conf *conf = NULL;
> +	enum nl80211_band band;
> +	struct ieee80211_supported_band *sband;
> +
> +	if (!ratecode)
> +		return -EINVAL;
> +
> +	/* only for legacy ratecode */
> +	preamble = ATH10K_HW_PREAMBLE(*ratecode);
> +	if (preamble != WMI_RATE_PREAMBLE_CCK &&
> +	    preamble != WMI_RATE_PREAMBLE_OFDM)
> +		return 0;
> +
> +	if (!arsta->arvif || !arsta->arvif->vif)
> +		return -EINVAL;
> +
> +	WARN_ON(!rcu_read_lock_held());
> +	conf = rcu_dereference(arsta->arvif->vif->chanctx_conf);
> +	if (!conf)
> +		return -EINVAL;
> +
> +	band = conf->def.chan->band;
> +	sband = &ar->mac.sbands[band];
> +	if (!sband->bitrates)
> +		return -EINVAL;
> +
> +	if (WARN_ON_ONCE(sband->n_bitrates > S8_MAX))
> +		return -EINVAL;
> +
> +	cck = (preamble == WMI_RATE_PREAMBLE_CCK);
> +	hw_rate = ATH10K_HW_LEGACY_RATE(*ratecode);
> +	for (i = 0; i < sband->n_bitrates; i++) {
> +		bitrates = &sband->bitrates[i];
> +		if (ath10k_mac_bitrate_is_cck(bitrates->bitrate) != cck)
> +			continue;
> +
> +		if (bitrates->hw_value == hw_rate ||
> +		    (bitrates->flags & IEEE80211_RATE_SHORT_PREAMBLE &&
> +		     bitrates->hw_value_short == hw_rate)) {
> +			bitrate = bitrates->bitrate;
> +
> +			/* The bitrate will be recovered in
> +			 * ath10k_update_per_peer_tx_stats().
> +			 */
> +			if (bitrate == 55)
> +				bitrate = 60;
> +
> +			bitrate = bitrate / 10;

Here you use magic value 60 but in ath10k_update_per_peer_tx_stats() you
use magic value 50:

> +		/* from 1Mbps to 100Kbps */
> +		rate = rate * 10;
> +		if (rate == 50)
> +			rate = 55;

Am I missing something or how is this supposed to work?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
