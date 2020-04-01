Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1A119A641
	for <lists+ath10k@lfdr.de>; Wed,  1 Apr 2020 09:31:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mG/bVTHGOt00ob2hl7aVD0l/1Z1I2Nb8U8KXlHrLKe4=; b=MMDlPaSpA+2CSB
	YW6BHvrqrkCj92vH3jPVACiQIO6Oz0Zrc8gOJNi6VuyNEpzB+ers59SuvYVbt8AAK7WIdH1ojKh7a
	ydhi/+xNZfIHvj9f+o6s3jPd38IC/LIIhq9GUlnWg6CMnKcSPMmw0xL6DhGNwmmBANALZN3qYAiWt
	VER4gKxM74a0p1vv0UMiou5Fov81bByBDskT8k8I1u69IpScndcggmoOtGfLAvQnIowS6jprL+SHc
	hExd6NxYDosfxzqoRzk5SSVDcSOZIw9uUrt6b/LpgCvR0WRVaGWapHbcXvYYDh3wg/7uX81njVgcT
	mgg24e0mOF4bDRioAxOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJXqN-0002lG-3S; Wed, 01 Apr 2020 07:31:23 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXqG-0002kK-0M
 for ath10k@lists.infradead.org; Wed, 01 Apr 2020 07:31:20 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585726278; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=KosNbnHtjH3p3D7s3+9XQ5MW0eKcI46fqALRBrUF8A8=;
 b=GJT1vlnSXGC4CsKU8byyEpHwTIQEJicK7W0K+2j0bnr9dlrlt36cev7zUP0lS84sOv/3Ik/3
 5LQu/baiMb4TuA2c9g0R049K7+35tp2IgBhC0e1Ux3SdwdjgmZPcyq0Y1UxVpssR5M74su3b
 AJTAnR/5TR4NIONDj8n8owlA8Q8=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e844332.7fe97af06a40-smtp-out-n02;
 Wed, 01 Apr 2020 07:30:58 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DA105C43636; Wed,  1 Apr 2020 07:30:57 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from Pillair (unknown [183.83.66.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 427C5C433BA;
 Wed,  1 Apr 2020 07:30:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 427C5C433BA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: "'Rob Herring'" <robh@kernel.org>
References: <1585134100-5944-1-git-send-email-pillair@codeaurora.org>
 <1585134100-5944-2-git-send-email-pillair@codeaurora.org>
 <20200331214051.GA2053@bogus>
In-Reply-To: <20200331214051.GA2053@bogus>
Subject: RE: [PATCH v2 1/3] dt-bindings: ath10k: Add wifi-firmware subnode for
 wifi node
Date: Wed, 1 Apr 2020 13:00:50 +0530
Message-ID: <002001d607f7$7bc8ebd0$735ac370$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQI6fc28eknFIs45cOq24ZTPq1i0fwFvI4SMAkxWCq6nfRN3kA==
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_003118_557064_AD6379A8 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Rob,
Comments inline.

> -----Original Message-----
> From: Rob Herring <robh@kernel.org>
> Sent: Wednesday, April 1, 2020 3:11 AM
> To: Rakesh Pillai <pillair@codeaurora.org>
> Cc: ath10k@lists.infradead.org; linux-wireless@vger.kernel.org;
> devicetree@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v2 1/3] dt-bindings: ath10k: Add wifi-firmware subnode
> for wifi node
> 
> On Wed, Mar 25, 2020 at 04:31:38PM +0530, Rakesh Pillai wrote:
> > Add a wifi-firmware subnode for the wifi node.
> > This wifi-firmware subnode is needed for the
> > targets which do not support TrustZone.
> >
> > Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> > ---
> >  .../devicetree/bindings/net/wireless/qcom,ath10k.txt       | 14
> ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git
> a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> > index 71bf91f..65ee68e 100644
> > --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> > +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> > @@ -96,6 +96,17 @@ Optional properties:
> >  - qcom,coexist-gpio-pin : gpio pin number  information to support coex
> >  			  which will be used by wifi firmware.
> >
> > +* Subnodes
> > +The ath10k wifi node can contain one optional firmware subnode.
> > +Firmware subnode is needed when the platform does not have TustZone.
> > +The firmware subnode must have:
> > +
> > +- iommus:
> > +	Usage: required
> > +	Value type: <prop-encoded-array>
> > +	Definition: A list of phandle and IOMMU specifier pairs.
> > +
> > +
> >  Example (to supply PCI based wifi block details):
> >
> >  In this example, the node is defined as child node of the PCI
controller.
> > @@ -196,4 +207,7 @@ wifi@18000000 {
> >  		memory-region = <&wifi_msa_mem>;
> >  		iommus = <&apps_smmu 0x0040 0x1>;
> >  		qcom,msa-fixed-perm;
> > +		wifi-firmware {
> > +			iommus = <&apps_iommu 0xc22 0x1>;
> 
> Why can't you just add a 2nd entry to the existing 'iommus' property?
> 
> A driver doing of_dma_configure() is generally not the right thing to
> do.

The SIDs mentioned in the wifi-firmware node will be belonging to the
firmware and not any HLOS.
In other targets with TZ, the hypervisor takes care of configuring the SIDs
(for its master).
In this target (sc7180 IDP) we are not having TZ (no hypervisor), hence
these need to be configured by HLOS.
The wifi-firmware node is added in-order to differentiate the SID between
driver and firmware.

This is same as the approach followed by Venus video driver in the below
patch
https://patchwork.kernel.org/patch/11315765/ 

> 
> Rob

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
