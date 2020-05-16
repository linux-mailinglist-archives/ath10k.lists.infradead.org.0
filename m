Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BE21D5E7E
	for <lists+ath10k@lfdr.de>; Sat, 16 May 2020 06:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+rrq9Etc2LcVY0ftpIwcZ/XYZhag1ClHjvRMdiBVgo=; b=Gx7al+llVW0vdI
	8l0BDfatr4qHNVx1tCwXILQhGswxRipohlcvQ3FYJng4e3T9g7kKtVqRhQmBDlXmuT9GBeydLbxYW
	CZ580oAgMnMTzpf2QJBXyWb6a3S4Y2J0khJf/cW4vX/H4K+nunOTVb8GP6SJvMie3kyETdgzht+Ea
	+Jf36+tVgrJtBBlwsHCAF4TRzqioiyM/3gyjKyfXZdy31voTwMQnsfc3zLke4dBK5XF3ix+LVU9fG
	Iiow83ErDcfd+9QXj52AnsT7YoFZZKJPu8HsywxEG88CwNljG+il/XxUa2vSQTq4qz5iM9P5qOkz1
	Swl6grVyTaFznMY2qIvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZoBT-0001NO-UD; Sat, 16 May 2020 04:12:23 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZoBP-0001MY-9D
 for ath10k@lists.infradead.org; Sat, 16 May 2020 04:12:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589602337;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IwuWWBVv+jTpH4Rgey2IZ0hFppu2enqJexmcQ9Ok+RE=;
 b=DhJvBR6w62XDWu24+9ilAAdiAjDSnPGVcMYt7nMVf+pXax2Grt/bffrB3OLTCTWLZ1/lry
 1an5oayDVyZaT1lYiQmk/Ksb16iTCm0HdGpZmzJBzoNi8iannO1k357i766F3a3DYxWFma
 2EOOItXDXxX4qc5h6BvRuQ7KO49RZ+k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-163-1MYiB0_zOUqjM_lISOG_KQ-1; Sat, 16 May 2020 00:12:12 -0400
X-MC-Unique: 1MYiB0_zOUqjM_lISOG_KQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 545EF460;
 Sat, 16 May 2020 04:12:09 +0000 (UTC)
Received: from x1-fbsd (unknown [10.3.128.10])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9FF831053B1D;
 Sat, 16 May 2020 04:11:58 +0000 (UTC)
Date: Sat, 16 May 2020 00:11:55 -0400
From: Rafael Aquini <aquini@redhat.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200516041155.GL3182@x1-fbsd>
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515212846.1347-13-mcgrof@kernel.org>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_211219_397927_9E988B03 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-wireless@vger.kernel.org, peterz@infradead.org,
 daniel.vetter@ffwll.ch, mchehab+samsung@kernel.org, will@kernel.org,
 bhe@redhat.com, ath10k@lists.infradead.org, tiwai@suse.de, mingo@redhat.com,
 dyoung@redhat.com, pmladek@suse.com, keescook@chromium.org, arnd@arndb.de,
 gpiccoli@canonical.com, rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, kvalo@codeaurora.org,
 netdev@vger.kernel.org, schlad@suse.de, linux-kernel@vger.kernel.org,
 jeyu@kernel.org, akpm@linux-foundation.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 09:28:43PM +0000, Luis Chamberlain wrote:
> This makes use of the new module_firmware_crashed() to help
> annotate when firmware for device drivers crash. When firmware
> crashes devices can sometimes become unresponsive, and recovery
> sometimes requires a driver unload / reload and in the worst cases
> a reboot.
> 
> Using a taint flag allows us to annotate when this happens clearly.
> 
> Cc: linux-wireless@vger.kernel.org
> Cc: ath10k@lists.infradead.org
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
> ---
>  drivers/net/wireless/ath/ath10k/pci.c  | 2 ++
>  drivers/net/wireless/ath/ath10k/sdio.c | 2 ++
>  drivers/net/wireless/ath/ath10k/snoc.c | 1 +
>  3 files changed, 5 insertions(+)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
> index 1d941d53fdc9..6bd0f3b518b9 100644
> --- a/drivers/net/wireless/ath/ath10k/pci.c
> +++ b/drivers/net/wireless/ath/ath10k/pci.c
> @@ -1767,6 +1767,7 @@ static void ath10k_pci_fw_dump_work(struct work_struct *work)
>  		scnprintf(guid, sizeof(guid), "n/a");
>  
>  	ath10k_err(ar, "firmware crashed! (guid %s)\n", guid);
> +	module_firmware_crashed();
>  	ath10k_print_driver_info(ar);
>  	ath10k_pci_dump_registers(ar, crash_data);
>  	ath10k_ce_dump_registers(ar, crash_data);
> @@ -2837,6 +2838,7 @@ static int ath10k_pci_hif_power_up(struct ath10k *ar,
>  	if (ret) {
>  		if (ath10k_pci_has_fw_crashed(ar)) {
>  			ath10k_warn(ar, "firmware crashed during chip reset\n");
> +			module_firmware_crashed();
>  			ath10k_pci_fw_crashed_clear(ar);
>  			ath10k_pci_fw_crashed_dump(ar);
>  		}
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index e2aff2254a40..d34ad289380f 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -794,6 +794,7 @@ static int ath10k_sdio_mbox_proc_dbg_intr(struct ath10k *ar)
>  
>  	/* TODO: Add firmware crash handling */
>  	ath10k_warn(ar, "firmware crashed\n");
> +	module_firmware_crashed();
>  
>  	/* read counter to clear the interrupt, the debug error interrupt is
>  	 * counter 0.
> @@ -915,6 +916,7 @@ static int ath10k_sdio_mbox_proc_cpu_intr(struct ath10k *ar)
>  	if (cpu_int_status & MBOX_CPU_STATUS_ENABLE_ASSERT_MASK) {
>  		ath10k_err(ar, "firmware crashed!\n");
>  		queue_work(ar->workqueue, &ar->restart_work);
> +		module_firmware_crashed();
>  	}
>  	return ret;
>  }
> diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
> index 354d49b1cd45..7cfc123c345c 100644
> --- a/drivers/net/wireless/ath/ath10k/snoc.c
> +++ b/drivers/net/wireless/ath/ath10k/snoc.c
> @@ -1451,6 +1451,7 @@ void ath10k_snoc_fw_crashed_dump(struct ath10k *ar)
>  		scnprintf(guid, sizeof(guid), "n/a");
>  
>  	ath10k_err(ar, "firmware crashed! (guid %s)\n", guid);
> +	module_firmware_crashed();
>  	ath10k_print_driver_info(ar);
>  	ath10k_msa_dump_memory(ar, crash_data);
>  	mutex_unlock(&ar->dump_mutex);
> -- 
> 2.26.2
> 
Acked-by: Rafael Aquini <aquini@redhat.com>


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
