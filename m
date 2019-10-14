Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DA6D5DEC
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 10:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Q+eczrDc2WBaDZWz8iE3vjlo3FOHatqjFsT+VdVuzk=; b=tksL4gEy6GtzSm
	Gb2XrdibW3pI0IBABT62DLD+mhVSSxuixySbyVoupaiAKnheV418V5GpsdqSdtJHHXdprvHu3xthv
	HDlSrUQjUyFeuu0zGfLge0ng++FmiaXvUX1ndym05PJzO8KiI5Zc4jBBABwH4AYuxmaLOrDME12xb
	O6Dz/tc4eGhB3MKXUxnKfha15nHd4z9vZ9swVgJb8kcQlE2b7A7f62pOc731YUzGY2GoPB+eKjg1O
	m5jgyxQP6gSq9swq+ijaGl3lV7RUEkkwzoU7lzw6NXcYvcgUXae68J60KhDx2yNYSU/5z2IUDPPlb
	KegIo+MTqLF6aFKjZYhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJw6p-0006LH-GF; Mon, 14 Oct 2019 08:53:43 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJw6k-0006Ka-UO
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 08:53:40 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6BFA96079D; Mon, 14 Oct 2019 08:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571043218;
 bh=6KBLNPEabNm8adjApQO4Q9uCQ5Tqng3fu2jIQnGKskQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=P0jSq8qaY0GYjm7CwojN9mfnH6HHtqlysPQMJXtbo0dQuBbAMvY1UKyZn2n5AtGZP
 wAG844NllzvEjW3CJF4WMIqtZK6HcXyZZpsTBh4+cBNKVy5SBW6wWvcTxbk/ee39GN
 beStYXb5aM7F+kyASllRPBnu9vDVprwDku2mi0PM=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5C9CC6039C;
 Mon, 14 Oct 2019 08:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571043217;
 bh=6KBLNPEabNm8adjApQO4Q9uCQ5Tqng3fu2jIQnGKskQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ot7rNVQJEZjcA8tm8hTNMdKlZwepQNtgqiZ3AT2YWC/7ruQpkv7W9oD0PQNzBXAFA
 Kjrvo8qwhc2AMnG0bLjI9gpg2lkiAQSrbdV1q9ofk875loMwUHEvL0EzedTObh0OPU
 XXueYZnBDVK4SqwhT5CFSvXBEnsRWhfcEu7DXbOE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5C9CC6039C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Patrick Steinhardt <ps@pks.im>
Subject: Re: [PATCH] ath10k: fix disabling of UART debugging
References: <d492617ed38eb7953401c3171bb3e08c48b7b431.1570976384.git.ps@pks.im>
Date: Mon, 14 Oct 2019 11:53:34 +0300
In-Reply-To: <d492617ed38eb7953401c3171bb3e08c48b7b431.1570976384.git.ps@pks.im>
 (Patrick Steinhardt's message of "Sun, 13 Oct 2019 16:20:08 +0200")
Message-ID: <875zkrzp0x.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_015339_023551_3A551B55 
X-CRM114-Status: GOOD (  21.60  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

+ linux-wireless

Patrick Steinhardt <ps@pks.im> writes:

> Starting with v5.3.0, it was observed that throughput of an access point
> with QCA988x-based wireless chip is severely degraded from at least
> 10MB/s to roughly 200KB/s. A bisect of the issue points to commit
> 4504f0e5b571 (ath10k: sdio: workaround firmware UART pin configuration
> bug, 2019-04-19), which employs a workaround for a firmware bug in some
> QCA6174 SDIO devices.
>
> If UART debugging is disabled via the "ath10k.uart_print" module
> parameter, then the UART initialization code is skipped. With the new
> workaround introduced in the mentioned commit, devices that need the
> workaround will also re-set the UART pin of the device to avoid a
> failing SDIO interrupt. But in fact, the change effectively removed the
> early return for all devices that do not use the workaround, and as a
> result UART debugging is now unconditionally turned on disregarding the
> value of "ath10k.uart_print", causing the decrease in throughput.
>
> Fix the issue by re-introducing the early return for all devices again,
> independent of the UART pin workaround. Tests show that throughput is
> back to normal levels again with this fix.
>
> Fixes: 4504f0e5b571 ("ath10k: sdio: workaround firmware UART pin configuration bug")
> Signed-off-by: Patrick Steinhardt <ps@pks.im>
> ---
>  drivers/net/wireless/ath/ath10k/core.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
> index dc45d16e8d21..8e4ca231634d 100644
> --- a/drivers/net/wireless/ath/ath10k/core.c
> +++ b/drivers/net/wireless/ath/ath10k/core.c
> @@ -2125,9 +2125,10 @@ static int ath10k_init_uart(struct ath10k *ar)
>  			ath10k_warn(ar, "failed to set UART TX pin: %d", ret);
>  			return ret;
>  		}
> +	}
>  
> +	if (!uart_print)
>  		return 0;
> -	}

This was fixed in -next with a similar (but not identical) patch, but as
there have been multiple reports of this issues I have now cherry picked
it also for v5.4:

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers.git/commit/?id=d79749f7716d9dc32fa2d5075f6ec29aac63c76d

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
