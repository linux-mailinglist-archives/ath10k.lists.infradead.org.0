Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041EDBB289
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 13:00:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijWDtUaMjZIF+uQgnra60NC+IgsHGEv4drmTmbqk8rI=; b=Fy2L0aXHfKNWoa
	ZhSPID8cdMMG5zEsZkKr+3ZZjG2gF/zIVrFUkhlkES44Jr++FpYNswWh5RGffHgnylL13o/+y9mQF
	dZcdkwt/AuZzoKeUxyEQQk/nORC4sSBdGRIHmlC8NNiWwozZN2Y4GeehoEH4Rrl2mQwhhxHaj0R9z
	jd5b8UQNW7RtZ0xNeQEW9PGl9vN88eROjHJNKXFAifCcWpp7fgpb0VPEwjjZWx/s2s5cFlvYocF1/
	UiQNviQhGbTfuPs9VRxghXMUjFdLOsHxm3GRbNf9Z5nGcvN8LdpVKllDDXxDMhO3oAY3dclBdAVk9
	r6i9CNmmmX+xHWzULuYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCM5O-0005Ox-Rg; Mon, 23 Sep 2019 11:00:54 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCM5J-0005OX-A6
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 11:00:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569236448;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=waakQH4yG/db0MujkCb3FFRRuoTH6HXUpqPKpYLZu8o=;
 b=DFfHaA/lU5Y++CYv6mzjEHd8m/oBaw4E9xb6huHy2ZNuhWq5FnMwyj2j+YFR0GHAfghPXx
 cUMCtlgP2fGiE6Lx6emIxOQgyKs0VWyZ1YNM0ZczGfCFDkQLZ/fuZghGv2csAz84t5bxGT
 aS21TCKHl2kYp9dAA+qn+cmSvapCBsM=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-yQqtJL0ZOqWnWKPGhbii_Q-1; Mon, 23 Sep 2019 07:00:45 -0400
Received: by mail-lj1-f197.google.com with SMTP id v24so2849594ljh.23
 for <ath10k@lists.infradead.org>; Mon, 23 Sep 2019 04:00:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Q/2CfyJmKEePPgH8t4dJFqZmM1MkyzcIowYj12cLr1U=;
 b=n67d8Wy/hfykLP+JOCk/UaxGXad/3YRRUJekwqHYOJKSmUIWYa6aDxMmzco4PUFK/y
 adCzgKoyvL09OhkGML0D/c3BREZQnj8BkheRMgqkXwQwxp/ICMkLH0/CAVbCa86nXpsu
 ZMiVn3M7aUouTF2Elepspo5wJNqpZvcHwG63+qoHbbDujeYhKsqxR/Hys/3yzk434HiZ
 zdqKXVI4I2F6NXf82DxqrL8xTnyiKnbvNk5Yrkeg7dPuetq0aULlkZbkxvdGPHdLxxw8
 iD9OorweasOeadsA1bZA6+beujsrJ8O1Iry2uqBrR8umjheu+wAM43iJPqeZ5jz/rMkK
 4msg==
X-Gm-Message-State: APjAAAViCmY6ju+uO8k3TRyWcmIXbP4NC3cSOXEge44s9C3PpUZeRTTo
 gIZiDJgYz70cody9yHm07SaAayNHJvSY7JjjABWYECxnsc0OSuVdbMu/pTmp2yYtcewg/dXuMPJ
 UynsodPexpifEDAJpGHkfwg==
X-Received: by 2002:a2e:9096:: with SMTP id l22mr16997618ljg.125.1569236444571; 
 Mon, 23 Sep 2019 04:00:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxnDcc3U0+xNGiec4I9ZluLk98FbV4td/u2fIji3V4t1Sd55p+XIy9R8ziFgRigxh7HlV+YUQ==
X-Received: by 2002:a2e:9096:: with SMTP id l22mr16997612ljg.125.1569236444394; 
 Mon, 23 Sep 2019 04:00:44 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id e19sm2216211lja.8.2019.09.23.04.00.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 04:00:43 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id AA7471804C8; Mon, 23 Sep 2019 13:00:42 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org
Subject: Re: [PATCH V3 4/4] mac80211: Sync airtime weight sum with per AC
 synced sta airtime weight together
In-Reply-To: <1569223201-1490-5-git-send-email-yiboz@codeaurora.org>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
 <1569223201-1490-5-git-send-email-yiboz@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 23 Sep 2019 13:00:42 +0200
Message-ID: <87blvb5lb9.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: yQqtJL0ZOqWnWKPGhbii_Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_040050_240573_3B613347 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Yibo Zhao <yiboz@codeaurora.org> writes:

