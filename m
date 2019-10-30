Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF113E9D6B
	for <lists+ath10k@lfdr.de>; Wed, 30 Oct 2019 15:26:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RvEfdYzCzN9ixUoS+dxX26VFORanx4MulWkQrAAB8ao=; b=DZA+vciGWdERhQ
	5fcc8rHnv/fSBYdwPf3BW5QaCEBEXknFJEacqb4/bsF1i2YOBosI5hagCLtWy1uKPPGUFZI82SlMJ
	mRRqbfOhOZPbvTv/tLNBdsOdfMUFB0URj+jtBBNVME51z5zxx6s8fUla9oSCoPz9svIF4mCYsyN5V
	fmg3PMwKQnbPwIx1lWbeLOU8yYFj7ctU8NPvT80xuPwmQhJkOdnzoaL1OWMhkp4+HQTCogvBOQPfg
	18DJ/iba8f661IXiq8IBtq+a7aaNlr7tfEecW+nFmpc96YJ9do1+AgX4uglsrcF0t8g3PSBO/5e7c
	N3ZpdB0isQcabWuBRi9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPovA-00049d-Fz; Wed, 30 Oct 2019 14:26:00 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPov6-00048o-HM
 for ath10k@lists.infradead.org; Wed, 30 Oct 2019 14:25:58 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1EFFB60F74; Wed, 30 Oct 2019 14:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572445555;
 bh=sk6wzxiMvVRKpjDGRWKQ2yuiHkwjsWywpXOwNnQW9Gg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=K2vsSc1gpF5zrjF2e6l9mJGpZZdhgqO4zoO6HV9sF1YU7FgLQaEV7yWB4OQdIfJJ7
 qiAMu8TCjWyU4Ty6yBCe4QFwRuZ2LV1vRcGn3dyrsJGSmKemXyUVnLf4t2/Yy1OXh4
 ckAo9sTShaJZINbwtLI4lmymCdn4hBzBRLY4mYXQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3BDA16081E;
 Wed, 30 Oct 2019 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1572445554;
 bh=sk6wzxiMvVRKpjDGRWKQ2yuiHkwjsWywpXOwNnQW9Gg=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Fr3Z19TvyHPLK9kLCfXd7mndKZj32sJrii/bwC9oNViH7BM5NOe+/iqUSirZkHXN3
 eWql8R7NZFAJ3Gl9LS6EB+h+Xz0KaJUI+78F+6pMPYMZ9arNJXh/eZr5MDo6HPqACb
 Ro4UQwL1syYVqrs+U7PkEBQ5x7J+/6WN5yHEYGGY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3BDA16081E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: liupold <rohn.ch@gmail.com>
Subject: Re: [PATCH] ath10k: Fixed "Failed to wake target" QCA6174
References: <20191030125035.31848-1-rohn.ch@gmail.com>
Date: Wed, 30 Oct 2019 16:25:50 +0200
In-Reply-To: <20191030125035.31848-1-rohn.ch@gmail.com> (liupold's message of
 "Wed, 30 Oct 2019 18:20:35 +0530")
Message-ID: <87eeyu2tu9.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_072557_227148_BCA8807D 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

+ ath10k list

liupold <rohn.ch@gmail.com> writes:

> There is a issue with card about waking up during boot and from suspend
> the only way to prevent it (is seems) by making pci_ps = false,
> on Acer Swift 3 (ryzen 2500u).

Can you provide dmesg output when this problem happens? Was QCA6174
installed to Swift 3 by default at the factory or did you install it
afterwards on your own?

> Signed-off-by: liupold <rohn.ch@gmail.com>

Is 'liupold' your full legal name?

> ---
>  drivers/net/wireless/ath/ath10k/pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/pci.c b/drivers/net/wireless/ath/ath10k/pci.c
> index a0b4d265c6eb..653590342619 100644
> --- a/drivers/net/wireless/ath/ath10k/pci.c
> +++ b/drivers/net/wireless/ath/ath10k/pci.c
> @@ -3514,7 +3514,7 @@ static int ath10k_pci_probe(struct pci_dev *pdev,
>  	case QCA6164_2_1_DEVICE_ID:
>  	case QCA6174_2_1_DEVICE_ID:
>  		hw_rev = ATH10K_HW_QCA6174;
> -		pci_ps = true;
> +		pci_ps = false;
>  		pci_soft_reset = ath10k_pci_warm_reset;
>  		pci_hard_reset = ath10k_pci_qca6174_chip_reset;
>  		targ_cpu_to_ce_addr = ath10k_pci_qca6174_targ_cpu_to_ce_addr;

This increases power consumption for all QCA6174 devices so I'm not
eager to do this.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
