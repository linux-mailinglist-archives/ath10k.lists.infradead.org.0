Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 468A9FCE95
	for <lists+ath10k@lfdr.de>; Thu, 14 Nov 2019 20:16:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4AWfLV6+oe0KOEsOs+2MN+ZLAhvlD+mAAP8w8GQubg=; b=XT5BJoP2OyCa0M
	exvMnZcRPEuT1mEau+FbFDZoEeAAeo9JWXhAQ3ezQN1NcB/si+rsk91I4CB5hR7Cys61oldcXi4Jh
	8BCihhKkIO1S9KzWtm7XL+zbxGkYPr9APKFTgkjkNRDTPbJMN7/wrajDp1wbBke+oEbpyuzKFM+iy
	QLeP0EJdMOrLvKQG7U5bknFQ6XWf0IKX9YMIucR2S9Y/HddSsxH2xrQqr9JIs0r2tU7SHn7VMHJiB
	/ED4sZ2mDbfkzEl1Kl+tdyLIfJlO6ptx+lYxUu5jOwwvxCtUhpZ1101r4/tUcB7y8smO1UkVSM1C4
	MHsEKth7aMP7djYEC34Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVKbm-00040J-JX; Thu, 14 Nov 2019 19:16:46 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVKbi-0003zd-Jk
 for ath10k@lists.infradead.org; Thu, 14 Nov 2019 19:16:43 +0000
Received: by mail-oi1-f193.google.com with SMTP id s71so6294571oih.11
 for <ath10k@lists.infradead.org>; Thu, 14 Nov 2019 11:16:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JupwLIMCy0kD1DylEYdUBcHFa8QvARGaEvLmmurxdDo=;
 b=HJ3vCdSWgIaWYawL6IV2wfmGVYzovHLtMovZ4ar1p3VrKfBgCAjSfJNCRRhPUEsL2N
 Td4+sgaj5ij1VvJiGVi8/XB677xL5/XWiSMtIdM/M7s/fhhRSQjqBW7Oy5SrbedMKops
 dvOLbAL1tUvIlOSkJEr9kWLgO7BVu1DBxrR9tjgqRREVQe3UqYCe/ByyZpykODllv5S5
 bKhtTyWKc+BjgG5OeKlb7i8e6bkShui1MN9qZmu6tRh1XqBFQ/2bWAlEW6Lo1JwlCeu2
 5ZQud2UnsHZmSI47+eAX4vgx6mAjvwYhwrOkZDkAKS1s2inmIJ6ugRCaDMafqAwj9hM9
 JlbQ==
X-Gm-Message-State: APjAAAWnyDgDe9EJ+m94F9HqyxZl64e671FW4BMuYn3CI6sGYjN7CrJW
 hs/PjAm4d4yYG3lwZi+GSaPXjLg=
X-Google-Smtp-Source: APXvYqx216qmRtLD8fvRbb7HfVk7gUkrflyOyJZGhawNK0RcsBGErmtzyzCcTrZdLV6OxprI+8YFKQ==
X-Received: by 2002:aca:cdd6:: with SMTP id d205mr4981354oig.9.1573759001815; 
 Thu, 14 Nov 2019 11:16:41 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u1sm2044899oie.37.2019.11.14.11.16.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 11:16:41 -0800 (PST)
Date: Thu, 14 Nov 2019 13:16:40 -0600
From: Rob Herring <robh@kernel.org>
To: Govind Singh <govinds@codeaurora.org>
Subject: Re: [PATCH v2 1/2] dt: bindings: add dt entry flag to skip SCM call
 for msa region
Message-ID: <20191114191640.GA8426@bogus>
References: <20191111042508.12628-1-govinds@codeaurora.org>
 <20191111042508.12628-2-govinds@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111042508.12628-2-govinds@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_111642_651234_EED1F81F 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 09:55:07AM +0530, Govind Singh wrote:
> Add boolean context flag to disable SCM call for statically
> mapped msa region.

Can't this be implied by the compatible string?

> 
> Signed-off-by: Govind Singh <govinds@codeaurora.org>
> ---
>  .../devicetree/bindings/net/wireless/qcom,ath10k.txt          | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> index 017128394a3e..7ba22918bab7 100644
> --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> @@ -88,6 +88,9 @@ Optional properties:
>  		    of the host capability QMI request
>  - qcom,xo-cal-data: xo cal offset to be configured in xo trim register.
>  
> +- qcom,msa_fixed_perm: Boolean context flag to disable SCM call for statically
> +		       mapped msa region.
> +

s/_/-/

>  Example (to supply PCI based wifi block details):
>  
>  In this example, the node is defined as child node of the PCI controller.
> @@ -185,4 +188,5 @@ wifi@18000000 {
>  		vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
>  		memory-region = <&wifi_msa_mem>;
>  		iommus = <&apps_smmu 0x0040 0x1>;
> +		qcom,msa_fixed_perm;
>  };
> -- 
> 2.22.0
> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
