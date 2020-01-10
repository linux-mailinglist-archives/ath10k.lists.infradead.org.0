Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1F5136B10
	for <lists+ath10k@lfdr.de>; Fri, 10 Jan 2020 11:29:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L0nK/ep+9CqmD5FNyDN55gBMWjxwr7UeYOpzx+rj9VY=; b=oabGVyZ8I/bNfQkI1Yv8P5l7A
	iwONov3Cev0nz9ItjXg7BKyS6VOrPTlcztYWPcwwvMLzgmIFZKpdirX5S3MbrSZBb8zM6BHHCQDeS
	U9Elwrz3JXIzOTkNlwddDNRNPYxej1B3GY9rbfW7yhQLIYSQ6rOmbV3OAyWjxA0yLgE87M9agwLW1
	8qxWtSeWWCx+dD0a75mg1AJp2+pbKtt0bTmzIWOZpVflOGK8jZajKO9HLMQqqE7//v7DwgYFov/pO
	VAObZS7MdMGuMf/MokmqvUcl129bWrpsgVnkR6l1A0Nfh0n03Urzw4EUSdzzujhNZQ0zyJiHoqiJi
	QMPjQ3leQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprXw-0000Fe-Qk; Fri, 10 Jan 2020 10:29:40 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprXt-0000FA-4j
 for ath10k@lists.infradead.org; Fri, 10 Jan 2020 10:29:38 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578652176; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=IytsLbM1pR0Qzs157gZv5EoAroYoP4LB4watZpuwJso=;
 b=TlxPGwlCGXYlSfqEOCw1YeQ6d+2QJ8WUOXDM2MXq5/AJ0tU37KraLpOd+mbobwzBV/5nlvzS
 rOql022zih5vSbhEpAolA2f268VCsmNT5f3lI+gtl3Z+jDsZt6dC2kgDa1X5Ur15mbc6kteD
 AclTT89ldsY4MFr3bNx80rs1D9I=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e18520f.7fd0a7b5f7d8-smtp-out-n01;
 Fri, 10 Jan 2020 10:29:35 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D7995C43383; Fri, 10 Jan 2020 10:29:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 93091C433CB;
 Fri, 10 Jan 2020 10:29:34 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 10 Jan 2020 18:29:34 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Justin Capella <justincapella@gmail.com>
Subject: Re: [PATCH v4 1/2] ath10k: add refcount for ath10k_core_restart
In-Reply-To: <CAMrEMU-UTtxJ-eMoNEBONXJCTpaZCcGc8Mu34wqQNXkpVz=gJA@mail.gmail.com>
References: <20200108031957.22308-1-wgong@codeaurora.org>
 <20200108031957.22308-2-wgong@codeaurora.org>
 <CAMrEMU-UTtxJ-eMoNEBONXJCTpaZCcGc8Mu34wqQNXkpVz=gJA@mail.gmail.com>
Message-ID: <55ab2d64e78d51a9da587f276899e08b@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_022937_245706_F8A52CBF 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-01-08 20:02, Justin Capella wrote:
> I think this might break the "wedged" state.
> 
> Would simply not taking action unless STATE ON avoid the problems with
> multiple calls to _restart? ie:
> 

ath10k_core_restart is one part of the recovery process,
after ath10k_core_restart, it has other things do in mac80211/ath10k...,
it need to make sure all the recovery 
finished(ath10k_reconfig_complete),
then the next recovery can start from ath10k_core_restart.

so it can not simply change like below.
> diff --git a/drivers/net/wireless/ath/ath10k/core.c
> b/drivers/net/wireless/ath/ath10k/core.c
> index 5ec16ce19b69..a6c11b2bc97c 100644
> --- a/drivers/net/wireless/ath/ath10k/core.c
> +++ b/drivers/net/wireless/ath/ath10k/core.c
> @@ -2198,11 +2198,8 @@ static int ath10k_init_hw_params(struct ath10k 
> *ar)
>   return 0;
>  }
> 
> -static void ath10k_core_restart(struct work_struct *work)
> +static void inline _ath10k_core_restart(struct ath10k *ar)
>  {
> - struct ath10k *ar = container_of(work, struct ath10k, restart_work);
> - int ret;
> -
>   set_bit(ATH10K_FLAG_CRASH_FLUSH, &ar->dev_flags);
> 
>   /* Place a barrier to make sure the compiler doesn't reorder
> @@ -2232,14 +2229,28 @@ static void ath10k_core_restart(struct
> work_struct *work)
>   */
>   cancel_work_sync(&ar->set_coverage_class_work);
> 
> + ath10k_halt(ar);
> + ath10k_scan_finish(ar);
> + ieee80211_restart_hw(ar->hw);
> +
> + ret = ath10k_coredump_submit(ar);
> + if (ret)
> + ath10k_warn(ar, "failed to send firmware crash dump via devcoredump:
> %d", ret);
> +
> + complete(&ar->driver_recovery);
> +}
> +
> +static void ath10k_core_restart(struct work_struct *work)
> +{
> + struct ath10k *ar = container_of(work, struct ath10k, restart_work);
> + int ret;
> +
>   mutex_lock(&ar->conf_mutex);
> 
>   switch (ar->state) {
>   case ATH10K_STATE_ON:
>   ar->state = ATH10K_STATE_RESTARTING;
> - ath10k_halt(ar);
> - ath10k_scan_finish(ar);
> - ieee80211_restart_hw(ar->hw);
> + _ath10k_core_restart(ar);
>   break;
>   case ATH10K_STATE_OFF:
>   /* this can happen if driver is being unloaded
> @@ -2262,13 +2273,6 @@ static void ath10k_core_restart(struct 
> work_struct *work)
>   }
> 
>   mutex_unlock(&ar->conf_mutex);
> -
> - ret = ath10k_coredump_submit(ar);
> - if (ret)
> - ath10k_warn(ar, "failed to send firmware crash dump via devcoredump: 
> %d",
> -     ret);
> -
> - complete(&ar->driver_recovery);
>  }
> 
>  static void ath10k_core_set_coverage_class_work(struct work_struct 
> *work)
> 
> On Tue, Jan 7, 2020 at 7:20 PM Wen Gong <wgong@codeaurora.org> wrote:

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
