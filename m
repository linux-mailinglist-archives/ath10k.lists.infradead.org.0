Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8455212768F
	for <lists+ath10k@lfdr.de>; Fri, 20 Dec 2019 08:36:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvPIoNUwcQKQxVC07pwITnVGaY4ZVpqE/4TmwioHSAQ=; b=Gg3sYUWH/uMam/
	Wb4JdUUXbtIk3J9YaDRdFSFPvy1mohsX5SaVuMMr6piayrWtho5r5L0qr5E1T77SL9HqwzAgmUUYR
	C+MjfRsD6awQjchimHfnXSYfhdGNGfdqUhXSx5z8gsJGNX3cGyBkMwk/e3ey1BTCafJFScjMUhkIF
	RKNMHSyWOha81sKgBNoPh2LAB0YWXtbcktxpfKKmICDtIUQ7yz4KOQMJISHgXWpkeT5kUjv1e53r7
	YFYdG19zQoR9Li+7lmmCNlBbP5NNJGo9bICRyasmBBZCbm9uvaJExWrMN8HVqkWCz1KgdcA0kWqV4
	SXIDkwKJ/1nNBB4nwp5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiCpQ-0001Ui-6B; Fri, 20 Dec 2019 07:36:04 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiCpM-0001UF-6p
 for ath10k@lists.infradead.org; Fri, 20 Dec 2019 07:36:01 +0000
Received: by mail-ot1-x343.google.com with SMTP id w1so10729046otg.3
 for <ath10k@lists.infradead.org>; Thu, 19 Dec 2019 23:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=It5YcO/v1dryRuErMv1QcEZnWY5OrJ6A7v7x6X//P4Y=;
 b=Ndv5ng9uTOZ0Oh63+FOoY80KAmxD71FkSexO3p3HVEsF146h7RFfkdtH/errk/ghyE
 wvoAv6vMKgoiXxXrb8RrP9vscgGarjNVPO+sPjkaLRsgHhvNQ3GGaiJZxjjq4JLqOdnn
 fXIcT8v1xsvU6CYDB/jeaychVTr9Z5HrvyrEbJpyWUYNI0wuVEwCdm21oD1uverJX/nv
 Ez+rAXjR9CphTFnJoqwEjLoR7BunRvJaHcdK6BGwwfVEzs/VPtV9B2C9UUxtYtD6ffSu
 U5FkdELF1jecaatsUQ0iJOlfOuvztEidj3IfAVO9veXckdN/mpclp067YWy8rWm6cyLN
 61jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=It5YcO/v1dryRuErMv1QcEZnWY5OrJ6A7v7x6X//P4Y=;
 b=fUS+QPyvxuQDvRoyJG17G/OWskxGWOn9hTiXdcVhRODbLe3M/f6/hEjDY6+yPlvWdW
 7R3+AgoiHnz4SJN54GRdbNgcXrz5GE3BGg0aXTUYHPxD/bM3inZlk351r0w2ok0o+jf5
 dIeX++x/rtljJEI68IrqsRd6Sm3ugs3Wdb75TFeVVlEaR/O+/JsMXX9uao+pSjfEfMOM
 5UR9oncNMsw5CkLuznQZIZwdNnKqDLN1SZVOVXuvQ9ObGN4pvVcvk4ZS+R6phntHpUrf
 5kHYrO6v4F39eEPdBPuc3m1gHPjtAp9zVUu+uEPpQOk20U6YovOUD8bvpnktR6mCfZIg
 7Rsg==
X-Gm-Message-State: APjAAAWl/cByQpe2CSEbt0ZEKMIdTshU8kllL+/D1MQEn9k1H57bEaCk
 esvBsxm6ughxIGaXU+hu8BcrV5XCaKhLL9cmV6oBpvVz+HU=
