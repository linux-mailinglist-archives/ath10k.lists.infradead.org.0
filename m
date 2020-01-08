Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2E813415D
	for <lists+ath10k@lfdr.de>; Wed,  8 Jan 2020 13:02:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oi53sTHo31xxGdj0uUMl5booCijgp4e+mEAkK17Ypes=; b=OdA8Co5rccd17v
	8SUDtvzdaKWjZA0pBVC0QwdGgqHEPO9DBMvoQI26ynnL3Cgvi6aCyocLbWxWjOr8MW54n2oSnDKgn
	pXiuoKTxBnlpLxKm4CU/0E3UcipyEJ7ncTvWtg8+1nDJWYcohurm0sjOTza1XcBjsnyoknpX+rG/2
	CGM5TMewWGLLi0M8V1O0yoQBUogaVDoNDuivut+xjT+Nn6zYexmNBJGCOThDJkqqsm89fRZjC/4T3
	DQVHOlWOT+p0Se88KTyNt7Tg7Kl0KZQoPSRtXjRE9D1bkH+auRRWWa2nN23+oISKDp60M4XBQySdx
	cIRHYLrdCflVNh9iNwDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipA2Y-0005vl-0M; Wed, 08 Jan 2020 12:02:22 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipA2R-0005tt-CI
 for ath10k@lists.infradead.org; Wed, 08 Jan 2020 12:02:17 +0000
Received: by mail-oi1-x243.google.com with SMTP id z64so2397648oia.4
 for <ath10k@lists.infradead.org>; Wed, 08 Jan 2020 04:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A+4ekRz0HS4SHBbvZctSkuL3O7+gGpKDr+t7B4bqj6Y=;
 b=r4VU/ksCnzNHMh0zR08v1hz8zZwHgRi0UJxiHPc0fKlFcrwRp4KWeCZLSXo6rASudc
 9lH8W5HtDsIjSBEf+AaQtXEkTPDjflf4AO71AfCdKVr1MINNB/QMGeeIbQwjsD6b+LpJ
 XuemmdSawH1x2WN26ddDyOzBPdBZjphJgqDokv9CO5aoUPTm8cDpb5uW33s9yGA7iAXo
 Akkqi06MCQf64twoQjHIcR//X7uWgxFYaEBV38ngRDPHQO35idRX5oIyTS1qDetkzBAK
 QRxsJ4NZ5TDObHPg/PfPOC2tTqrg3P/FPj3Kc78DCpapu2JlpBne+TltGmCxoGzHX7Ye
 FHug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A+4ekRz0HS4SHBbvZctSkuL3O7+gGpKDr+t7B4bqj6Y=;
 b=EIMRsdzpewLHbmY+BHoQWjBqyMgFaP27Z2J+U8CWcFyGcjrcH28QtuybzG5O/oX0gj
 OQ1w0d1BwWXrRYDm+C7CSV9f7t+55ZcNuUBXuUUZm7wzFXLEFe12thzXq0u/LWpsw4S6
 ux6b0x5ZA92uMOEAHEQJMXdbPQw4Bcm3QsFjrHQtfQO4lV1+1G/V+5a4z/F83mTj5RKA
 /3c4ldWs29tNKI5XhE+LiAdgReUW8W4Bx2K5RUFaTfjWEWG5z+uroddWh7SVBG9oqsvK
 9zOvwjAEmiB68WBQSP8zJKu2SOdAmYIAlVWTVWnrlYOcmdeEsFEAtxmCTgg3g3yCMBbN
 AtOg==
X-Gm-Message-State: APjAAAXJ2lsg1pMbFCVwSX6dMNWxmWkNTW8jTNZV0bBYnfiLfOLrYyrk
 yI81xrrZ1j5PCXvo7Wavk4g4VpJPPAAlEBL99UM=
X-Google-Smtp-Source: APXvYqyWl/oDeXA1kB34IRJknI45nNof2KCrLrrPmZHH2Wp71YXKB2KoEayjedgosaCIcsub5mNj5pezYFwvfNpEXpM=
X-Received: by 2002:a05:6808:3c2:: with SMTP id
 o2mr2729856oie.145.1578484933910; 
 Wed, 08 Jan 2020 04:02:13 -0800 (PST)
MIME-Version: 1.0
References: <20200108031957.22308-1-wgong@codeaurora.org>
 <20200108031957.22308-2-wgong@codeaurora.org>
In-Reply-To: <20200108031957.22308-2-wgong@codeaurora.org>
From: Justin Capella <justincapella@gmail.com>
Date: Wed, 8 Jan 2020 04:02:02 -0800
Message-ID: <CAMrEMU-UTtxJ-eMoNEBONXJCTpaZCcGc8Mu34wqQNXkpVz=gJA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] ath10k: add refcount for ath10k_core_restart
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_040215_439050_406F3BE7 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

I think this might break the "wedged" state.

Would simply not taking action unless STATE ON avoid the problems with
multiple calls to _restart? ie:

