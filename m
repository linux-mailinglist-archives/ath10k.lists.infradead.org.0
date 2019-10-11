Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFCCD3B76
	for <lists+ath10k@lfdr.de>; Fri, 11 Oct 2019 10:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T78R+lJUMohiHGAw7Rhn0rX4ax6JxkXE0PQa2Vo68+A=; b=lCfl1kgv8dSqVq
	bQ9mg/3d6QCHhI9dPi6Ls9kgBIbiLwiGSbuthJa0+SPY7Uath7nPhkR0YeRcaFqnR+cMy5OiZqS4r
	WTIZWtDzCMenHBUnA4sbf/wsGwMH80qKTQClhUMDUS3UzIuj6kyos3swgs9BaHn9JXbclN/cHIyra
	lI/utdlGKz9vjebHMAtq0Qc/TbpgTNVY1Gibdr4vfwuxzMptVqzK/XaF9uUBYdMPp1AClGeSu+xCU
	iYf094MTZ+Cyxh1dpauFxtA/E8Ncj2zQkQXecMoGTiPX8M1wPuXSWA+gmmneO8iarLsyfr1K8zlc2
	wiMVE/ky0+2YaH+sZpxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqWw-0004yU-H1; Fri, 11 Oct 2019 08:44:10 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqWs-0004y1-KB
 for ath10k@lists.infradead.org; Fri, 11 Oct 2019 08:44:08 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 46F7060AD9; Fri, 11 Oct 2019 08:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570783446;
 bh=pNSzaKUDUvO9yLZxvxkObg17lYXcrKGGHE3JOH6HQxg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=DMFuHBAjvCW5ZsXh9UHfXXNUI23/AyLGYuaWJ3RIbsNn4N8qv1N4YXG2wdUiN8Vmt
 Fpm7IM3WTaQBy9Ahcw6Ypq/aeuWze9B3BIAhXEoMG9bmH/XNUwzaNrvyRK1/ZKdKNB
 uA57f+V4lEZRmNmQP0ykfY42bqAL6MkUoMqUYv6w=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0455260159;
 Fri, 11 Oct 2019 08:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1570783445;
 bh=pNSzaKUDUvO9yLZxvxkObg17lYXcrKGGHE3JOH6HQxg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=m6qjQENhNG2xkYiQNV7Goh13QUPQT1IE8EP1mwqydE3QKHBTMdwmaL7ELxoOCtbl6
 bVqi44lofChnnaug5TwX3EYndajb4VBzKy+KXHC/eSIq2i8u0zkUrkikxCI7UKwIvL
 Tl+v6M2Rpyy2irmc0eoE16kf5JVx3Xo7eTXV3Svs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0455260159
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [RFC PATCH 0/2] ath10k: provide survey info as accumulated data
References: <20190918124259.17804-1-sven@narfation.org>
Date: Fri, 11 Oct 2019 11:44:01 +0300
In-Reply-To: <20190918124259.17804-1-sven@narfation.org> (Sven Eckelmann's
 message of "Wed, 18 Sep 2019 14:42:57 +0200")
Message-ID: <87imovzn72.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_014406_682180_720DD533 
X-CRM114-Status: GOOD (  13.66  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vnaralas@codeaurora.org, linux-wireless@vger.kernel.org,
 Sven Eckelmann <seckelmann@datto.com>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sven Eckelmann <sven@narfation.org> writes:

> it was observed that ath9k provides accumulated survey counters but ath10k
> neither provides deltas nor accumulated counters. Instead it returns
> some value which was returned at some point from the firmware.
>
> But as it turns out, this data is not reliable. To make it more useful,
> ath10k has to:
>
> * retrieve counters rather frequently for hardware which is known to use
>   firmware versions with low number counter bits (for only 14-30s)
> * clean up received counter values 
> * accumulate counters from firmware
>
> A comparison of the resulting output with these fixes can be seen under
> https://stats.freifunk-vogtland.net/d/ffv_node/nodeinfo?orgId=1&var-node=ac86749f4d60&fullscreen&panelId=5&from=1568782046974&to=1568807068706
>
> The left side of the graph shows the output before the patches were applied
> and the right side the output with the patches applied. Just as reference, an
> ath9k device in the same building is
> https://stats.freifunk-vogtland.net/d/ffv_node/nodeinfo?orgId=1&var-node=ac86740037e0&fullscreen&panelId=5&from=1568782046974&to=1568807068706

Thanks, this looks very good to me and I had only cosmetic comments.
Please submit next version without RFC so that I can apply these.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
