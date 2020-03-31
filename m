Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F7F19A0F5
	for <lists+ath10k@lfdr.de>; Tue, 31 Mar 2020 23:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HgXz576V887OFTvBVXUETZOGxdO8ACshJUhwHEB6yiE=; b=cCNVyiuQYYeGLM
	q+OvNwyS/JFwNqux1pMJmYuuH0hpKu8/bs19BorM+ih9zPgcZH6ie1Xg8LCJRVZyjdche6HlIy5Ki
	p1Zhb0n4M0bNaW9trfSWNlSvDizfkjyc4P/FTB+FutgOvO72FY+pKvl7nwspUAjGv6z8r+OG+ydZV
	HMxqWerSuBIj7Txvr6Sajgyimrc2MAdfnGPQhBtFcljlNP8Coio4/OJJ5zI+CKI4q2IktDg+XpDlr
	JJXA+35svBdS0/A5wy74ECymcuzcuLBMirqKb6x0ZX/IEcYEWE/o149YLQ4ijW3XdfmmFFIc1DRfR
	DVXBRrcF5/pb4mF+1zMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJOd0-000656-1G; Tue, 31 Mar 2020 21:40:58 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJOcw-000646-9s
 for ath10k@lists.infradead.org; Tue, 31 Mar 2020 21:40:55 +0000
Received: by mail-il1-f193.google.com with SMTP id k29so20969517ilg.0
 for <ath10k@lists.infradead.org>; Tue, 31 Mar 2020 14:40:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eq+6A9+LczeU2VzQyTNk/9n1oBeKvi0NgSFZ/oc66oQ=;
 b=oiq+AbMxBgLmCJ2TELLd/jJUNltUAzswn0CUeigeGvNTDl5BRYXQuwcFyt0Y6veePd
 a9Tm8il0OnmEQDE/MaKFxFqlAriRrezGLPgheA2y2m82s73FcDEwLOCCmY3GIprcE6m4
 NSLZ1rjeoXL3kJm2hUoi0+rlI5R6J7aQjgR4xrM1zQ2sGZjR2Z8EotI1vKeHRhnHp5bU
 Z9OfYBkTasBOQypCLT2BnmYAItYJR41o+BLlHqiEWh/2IQGXhDzYXhRRDdiR8O6wUIJj
 O3HL/zhNufrVnYfEaaqL8bnnOX8bFbCWLFPkWsVGc4nIWmXmumBBD9AIrJGoUg6LT3Kw
 16uQ==
X-Gm-Message-State: ANhLgQ29Axi8ety8iR2zEDa2GgdSSiVKtwIwZ2SP/vkK1RCCrycwPo5l
 5gek7faThI3aRRUu9hUDcQ==
X-Google-Smtp-Source: ADFU+vssb/q/y3wnHMbcu1KcLFBTw9EarimFzfJH01AQcRsX3nDONN9ZkpJiUj9gw96009vEgGk6Xw==
X-Received: by 2002:a92:844f:: with SMTP id l76mr19385844ild.13.1585690853355; 
 Tue, 31 Mar 2020 14:40:53 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id h9sm21895iow.37.2020.03.31.14.40.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 14:40:52 -0700 (PDT)
Received: (nullmailer pid 20298 invoked by uid 1000);
 Tue, 31 Mar 2020 21:40:51 -0000
Date: Tue, 31 Mar 2020 15:40:51 -0600
From: Rob Herring <robh@kernel.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: ath10k: Add wifi-firmware subnode
 for wifi node
Message-ID: <20200331214051.GA2053@bogus>
References: <1585134100-5944-1-git-send-email-pillair@codeaurora.org>
 <1585134100-5944-2-git-send-email-pillair@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1585134100-5944-2-git-send-email-pillair@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_144054_337855_46D178CD 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 04:31:38PM +0530, Rakesh Pillai wrote:
> Add a wifi-firmware subnode for the wifi node.
> This wifi-firmware subnode is needed for the
> targets which do not support TrustZone.
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
>  .../devicetree/bindings/net/wireless/qcom,ath10k.txt       | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> index 71bf91f..65ee68e 100644
> --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> @@ -96,6 +96,17 @@ Optional properties:
>  - qcom,coexist-gpio-pin : gpio pin number  information to support coex
>  			  which will be used by wifi firmware.
>  
> +* Subnodes
> +The ath10k wifi node can contain one optional firmware subnode.
> +Firmware subnode is needed when the platform does not have TustZone.
> +The firmware subnode must have:
> +
> +- iommus:
> +	Usage: required
> +	Value type: <prop-encoded-array>
> +	Definition: A list of phandle and IOMMU specifier pairs.
> +
> +
>  Example (to supply PCI based wifi block details):
>  
>  In this example, the node is defined as child node of the PCI controller.
> @@ -196,4 +207,7 @@ wifi@18000000 {
>  		memory-region = <&wifi_msa_mem>;
>  		iommus = <&apps_smmu 0x0040 0x1>;
>  		qcom,msa-fixed-perm;
> +		wifi-firmware {
> +			iommus = <&apps_iommu 0xc22 0x1>;

Why can't you just add a 2nd entry to the existing 'iommus' property? 

A driver doing of_dma_configure() is generally not the right thing to 
do.

Rob

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
