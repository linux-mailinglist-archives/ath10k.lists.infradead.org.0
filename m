Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678B428401
	for <lists+ath10k@lfdr.de>; Thu, 23 May 2019 18:42:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDfGwaVHg0LhubdSiDLH4uNP/x8dyYN4bId9fJxoOdQ=; b=T5Sm5Y6pQZdNEV
	j3Zx3QEIycqUjspOo8z7i0PAKSnr7njwtjT78l9l2HHriAJzb46522822Woaxumeg/MYCuahlP8u1
	bkMo1S4N9Nhj+XvLdPlflvB7oYFOht6v06AhJIi0fx8JPChOSRibzM+9JYfPvBuO6ooj2zPAk44ds
	dWzCKCbx7tFbgdENgl4r/LQYz+0guDX4cAg08q49TApbewz7pEY94jVcJSFzuwIsXTUlnoP4tmECL
	59WbbsgFcTxUfX/FYmZVQUNwdxIzVXaKpw6X+njnJIOUabuIioZvg3o/Vphpa7va7FS//yex+N7lF
	QMOkBqZ5wySo1XfvChnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTqnh-0006Xl-3s; Thu, 23 May 2019 16:42:41 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqnd-0006XK-67
 for ath10k@lists.infradead.org; Thu, 23 May 2019 16:42:38 +0000
Received: by mail-lj1-x241.google.com with SMTP id e13so6077942ljl.11
 for <ath10k@lists.infradead.org>; Thu, 23 May 2019 09:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=omMwdyh9wtTqdxcHIQUMSQldil51FIXUWgVsjyb0s0U=;
 b=KUnSmQpJU2YN62tQE6JYfetN+ZdS1twcY6q48/iMfV30g6wIKl6c8Ssfq7ZiOO88K3
 tYeuZhe7uq5JD94F9pMqxbamfhlyD1Ub+7i16SPX+o9y25B/4lLYDIgH4iQ4+jBTXhqe
 +ePBlAZA+gI3aI2xDAcYYorH6l0LiB+rHj0ac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=omMwdyh9wtTqdxcHIQUMSQldil51FIXUWgVsjyb0s0U=;
 b=CSSMCUerPW2/gwzbidS4qlKhuADScgReWEMsoBjV0mJWa3QtONhXLHmbKERR5fD6XD
 VCRyGOkz1SfsVeMIL090FISDTCIQvgsdZfDoEXRhEX+LkS947pmVNAJ/az8umtnB9eRg
 dFxnaWfdU1A/PEZn9F7gSx7VvjAxW9+NNwW1l//hm5j69bJqUD0J3wuBQDzvLNrzJC2n
 jIYtjdbEl+MoJJhW5ZHtwgzLE50I7IDKh1gay7vshQZ4kHyTuENAl6fpAWsJHrJPeTPO
 UR9DiM4uKxqZAx57XJ9q4YkJChmCm9XwlC6vsVfPmb3CMeCqjfvAYuFouea1z04O3hNM
 Z49g==
X-Gm-Message-State: APjAAAUDDuwAv+wzbnctXPcYJADdUrSBKXNINW8bw5Ayc5ILnDgpLD3Z
 gv+8lkudIv/bcibwPuUTNgup2/fNXxA=
X-Google-Smtp-Source: APXvYqxiCHX2EvixDPvElJ2+fJ4KfxbnCvqSBBH3NC/3LO7NiSCSF3bhdHRXtG4OyvoGKjQlh9U31w==
X-Received: by 2002:a2e:6817:: with SMTP id c23mr27032774lja.145.1558629751524; 
 Thu, 23 May 2019 09:42:31 -0700 (PDT)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com.
 [209.85.208.174])
 by smtp.gmail.com with ESMTPSA id d68sm7928lfg.23.2019.05.23.09.42.30
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 09:42:30 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id e13so6077906ljl.11
 for <ath10k@lists.infradead.org>; Thu, 23 May 2019 09:42:30 -0700 (PDT)
X-Received: by 2002:a2e:9849:: with SMTP id e9mr381999ljj.185.1558629750272;
 Thu, 23 May 2019 09:42:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190523071534.254611-1-tientzu@chromium.org>
In-Reply-To: <20190523071534.254611-1-tientzu@chromium.org>
From: Brian Norris <briannorris@chromium.org>
Date: Thu, 23 May 2019 09:42:18 -0700
X-Gmail-Original-Message-ID: <CA+ASDXMaKpMWnLnKxeft-8eKfpM6qGDsmEzvh290JCCjeRRtxQ@mail.gmail.com>
Message-ID: <CA+ASDXMaKpMWnLnKxeft-8eKfpM6qGDsmEzvh290JCCjeRRtxQ@mail.gmail.com>
Subject: Re: [PATCH] ath10k: add missing error handling
To: Claire Chang <tientzu@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_094237_223182_11A1FC3C 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>, Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 12:15 AM Claire Chang <tientzu@chromium.org> wrote:
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -607,6 +607,10 @@ static int ath10k_sdio_mbox_rx_alloc(struct ath10k *ar,
>                                                     full_len,
>                                                     last_in_bundle,
>                                                     last_in_bundle);
> +               if (ret) {

IIUC, you have basically the same failure case a few lines up, where
ath10k_sdio_mbox_alloc_pkt_bundle() may fail. Do the same there?

This (including the error label to which it's jumping) looks fine to me though:

Reviewed-by: Brian Norris <briannorris@chromium.org>

> +                       ath10k_warn(ar, "alloc_rx_pkt error %d\n", ret);
> +                       goto err;
> +               }
>         }
>
>         ar_sdio->n_rx_pkts = i;

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
