Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212FC90A0D
	for <lists+ath10k@lfdr.de>; Fri, 16 Aug 2019 23:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4FMdl/tAkba696jLSkc+WZ+km+M1zhBYqvEkwdlDO4=; b=S/vt7HxHwtfGG2
	fCM/0PVo7IgnFqtBW1p9b/Y9Dd03alxGUw+bcrJBInugM1iIPTvU9nwoYl4+rg7zoLiw+vPtVU9dU
	xkFn+0Q9iLxTYf2pJnd+sZ/mxXyCPPxUQ8k4wWlQSX7a3zl12GbyzS0YjQLXxA1+Ef4/udYTXsbUb
	qeb3qgsaPs0bfgX5f5WQSyLOjoGxyHBIpAC26PiioCwIt96RM9v+K/XN4hQH+0qQi+KZGdKAK4cQq
	5Lc4gRy7u9DlS2YvtQUPoZzBQU2mBadqIQ7tIdkTgB4gYSBEPZ21qj+Ne4wA/wKSaU2wr62BmdDb7
	A3iqzt1Pp9iATajmBa4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyjVl-0007DS-Ky; Fri, 16 Aug 2019 21:11:49 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyjVh-0007Ce-QY
 for ath10k@lists.infradead.org; Fri, 16 Aug 2019 21:11:47 +0000
Received: by mail-oi1-f195.google.com with SMTP id v12so2121964oic.12
 for <ath10k@lists.infradead.org>; Fri, 16 Aug 2019 14:11:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0gC4sb2j3RWTm9xjuIK9kqivJqH0u782yHSmQQjFy/g=;
 b=GhGZsa0G57zrm66fxE9oMmA7O1E/mWEx05FQrW3dQacvFPBSYNXz0GMNBO1MIFJ5X6
 fuWmb6pFeXcDu00NVrq7c1OylVikFVXUS4WCoQWYOyoOAhOB8tUmwMSkuYQ9Z9+6WBpD
 r1wMTu/wtobfFnM+0p0AOCACGKj4hTVMmMR1UUzUR2n+EjlmbnCLwskd1/LSCOOsfqrT
 Rva3ZG4qPaqFno9svWAce2eB9A7r4X0UO1kfkR8Nh0tw73+37Z1zsZeMo+3TozkmEBpE
 vlB9s00i5lt9E0fvVRqhXrC7/ncnJ/FjZ3Sda3H6LpN4w4HWDjMBiuNVjJLj01j5hfIx
 qmKg==
X-Gm-Message-State: APjAAAVdzTVlekzwxUZ9lr6GCr3GA/DeNioLhwH9Ms8XZ64DakRKtYCe
 iKo9kTG7drfY1UrdGeAt7w==
X-Google-Smtp-Source: APXvYqxVNGZP55OO2DAvkxQON330c/WkMGGQCA7UZMyjdZKYVNzMAVMjLidQg+yRLMzc0LHLCzRN0Q==
X-Received: by 2002:aca:5106:: with SMTP id f6mr6355037oib.69.1565989903418;
 Fri, 16 Aug 2019 14:11:43 -0700 (PDT)
Received: from localhost (ip-173-126-47-137.ftwttx.spcsdns.net.
 [173.126.47.137])
 by smtp.gmail.com with ESMTPSA id z26sm1648410oih.16.2019.08.16.14.11.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 14:11:42 -0700 (PDT)
Date: Fri, 16 Aug 2019 16:11:41 -0500
From: Rob Herring <robh@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH] ath10k: Fix HOST capability QMI incompatibility
Message-ID: <20190816211141.GA4468@bogus>
References: <20190725063108.15790-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725063108.15790-1-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_141145_865055_B19D3268 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 stable@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 11:31:08PM -0700, Bjorn Andersson wrote:
> The introduction of 768ec4c012ac ("ath10k: update HOST capability QMI
> message") served the purpose of supporting the new and extended HOST
> capability QMI message.
> 
> But while the new message adds a slew of optional members it changes the
> data type of the "daemon_support" member, which means that older
> versions of the firmware will fail to decode the incoming request
> message.
> 
> There is no way to detect this breakage from Linux and there's no way to
> recover from sending the wrong message (i.e. we can't just try one
> format and then fallback to the other), so a quirk is introduced in
> DeviceTree to indicate to the driver that the firmware requires the 8bit
> version of this message.
> 
> Cc: stable@vger.kernel.org
> Fixes: 768ec4c012ac ("ath10k: update HOST capability qmi message")
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  .../bindings/net/wireless/qcom,ath10k.txt     |  6 +++++

Acked-by: Rob Herring <robh@kernel.org>

>  drivers/net/wireless/ath/ath10k/qmi.c         | 13 ++++++++---
>  .../net/wireless/ath/ath10k/qmi_wlfw_v01.c    | 22 +++++++++++++++++++
>  .../net/wireless/ath/ath10k/qmi_wlfw_v01.h    |  1 +
>  drivers/net/wireless/ath/ath10k/snoc.c        | 11 ++++++++++
>  drivers/net/wireless/ath/ath10k/snoc.h        |  1 +
>  6 files changed, 51 insertions(+), 3 deletions(-)

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
