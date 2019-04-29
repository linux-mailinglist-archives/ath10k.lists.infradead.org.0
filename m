Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC283DB7A
	for <lists+ath10k@lfdr.de>; Mon, 29 Apr 2019 07:21:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7bKybn/T4NvlzYYH6cQpBZV08JHAwRaPZxxDMn6dEUg=; b=LWZGpXJuXCR8N4
	eJouj1LAGLfWvp/04dHx53ZiH1+LBZ2fqIVS5MIxak8k1jnGKF7c5L90axLfO+ZuompiAuGfOhlzD
	NsTp1PchAeBM/8EJftbVS/MEOz2Z+VmSPIOVBepqF7EKnAMWzjanxMDudCtDZjkEvhplfOXt2viy1
	h1qYDKd9047M2BvAUOAYS6gvx4k8pzjv3Mgx9LePs1MFrRDvtEKDn9lciGWaMT5i3uxqH8YpkRGnl
	6EijVS/0AVDG7NOQfuJd3WXYse7A87yea3djwxS0gTTRY53M0RY/qVs3T1K9zOnJzXjPI2/HRrJW9
	oxvVUTAtLM/nxaQNGSGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKyil-00067s-3Y; Mon, 29 Apr 2019 05:20:55 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKyif-00067B-Ma
 for ath10k@lists.infradead.org; Mon, 29 Apr 2019 05:20:51 +0000
Received: by mail-qt1-x842.google.com with SMTP id i31so1841633qti.13
 for <ath10k@lists.infradead.org>; Sun, 28 Apr 2019 22:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AJLIG7dxc1t4keHoNZMHwMCy4fC2upZVRrvXxBwgyGg=;
 b=A+HcLXWXR4GLpxqnbNa7AYORB4uD/vxTr52KYNmE9V/5Gfy2Ai+VCyTPCGPz45KOfx
 cMQqnUlNB/P7YqdEtTGN/zA2hjZ+rsT0oG44wiLOdTSVQh+Yjlem4PLHn7p31JCPM9al
 v90CEFpbu9KBXf1VWN+2d17t9QtKua8OeYEj0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AJLIG7dxc1t4keHoNZMHwMCy4fC2upZVRrvXxBwgyGg=;
 b=UQv/S8MfmyUBheoFAHeY3Vcd3tBRIB3eARSNrifnYgy3RPX8HZxWhW88/RP2t6Jbs0
 o0DFBrbLiqlNUWvrLat3qVQys16HXGhdzV1+JcEEUL7/lcGgIO5y7WstVmMp/Lh47MKS
 /vTOEnWSPRNZzYzt9/UW/1zlfaf8MTuzsSK6wWzEgZE3DoB8pYUivdwg934fT+IkfWVz
 GZCHMXxbXkv7RLHHHL/GjNVa5HWQhhR7v+O5LzcG8p97hKZ7swSU/qC6yRZM+ikEKY2D
 LZIF2l/hy2uuKQmfVpTEF9raltOiF12G930AzIaajoU1MfUnnhHsqzayPVI49Xl4FZOI
 ihYQ==
X-Gm-Message-State: APjAAAWEit1rSRap99nynlJCY+ZPlIg9ps+4ckX6If5U3YFPkCFvMm79
 tCNL1KXba2UxcraEdF8IcpZqf3Ssl4Bs2PCHjeTeZA==
X-Google-Smtp-Source: APXvYqwifI3CyAt8MRjCNDp5oYY8bGALtL6BDz5mb1hMPM3vu7NPiC844k4QbTQrLxBw1hNcs8UgEKjVkLb08zWEJ3c=
X-Received: by 2002:ac8:362e:: with SMTP id m43mr29209080qtb.339.1556515247704; 
 Sun, 28 Apr 2019 22:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <1555406865-21514-1-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1555406865-21514-1-git-send-email-wgong@codeaurora.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 29 Apr 2019 13:20:36 +0800
Message-ID: <CANMq1KBjupZeuw3hmQHbYui4G9+Ni7SPPE1SNqG9=89iVhFjgg@mail.gmail.com>
Subject: Re: [PATCH] ath10k: add support for simulate crash on SDIO chip
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_222049_764394_AA2BEF84 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Claire Chang <tientzu@chromium.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Apr 16, 2019 at 5:28 PM Wen Gong <wgong@codeaurora.org> wrote:
>
> The command to simulate firmware crash:
> echo soft > /sys/kernel/debug/ieee80211/phy0/ath10k/simulate_fw_crash
>
> It will send WMI_FORCE_FW_HANG_ASSERT to firmware, then it will trigger
> CPU interrupt status register for SDIO chip, ath10k driver need to
> configure it while enable SDIO interrupt, otherwise ath10k driver will
> not get the assert error info.
>
> After this change, it will success for simulate firmware crash.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/hw.h   | 1 +
>  drivers/net/wireless/ath/ath10k/sdio.c | 8 ++++++--
>  2 files changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/hw.h b/drivers/net/wireless/ath/ath10k/hw.h
> index 7131499..60521ed 100644
> --- a/drivers/net/wireless/ath/ath10k/hw.h
> +++ b/drivers/net/wireless/ath/ath10k/hw.h
> @@ -1095,6 +1095,7 @@ struct ath10k_hw_ops {
>  #define MBOX_CPU_INT_STATUS_ENABLE_ADDRESS     0x00000819
>  #define MBOX_CPU_INT_STATUS_ENABLE_BIT_LSB     0
>  #define MBOX_CPU_INT_STATUS_ENABLE_BIT_MASK    0x000000ff
> +#define MBOX_CPU_STATUS_ENABLE_ASSERT_MASK 0x00000001
>  #define MBOX_ERROR_STATUS_ENABLE_ADDRESS       0x0000081a
>  #define MBOX_ERROR_STATUS_ENABLE_RX_UNDERFLOW_LSB  1
>  #define MBOX_ERROR_STATUS_ENABLE_RX_UNDERFLOW_MASK 0x00000002
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index fae56c6..78a2f3b 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -850,6 +850,8 @@ static int ath10k_sdio_mbox_proc_cpu_intr(struct ath10k *ar)
>
>  out:
>         mutex_unlock(&irq_data->mtx);
> +       ath10k_err(ar, "firmware crashed!\n");
> +       queue_work(ar->workqueue, &ar->restart_work);

Err, so you consider _any_ CPU interrupt to be caused by the FW
crashing? Is that correct? If so, please at least add a comment.

Otherwise, maybe you should run this only if
MBOX_CPU_STATUS_ENABLE_ASSERT_MASK is set in cpu_int_status?

>         return ret;
>  }
>
> @@ -1495,8 +1497,10 @@ static int ath10k_sdio_hif_enable_intrs(struct ath10k *ar)
>         regs->int_status_en |=
>                 FIELD_PREP(MBOX_INT_STATUS_ENABLE_MBOX_DATA_MASK, 1);
>
> -       /* Set up the CPU Interrupt status Register */
> -       regs->cpu_int_status_en = 0;
> +       /* Set up the CPU Interrupt Status Register, enable CPU sourced interrupt #0
> +        * #0 is used for report assertion from target
> +        */
> +       regs->cpu_int_status_en = FIELD_PREP(MBOX_CPU_STATUS_ENABLE_ASSERT_MASK, 1);
>
>         /* Set up the Error Interrupt status Register */
>         regs->err_int_status_en =
> --
> 1.9.1
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
