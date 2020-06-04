Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3491B1EE42C
	for <lists+ath10k@lfdr.de>; Thu,  4 Jun 2020 14:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFjCCRzHCfvMmoLDASE9dog/WvhQ3xgbW7TePBarr1w=; b=fKci1GkKsI8V6y
	eiryPuGogx3iZEZPCLfKOSSUpkkV6nBNFCwfZXPF84DVpHVG1PL0+1hVpskksxK8dv+ZnfHQA+PfS
	sKU3+pvrajOFaE2q2UqITyOgVDn1Sjt9C4zSbbfIe+Qr32DZzHCD/zJCoVJ6daxoIn1juMzwVZRpO
	ILqdhzyRgstywqQ6AM7TrmgSbgKdz8m99wl0M/+0zGdtg7zalvVDDYrHc9vx/1LixUo3Y4r2aaRur
	pD4pfNFL0autMh1cCTqMfHh1mDG05g+i/shq3JIZ0HXvY7rcdlUD5GgwrlwhpMiFT6kUUT54qp4yn
	eIYED3bl1v5flvZ5R6Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgof9-0005Rc-Ou; Thu, 04 Jun 2020 12:07:59 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgof6-0005QV-7O
 for ath10k@lists.infradead.org; Thu, 04 Jun 2020 12:07:57 +0000
Received: by mail-ot1-x341.google.com with SMTP id o7so4536162oti.9
 for <ath10k@lists.infradead.org>; Thu, 04 Jun 2020 05:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tjq8ft+xvu8cwEN8Ezt9irnpAyJe2x67prtJGxbBMaU=;
 b=guN3uovnPUiuWEV6NiTHm3kRM3IPVjgr+mjAESWEH8ZXvhJiTcpKKYcHMWdwqNvmIg
 K0byAlSDFsLgLqnDAaR8QQI8wDIFO/tVMTja9YIKxzwQPEezcvAq6DHHQqhLerMlYvUP
 RWeqzKgFCpFRG5azJx4KZYMR0/iSdQ78bwNSR2XJnN2mW28JgLw18JVT+ZJJz842SSsI
 KqRivFDA2NMephM8gBxzE5YPGR75HMcusZQz3HBpwSWADM7jpci3scG/RWhy6FOL0+/H
 t9y8jn80Qduo23ead004Y5ZwGFV8ctc4AvcWPDHgCfJJPLBGE0CXXNNGWdXtg9BvzBou
 Nbdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tjq8ft+xvu8cwEN8Ezt9irnpAyJe2x67prtJGxbBMaU=;
 b=Sl/BDSkoZD4K9sQ9KHLnj45wt/4FoGvkm784Y3Cb4a1ygS/RVkYV/qXuWWdENO+tvs
 lLkDOhFATUrK8vGo74rg447FhZZO8M3WJ7BnRXn3pjy3Tj9Wzh5+kwtnXMf2Q8IMKpT1
 RTW27qfKfDByCtmg7eozPySItNtG0Q0YcVqB5gg3e0MjbhXsJiYaD1txBN35gd+ootAd
 khTaCJhnrlOEPwFr/Q7eRJhLitc386yswWuTgq7DxeuFz4aT4mw+sF2RuI8jhzo+w93n
 qfmpNUciYdeQ4IAKsVl9Md5UaS4J9foc0GKGg/8qHjrKwYMGI/1Kd4j6rNSC7HRP6ZsD
 duxg==
X-Gm-Message-State: AOAM530hYUqXi+Mlzmj56YOGGVN0aINOxkrknV8jlb/pvoaXqhoCwrjr
 RNWQXnhQ1uY5NOhIXgRV7TLMrcDHvPYfTrYXMhJye4ZW
X-Google-Smtp-Source: ABdhPJz6uKAqidAWQ3VoCGkqeayvddo7GpDPoabF0ukn18un3qPPMA6EFAcFaSSXv7kVZEzms2Np9100F4DTzKL2vaQ=
X-Received: by 2002:a05:6830:60d:: with SMTP id
 w13mr3374166oti.243.1591272474243; 
 Thu, 04 Jun 2020 05:07:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200327093147.189390-1-robert.marko@sartura.hr>
In-Reply-To: <20200327093147.189390-1-robert.marko@sartura.hr>
From: Robert Marko <robert.marko@sartura.hr>
Date: Thu, 4 Jun 2020 14:07:43 +0200
Message-ID: <CA+HBbNE81PhyJ4xZiBXPnbocdC-7A=KgY=tcjLwJS-p=u66Ghw@mail.gmail.com>
Subject: Re: [PATCH] ath10k: enable advertising support for channels 32, 68
 and 98
To: ath10k@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_050756_321215_9CDB91D3 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 10:31 AM Robert Marko <robert.marko@sartura.hr> wrote:
>
> Enable advertising support for 5G channels: 32, 68 and 96.
> These channels are legal and available for use in ETSI countries.
> So lets advertise these and they will be available in accordance with the regulatory domain used.
Hi, are there are remarks on this patch?

Regards
Robert
>
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> Cc: Luka Perkov <luka.perkov@sartura.hr>
> ---
>  drivers/net/wireless/ath/ath10k/core.h | 2 +-
>  drivers/net/wireless/ath/ath10k/mac.c  | 3 +++
>  2 files changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
> index 5101bf2b5b15..480efaa1278c 100644
> --- a/drivers/net/wireless/ath/ath10k/core.h
> +++ b/drivers/net/wireless/ath/ath10k/core.h
> @@ -37,7 +37,7 @@
>  #define WMI_READY_TIMEOUT (5 * HZ)
>  #define ATH10K_FLUSH_TIMEOUT_HZ (5 * HZ)
>  #define ATH10K_CONNECTION_LOSS_HZ (3 * HZ)
> -#define ATH10K_NUM_CHANS 41
> +#define ATH10K_NUM_CHANS 44
>  #define ATH10K_MAX_5G_CHAN 173
>
>  /* Antenna noise floor */
> diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
> index 7fee35ff966b..f98422427b27 100644
> --- a/drivers/net/wireless/ath/ath10k/mac.c
> +++ b/drivers/net/wireless/ath/ath10k/mac.c
> @@ -8363,6 +8363,7 @@ static const struct ieee80211_channel ath10k_2ghz_channels[] = {
>  };
>
>  static const struct ieee80211_channel ath10k_5ghz_channels[] = {
> +       CHAN5G(32, 5160, 0),
>         CHAN5G(36, 5180, 0),
>         CHAN5G(40, 5200, 0),
>         CHAN5G(44, 5220, 0),
> @@ -8371,6 +8372,8 @@ static const struct ieee80211_channel ath10k_5ghz_channels[] = {
>         CHAN5G(56, 5280, 0),
>         CHAN5G(60, 5300, 0),
>         CHAN5G(64, 5320, 0),
> +       CHAN5G(68, 5340, 0),
> +       CHAN5G(96, 5480, 0),
>         CHAN5G(100, 5500, 0),
>         CHAN5G(104, 5520, 0),
>         CHAN5G(108, 5540, 0),
> --
> 2.26.0
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
