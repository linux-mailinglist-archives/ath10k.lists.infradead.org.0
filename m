Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30785B5774
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 23:24:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JK1k63v1Qsiu4XmNOG2GY3zUVKQcjfnbmQ40Y+PD+yU=; b=VCTsfjRS2pKB6J
	HWgC8MKCqOOP8r1ot1hDZZ8T/sxLrUAdh4/pRgEJlIDjoXRTGfBft9tDjwYzfNmzeRv11NYHiO3MH
	hGm44GhKkUGwMU/Cw7KsEJtKILXzrJkfCVqr0Yd8EsA7QEDqXTJ4C2Kwo6YQ2jPB5G2P377B9GGHi
	7a81t44DBTttVeOjF1fyvrQok+g11X5xHVTO/wmb4JmZ31qXjyo27m0tbwD4EmoRyC1xkOD+EU7Zu
	vN9GbqFJTbADNW/uuKqZOAwsFIcf2jOiHADmRXjxa/8YvPW0cXvihN0qhOivMmsiRcQmDmXE2Li2m
	U+aUrue7LWj4Xrg7nnZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAKxc-0002M5-AB; Tue, 17 Sep 2019 21:24:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAKxI-0002Be-KT
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 21:24:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568755451;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=b+48ay1mPqVDwtIAllu2J8td7+qP7si1SshjLTYZLWI=;
 b=c4KmWTHxvfjahHnb+IlmpS+cfFVFBw6v6DHYsY/6MGZgmyKv4h3PveZP5DLXTZ/hb3U+Bs
 DFe6KnVTKCqq4VLG4E+nf+fXd/lMMyUIWyGCSS3d9Sq20BV8+m+PjKt3hMURBINKCxybfO
 tiA2EABp5K1DV8TEHMS6H54j8cFKJak=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-319-o-s2OGg6MnuJ7SKS2erZxg-1; Tue, 17 Sep 2019 17:24:07 -0400
Received: by mail-ed1-f70.google.com with SMTP id s3so2993779edr.15
 for <ath10k@lists.infradead.org>; Tue, 17 Sep 2019 14:24:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Jrok+0k/p7koNFbJcq2OElkCvD+CG1bEZ3scb71tObQ=;
 b=Llx8PtT+q4PbMxOwEA75WS3RPd4j4QW2+TlFIJ+wBvXyanQlR5PENsHPR8pJYniat1
 0QRnbZckKgWelqU9MUynHgrUciAQssBT4UF/PXhCpJ34R9odR73t6ANb8vLQ5FcOMBeH
 D3sHfJxA1BuxCJNDnazSPWp3VtWNyOe8lapfJEDF+282URyAUeDXomUY7H2XqyMLmWtT
 CSjllltg3KcLmwwE2+SJODZEL/RGyvRVpq2r8hIr2rRfXApvlIMl/+fWGzaviMAP6MTE
 qR4vg+j4LyW4kk2MPgdwJQZVMRzCPIh4lnHGCXp6yMUxySrRJiUBi36gjNGO6UbdMOG9
 ov8A==
X-Gm-Message-State: APjAAAVJ38seRN3JMcYiDw3oxPhS1fWszH1Se2lvFlnkrt2slvbbMsh3
 uRxjw+dIJrE0CxHAweVcVMQInM8mlA5+PAbnTb2Bfi4QKPWESjWNoLvK+tthk0QPtB5+qKe3JxZ
 /6saZMYdq7LdWAa6k9uOz/Q==
X-Received: by 2002:a50:d090:: with SMTP id v16mr7040874edd.176.1568755446561; 
 Tue, 17 Sep 2019 14:24:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyoS9BolYvd7bL6xJTfLlF4+ftyAAboQdIJXjbk/pXVZmGgYvhUlYqGbVSLDOCDdIu1G6J83g==
X-Received: by 2002:a50:d090:: with SMTP id v16mr7040865edd.176.1568755446408; 
 Tue, 17 Sep 2019 14:24:06 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id nk2sm321521ejb.28.2019.09.17.14.24.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 14:24:05 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id A659E1800B9; Tue, 17 Sep 2019 23:24:04 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>, ath10k@lists.infradead.org
Subject: Re: [PATCH 4/4] mac80211: Sync airtime weight sum with per AC synced
 sta airtime weight together
In-Reply-To: <1568639388-27291-4-git-send-email-yiboz@codeaurora.org>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-4-git-send-email-yiboz@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 17 Sep 2019 23:24:04 +0200
Message-ID: <87impqipl7.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: o-s2OGg6MnuJ7SKS2erZxg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_142413_385582_9A99589C 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org
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
> will lead to incorrect global virtual time calculation as well as global
> airtime weight sum overflow of airtime weight sum during txq removed.
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
>  net/mac80211/cfg.c      | 27 +++++++++++++++++++++++++--
>  net/mac80211/sta_info.c |  6 ++++--
>  net/mac80211/sta_info.h |  3 +++
>  net/mac80211/tx.c       |  4 ++--
>  4 files changed, 34 insertions(+), 6 deletions(-)
>
> diff --git a/net/mac80211/cfg.c b/net/mac80211/cfg.c
> index d65aa01..4b420bb 100644
> --- a/net/mac80211/cfg.c
> +++ b/net/mac80211/cfg.c
> @@ -1284,7 +1284,8 @@ static int sta_apply_parameters(struct ieee80211_local *local,
>  	int ret = 0;
>  	struct ieee80211_supported_band *sband;
>  	struct ieee80211_sub_if_data *sdata = sta->sdata;
> -	u32 mask, set;
> +	u32 mask, set, tid, ac;
> +	struct txq_info *txqi;
>  
>  	sband = ieee80211_get_sband(sdata);
>  	if (!sband)
> @@ -1452,8 +1453,30 @@ static int sta_apply_parameters(struct ieee80211_local *local,
>  	if (ieee80211_vif_is_mesh(&sdata->vif))
>  		sta_apply_mesh_params(local, sta, params);
>  
> -	if (params->airtime_weight)
> +	if (params->airtime_weight &&
> +	    params->airtime_weight != sta->airtime_weight) {
> +		for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
> +			spin_lock_bh(&local->active_txq_lock[ac]);
> +			for (tid = 0; tid < IEEE80211_NUM_TIDS + 1; tid++) {
> +				if (!sta->sta.txq[tid] ||
> +				    ac != ieee80211_ac_from_tid(tid))
> +					continue;
> +
> +				sta->airtime_weight_synced[ac] =
> +							params->airtime_weight;
> +
> +				txqi = to_txq_info(sta->sta.txq[tid]);
> +				if (RB_EMPTY_NODE(&txqi->schedule_order))
> +					continue;
> +
> +				local->airtime_weight_sum[ac] = local->airtime_weight_sum[ac] +
> +								params->airtime_weight -
> +								sta->airtime_weight;
> +			}
> +			spin_unlock_bh(&local->active_txq_lock[ac]);
> +		}
>  		sta->airtime_weight = params->airtime_weight;

With this, airtime_weight is basically only used to return to and from
userspace, right? I.e., after the above loop has run, it will match the
contents of airtime_weight_synced; so why not just turn airtime_weight
into  a per-ac array? You could just use airtime_weight[0] as the value
to return to userspace...

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
