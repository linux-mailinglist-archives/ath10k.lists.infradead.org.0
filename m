Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03DFE0199
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 12:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyPPZplFyFo5dUwfJKRhJqHS54p4TUkZptadLJ6vikQ=; b=k0tVxw+wvcquY0
	i6b4q9etVNQWMbcZ+x4TIF4GR/R9EpTsDqm1XW54LdPJHIMfBPJIv5G706JwBhs6jaVwwF9xkKwTX
	AlaCAZ+3+QGhWD5KIjUh3yF8QeTaJ5chx0n5/IwTbWukns3u4IfvHFc9V/Ihe5eJU25rc6C1Pk1I0
	YKF6NVfvjx+J/k0FNvmsHG7jFS1/zYkzctuFttfv3qWCOqqVnKw15jysGrtag9zXNZVwWskuG/G1C
	MZhNyE3XuUx5cKzC5WNN/cCWPKDdSgGITcO+8TtnnqA+oRUgATYE6FjLyLl5ytepm1vd5tLcVfQnk
	xuDM8p206vVXAEgq/Pww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMr4w-000843-Qc; Tue, 22 Oct 2019 10:07:50 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMr4t-000832-0h
 for ath10k@lists.infradead.org; Tue, 22 Oct 2019 10:07:48 +0000
Received: by mail-oi1-x244.google.com with SMTP id g81so13650748oib.8
 for <ath10k@lists.infradead.org>; Tue, 22 Oct 2019 03:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=iFTeSU9DK9ebNJwCkq6A2UglnA/84QdLInUE+UVt72Q=;
 b=GLvaM+emlsDUj6Xx9I/LNo1xIxNCSAf5UYV4VRs5hw48hWzheIvw3/mg7Fe4NpNjne
 7tUEvHhvrLgivW2XZxBrYgJMDsrDhcGhXybAMvxodIAhIiawPCSZn8Wu+ZpKlz516lQ8
 +UrDGEamtRGL1IMzJZ5d3L2KBOuWT0oxMaXgBlWn1Oab5JzxCioQqfUqldZ6FG/Fmt1g
 YQ/aY+dW4QiSKzHkQEvBQxue25Ec/J+1TRXE989utfeHrH2HkEfecOb5t1ARKXdsWeH6
 c6BIMUY7+y9HqjjGuigZX772gK1SbBU9+xAljSMEz5YpdB0liu+isDe6/T96EPfsVrjx
 X3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=iFTeSU9DK9ebNJwCkq6A2UglnA/84QdLInUE+UVt72Q=;
 b=S2GIDFayKe+jU7MPkGNtixomhQUFcPhxudtKDUS/kzOGXQo7ZzbV6E0UfVbaNtDDqv
 dTcQVX2qbvmpRCykb/g2WAQtGzZim3W6Bkj8dUnVRIkhD01K/OV0UFP9tDN3GNl1P+/g
 IlyVSXAax+EmueBDxBc/C/GxhXOukgUHa0Mg9sJ4NYl4fopwmX3irw4SP2oXNf0wfI9T
 af3WkphUd24pmvWeNwzGS4EpxmI2HZgK32iIE4u2qqzT4rxmqHmCMudxs6PjFuRbee5t
 gZMAiMuWy9++7THLuDxiLReLZQ5ROh8OaytgkvHViaB6hsAFfTekTz+kgCJFpswX44l+
 fIRw==
X-Gm-Message-State: APjAAAVfTfKK3LTPI5idFJpPCgTwHS8b/kjmk2WIICV0joqZaasgE8eE
 Cx/S8tWcUPeyisUAwPvUmhElWOksMtzpxg1eViw=
X-Google-Smtp-Source: APXvYqwZwk63iNNN4Hs2V0NWyfBlNKBesMXZy+huRrLlYqynjtIPveX6tpdEvoVLg+oIOs3+icmF89FRFb8Tg+CxDe8=
X-Received: by 2002:a05:6808:aad:: with SMTP id
 r13mr2248651oij.30.1571738864718; 
 Tue, 22 Oct 2019 03:07:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:2286:0:0:0:0:0 with HTTP; Tue, 22 Oct 2019 03:07:44
 -0700 (PDT)
In-Reply-To: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
References: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Tue, 22 Oct 2019 12:07:44 +0200
Message-ID: <CAKR_QVLDFBVMDDP4mPYVNdpT9TA3podNeQMpVJQwE7A5eG=0kA@mail.gmail.com>
Subject: Re: [PATCH RFC] Revert "ath10k: fix DMA related firmware crashes on
 multiple devices"
To: Zhi Chen <zhichen@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_030747_085818_A152B77E 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 22/10/2019, Zhi Chen <zhichen@codeaurora.org> wrote:
> This reverts commit 76d164f582150fd0259ec0fcbc485470bcd8033e.
> PCIe hung issue was observed on multiple platforms. The issue was
> reproduced
> when DUT was configured as AP and associated with 50+ STAs.
>
> With PCIe protocol analyzer, we can see DMA Read crossing 4KB boundary when
> issue happened. It broke PCIe spec and caused PCIe stuck.
>
> Tested:  IPQ8064 + QCA9984 with firmware 10.4-3.10-00047
>          QCS404 + QCA9984 with firmware 10.4-3.9.0.2--00044
>          Synaptics AS370 + QCA9888  with firmware 10.4-3.9.0.2--00040
>
> Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/hw.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/hw.h
> b/drivers/net/wireless/ath/ath10k/hw.h
> index 35a3623..17f620b 100644
> --- a/drivers/net/wireless/ath/ath10k/hw.h
> +++ b/drivers/net/wireless/ath/ath10k/hw.h
> @@ -753,7 +753,7 @@ ath10k_is_rssi_enable(struct ath10k_hw_params *hw,
>  #define TARGET_10X_MAX_FRAG_ENTRIES		0
>
>  /* 10.2 parameters */
> -#define TARGET_10_2_DMA_BURST_SIZE		0
> +#define TARGET_10_2_DMA_BURST_SIZE		1
>
>  /* Target specific defines for WMI-TLV firmware */
>  #define TARGET_TLV_NUM_VDEVS			4
> @@ -813,7 +813,7 @@ ath10k_is_rssi_enable(struct ath10k_hw_params *hw,
>
>  #define TARGET_10_4_TX_DBG_LOG_SIZE		1024
>  #define TARGET_10_4_NUM_WDS_ENTRIES		32
> -#define TARGET_10_4_DMA_BURST_SIZE		0
> +#define TARGET_10_4_DMA_BURST_SIZE		1
>  #define TARGET_10_4_MAC_AGGR_DELIM		0
>  #define TARGET_10_4_RX_SKIP_DEFRAG_TIMEOUT_DUP_DETECTION_CHECK 1
>  #define TARGET_10_4_VOW_CONFIG			0
> --
> 2.7.4
>
>
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k
>

What about main and 10x firmware branch?

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
