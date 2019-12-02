Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6583C10E512
	for <lists+ath10k@lfdr.de>; Mon,  2 Dec 2019 05:28:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPQNBDXx3R3Db+Yy8Klfmyyk0YfnWffA2tL2zcSJcUI=; b=hlJe0y8Ue5cmIV
	p3zFhZ8Lj4GdKWZEd4PmLWHLyIMcP7REj+dXOU9pD/8mdkBvcUPNDyr+eadqoiGbgiZ+4dCrQgZv7
	PEKgP+cRHdfpYchXF9OwvqzmUnClQxB9iQ5bTMK7ajQVTBud9X+BA0VaGTX1wX2VJf0dNjrf16duE
	yTQx/nCfJelvNY5tX+dxpzbJAhAE5x60PGGWqPkJVQpJD1NLhoS3Da+kacumgA0joQ/3G0O8cg0qg
	9aFBKQ+jSCYxZEZA/7/K73K6pdeuCfFyz/7j1hopdGlIaz+yahjlyIp73PdtXmUF/agF1N3xYcMhe
	PZluw1Y+bZsi7mX6a56g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibdK6-0001vH-7N; Mon, 02 Dec 2019 04:28:34 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibdK1-0001ur-S5
 for ath10k@lists.infradead.org; Mon, 02 Dec 2019 04:28:31 +0000
Received: by mail-oi1-x244.google.com with SMTP id l20so31191284oie.10
 for <ath10k@lists.infradead.org>; Sun, 01 Dec 2019 20:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LgBboMICnj2iH/rTV3073CJYWv5GwAcBJW5M29WGpSM=;
 b=syV3j7Hu11m63kUcNojo+OWUMCIOEiyL67jEJRiTEogknwMiiNReGl8MoFceA0T5PH
 Y6KbGDFDeWaOGCUVP5Rw6wjFhgkyLr/KpaWNVM/Ft2E2bQLASRi7izviemMikrM6HKvP
 A0+SPGXipMhkW2kqS8mgL9l6K7Sz1nppUdbk35BcGEvxcQjkiDs1vNuuXZdbInXreitH
 gtlSP1Bxgl7HjxP6hhCeY37LlQVdob9hvPt7xUvoJHTorp6MifkpJGrz2VWogL4K8ELP
 E2rZVeO+1pEJ/FM7YF1oN8LlHOZA5dLb/utxEY8WgP2dlJrAcTgyxoWV/d242yQQW//A
 mC7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LgBboMICnj2iH/rTV3073CJYWv5GwAcBJW5M29WGpSM=;
 b=M9ib05c4eFM0nwOFvqLyJzoJwsIWVyW48/5ue66yrJeqKlcyr/CuhmYKGbMN4G9RoR
 rBOxkDVfvwYxEhHeUEPMj08Q6K8N3lay3zK1SPg9hQX3z4uMJxtWacEXlSbRQzC/WgbB
 Gbc6aZ0fktt/vHWw9x7UHaU2QPb+443wXZTkSy7KIOg6a/sLKE2bShVIR2dtlQYYYvPr
 GK01ria16fzoRbp4Z/qnuIxJZDPTnoZ1Z3bh8EYba+3jdw11GlGb+GHLU+sjOADcsyyJ
 A5csxVkRzjGaeR2M7pU2Ej63PJgQfDYxtLrB/NgTFh5x+2aezmoUu4vQU9a8x7+9kzze
 4wlg==
X-Gm-Message-State: APjAAAXs0hVHVKvkhke1/312Ao9o1G5MpQdzHb2GqBSdEjYuNRJbMtlJ
 buHRFxvbI5bBlhXJPW7A10oiF9mkMe07rdA6vA8=
X-Google-Smtp-Source: APXvYqzhNYYWtmhWCXwpdpaX8OwGnHKvv0/o3rhmxqugZEEMHkcjio3shH32OAJteV5w+dQBR/u9TaUMDbYFUX58hns=
X-Received: by 2002:aca:f305:: with SMTP id r5mr10458267oih.174.1575260907465; 
 Sun, 01 Dec 2019 20:28:27 -0800 (PST)
MIME-Version: 1.0
References: <0101016eaacca72d-a73d6fb5-0e3f-4fbb-9045-8363270fe25f-000000@us-west-2.amazonses.com>
In-Reply-To: <0101016eaacca72d-a73d6fb5-0e3f-4fbb-9045-8363270fe25f-000000@us-west-2.amazonses.com>
From: Justin Capella <justincapella@gmail.com>
Date: Sun, 1 Dec 2019 20:28:12 -0800
Message-ID: <CAMrEMU89NCJ4HKVqirYrNTC83Hv8HpT7uKrvQ-3p3Bvju=8_-Q@mail.gmail.com>
Subject: Re: [PATCH] ath10k: set max mtu to 1500 for sdio chip
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_202829_930829_955ABDC5 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

So I understand the reasoning behind using ETH_DATA_LEN, but would it
be more future proof / obvious to the next dev to calculate the size
given the interface's parameters/defines--- I get that the values were
chosen to align with this but just worried if things were to change
over time this would not be resilient/obvious thing to fix up?

I was curious if these changes would have any impact on things like
WEP where the frames are a little larger? I came across a random post
about 80211 mdsu/mtus here
https://www.cwnp.com/forums/posts?postNum=307311 and they had
mentioned it, so it got me curious

On Tue, Nov 26, 2019 at 7:00 PM Wen Gong <wgong@codeaurora.org> wrote:
>
> For sdio chip, the max credit size in firmware is 1556, the 1556
> include payload, ieee80211 header, htt header, htc header. So it
> need to set the max mtu to 1500 to forbidden TX packet which exceed
> 1500 form application.
>
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWP-1.
>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/sdio.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/net/wireless/ath/ath10k/sdio.c b/drivers/net/wireless/ath/ath10k/sdio.c
> index 60849ab8088f..8aa8ebc1d8e9 100644
> --- a/drivers/net/wireless/ath/ath10k/sdio.c
> +++ b/drivers/net/wireless/ath/ath10k/sdio.c
> @@ -2185,6 +2185,8 @@ static int ath10k_sdio_probe(struct sdio_func *func,
>         bus_params.chip_id = 0;
>         bus_params.hl_msdu_ids = true;
>
> +       ar->hw->max_mtu = ETH_DATA_LEN;
> +
>         ret = ath10k_core_register(ar, &bus_params);
>         if (ret) {
>                 ath10k_err(ar, "failed to register driver core: %d\n", ret);
> --
> 2.23.0
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