diff --git a/drivers/net/wireless/ath/ath10k/core.c
b/drivers/net/wireless/ath/ath10k/core.c
index 5ec16ce19b69..a6c11b2bc97c 100644
--- a/drivers/net/wireless/ath/ath10k/core.c
+++ b/drivers/net/wireless/ath/ath10k/core.c
@@ -2198,11 +2198,8 @@ static int ath10k_init_hw_params(struct ath10k *ar)
  return 0;
 }

-static void ath10k_core_restart(struct work_struct *work)
+static void inline _ath10k_core_restart(struct ath10k *ar)
 {
- struct ath10k *ar = container_of(work, struct ath10k, restart_work);
- int ret;
-
  set_bit(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags);

  /* Place a barrier to make sure the compiler doesn't reorder
@@ -2232,14 +2229,28 @@ static void ath10k_core_restart(struct
work_struct *work)
  */
  cancel_work_sync(&ar->set_coverage_class_work);

+ ath10k_halt(ar);
+ ath10k_scan_finish(ar);
+ ieee80211_restart_hw(ar->hw);
+
+ ret = ath10k_coredump_submit(ar);
+ if (ret)
+ ath10k_warn(ar, "failed to send firmware crash dump via devcoredump:
%d", ret);
+
+ complete(&ar->driver_recovery);
+}
+
+static void ath10k_core_restart(struct work_struct *work)
+{
+ struct ath10k *ar = container_of(work, struct ath10k, restart_work);
+ int ret;
+
  mutex_lock(&ar->conf_mutex);

  switch (ar->state) {
  case ATH10K_STATE_ON:
  ar->state = ATH10K_STATE_RESTARTING;
- ath10k_halt(ar);
- ath10k_scan_finish(ar);
- ieee80211_restart_hw(ar->hw);
+ _ath10k_core_restart(ar);
  break;
  case ATH10K_STATE_OFF:
  /* this can happen if driver is being unloaded
@@ -2262,13 +2273,6 @@ static void ath10k_core_restart(struct work_struct *work)
  }

  mutex_unlock(&ar->conf_mutex);
-
- ret = ath10k_coredump_submit(ar);
- if (ret)
- ath10k_warn(ar, "failed to send firmware crash dump via devcoredump: %d",
-     ret);
-
- complete(&ar->driver_recovery);
 }

 static void ath10k_core_set_coverage_class_work(struct work_struct *work)

On Tue, Jan 7, 2020 at 7:20 PM Wen Gong <wgong@codeaurora.org> wrote:
>
> When it has more than one restart_work queued meanwhile, the 2nd
> restart_work is very esay to break the 1st restart work and lead
> recovery fail.
>
> Add a ref count to allow only one restart work running untill
> device successfully recovered.
>
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/core.c | 13 +++++++++++++
>  drivers/net/wireless/ath/ath10k/core.h |  2 ++
>  drivers/net/wireless/ath/ath10k/mac.c  |  1 +
>  3 files changed, 16 insertions(+)
>
> diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
> index 91f131b87efc..0e31846e6c89 100644
> --- a/drivers/net/wireless/ath/ath10k/core.c
> +++ b/drivers/net/wireless/ath/ath10k/core.c
> @@ -2199,6 +2199,14 @@ static void ath10k_core_restart(struct work_struct *work)
>  {
>         struct ath10k *ar = container_of(work, struct ath10k, restart_work);
>         int ret;
> +       int restart_count;
> +
> +       restart_count = atomic_add_return(1, &ar->restart_count);
> +       if (restart_count > 1) {
> +               ath10k_warn(ar, "can not restart, count: %d\n", restart_count);
> +               atomic_dec(&ar->restart_count);
> +               return;
> +       }
>
>         set_bit(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags);
>
> @@ -2231,6 +2239,11 @@ static void ath10k_core_restart(struct work_struct *work)
>
>         mutex_lock(&ar->conf_mutex);
>
> +       if (ar->state != ATH10K_STATE_ON) {
> +               ath10k_warn(ar, "state is not on: %d\n", ar->state);
> +               atomic_dec(&ar->restart_count);
> +       }
> +
>         switch (ar->state) {
>         case ATH10K_STATE_ON:
>                 ar->state = ATH10K_STATE_RESTARTING;
> diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
> index e57b2e7235e3..810c99f2dc0e 100644
> --- a/drivers/net/wireless/ath/ath10k/core.h
> +++ b/drivers/net/wireless/ath/ath10k/core.h
> @@ -982,6 +982,8 @@ struct ath10k {
>         /* protected by conf_mutex */
>         u8 ps_state_enable;
>
> +       atomic_t restart_count;
> +
>         bool nlo_enabled;
>         bool p2p;
>
> diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
> index 3856edba7915..bc1574145e66 100644
> --- a/drivers/net/wireless/ath/ath10k/mac.c
> +++ b/drivers/net/wireless/ath/ath10k/mac.c
> @@ -7208,6 +7208,7 @@ static void ath10k_reconfig_complete(struct ieee80211_hw *hw,
>                 ath10k_info(ar, "device successfully recovered\n");
>                 ar->state = ATH10K_STATE_ON;
>                 ieee80211_wake_queues(ar->hw);
> +               atomic_dec(&ar->restart_count);
>         }
>
>         mutex_unlock(&ar->conf_mutex);
> --
> 2.23.0

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
