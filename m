Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057C119EA9
	for <lists+ath10k@lfdr.de>; Fri, 10 May 2019 16:04:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vMQG50Qt/GdSUeCrH79Fq0Gcr96emaCkU02Q3WTyuTQ=; b=t9oal4D4pwp4JrEZN/OHAlYSJ
	xyT+GajJ4o34xlBqZU8odm9beEeuy16Rqo9oOMiJVfnJkwYMfkviv7OaESWRO4acXHVoH/a1AUHEC
	rvB8VwZjK712LFNUT7N5db146+9IUue5B4wPONsCpRJdVftHfNzEreZeVTRShUU4hyMlo9hHAbzz6
	KRlchfGor+GTuMa1KKNVuEVZmISBtoZpukP49i9F9BN9AuYtx3DJ/jY+0IO7PGoICfCKZi34G4fqf
	7sFeCtaawqcR+QhnqzW3qC96c49gg52ttGeC2PEOCUGQdDdF5MR8Ey8LH7WcPR/X63DfS9VhFiZKr
	39AsYcKyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP68M-0001FV-CZ; Fri, 10 May 2019 14:04:22 +0000
Received: from [208.74.158.174] (helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP68I-0001Em-5D
 for ath10k@lists.infradead.org; Fri, 10 May 2019 14:04:19 +0000
Received: from [192.168.1.47] (104-235-164-208.evrt.wa.frontiernet.net
 [104.235.164.208])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 475A513C283;
 Fri, 10 May 2019 07:04:17 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 475A513C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1557497057;
 bh=UT7XXwLjv+cm5Bmav1pIo62BEvkN/zYwL30xac0ShlA=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=nkWtPSrlPt6sNP/H4ZxnnzlbLA963kuEK05IWqfADSYK72x+VAMDGIJiZJiaqA2TV
 IvwpBjytGHqiVmYPW11uuGvG+BNY/JVfcXL3XNtBQGJk/SS2N/e3GionZPSVMK9eDa
 6cwf+lL9w64UmTztIbnVE3nFS7NCiUPwLGuiIi2s=
Subject: Re: [PATCH] mac80211: remove warning message
To: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org
References: <1557471662-1355-1-git-send-email-yiboz@codeaurora.org>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <7119f24f-5b88-629a-d507-73776b841f65@candelatech.com>
Date: Fri, 10 May 2019 07:04:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1557471662-1355-1-git-send-email-yiboz@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_070418_224426_6933F633 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Zhi Chen <zhichen@codeaurora.org>, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org



On 05/10/2019 12:01 AM, Yibo Zhao wrote:
> In multiple SSID cases, it takes time to prepare every AP interface
> to be ready in initializing phase. If a sta already knows everything it
> needs to join one of the APs and sends authentication to the AP which
> is not fully prepared at this point of time, AP's channel context
> could be NULL. As a result, warning message occurs.
>
> Even worse, if the AP is under attack via tools such as MDK3 and massive
> authentication requests are received in a very short time, console will
> be hung due to kernel warning messages.

Since it is a WARN_ON_ONCE, how it the console hang due to warnings?  You should
get no more than once per boot?

I have no problem with removing it though.  Seems a harmless splat and I removed
it from my tree some time back as well.

Thanks,
Ben

>
> If this case can be hit during normal functionality, there should be no
> WARN_ON(). Those should be reserved to cases that are not supposed to be
> hit at all or some other more specific cases like indicating obsolete
> interface.
>
> Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
> Signed-off-by: Yibo Zhao <yiboz@codeaurora.org>
> ---
>  net/mac80211/ieee80211_i.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/net/mac80211/ieee80211_i.h b/net/mac80211/ieee80211_i.h
> index 2ae0364..f39c289 100644
> --- a/net/mac80211/ieee80211_i.h
> +++ b/net/mac80211/ieee80211_i.h
> @@ -1435,7 +1435,7 @@ struct ieee80211_local {
>  	rcu_read_lock();
>  	chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);
>
> -	if (WARN_ON_ONCE(!chanctx_conf)) {
> +	if (!chanctx_conf) {
>  		rcu_read_unlock();
>  		return NULL;
>  	}
>

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
