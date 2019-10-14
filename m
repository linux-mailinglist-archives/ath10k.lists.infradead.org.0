Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A37CAD5EC0
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 11:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFDFaL8VkYDjeAOE2HWXORxQy6OKiw7ojtmA+/0jSxc=; b=VyItEapE9vMbTO
	Ht5H5ajutdhN71Zygn8uVUrlRjwmAta71ogfs6WQDD2nX36+UstvAOQUI7je1mbWpdEhSZSBluFy1
	S6tXJBt43ANcHJt4NZE4TeAok4pPf/8yyQayXCyoC8RSmTk8EIedDu16etMPWjuUa6pauOrVAcMcd
	CKqh4BCT/37JJkHtXw8+g6ro5bp45tmqwobsZKu+pKQntzizazO5Fu4XT1Fdgh/jVt0PScKK+ek49
	v2yZlMf4Qkl4rCxCefpMGNHJnsjIk/0GAPqTGkUUKTVp3hpZMF/nkpltRllLvLpTgDnbCuPj2zVAT
	UiqgmePMSONuQ7/pfdKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwaB-0003VL-5Z; Mon, 14 Oct 2019 09:24:03 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwa6-0003UI-MB
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 09:24:00 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id CE09060C42; Mon, 14 Oct 2019 09:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571045038;
 bh=H+y2OxkOwnCdzzHwz8W1y9jMd54C3WoKathCx0W3WjA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=a2B/FAeIUOmY73P2syufMDuwuLsJfY0OB9ZE9Rw7wgT12vjzRG0R1uMH0sycExk8Q
 TKJUdT66HwAdFWcRmijW/T5MAYkv/a/vPN+CF5dCEYpbpcsVO9k03hT2qzMH+tsw54
 YMKAMQPginxhZOxpxlGOTlAxWw7O4DsyFzfI5cq4=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A063C60B7A;
 Mon, 14 Oct 2019 09:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571045033;
 bh=H+y2OxkOwnCdzzHwz8W1y9jMd54C3WoKathCx0W3WjA=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=m51Q4/IDlweJ2jKm9PUe15+DrSgkrGqAIhSFaxHgSDM7yZATIsDHp4pTtT3VXK2Gy
 8lW3Lrv1JKqbc1xwFEUbMBkbz5xYJcPQZ/eeDb/q8tj3P/uHw2Zs5pODe/4Ubkme9i
 vrgQ3FIl/IPLba3jTGvBjnLA6bw61/Y5mp/NSuY8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A063C60B7A
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v4 2/2] ath10k: Enable Airtime-based Queue Limit (AQL)
References: <20191011022413.176208-1-kyan@google.com>
 <20191011022413.176208-3-kyan@google.com>
Date: Mon, 14 Oct 2019 12:23:49 +0300
In-Reply-To: <20191011022413.176208-3-kyan@google.com> (Kan Yan's message of
 "Thu, 10 Oct 2019 19:24:13 -0700")
Message-ID: <87lftny922.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_022358_741343_7CE2D593 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: make-wifi-fast@lists.bufferbloat.net, toke@redhat.com,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 yiboz@codeaurora.org, johannes@sipsolutions.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kan Yan <kyan@google.com> writes:

> Calculate the estimated airtime pending in the txqs and apply AQL to
> prevent excessive amounts of packets being queued in the firmware queue.
>
> Signed-off-by: Kan Yan <kyan@google.com>

Forgot to mention earlier that please add tested hardware and firmware
versions:

https://wireless.wiki.kernel.org/en/users/drivers/ath10k/submittingpatches#guidelines

I can also add that during commit, no need to resend because of this.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