> Global airtime weight sum is updated only when txq is added/removed
> from rbtree. If upper layer configures sta weight during high load,
> airtime weight sum will not be updated since txq is most likely on the
> tree. It could a little late for upper layer to reconfigure sta weight
> when txq is already in the rbtree. And thus, incorrect airtime weight sum
> will lead to incorrect global virtual time calculation as well as overflow
> of airtime weight sum during txq removed.
>
> Hence, need to update airtime weight sum upon receiving event for
> configuring sta weight once sta's txq is on the rbtree.
>
> Besides, if airtime weight sum of ACs and sta weight is synced under the
> same per AC lock protection, there can be a very short window causing
> incorrct airtime weight sum calculation as below:
>
>     active_txq_lock_VO                          .
>     VO weight sum is syncd			.
>     sta airtime weight sum is synced		.
>     active_txq_unlock_VO			.
>     .						.
>     active_txq_lock_VI    			.
>     VI weight sum is syncd			.
>     sta airtime weight sum		active_txq_lock_BE
>     active_txq_unlock_VI	      Remove txq and thus sum
>     .				      is calculated with synced
>     .				      sta airtime weight
>     .					active_txq_unlock_BE
>
> So introduce a per ac synced station airtime weight synced with per
> AC synced weight sum together. And the per-AC station airtime weight
> is used to calculate weight sum.
>
> Signed-off-by: Yibo Zhao <yiboz@codeaurora.org>
> ---
>  net/mac80211/cfg.c         | 29 ++++++++++++++++++++++++++---
>  net/mac80211/debugfs_sta.c |  2 +-
>  net/mac80211/sta_info.c    |  9 ++++-----
>  net/mac80211/sta_info.h    |  5 +++--
>  net/mac80211/tx.c          |  4 ++--
>  5 files changed, 36 insertions(+), 13 deletions(-)
>
> diff --git a/net/mac80211/cfg.c b/net/mac80211/cfg.c
> index d65aa01..c8a0683 100644
> --- a/net/mac80211/cfg.c
> +++ b/net/mac80211/cfg.c
> @@ -1284,7 +1284,8 @@ static int sta_apply_parameters(struct ieee80211_local *local,
>  	int ret = 0;
>  	struct ieee80211_supported_band *sband;
>  	struct ieee80211_sub_if_data *sdata = sta->sdata;
> -	u32 mask, set;
> +	u32 mask, set, tid, ac, pre_weight;
> +	struct txq_info *txqi;
>  
>  	sband = ieee80211_get_sband(sdata);
>  	if (!sband)
> @@ -1452,8 +1453,30 @@ static int sta_apply_parameters(struct ieee80211_local *local,
>  	if (ieee80211_vif_is_mesh(&sdata->vif))
>  		sta_apply_mesh_params(local, sta, params);
>  
> -	if (params->airtime_weight)
> -		sta->airtime_weight = params->airtime_weight;
> +	if (params->airtime_weight &&
> +	    params->airtime_weight != sta->airtime_weight) {

This check doesn't work I think? You're not using the array-based
sta->airtime_weight[], and there are locking issues by just checking
like this; so maybe just keep the if() on params->airtime_weight, and do
the checking inside the loop while holding the lock?

Or could we just turn the weights into atomics to avoid the locking
entirely?

> +		for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
> +			spin_lock_bh(&local->active_txq_lock[ac]);
> +			for (tid = 0; tid < IEEE80211_NUM_TIDS + 1; tid++) {
> +				if (!sta->sta.txq[tid] ||
> +				    ac != ieee80211_ac_from_tid(tid))
> +					continue;
> +
> +				pre_weight = sta->airtime_weight[ac];
> +				sta->airtime_weight[ac] =
> +						params->airtime_weight;
> +
> +				txqi = to_txq_info(sta->sta.txq[tid]);
> +				if (RB_EMPTY_NODE(&txqi->schedule_order))
> +					continue;
> +
> +				local->airtime_weight_sum[ac] = local->airtime_weight_sum[ac] +
> +								params->airtime_weight -
> +								pre_weight;
> +			}
> +			spin_unlock_bh(&local->active_txq_lock[ac]);
> +		}
> +	}
>  
>  	/* set the STA state after all sta info from usermode has been set */
>  	if (test_sta_flag(sta, WLAN_STA_TDLS_PEER) ||
> diff --git a/net/mac80211/debugfs_sta.c b/net/mac80211/debugfs_sta.c
> index 80028da..43a7e6a 100644
> --- a/net/mac80211/debugfs_sta.c
> +++ b/net/mac80211/debugfs_sta.c
> @@ -223,7 +223,7 @@ static ssize_t sta_airtime_read(struct file *file, char __user *userbuf,
>  		"Virt-T: VO: %lld us VI: %lld us BE: %lld us BK: %lld us\n",
>  		rx_airtime,
>  		tx_airtime,
> -		sta->airtime_weight,
> +		sta->airtime_weight[0],
>  		v_t[0],
>  		v_t[1],
>  		v_t[2],
> diff --git a/net/mac80211/sta_info.c b/net/mac80211/sta_info.c
> index feac975..e599cf1 100644
> --- a/net/mac80211/sta_info.c
> +++ b/net/mac80211/sta_info.c
> @@ -384,11 +384,10 @@ struct sta_info *sta_info_alloc(struct ieee80211_sub_if_data *sdata,
>  	if (sta_prepare_rate_control(local, sta, gfp))
>  		goto free_txq;
>  
> -	sta->airtime_weight = IEEE80211_DEFAULT_AIRTIME_WEIGHT;
> -
>  	for (i = 0; i < IEEE80211_NUM_ACS; i++) {
>  		skb_queue_head_init(&sta->ps_tx_buf[i]);
>  		skb_queue_head_init(&sta->tx_filtered[i]);
> +		sta->airtime_weight[i] = IEEE80211_DEFAULT_AIRTIME_WEIGHT;
>  	}
>  
>  	for (i = 0; i < IEEE80211_NUM_TIDS; i++)
> @@ -1850,11 +1849,11 @@ void ieee80211_sta_register_airtime(struct ieee80211_sta *pubsta, u8 tid,
>  	sta->airtime[ac].tx_airtime += tx_airtime;
>  	sta->airtime[ac].rx_airtime += rx_airtime;
>  
> -	weight_sum = local->airtime_weight_sum[ac] ?: sta->airtime_weight;
> +	weight_sum = local->airtime_weight_sum[ac] ?: sta->airtime_weight[ac];
>  
>  	/* Round the calculation of global vt */
>  	local->airtime_v_t[ac] += (airtime + (weight_sum >> 1)) / weight_sum;
> -	sta->airtime[ac].v_t += airtime / sta->airtime_weight;
> +	sta->airtime[ac].v_t += airtime / sta->airtime_weight[ac];
>  	ieee80211_resort_txq(&local->hw, txq);
>  
>  	spin_unlock_bh(&local->active_txq_lock[ac]);
> @@ -2236,7 +2235,7 @@ void sta_set_sinfo(struct sta_info *sta, struct station_info *sinfo,
>  	}
>  
>  	if (!(sinfo->filled & BIT_ULL(NL80211_STA_INFO_AIRTIME_WEIGHT))) {
> -		sinfo->airtime_weight = sta->airtime_weight;
> +		sinfo->airtime_weight = sta->airtime_weight[0];
>  		sinfo->filled |= BIT_ULL(NL80211_STA_INFO_AIRTIME_WEIGHT);
>  	}
>  
> diff --git a/net/mac80211/sta_info.h b/net/mac80211/sta_info.h
> index 5055f94..2697343 100644
> --- a/net/mac80211/sta_info.h
> +++ b/net/mac80211/sta_info.h
> @@ -476,7 +476,8 @@ struct ieee80211_sta_rx_stats {
>   * @tid_seq: per-TID sequence numbers for sending to this STA
>   * @airtime: per-AC struct airtime_info describing airtime statistics for this
>   *	station
> - * @airtime_weight: station weight for airtime fairness calculation purposes
> + * @airtime_weight: station per-AC weight for airtime fairness calculation
> + * purposes
>   * @ampdu_mlme: A-MPDU state machine state
>   * @mesh: mesh STA information
>   * @debugfs_dir: debug filesystem directory dentry
> @@ -602,7 +603,7 @@ struct sta_info {
>  	u16 tid_seq[IEEE80211_QOS_CTL_TID_MASK + 1];
>  
>  	struct airtime_info airtime[IEEE80211_NUM_ACS];
> -	u16 airtime_weight;
> +	u16 airtime_weight[IEEE80211_NUM_ACS];
>  
>  	/*
>  	 * Aggregation information, locked with lock.
> diff --git a/net/mac80211/tx.c b/net/mac80211/tx.c
> index 60cf569..286cf14 100644
> --- a/net/mac80211/tx.c
> +++ b/net/mac80211/tx.c
> @@ -3735,7 +3735,7 @@ void ieee80211_schedule_txq(struct ieee80211_hw *hw,
>  		struct sta_info *sta = container_of(txq->sta,
>  						    struct sta_info, sta);
>  
> -		local->airtime_weight_sum[ac] += sta->airtime_weight;
> +		local->airtime_weight_sum[ac] += sta->airtime_weight[ac];
>  		if (local->airtime_v_t[ac] > AIRTIME_GRACE)
>  			sta->airtime[ac].v_t = max(local->airtime_v_t[ac] - AIRTIME_GRACE,
>  						   sta->airtime[ac].v_t);
> @@ -3779,7 +3779,7 @@ static void __ieee80211_unschedule_txq(struct ieee80211_hw *hw,
>  		struct sta_info *sta = container_of(txq->sta,
>  						    struct sta_info, sta);
>  
> -		local->airtime_weight_sum[ac] -= sta->airtime_weight;
> +		local->airtime_weight_sum[ac] -= sta->airtime_weight[ac];
>  	}
>  
>  	rb_erase_cached(&txqi->schedule_order,
> -- 
> 1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
