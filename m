Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F74F4504
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 11:52:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=85gmKklwgymxDx8KOkf/FozNZBgaknbYZI+At+c+9bk=; b=DZIp9f4wn+BUXv
	vhttwyqW9QuTHpV1dsi+Dwzk5+ciro+QXjLs24zpFWZudx5wN0rMzZIbybs+HDoeV8lJKTgOEzMxk
	tUjF2sFS4kwMF5fs8xeVvCmvKj/N7ur1q5sj00x9rulsS8s0ixsXLaZyXBZSdRAzDJXGHhEIa7RIj
	muMS6tddHqfmSSDJ79cmkTn0cgDZYoZgIuljooZzh2XhLsvyKm779hStC8aB1TFPbV3B7mzKwOOfj
	hK62iGjrpAocm8dCCACqyDZYZiXYCIJjup7b6jlpAw5/iBNOebMX7Ox7nvPl/AETWnY7tg18v8H/4
	UxYeXrNzNhn7MVShjZwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1sd-0002Xk-Rb; Fri, 08 Nov 2019 10:52:39 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1sa-0002X8-1o
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 10:52:37 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.3) (envelope-from <johannes@sipsolutions.net>)
 id 1iT1sX-0008Pk-Qc; Fri, 08 Nov 2019 11:52:33 +0100
Message-ID: <fadb0452c72b2e64ef5577b4b0fdf9c2ada49430.camel@sipsolutions.net>
Subject: Re: [PATCH V9 2/3] mac80211: add hw 80211 encapsulation offloading
 support
From: Johannes Berg <johannes@sipsolutions.net>
To: John Crispin <john@phrozen.org>
Date: Fri, 08 Nov 2019 11:52:32 +0100
In-Reply-To: <20191029091304.7330-3-john@phrozen.org>
References: <20191029091304.7330-1-john@phrozen.org>
 <20191029091304.7330-3-john@phrozen.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_025236_094407_9E44E25F 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Vasanthakumar Thiagarajan <vthiagar@qti.qualcomm.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

FWIW, I applied the first patch since it's just some preparation.

Couple of questions on this.

> +/**
> + * ieee80211_set_hw_80211_encap - enable hardware encapsulation offloading.
> + *
> + * This function is used to notify mac80211 that a vif can be passed raw 802.3.
> + * The driver needs to then handle the 802.11 encapsulation inside the hardware
> + * or firmware.
> + *
> + * The driver should call this function during the creation of the vif instance.

You state this, here ("during creation"), and that makes sense given the
fact that you redirect the ops, and I don't know how the network stack
behaves. Hard to imagine it could do much with it other than dereference
and then both pointers are valid, but still ...

Or did you mean this only because of the locking?

> +bool ieee80211_set_hw_80211_encap(struct ieee80211_vif *vif, bool enable)
> +{
> +	struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
> +	struct ieee80211_local *local = sdata->local;
> +	struct ieee80211_sub_if_data *iter;
> +	struct ieee80211_key *key;
> +
> +	sdata_assert_lock(sdata);

that is required here?

> +	mutex_lock(&local->iflist_mtx);
> +	list_for_each_entry(iter, &local->interfaces, list) {
> +		if (vif->type == NL80211_IFTYPE_MONITOR)
> +			__ieee80211_set_hw_80211_encap(iter, false);
> +		else if (iter->vif.type == NL80211_IFTYPE_MONITOR)
> +			enable = false;

(side note - maybe some debug messages in these cases would be useful?)

> +++ b/net/mac80211/key.c
> @@ -176,6 +176,10 @@ static int ieee80211_key_enable_hw_accel(struct ieee80211_key *key)
>  		}
>  	}
>  
> +	/* TKIP countermeasures don't work in encap offload mode */
> +	if (key->conf.cipher == WLAN_CIPHER_SUITE_TKIP)
> +		ieee80211_set_hw_80211_encap(&sdata->vif, false);

But now here we're long in operation already, and could suddenly reset
this. Is that valid from the network stack's POV?

Also, minor detail ;-)

This will deadlock if it actually has to disable hwaccel because inside
it you re-acquire the key_mtx you already hold here. I think inside of
the function you can just bypass all the checks that set enable=false if
it's already false anyway, and then you don't have that issue? Or just
call __ieee80211_set_hw_80211_encap() and duplicate the test for doing
nothing in there ...

> @@ -202,6 +206,9 @@ static int ieee80211_key_enable_hw_accel(struct ieee80211_key *key)
>  			  key->conf.keyidx,
>  			  sta ? sta->sta.addr : bcast_addr, ret);
>  
> +	if (sdata->hw_80211_encap)
> +		return -EINVAL;

If this is a valid scenario and the driver didn't anyway say it doesn't
want software crypto, should this switch back to non-hwaccel? OTOH, if
that happens in the middle of the connection (GTK rekeying or such?) for
some reason, probably everything breaks left and right ... I guess it's
better this way.

> @@ -2875,7 +2876,8 @@ void ieee80211_check_fast_xmit(struct sta_info *sta)
>  	struct ieee80211_chanctx_conf *chanctx_conf;
>  	__le16 fc;
>  
> -	if (!ieee80211_hw_check(&local->hw, SUPPORT_FAST_XMIT))
> +	if (!ieee80211_hw_check(&local->hw, SUPPORT_FAST_XMIT) ||
> +	    sdata->hw_80211_encap)
>  		return;

Not sure I understand this - we're not treating the offload as fast-
xmit? Couldn't we bypass more by doing so?

Might be good to add a comment here either way.

Actually, we don't get here with a packet whose TX will be offloaded, do
we? Does this even matter?

> +	rcu_read_lock();
> +
> +	if (ieee80211_lookup_ra_sta(sdata, skb, &sta))
> +		goto out_free;
> +
> +	ieee80211_8023_xmit(sdata, dev, sta, skb);
> +
> +	goto out;
> +
> +out_free:
> +	kfree_skb(skb);

You only use that label once, and you don't really need any?

if (lookup())
	kfree_skb(skb);
else
	ieee80211_8023_xmit();

rcu_read_unlock;
return NETDEV_TX_OK;

is equivalent, no?

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
