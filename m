Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5847BCFC
	for <lists+ath10k@lfdr.de>; Wed, 31 Jul 2019 11:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWrIkJWyzF9fPstCJCh+HFWZAAJRiAP73xaSTLL+G7U=; b=ACi1vphYLRpx+z
	BKu6+167WbGFUYMhSEf4LBQaK+INZGaNiYC3ShhEOhLEzJat3CfdCMCz/Idl2O6rlFC99ii4mkaQE
	xTdD+u4fksm9Rk7WguqWKXlpGhNzDVQGpk4QrD8AfsOKEdAkfjapXANcB/qBLsH2HrB7nvyNvLc3l
	5sbqhXsAeBRP116iBq/9gBq4BGrjeEyQPKbPNCj9jNQfTqSNFpfAW8Fu/8z/SKnX6Eb9OLHD0XaBE
	8qdEYAUpk6Ye3/LxL4DS0vqKXvPKU6AumOG7jla5nkV13jzlcM6d5lIsiEVK2Y4eRJYkWYfnQr/y7
	6RIMCAyNso9W4zAHYCcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskrt-0003Me-Sr; Wed, 31 Jul 2019 09:25:57 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskrp-0003MD-Iz
 for ath10k@lists.infradead.org; Wed, 31 Jul 2019 09:25:54 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hskro-0004c1-8X; Wed, 31 Jul 2019 11:25:52 +0200
Message-ID: <ea1f9969b52fed2da8b0e88ed8b06527bfc272aa.camel@sipsolutions.net>
Subject: Re: [PATCHv6 1/9] nl80211: New netlink command for TID specific
 configuration
From: Johannes Berg <johannes@sipsolutions.net>
To: Tamizh chelvam <tamizhr@codeaurora.org>, ath10k@lists.infradead.org
Date: Wed, 31 Jul 2019 11:25:51 +0200
In-Reply-To: <1560835632-17405-2-git-send-email-tamizhr@codeaurora.org>
References: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
 <1560835632-17405-2-git-send-email-tamizhr@codeaurora.org>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_022553_628398_A57152F7 
X-CRM114-Status: UNSURE (   5.46  )
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
>  /**
> + * enum nl80211_tid_config - TID config state
> + * @NL80211_TID_CONFIG_DEFAULT: Default config for the TID
> + * @NL80211_TID_CONFIG_ENABLE: Enable config for the TID
> + * NL80211_TID_CONFIG_DISABLE: Disable config for the TID
> + */
> +enum nl80211_tid_config {
> +	NL80211_TID_CONFIG_DEFAULT,
> +	NL80211_TID_CONFIG_ENABLE,
> +	NL80211_TID_CONFIG_DISABLE,
> +};

Hmm. Looking at this in more detail in patch 3, I don't understand.

How is DEFAULT different from "attribute not present", i.e. "no
changes"?

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
