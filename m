Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E91BD7A9
	for <lists+ath10k@lfdr.de>; Wed, 25 Sep 2019 07:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDuh07z5kI1+RXOpmBKVXeCxn+wAz1MuDRKYGHUUvJM=; b=Jr2BALIWr2ZrzC
	AnRYCqVVuJYwH0eBDQranJC7XjnjOCtZ2W91eKKyXvT7iP/UU8AmBjTzVuhJtM4ZO1RUHmC60RNJy
	xTGa3yh/Jga4i+2B1m/FSb1N6+lPr2PxSyvMD70PlBdJIvU4mWUTaPci+NJ0VjR054tkjSzX12zSr
	6uO7h9CL/HBfn+EeddI+G6/vBXTO4lk97av5unf8eTsUNevQfhjNqp49GhjJQ2FxXO5nJ5fvwPQm3
	x5gyR9vz0x6J+1tlotJHpI7koW1A1QguaBvpMzq3H9PBbsOXPuc/dgjgZOK+xCKPGCNdecClqGEUx
	rhUwhsRdYuXK7H/WjfVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCzck-00037i-PM; Wed, 25 Sep 2019 05:13:58 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCzce-00037N-P3
 for ath10k@lists.infradead.org; Wed, 25 Sep 2019 05:13:54 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 104EB60A05; Wed, 25 Sep 2019 05:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569388432;
 bh=uyezY+yPYzNZetQyZ4PtFeHdvxO2EXnjS44T11fWciQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=MaPkHcGfX7OfcwWqrJco4C9u4uuFo+J1WG5ru1CPadG0G4Wv54YErq+FFcvr7kYID
 xjyUTksotD4SklxrD4hobrfeT9ZpLB88g2YtXLqLrv924CqgOyGUy3037hOUfdMlNQ
 EU8bfshWrelpax7Iuv8veqe5BoIV3qvgMVeOLjoI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-106-186.rev.dnainternet.fi
 [37.136.106.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8B219602E1;
 Wed, 25 Sep 2019 05:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569388431;
 bh=uyezY+yPYzNZetQyZ4PtFeHdvxO2EXnjS44T11fWciQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Nq7ekzud6M55tO4q9LBqpQX5NkzcRHUc+iT7PFkHgAlkvzkxf71Z4yXiU8h35k3b+
 /IGWames6cbaKE+oPl1HA5F5PlAGWD/ELgTRpElVMJ+TOV4F7dUp6UPfOoOlN5POWh
 TpTyqHMHWxV3Tah23eOlohhSzyVNXYt8t5YIKXBw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8B219602E1
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Dundi Raviteja <dundi@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: Enable support for beacon interval per VAP
References: <1550579046-22649-1-git-send-email-dundi@codeaurora.org>
Date: Wed, 25 Sep 2019 08:13:47 +0300
In-Reply-To: <1550579046-22649-1-git-send-email-dundi@codeaurora.org> (Dundi
 Raviteja's message of "Tue, 19 Feb 2019 17:54:06 +0530")
Message-ID: <87pnjp3qlw.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_221352_856581_2F195111 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Dundi Raviteja <dundi@codeaurora.org> writes:

> Enable support to configure different beacon interval per VAP.
>
> To support this feature, map different beacon interval service bit
> to wmi tlv service.
>
> Tested HW: WCN3990
> Tested FW: WLAN.HL.2.0-01188-QCAHLSWMTPLZ-1
>
> Signed-off-by: Dundi Raviteja <dundi@codeaurora.org>

[...]

> --- a/drivers/net/wireless/ath/ath10k/mac.c
> +++ b/drivers/net/wireless/ath/ath10k/mac.c
> @@ -8232,6 +8232,30 @@ void ath10k_mac_destroy(struct ath10k *ar)
>  	},
>  };
>  
> +static struct
> +ieee80211_iface_combination ath10k_tlv_qcs_bcn_int_if_comb[] = {
> +	{
> +		.limits = ath10k_tlv_if_limit,
> +		.num_different_channels = 1,
> +		.max_interfaces = 4,
> +		.beacon_int_infra_match = true,
> +		.beacon_int_min_gcd = 1,
> +		.n_limits = ARRAY_SIZE(ath10k_tlv_if_limit),
> +	},
> +	{
> +		.limits = ath10k_tlv_qcs_if_limit,
> +		.num_different_channels = 2,
> +		.max_interfaces = 4,
> +		.n_limits = ARRAY_SIZE(ath10k_tlv_qcs_if_limit),
> +	},
> +	{
> +		.limits = ath10k_tlv_if_limit_ibss,
> +		.num_different_channels = 1,
> +		.max_interfaces = 2,
> +		.n_limits = ARRAY_SIZE(ath10k_tlv_if_limit_ibss),
> +	},
> +};
> +
>  static const struct ieee80211_iface_limit ath10k_10_4_if_limits[] = {
>  	{
>  		.max = 1,
> @@ -8642,6 +8666,15 @@ int ath10k_mac_register(struct ath10k *ar)
>  				ath10k_tlv_qcs_if_comb;
>  			ar->hw->wiphy->n_iface_combinations =
>  				ARRAY_SIZE(ath10k_tlv_qcs_if_comb);
> +
> +			if (test_bit
> +			    (WMI_SERVICE_VDEV_DIFFERENT_BEACON_INTERVAL_SUPPORT,
> +			    ar->wmi.svc_map)) {
> +				ar->hw->wiphy->iface_combinations =
> +						ath10k_tlv_qcs_bcn_int_if_comb;
> +				ar->hw->wiphy->n_iface_combinations =
> +				     ARRAY_SIZE(ath10k_tlv_qcs_bcn_int_if_comb);
> +			}

I don't like using WMI service flags to advertise different interface
combinations, it makes ath10k code convoluted. A much better approach is
to use WMI_SERVICE_IFACE_COMBINATION_SUPPORT:

ath10k:New interface to get interface combinations from FW

https://patchwork.kernel.org/patch/11027361/

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
