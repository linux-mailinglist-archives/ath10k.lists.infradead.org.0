Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9840EE2E1B
	for <lists+ath10k@lfdr.de>; Thu, 24 Oct 2019 12:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bbrflhkw3Y7BZ8FyzzjsTPzR3ptvdIAZrJjzO1TXTaA=; b=XDMKVkc5bOjK6e
	tZfD8wXZw80U39bKOEUj+my6rGxU1P5OF9DguQO6f/327L9+xKiuu03sg7tJLZLHt/UufVWG2dLjM
	NNjktgR1lKxHJub6fpUGZ9D2RIjFO/GxGUyHq+jvoZ0HN6d7OlaX1ujTIxUOvmo5sHlnpFftXXAtE
	/PgUlPBy7Ys7det2OR6lFqMaUvo6byFAmEe0BIf1kpc5DGFlF8QKAFCDXEQwSYR4d8HoSTXebtMnH
	rDsaYlwoqeX9PbyayGTJgC5e8q042urVsL6spFsxflv8+pWrAioXnrItS1OVyFGHOcnYNgWykkTz7
	77se386DP3Ru2hzrPt/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNa0K-0001Na-N4; Thu, 24 Oct 2019 10:06:04 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNa0G-0001N9-Lg
 for ath10k@lists.infradead.org; Thu, 24 Oct 2019 10:06:02 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E16EA606CF; Thu, 24 Oct 2019 10:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571911560;
 bh=KzgCcuMZO8K844GlsK2yNsEGh+11mPBRcWET/19MD+E=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ImFtfmOH002UNKmLb0TJHjn3RUYZhHjge7CjVi1GC0COgdoW40d0VP1BVjQnZvh1I
 O9Gnc8WFUalrOWmPZTMutA6nrp5umui2kxzuhtI81z9n1dpP51GQBEbvad3YBwRtMk
 ybJaOIaV6Gm0aAmpW7bJwaYFc3T6AfJQeJ7eor4s=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (unknown [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C31C6606CF;
 Thu, 24 Oct 2019 10:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571911556;
 bh=KzgCcuMZO8K844GlsK2yNsEGh+11mPBRcWET/19MD+E=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=cYHopb926186KOTXqqPmy74r7zwUKy0qcZqNZsAmCYvUzno4sZtF+DQ6UlPIdL40t
 wsH01wvxHMQMubeC3wKp2/xy1zriQulFKHicO7+KsrmLbhFiOtF2VxGMe7Lz94qDJH
 3VvXlhjkd9qIpr6k/hCOnwTCWoZFNknUkWoVLBV4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C31C6606CF
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v6 2/3] ath10k: change max RX bundle size from 8 to 32 for
 sdio
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-3-git-send-email-wgong@codeaurora.org>
Date: Thu, 24 Oct 2019 13:05:53 +0300
In-Reply-To: <1569402639-31720-3-git-send-email-wgong@codeaurora.org> (Wen
 Gong's message of "Wed, 25 Sep 2019 17:10:38 +0800")
Message-ID: <87h83ysbjy.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_030600_760171_DE469C8C 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Wen Gong <wgong@codeaurora.org> writes:

> The max bundle size support by firmware is 32, change it from 8 to 32
> will help performance. This results in significant performance
> improvement on RX path.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWPZ-1
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>

[...]

> --- a/drivers/net/wireless/ath/ath10k/htc.h
> +++ b/drivers/net/wireless/ath/ath10k/htc.h
> @@ -39,7 +39,7 @@
>   * 4-byte aligned.
>   */
>  
> -#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        8
> +#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        32
>  
>  enum ath10k_htc_tx_flags {
>  	ATH10K_HTC_FLAG_NEED_CREDIT_UPDATE = 0x01,
> @@ -48,10 +48,16 @@ enum ath10k_htc_tx_flags {
>  
>  enum ath10k_htc_rx_flags {
>  	ATH10K_HTC_FLAGS_RECV_1MORE_BLOCK = 0x01,
> -	ATH10K_HTC_FLAG_TRAILER_PRESENT = 0x02,
> -	ATH10K_HTC_FLAG_BUNDLE_MASK     = 0xF0
> +	ATH10K_HTC_FLAG_TRAILER_PRESENT = 0x02
>  };

I left the comma in ATH10K_HTC_FLAG_TRAILER_PRESENT to make the diff cleaner.

> +#define ATH10K_HTC_FLAG_BUNDLE_MASK 0xF0
> +#define ATH10K_HTC_BUNDLE_EXTRA_MASK GENMASK(3, 2)
> +
> +#define ATH10K_HTC_GET_BUNDLE_COUNT(flags) \
> +	    (FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, (flags)) +  \
> +	    (FIELD_GET(ATH10K_HTC_BUNDLE_EXTRA_MASK, (flags)) << 4))

I think I asked you about the shift of 4 bits earlier but now I figured
it out (I hope) and documented it like this:

#define ATH10K_HTC_FLAG_BUNDLE_MASK GENMASK(7,4)

/* bits 2-3 are for extra bundle count bits 4-5 */
#define ATH10K_HTC_BUNDLE_EXTRA_MASK GENMASK(3, 2)
#define ATH10K_HTC_BUNDLE_EXTRA_SHIFT 4

static inline unsigned int ath10k_htc_get_bundle_count(u8 flags)
{
	unsigned int count, extra_count;

	count = FIELD_GET(ATH10K_HTC_FLAG_BUNDLE_MASK, flags);
	extra_count = FIELD_GET(ATH10K_HTC_BUNDLE_EXTRA_MASK, flags) <<
		ATH10K_HTC_BUNDLE_EXTRA_SHIFT;

	return count + extra_count;
}

As you can see I also changed the macro to a function, as I prefer C
over CPP :) And changed ATH10K_HTC_FLAG_BUNDLE_MASK to use GENMASK().

But this only compiled tested, please do properly test the patches from
pending branch and let me know if I broke something:

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=afd85ca1b086695cfd26bf484442eaf3bccb6bdd

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=4225b4d50a4f6a1159dc3316d068398f1b5edb57

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=911e0fc846cfc46fb4ccd1d223cb153681ff05bd

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
