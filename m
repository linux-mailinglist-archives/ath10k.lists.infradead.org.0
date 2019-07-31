Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E64E7BD3E
	for <lists+ath10k@lfdr.de>; Wed, 31 Jul 2019 11:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvLg0aJBR9a6WbAxdG2sShDjVObKHL4mb11RimyeSVo=; b=c+Jq1knXYzr4ho
	QuU9Mg2/C4tk7ipAbHZgwN5J+LBeaOav+B1FFhXN6Gy7ktVUPdpVSP8GIAkAtjZy9ts41nsx1DYSY
	TV5FcXtpv0bIRAfdhU6kkNqtMSQ13EJqqBJY+ow26oD0UZjjScBFnXOMuPIpofqCWJ/waLqXe64Ay
	jJaRD/Po2rY9G1RLF1eMkjeGwRq+WhI+/VTDuZpRQgNAL3MikTk5ZBm2O8CGoc21BS6KZwwMnqz7T
	KWg/YTRmyksWCC0UdKHQwP9gL2BOBZ4vgd03/3CytAPj90e7Fpw/nsIexmbA0Ua9BDiinpAiT4oGU
	trFIPcAHpXyqCL+Ab2Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskzu-0005qT-Rk; Wed, 31 Jul 2019 09:34:14 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskzq-0005qA-4U
 for ath10k@lists.infradead.org; Wed, 31 Jul 2019 09:34:11 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hskzo-0004lO-Sc; Wed, 31 Jul 2019 11:34:08 +0200
Message-ID: <7aa18e9e89743f3b4a188c8e677aad203a3ef2db.camel@sipsolutions.net>
Subject: Re: [PATCHv6 6/9] mac80211: Add api to support configuring TID
 specific configuration
From: Johannes Berg <johannes@sipsolutions.net>
To: Tamizh chelvam <tamizhr@codeaurora.org>, ath10k@lists.infradead.org
Date: Wed, 31 Jul 2019 11:34:07 +0200
In-Reply-To: <1560835632-17405-7-git-send-email-tamizhr@codeaurora.org>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-7-git-send-email-tamizhr@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_023410_185733_5808907C 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, 2019-06-18 at 10:57 +0530, Tamizh chelvam wrote:
> 
> @@ -1626,6 +1635,14 @@ struct ieee80211_vif {
>  
>  	bool txqs_stopped[IEEE80211_NUM_ACS];
>  
> +	int noack[IEEE80211_TID_MAX];
> +	int retry_short[IEEE80211_TID_MAX];
> +	int retry_long[IEEE80211_TID_MAX];
> +	int ampdu[IEEE80211_TID_MAX];
> +	u8 rate_ctrl[IEEE80211_TID_MAX];
> +	u32 rate_code[IEEE80211_TID_MAX];
> +	u8 rtscts[IEEE80211_TID_MAX];

This is quite a bit of data (176 bytes), can we make it up to the driver
to store it if supported, instead?

> @@ -2004,6 +2027,13 @@ struct ieee80211_sta {
>  
>  	struct ieee80211_txq *txq[IEEE80211_NUM_TIDS + 1];
>  
> +	int noack[IEEE80211_TID_MAX];
> +	int retry_short[IEEE80211_TID_MAX];
> +	int retry_long[IEEE80211_TID_MAX];
> +	int ampdu[IEEE80211_TID_MAX];
> +	u8 rate_ctrl[IEEE80211_TID_MAX];
> +	u8 rtscts[IEEE80211_TID_MAX];

same here.

> +static int ieee80211_set_tid_config(struct wiphy *wiphy,
> +				    struct net_device *dev,
> +				    struct ieee80211_tid_config *tid_conf)
> +{
> +	struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
> +	struct sta_info *sta;
> +	int ret;
> +
> +	if (!sdata->local->ops->set_tid_config)
> +		return -EOPNOTSUPP;
> +
> +	if (!tid_conf->peer)
> +		return drv_set_tid_config(sdata->local, sdata, NULL, tid_conf);
> +
> +	mutex_lock(&sdata->local->sta_mtx);
> +
> +	sta = sta_info_get_bss(sdata, tid_conf->peer);
> +	if (!sta) {
> +		mutex_unlock(&sdata->local->sta_mtx);
> +		return -ENOENT;
> +	}
> +
> +	ret = drv_set_tid_config(sdata->local, sdata, &sta->sta, tid_conf);
> +	mutex_unlock(&sdata->local->sta_mtx);
> +	return ret;
> +}

and you're not actually using the data anyway?

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
