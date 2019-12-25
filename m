Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E909B12A865
	for <lists+ath10k@lfdr.de>; Wed, 25 Dec 2019 16:15:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HVzgadQffLvKEb+xfBHzkfUzfBIG0snwgc8GgD/yndQ=; b=ejWYmp/ylEwh8K
	YlVvBjpDxrPz8PtoW9auHgxC/IsY464TT+tqOUL3aGH6p4TMXHBWIW1SkOJSDrpLcP/eqrTV+jx33
	fQi62CvqHg7nO3pFmQ5KnlzLfY1e1TLL7xfQJ9Yye04UYV4ydQMOaM4zYi262KlqBh/1pVuSE2YrG
	UNVslBC0bqsRaMLPGs/5btcyKQDFLsoxVcatjCbziGp0dI48ZW1T8gGh9iBEzoUx5dkIRiUkrRmdi
	VK+kdh0SnJy0LF2tnPomwDPBCoG5i14RAOy4kNayY2I+EhUWJHzRDJcnlk/gDebpbKtJMxEc63Y0g
	5nx+H28MVUhX9R9NIe/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik8NE-0002Tn-SR; Wed, 25 Dec 2019 15:14:56 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik8NB-0002TQ-A4
 for ath10k@lists.infradead.org; Wed, 25 Dec 2019 15:14:54 +0000
Received: by mail-oi1-x243.google.com with SMTP id i1so8123077oie.8
 for <ath10k@lists.infradead.org>; Wed, 25 Dec 2019 07:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8Aqdscs588lY4i7HDXEbNZYDFxUNRhq25hsL4hnvxXs=;
 b=imS9vn64hqsYHK913rD73T92+rvmM94DC5ySY4aaB/YBAitGEjlW73QHuUDYLwrmWM
 Ak+SiKXrlUVpJJt/3/m167+TsY5NPRTKKLWhiB2HKJafyd7cIS1VIjhO7bp/++QUOSNO
 tjHKFHUvb6ni4vDXfDJNxefEteRWGrPDwpU3TaHxEIiSS2W1LewlVTBju80DxMaYeS+G
 T+2EIT94GltL47waRWqgewd6hzoflk1WlelUkvQ6MYx9wNwURaebkz0qalRCfQYAehF5
 ZVKm/rasOIVcBwBoiT+NtkUuVqaTV/jzlWVqw8r4/riXdlu8gyTt+3Beg5Mm1eNmHonT
 kC+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8Aqdscs588lY4i7HDXEbNZYDFxUNRhq25hsL4hnvxXs=;
 b=UZiJsr9MgamWueFQ8QayVuul+mlJ6ObB0S10mTjEWzbfvmvxLja//stHD5jJlnd7fz
 VrVCWFc4jrrW450xRxvlmz4AFRAeAiAlsDnaanwZy+evF2AZgkQdrmAm7JwqZhySe79B
 dihv5SlwXYjeEQOEBHHtNCuMqMlMptOzPq+Zz/NEXMlmx+7ITHZ9JfqJVDj7V5YE8yJg
 0DEmo5Y6g831tOJg6S+puEaoZRSktgjH7RUTmRL1DB2vQlXglnna7K2V+s40Mk1vubva
 nMtzC0t2fG4YVKQm6TbKjvgKbQv1WsN3uf9zE3Eg+qMVpvkeGeBDBPqEE9V15KoFU6cY
 Pp+A==
X-Gm-Message-State: APjAAAW4eJxva+lFXKzDWYNv30s7ASGTulfEH2ceTZKnOuOfbMDFluTw
 RRUEAJhQvB1U7k5LQvGRynvhU6B45QzYF3c/PT4=
X-Google-Smtp-Source: APXvYqzpP+fvEZUxl4b0VHahIOCrBk+neYQOSum4pwCIEMizKu1QFC+S7CxMHunN+21jr7CLGphOIZqjPSH1yOhSVNM=
X-Received: by 2002:aca:f305:: with SMTP id r5mr1662822oih.174.1577286891473; 
 Wed, 25 Dec 2019 07:14:51 -0800 (PST)
MIME-Version: 1.0
References: <20191225120002.11163-1-wgong@codeaurora.org>
 <20191225120002.11163-2-wgong@codeaurora.org>
In-Reply-To: <20191225120002.11163-2-wgong@codeaurora.org>
From: Justin Capella <justincapella@gmail.com>
Date: Wed, 25 Dec 2019 07:14:38 -0800
Message-ID: <CAMrEMU-p3+HRZYW6TzXwZSwhxj9oJ9JW1Rg=ZysJ3fr0rm45Ng@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] ath10k: add refcount for ath10k_core_restart
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_071453_375223_76904F7F 
X-CRM114-Status: GOOD (  14.95  )
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This does not only effect SDIO.

Why a semaphore / count? Could the conf_mutex be held earlier, or
perhaps change the state to ATH10K_STATE_RESTARTING first?
ath10k_reconfig_complete is also called in mac.c when channel is changed so

On Wed, Dec 25, 2019 at 4:01 AM Wen Gong <wgong@codeaurora.org> wrote:
>
> When it has more than one restart_work queued meanwhile, the 2nd
> restart_work is very esay to break the 1st restart work and lead
> recovery fail.
>
> Add a ref count to allow only one restart work running untill
> device successfully recovered.
>
> This patch only effect sdio chips.
>
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/core.c | 8 ++++++++
>  drivers/net/wireless/ath/ath10k/core.h | 2 ++
>  drivers/net/wireless/ath/ath10k/mac.c  | 1 +
>  3 files changed, 11 insertions(+)
>
> diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
> index 91f131b87efc..4e0e8c86bdd4 100644
> --- a/drivers/net/wireless/ath/ath10k/core.c
> +++ b/drivers/net/wireless/ath/ath10k/core.c
> @@ -2199,6 +2199,14 @@ static void ath10k_core_restart(struct work_struct *work)
>  {
>         struct ath10k *ar = container_of(work, struct ath10k, restart_work);
>         int ret;
> +       int restart_count;
> +
> +       restart_count = atomic_inc_and_test(&ar->restart_count);
> +       if (restart_count > 1) {
> +               ath10k_warn(ar, "can not restart, count: %d\n", restart_count);
> +               atomic_dec(&ar->restart_count);
> +               return;
> +       }
>
>         set_bit(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags);
>
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
