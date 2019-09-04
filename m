Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4C0A7C40
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 09:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwkZzsw83qrDj3kz4wJP5hN3x6D5a0+2f7MHEhLyoT0=; b=LyJ/JlT0W9BBNR
	6WZdXVls/nKDPjpVjxNqsubXAIq1I0RDAuAlrncnuVkxT3CzPDaZi96CNTv/OnnhBqEO57Gv+8dcu
	Nhd0pLMYuXVNOJzOQxKmY5xRrC2CE6iJ94q0fhJkJyy1kzmNoFAZrOe65x1sfQ1AVPBSWb0ZCzfFR
	aKltPRNiOibtDXBqXhYVoWJDmumJ+2JEMWMiMShD8VCPEx8MVgdWiGpZZASElFO3ql2e8W5jx+OjU
	Fb0iKiln347Hj+TzIqACKUKbo2HVYa6v8AdE5c8zjD+eaIOG7ZZ+MkvuH6VbTZ4H9LzvxmfKJfQZ+
	v/fpxiQD3vDl1j6iDFLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5PL4-00031j-5s; Wed, 04 Sep 2019 07:04:22 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5PKi-0002xq-QS
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 07:04:05 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.1) (envelope-from <johannes@sipsolutions.net>)
 id 1i5PKd-0008GG-Mb; Wed, 04 Sep 2019 09:03:55 +0200
Message-ID: <582e0a7eef96bb7d97fee4bae340ded97fda86a2.camel@sipsolutions.net>
Subject: Re: [PATCH] mac80211: Store max_mtu in ieee80211_hw
From: Johannes Berg <johannes@sipsolutions.net>
To: Wen Gong <wgong@codeaurora.org>, ath10k@lists.infradead.org
Date: Wed, 04 Sep 2019 09:03:54 +0200
In-Reply-To: <1567577743-27684-1-git-send-email-wgong@codeaurora.org>
References: <1567577743-27684-1-git-send-email-wgong@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_000402_917503_06ADCF66 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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

On Wed, 2019-09-04 at 14:15 +0800, Wen Gong wrote:
> Make it possibly for drivers to adjust the default mat_mtu
> by storing it in the hardware struct.
> 
> +++ b/net/mac80211/iface.c
> @@ -1877,7 +1877,10 @@ int ieee80211_if_add(struct ieee80211_local *local, const char *name,
>  
>  		/* MTU range: 256 - 2304 */
>  		ndev->min_mtu = 256;
> -		ndev->max_mtu = IEEE80211_MAX_DATA_LEN;
> +		if (local->hw.max_mtu)
> +			ndev->max_mtu = local->hw.max_mtu;
> +		else
> +			ndev->max_mtu = IEEE80211_MAX_DATA_LEN;

It seems (slightly) preferable to me to just initialize the value in
local->hw.max_mtu in alloc_hw(), so the driver can override it before
register_hw(), and then use it here unconditionally. Any particular
reason for it being this way?

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
