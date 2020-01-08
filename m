Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAF21347E0
	for <lists+ath10k@lfdr.de>; Wed,  8 Jan 2020 17:25:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpXa6gHHGkY4XnYxmRsmRNOcPtHYMbiuefjApN1+gy4=; b=kNrYhbQ8nCkBFf
	ClYUrojM2ZfzD8O2ggXpiCk8C8W41lwsqZsPQT1urtCSC0OJSlOkeHUq2Ej8H0R7xwczR4NNEiHoM
	YQ7VHwpl5RdTQKEDJp5bmEu2ezBE2o/2yQ2ex/qlRqky5rVJg8YYWwid8OF/2rUy46MwfPfNwjsOz
	Kk0J37C1hLQWe2w7CbnarOlEcOeTpAE0PEUyz/koB3puycTdK1PJOwW7yCW0a6DzYRIXzs5hRBIV/
	kwOurSaF7ZEZzt2yOa/4YwsIqiXkUpYIxFjaMCsmUEcSQcxEhirQ7qRyCmyp53EaD0xdKd+S4/mJ6
	cKQ93/DLk3uwIdJHpn1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipE9A-0004i8-Cg; Wed, 08 Jan 2020 16:25:28 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipE96-0004hc-HZ
 for ath10k@lists.infradead.org; Wed, 08 Jan 2020 16:25:26 +0000
Received: by mail-ot1-f65.google.com with SMTP id i15so4164127oto.2
 for <ath10k@lists.infradead.org>; Wed, 08 Jan 2020 08:25:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Yz35zFP2aSNw0+gIRfSaZMhcsEm+gudXf2tyLjffdvY=;
 b=R/aO8bjvdl3a3d/vkHd29EAle9NBBRurLa9/FUkY8fZ8W/lqRG9SKyZP4oDoDVqiDj
 8BKtJxeEw6Dug1SsrZVw7vXemWDBGT+2jzQzgJiFC3cGBrXQIIZyX/D6xtLF7SDHw66R
 HonRnhm5XV+jBRJpswIJDxmujqibZ6qhb1ZXfXJ/BSI+Cnd26WKVwgUjbP7GLfoAfoQO
 /RA46Be3Vc6C+b5otiOCNBU7svT3hdl3rfpOtGpf4DqjeEJSV2cwjymBO51wvhknswIF
 Lp1hFL0FhwwsyOTZA+hVKDs03JYSZA7Z9W49YzBaNkuGVl8NSkmIAyp0RAZfFGHNambr
 0N9w==
X-Gm-Message-State: APjAAAUoHW2a7FMbtzqdgNsGO6pwWjburIENJl6QsqaWTg3CqNmzS7y6
 KhQ6KeYY6FvV9hR+yYCM4SSzNZU=
X-Google-Smtp-Source: APXvYqy3bo4luU6v36RHI7Vo3ERDQOlcRle8/EApUhK/YgT5wizsih2wJtzzmttBCnLsrDj+ZRu17g==
X-Received: by 2002:a9d:222f:: with SMTP id o44mr4767771ota.51.1578500723273; 
 Wed, 08 Jan 2020 08:25:23 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p83sm1204804oia.51.2020.01.08.08.25.22
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 08:25:22 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220333
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 08 Jan 2020 10:25:21 -0600
Date: Wed, 8 Jan 2020 10:25:21 -0600
From: Rob Herring <robh@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 1/2] ath10k: Add optional qdss clk
Message-ID: <20200108162521.GA23484@bogus>
References: <20191223054855.3020665-1-bjorn.andersson@linaro.org>
 <20191223054855.3020665-2-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223054855.3020665-2-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_082524_917646_D2874971 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Sun, 22 Dec 2019 21:48:54 -0800, Bjorn Andersson wrote:
> The WiFi firmware found on sm8150 requires that the QDSS clock is
> ticking in order to operate, so add an optional clock to the binding to
> allow this to be specified in the sm8150 dts and add the clock to the
> list of clocks in the driver.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>  Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt | 2 +-
>  drivers/net/wireless/ath/ath10k/snoc.c                         | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
