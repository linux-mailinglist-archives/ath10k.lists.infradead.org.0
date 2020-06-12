Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7722D1F79BF
	for <lists+ath10k@lfdr.de>; Fri, 12 Jun 2020 16:25:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2GRU5UqeD8oAt+eXjcGMhFHi/cmbjKequ9PR0NI479w=; b=TcjT4ruz3S27ftcd9hcz1V6nO
	2SeM1X2QCwdqVojNyXSuCGz04JzE2Q3uxwJ+tEPkJH7w6YPe80jhM6aMed7++VR58yXQmqjsVOQ2Z
	17ExWcOWbfJCfBK7uOIvRl+1OHJ9WwzK8UtNnUKpKH8zYYVJl9d6pQZ0xBpPBBK1ro6+dVuhqMxcy
	+KI41a/5YqXKTTa3dJ5sgGwE5OHUe0eC+C9SbBwtOlUVrRq+n+6QrhgykDSEyXHWfvLn//JdImSgd
	j/33xAIofM2YwXVaUDOozNT3EyGOygkVVulqC+rB3MhE6VG1nTx7ErZ+AtF5IuQuxurMk+KL7go7w
	18zt7ifTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjkcp-0000sO-2s; Fri, 12 Jun 2020 14:25:43 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjkck-0000rl-KQ
 for ath10k@lists.infradead.org; Fri, 12 Jun 2020 14:25:40 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591971938; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=6TkXm7WIXe6JmUlAyDwjFnbArqNv0j3TvAXTAuTgCHs=;
 b=Z+d75wX9JpijK2sHJn5AR+gHwgLX285sawdnQvORejtB3Gy6g44/vMlVqfIBUoLA5Zw3RdjG
 RDeil+frChZCgErJE2Xe/S7PWtcIoG3dEC4245Xs7UaJXuFDdAOqL+bcQcivYnNWgh++GiWS
 Bomv/VXPTIT2ojfy2RcspLDnxEU=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n11.prod.us-east-1.postgun.com with SMTP id
 5ee39060bfb34e631c193cb8 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 12 Jun 2020 14:25:36
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 39E21C4339C; Fri, 12 Jun 2020 14:25:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 62898C433CA;
 Fri, 12 Jun 2020 14:25:35 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 12 Jun 2020 19:55:35 +0530
From: pillair@codeaurora.org
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ath10k: Wait until copy complete is actually done before
 completing
In-Reply-To: <20200609082015.1.Ife398994e5a0a6830e4d4a16306ef36e0144e7ba@changeid>
References: <20200609082015.1.Ife398994e5a0a6830e4d4a16306ef36e0144e7ba@changeid>
Message-ID: <775536279e60ccc833c481ad6ab6dab2@codeaurora.org>
X-Sender: pillair@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_072538_731003_84247B8B 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: saiprakash.ranjan@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S.
 Miller" <davem@davemloft.net>, kvalo@codeaurora.org, kuabhs@google.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Doug,

The send callback for the CEs do check for hw_index/SRRI before trying 
to free the buffer.
But adding a check for copy-complete (before calling the individual CE 
callbacks) seems to be the better approach. Hence I agree that this 
patch should be added.

Thanks,
Rakesh Pillai.

On 2020-06-09 20:50, Douglas Anderson wrote:
> On wcn3990 we have "per_ce_irq = true".  That makes the
> ath10k_ce_interrupt_summary() function always return 0xfff. The
> ath10k_ce_per_engine_service_any() function will see this and think
> that _all_ copy engines have an interrupt.  Without checking, the
> ath10k_ce_per_engine_service() assumes that if it's called that the
> "copy complete" (cc) interrupt fired.  This combination seems bad.
> 
> Let's add a check to make sure that the "copy complete" interrupt
> actually fired in ath10k_ce_per_engine_service().
> 
> This might fix a hard-to-reproduce failure where it appears that the
> copy complete handlers run before the copy is really complete.
> Specifically a symptom was that we were seeing this on a Qualcomm
> sc7180 board:
>   arm-smmu 15000000.iommu: Unhandled context fault:
>   fsr=0x402, iova=0x7fdd45780, fsynr=0x30003, cbfrsynra=0xc1, cb=10
> 
> Even on platforms that don't have wcn3990 this still seems like it
> would be a sane thing to do.  Specifically the current IRQ handler
> comments indicate that there might be other misc interrupt sources
> firing that need to be cleared.  If one of those sources was the one
> that caused the IRQ handler to be called it would also be important to
> double-check that the interrupt we cared about actually fired.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>


Reviewed-by: Rakesh Pillai <pillair@codeaurora.org>


> ---
> 
>  drivers/net/wireless/ath/ath10k/ce.c | 30 +++++++++++++++++++---------
>  1 file changed, 21 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/ce.c
> b/drivers/net/wireless/ath/ath10k/ce.c
> index 294fbc1e89ab..ffdd4b995f33 100644
> --- a/drivers/net/wireless/ath/ath10k/ce.c
> +++ b/drivers/net/wireless/ath/ath10k/ce.c
> @@ -481,6 +481,15 @@ static inline void
> ath10k_ce_engine_int_status_clear(struct ath10k *ar,
>  	ath10k_ce_write32(ar, ce_ctrl_addr + wm_regs->addr, mask);
>  }
> 
> +static inline bool ath10k_ce_engine_int_status_check(struct ath10k 
> *ar,
> +						     u32 ce_ctrl_addr,
> +						     unsigned int mask)
> +{
> +	struct ath10k_hw_ce_host_wm_regs *wm_regs = ar->hw_ce_regs->wm_regs;
> +
> +	return ath10k_ce_read32(ar, ce_ctrl_addr + wm_regs->addr) & mask;
> +}
> +
>  /*
>   * Guts of ath10k_ce_send.
>   * The caller takes responsibility for any needed locking.
> @@ -1301,19 +1310,22 @@ void ath10k_ce_per_engine_service(struct
> ath10k *ar, unsigned int ce_id)
> 
>  	spin_lock_bh(&ce->ce_lock);
> 
> -	/* Clear the copy-complete interrupts that will be handled here. */
> -	ath10k_ce_engine_int_status_clear(ar, ctrl_addr,
> -					  wm_regs->cc_mask);
> +	if (ath10k_ce_engine_int_status_check(ar, ctrl_addr,
> +					      wm_regs->cc_mask)) {
> +		/* Clear before handling */
> +		ath10k_ce_engine_int_status_clear(ar, ctrl_addr,
> +						  wm_regs->cc_mask);
> 
> -	spin_unlock_bh(&ce->ce_lock);
> +		spin_unlock_bh(&ce->ce_lock);
> 
> -	if (ce_state->recv_cb)
> -		ce_state->recv_cb(ce_state);
> +		if (ce_state->recv_cb)
> +			ce_state->recv_cb(ce_state);
> 
> -	if (ce_state->send_cb)
> -		ce_state->send_cb(ce_state);
> +		if (ce_state->send_cb)
> +			ce_state->send_cb(ce_state);
> 
> -	spin_lock_bh(&ce->ce_lock);
> +		spin_lock_bh(&ce->ce_lock);
> +	}
> 
>  	/*
>  	 * Misc CE interrupts are not being handled, but still need

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
