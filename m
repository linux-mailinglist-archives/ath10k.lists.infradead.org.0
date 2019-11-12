Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C218F8AD6
	for <lists+ath10k@lfdr.de>; Tue, 12 Nov 2019 09:42:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYheD1pFSr+oWgtBgp7SH3NFLWnILX6C5uEPXzD7ODg=; b=Gcq3/VAd4Goy1o
	YLQOBmMYbT/vusgLBBqiWjU/zN8lDCwE6yHjjqvGfpip/ohK2YLJb/DDmY5EW4bskWEfGYIMv96rc
	4Z2QGLcQMILdIdsluElauu5IejOsw2vgk0Ngx5LxysAunhTrdOXpZBCLHhLm40bEy/qvBQn3Mp+qH
	GaA6l7JWYjClqijR5NZ66DxZezOCmTumzkpNmz3pX9584VvW6Y18gykV0LSWgNF7278L9uMsjOIKR
	7JREYZUSd7xI5grIXy1QN5cdEmOw4IjMaEGgJcWrVr5vjaKXo30TmBDXa4odOXYw2SlG/mzWq9xeq
	IzdYcbBoLctZOkkCP65w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iURkv-0008EC-1S; Tue, 12 Nov 2019 08:42:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iURkq-0008Dd-Bn
 for ath10k@lists.infradead.org; Tue, 12 Nov 2019 08:42:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id w9so10707495wrr.0
 for <ath10k@lists.infradead.org>; Tue, 12 Nov 2019 00:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HzvYoikEhzEV6lsuLR4at0JgoNFuCTedoPfyEqd82fk=;
 b=BmHOPmBMRfv3GGPBxmR72PUMl/3ZWPI+1+BNAVyBkqC5Tpc+2sZUdn6AzT8M4A3ova
 Nkyeg/Q7B6tdMFpe8A3fOI5TKQXKrmh6xfCfIuprnDVAbYfnsnPORunYnT50ETPK/MnC
 5hkYWMXyrYmi/d0hS1MqKwbkaKpVwxTYOW+9Sn5xher1rZzd48Na9dG2XwqLRK2OD1iw
 M+ih+ZUi+q9V6kXktF3bZadGi2GMRMuH7dWEOUjqGtGZ0+s2tUq/ojfMMmD08wSJ4UdY
 zyyUp86Z/19Y8gb9WXH8RUP29WbdUDbWxfrP7na8Wtwf+upPBLFGsLZtAnLShEzy/34X
 KznQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HzvYoikEhzEV6lsuLR4at0JgoNFuCTedoPfyEqd82fk=;
 b=Xu0SsynJ62PYo/cst4x15bcsnbULWKwE3ScAQdkJ8J0kQvYR/eSzfAxnF7p55GnBKV
 NS+VyIvfHDJMBAHPpo71qj+HCCkGgqTSfv48JuYIqqSHFx3iaRorTItx4eqbD5i4ejkg
 nJ/QJkg1qdZ/aaJ++mmuf0kA+gq42nk4CbspsMlVhh4mFFBzhC9sCiyAq6eCBGF8QL38
 UA+xWXrZhb61U3WB4kIwJVpSrDtIFcwTKBgIFX4xbsfK9oydyW8BI012SifE2nCMPEGb
 qJ7fZXheTEwR8nAc0t8RekrLLQntKiHl9FdxoS6uEFR2aKKIUnAx6zPuO0XYZW9Ih8NC
 pncg==
X-Gm-Message-State: APjAAAV8GEVZYRlvVzQLkgy7QzNnYM8+emNwdNHPVK0UO4SbboDN46tl
 bHkUThZrA+7C0/FCYV6d6PIxsQ==
X-Google-Smtp-Source: APXvYqzO1tf7n21rpRAYsuA0hCRyRuoIczMjkpOTlOH4itbZj239HUwQUPygk/Y8AFRAdhyysyqD3Q==
X-Received: by 2002:a5d:67c2:: with SMTP id n2mr16349306wrw.222.1573548146216; 
 Tue, 12 Nov 2019 00:42:26 -0800 (PST)
Received: from netronome.com ([2001:982:756:703:d63d:7eff:fe99:ac9d])
 by smtp.gmail.com with ESMTPSA id 189sm3583144wmc.7.2019.11.12.00.42.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 12 Nov 2019 00:42:26 -0800 (PST)
Date: Tue, 12 Nov 2019 09:42:25 +0100
From: Simon Horman <simon.horman@netronome.com>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Subject: Re: [PATCH] ath10k: Fix qmi init error handling
Message-ID: <20191112084225.casuncbo7z54vu4g@netronome.com>
References: <20191106231650.1580-1-jeffrey.l.hugo@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106231650.1580-1-jeffrey.l.hugo@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_004228_467619_F3CC3518 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, davem@davemloft.net, kvalo@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 03:16:50PM -0800, Jeffrey Hugo wrote:
> When ath10k_qmi_init() fails, the error handling does not free the irq
> resources, which causes an issue if we EPROBE_DEFER as we'll attempt to
> (re-)register irqs which are already registered.
> 
> Fixes: ba94c753ccb4 ("ath10k: add QMI message handshake for wcn3990 client")
> Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> ---
>  drivers/net/wireless/ath/ath10k/snoc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
> index fc15a0037f0e..f2a0b7aaad3b 100644
> --- a/drivers/net/wireless/ath/ath10k/snoc.c
> +++ b/drivers/net/wireless/ath/ath10k/snoc.c
> @@ -1729,7 +1729,7 @@ static int ath10k_snoc_probe(struct platform_device *pdev)
>  	ret = ath10k_qmi_init(ar, msa_size);
>  	if (ret) {
>  		ath10k_warn(ar, "failed to register wlfw qmi client: %d\n", ret);
> -		goto err_core_destroy;
> +		goto err_free_irq;
>  	}

From a casual examination of the code this seems like a step in the right
direction. But does this error path also need to call ath10k_hw_power_off() ?

>  
>  	ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc probe\n");
> -- 
> 2.17.1
> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