X-Google-Smtp-Source: APXvYqw7XhIJewtC+YXQXSY1sLttBESIUEoDF/RMaLGPxVt6i2mlXIFP+12rBiQnzoL9nZt5DVpkPjZwjw5KvnGG45Q=
X-Received: by 2002:a05:6830:2141:: with SMTP id
 r1mr13428720otd.39.1576827358594; 
 Thu, 19 Dec 2019 23:35:58 -0800 (PST)
MIME-Version: 1.0
References: <20191220063829.11873-1-wgong@codeaurora.org>
In-Reply-To: <20191220063829.11873-1-wgong@codeaurora.org>
From: Justin Capella <justincapella@gmail.com>
Date: Thu, 19 Dec 2019 23:35:46 -0800
Message-ID: <CAMrEMU9cfYqgC_MvAuhJh5-pjqb_+WamHEkHf-t2ZW=nOR-8+w@mail.gmail.com>
Subject: Re: [PATCH] ath10k: select the min len of RX skb for sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_233600_275196_8C6BC503 
X-CRM114-Status: GOOD (  20.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Does this mess up alignment or anything, feels wrong to just take the
smaller but I don't understand why it isn't the correct size, why is
it? Should a warning be printed?

On Thu, Dec 19, 2019 at 10:39 PM Wen Gong <wgong@codeaurora.org> wrote:
>
> When simulate random transfer fail for sdio write and read, it crash
> sometimes.
>
> Test steps:
> 1. Add config and update kernel:
> CONFIG_FAIL_MMC_REQUEST=y
> CONFIG_FAULT_INJECTION=y
> CONFIG_FAULT_INJECTION_DEBUG_FS=y
>
> 2. run simulate fail:
> cd /sys/kernel/debug/mmc1/fail_mmc_request
> echo 10 > probability
> echo 10 > times # repeat until hitting issues
>
> 3. it crash, the act len of ath10k_htc_hdr is higher than allocate len, it cause panic:
> [   99.723482] skbuff: skb_over_panic: text:00000000caa0f780 len:57013 put:57013 head:000000004116f24a data:0000000019ecb4dc tail:0xdef5 end:0x640 dev:<NULL>
> [   99.737697] ------------[ cut here ]------------
> [   99.742327] kernel BUG at /mnt/host/source/src/third_party/kernel/v4.19/net/core/skbuff.c:104!
> [   99.750937] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP
> [   99.831154] Process kworker/0:2 (pid: 151, stack limit = 0x00000000728010bf)
> [   99.838200] CPU: 0 PID: 151 Comm: kworker/0:2 Tainted: G W 4.19.85 #48
> [   99.846022] Hardware name: MediaTek krane sku0 board (DT)
> [   99.851429] Workqueue: events sdio_irq_work
> [   99.855614] pstate: 60000005 (nZCv daif -PAN -UAO)
> [   99.860402] pc : skb_panic+0x64/0x68
> [   99.863974] lr : skb_panic+0x64/0x68
> [   99.867542] sp : ffffff8008833a90
> [   99.870850] x29: ffffff8008833ac0 x28: ffffffe52e337370
> [   99.876159] x27: ffffffe52e328a90 x26: 000000000000e0d0
> [   99.881469] x25: ffffffe52e336b60 x24: 000000000000deb5
> [   99.886779] x23: ffffffe52e340680 x22: ffffffe4efd47e00
> [   99.892088] x21: 000000000000deb5 x20: ffffffa516d85b4c
> [   99.897397] x19: ffffffa526928037 x18: 0000000000000000
> [   99.902706] x17: 000000000000003c x16: ffffffa5265b6c80
> [   99.908015] x15: 0000000000000006 x14: 3a76656420303436
> [   99.913325] x13: 0000000000029bf0 x12: 0000000000000000
> [   99.918634] x11: 0000000000000000 x10: 0000000000000000
> [   99.923943] x9 : a3b907e4b2783000 x8 : a3b907e4b2783000
> [   99.929253] x7 : 0000000000000000 x6 : ffffffa526f66d76
> [   99.934563] x5 : 0000000000000000 x4 : 0000000000000000
> [   99.939872] x3 : 000000000002a5ab x2 : ffffffe53feed918
> [   99.945182] x1 : ffffffe53fee4a08 x0 : 000000000000008e
> [   99.950491] Call trace:
> [   99.952937]  skb_panic+0x64/0x68
> [   99.956165]  skb_put+0x7c/0x84
> [   99.959224]  ath10k_sdio_irq_handler+0x740/0xbb8 [ath10k_sdio]
> [   99.965055]  process_sdio_pending_irqs+0x58/0x1a4
> [   99.969758]  sdio_run_irqs+0x34/0x60
> [   99.973329]  sdio_irq_work+0x1c/0x28
> [   99.974930] cros-ec-spi spi2.0: SPI transfer timed out
> [   99.976904]  process_one_work+0x210/0x410
> [   99.976911]  worker_thread+0x234/0x3dc
> [   99.976923]  kthread+0x120/0x130
> [   99.982090] cros-ec-spi spi2.0: spi transfer failed: -110
> [   99.986054]  ret_from_fork+0x10/0x18
> [   99.986063] Code: aa1403e2 2a1503e4 a90023e9 97e37d1a (d4210000)
> [   99.986068] ---[ end trace cb6d948c5a0fd6c7 ]---
> [  100.017250] Kernel panic - not syncing: Fatal exception
> [  100.018879] cros-ec-spi spi2.0: Command xfer error (err:-110)
> [  100.023659] SMP: stopping secondary CPUs
> [  100.023703] Kernel Offset: 0x251dc00000 from 0xffffff8008000000
> [  100.023707] CPU features: 0x0,2188200c
> [  100.023709] Memory Limit: none
>
> The simulate fail of sdio is not a real sdio transter fail, it only
> set an error status in mmc_should_fail_request after the transfer end,
> actually the transfer is success, then sdio_io_rw_ext_helper will
> return error status and stop transfer the left data. For example,
> the really RX len is 286 bytes, then it will split to 2 blocks in
> sdio_io_rw_ext_helper, one is 256 bytes, left is 30 bytes, if the
> first 256 bytes get an error status by mmc_should_fail_request,then
> the left 30 bytes will not read in this RX operation. Then when the
> next RX arrive, the left 30 bytes will be considered as the header
> of the read, the top 8 bytes will be considered as ath10k_htc_hdr,
> but actually the 8 bytes is not the ath10k_htc_hdr, so the act_len
> from this ath10k_htc_hdr is not correct, if it is a big value, such
> as 57013, it will trigger skb_panic.
>
> Select the min value of act_len and alloc_len for skb_put and
> skb_put_data is reasonable.
>
> This patch only effect sdio chips.
>
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/sdio.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index 7b894dcaad2e..71ce2674c543 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -651,7 +651,7 @@ static int ath10k_sdio_mbox_rx_fetch(struct ath10k *ar)
>
>         htc_hdr = (struct ath10k_htc_hdr *)skb->data;
>         pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
> -       skb_put(skb, pkt->act_len);
> +       skb_put(skb, min_t(size_t, pkt->alloc_len, pkt->act_len));
>
>         return ret;
>  }
> @@ -687,7 +687,8 @@ static int ath10k_sdio_mbox_rx_fetch_bundle(struct ath10k *ar)
>                 htc_hdr = (struct ath10k_htc_hdr *)(ar_sdio->vsg_buffer + pkt_offset);
>                 pkt->act_len = le16_to_cpu(htc_hdr->len) + sizeof(*htc_hdr);
>
> -               skb_put_data(pkt->skb, htc_hdr, pkt->act_len);
> +               skb_put_data(pkt->skb, htc_hdr,
> +                            min_t(size_t, pkt->alloc_len, pkt->act_len));
>                 pkt_offset += pkt->alloc_len;
>         }
>
> --
> 2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
