Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5D01AAF9A
	for <lists+ath10k@lfdr.de>; Wed, 15 Apr 2020 19:33:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIwRc5yjCoYPunJXG0Umol9XTyX6hlGycoPCcsD4UoM=; b=MPr7hTsEKh+w2A
	ECI4GYhJQs1gjULIuI94MF3CC5ryWjlty55OBjJ1BlgWI43/jpm3QmWyucMdvqjx3kYx4CphrpcTK
	vNJcgBHqb8W+pqq1q5dG+QvEUM93mA1AEzyCx0kL+rFahtPJwnsYYK2e2Fw1LTmUQj4QlqYy4FP0f
	++a0DIv0HT0jd2mLJiC2G+denPn0M7/B/pKHj5Me4f3TwyZgM91aZo7GHbijjGy8ss35wpnb0lNPo
	N0xrEuKGuaH0DSctMQUIZc1KaTo/6n6DzsiZquQ4NpgZObs4WXQcR52de+G9s+nqJNA3cdmzSGjiv
	8f0uLUpCp0nJUH82l8xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOlv2-0004Gq-Kk; Wed, 15 Apr 2020 17:33:48 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOluy-0003AO-IE
 for ath10k@lists.infradead.org; Wed, 15 Apr 2020 17:33:46 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586972024; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: Date: Subject: In-Reply-To: References: Cc:
 To: From: Sender; bh=CCqk7JpvsFChy4Ee1MmUL0h8jw+HCmWT+Rb1fKKzvFE=;
 b=XGUFusWn8POi6pGuxxuE/hxkKDjg2D7NdY/1Yg+5rueWb89TjYIR85vFuzMnoo2SVLb1rx/B
 IeTj6BqLUyPa7h1HvzNYQeiTj7TB+2BZqxgfLdliAcpzNGS8ur32Z+0iKC1OL9lN37ChjPm4
 UlKZGLfux6iy7/lHkBQnKfAy924=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e974577.7fb51d669c00-smtp-out-n03;
 Wed, 15 Apr 2020 17:33:43 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id E0E44C433CB; Wed, 15 Apr 2020 17:33:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from Pillair (unknown [183.83.66.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: pillair)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 10D9EC433BA;
 Wed, 15 Apr 2020 17:33:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 10D9EC433BA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=pillair@codeaurora.org
From: <pillair@codeaurora.org>
To: <ath10k@lists.infradead.org>
References: <1585134100-5944-1-git-send-email-pillair@codeaurora.org>
 <1585134100-5944-4-git-send-email-pillair@codeaurora.org>
In-Reply-To: <1585134100-5944-4-git-send-email-pillair@codeaurora.org>
Subject: RE: [PATCH v2 3/3] ath10k: Add support for targets without trustzone
Date: Wed, 15 Apr 2020 23:03:35 +0530
Message-ID: <001401d6134c$01b5c420$05214c60$@codeaurora.org>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQI6fc28eknFIs45cOq24ZTPq1i0fwKMRWarp50564A=
Content-Language: en-us
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_103344_666708_AC83A47F 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Kalle,

I have sent out v3 for this patchset after correcting the firmware structure
name which was added in ath10k snoc structure

Thanks,
Rakesh Pillai.

> -----Original Message-----
> From: Rakesh Pillai <pillair@codeaurora.org>
> Sent: Wednesday, March 25, 2020 4:32 PM
> To: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; Rakesh Pillai <pillair@codeaurora.org>
> Subject: [PATCH v2 3/3] ath10k: Add support for targets without trustzone
> 
> Add the support to attach and map iommu
> domain for targets which do not have the
> support of TrustZone.
> 
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/snoc.c | 118
> ++++++++++++++++++++++++++++++++-
>  drivers/net/wireless/ath/ath10k/snoc.h |   7 ++
>  2 files changed, 124 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/ath/ath10k/snoc.c
> b/drivers/net/wireless/ath/ath10k/snoc.c
> index 3633ea5..7a7e79b 100644
> --- a/drivers/net/wireless/ath/ath10k/snoc.c
> +++ b/drivers/net/wireless/ath/ath10k/snoc.c
> @@ -12,6 +12,7 @@
>  #include <linux/property.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/of_address.h>
> +#include <linux/iommu.h>
> 
>  #include "ce.h"
>  #include "coredump.h"
> @@ -1499,6 +1500,111 @@ static int ath10k_setup_msa_resources(struct
> ath10k *ar, u32 msa_size)
>  	return 0;
>  }
> 
> +static int ath10k_fw_init(struct ath10k *ar)
> +{
> +	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
> +	struct device *host_dev = &ar_snoc->dev->dev;
> +	struct platform_device_info info;
> +	struct iommu_domain *iommu_dom;
> +	struct platform_device *pdev;
> +	struct device_node *node;
> +	int ret;
> +
> +	node = of_get_child_by_name(host_dev->of_node, "wifi-
> firmware");
> +	if (!node) {
> +		ar_snoc->use_tz = true;
> +		return 0;
> +	}
> +
> +	memset(&info, 0, sizeof(info));
> +	info.fwnode = &node->fwnode;
> +	info.parent = host_dev;
> +	info.name = node->name;
> +	info.dma_mask = DMA_BIT_MASK(32);
> +
> +	pdev = platform_device_register_full(&info);
> +	if (IS_ERR(pdev)) {
> +		of_node_put(node);
> +		return PTR_ERR(pdev);
> +	}
> +
> +	pdev->dev.of_node = node;
> +
> +	ret = of_dma_configure(&pdev->dev, node, true);
> +	if (ret) {
> +		ath10k_err(ar, "dma configure fail: %d\n", ret);
> +		goto err_unregister;
> +	}
> +
> +	ar_snoc->fw.dev = &pdev->dev;
> +
> +	iommu_dom = iommu_domain_alloc(&platform_bus_type);
> +	if (!iommu_dom) {
> +		ath10k_err(ar, "failed to allocate iommu domain\n");
> +		ret = -ENOMEM;
> +		goto err_unregister;
> +	}
> +
> +	ret = iommu_attach_device(iommu_dom, ar_snoc->fw.dev);
> +	if (ret) {
> +		ath10k_err(ar, "could not attach device: %d\n", ret);
> +		goto err_iommu_free;
> +	}
> +
> +	ar_snoc->fw.iommu_domain = iommu_dom;
> +	ar_snoc->fw.fw_start_addr = ar->msa.paddr;
> +
> +	ret = iommu_map(iommu_dom, ar_snoc->fw.fw_start_addr,
> +			ar->msa.paddr, ar->msa.mem_size,
> +			IOMMU_READ | IOMMU_WRITE);
> +	if (ret) {
> +		ath10k_err(ar, "failed to map firmware region: %d\n", ret);
> +		goto err_iommu_detach;
> +	}
> +
> +	of_node_put(node);
> +
> +	return 0;
> +
> +err_iommu_detach:
> +	iommu_detach_device(iommu_dom, ar_snoc->fw.dev);
> +
> +err_iommu_free:
> +	iommu_domain_free(iommu_dom);
> +
> +err_unregister:
> +	platform_device_unregister(pdev);
> +	of_node_put(node);
> +
> +	return ret;
> +}
> +
> +static int ath10k_fw_deinit(struct ath10k *ar)
> +{
> +	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
> +	const size_t mapped_size = ar_snoc->fw.mapped_mem_size;
> +	struct iommu_domain *iommu;
> +	size_t unmapped_size;
> +
> +	if (ar_snoc->use_tz)
> +		return 0;
> +
> +	iommu = ar_snoc->fw.iommu_domain;
> +
> +	unmapped_size = iommu_unmap(iommu, ar_snoc-
> >fw.fw_start_addr,
> +				    mapped_size);
> +	if (unmapped_size != mapped_size)
> +		ath10k_err(ar, "failed to unmap firmware: %zu\n",
> +			   unmapped_size);
> +
> +	iommu_detach_device(iommu, ar_snoc->fw.dev);
> +	iommu_domain_free(iommu);
> +
> +	platform_device_unregister(to_platform_device(ar_snoc->fw.dev));
> +
> +	return 0;
> +}
> +
>  static const struct of_device_id ath10k_snoc_dt_match[] = {
>  	{ .compatible = "qcom,wcn3990-wifi",
>  	 .data = &drv_priv,
> @@ -1607,16 +1713,25 @@ static int ath10k_snoc_probe(struct
> platform_device *pdev)
>  		goto err_power_off;
>  	}
> 
> +	ret = ath10k_fw_init(ar);
> +	if (ret) {
> +		ath10k_err(ar, "failed to initialize firmware: %d\n", ret);
> +		goto err_power_off;
> +	}
> +
>  	ret = ath10k_qmi_init(ar, msa_size);
>  	if (ret) {
>  		ath10k_warn(ar, "failed to register wlfw qmi client: %d\n",
> ret);
> -		goto err_power_off;
> +		goto err_fw_deinit;
>  	}
> 
>  	ath10k_dbg(ar, ATH10K_DBG_SNOC, "snoc probe\n");
> 
>  	return 0;
> 
> +err_fw_deinit:
> +	ath10k_fw_deinit(ar);
> +
>  err_power_off:
>  	ath10k_hw_power_off(ar);
> 
> @@ -1648,6 +1763,7 @@ static int ath10k_snoc_remove(struct
> platform_device *pdev)
> 
>  	ath10k_core_unregister(ar);
>  	ath10k_hw_power_off(ar);
> +	ath10k_fw_deinit(ar);
>  	ath10k_snoc_free_irq(ar);
>  	ath10k_snoc_release_resource(ar);
>  	ath10k_qmi_deinit(ar);
> diff --git a/drivers/net/wireless/ath/ath10k/snoc.h
> b/drivers/net/wireless/ath/ath10k/snoc.h
> index c05df45..18e19fb 100644
> --- a/drivers/net/wireless/ath/ath10k/snoc.h
> +++ b/drivers/net/wireless/ath/ath10k/snoc.h
> @@ -55,6 +55,13 @@ struct regulator_bulk_data;
>  struct ath10k_snoc {
>  	struct platform_device *dev;
>  	struct ath10k *ar;
> +	unsigned int use_tz;
> +	struct video_firmware {
> +		struct device *dev;
> +		dma_addr_t fw_start_addr;
> +		struct iommu_domain *iommu_domain;
> +		size_t mapped_mem_size;
> +	} fw;
>  	void __iomem *mem;
>  	dma_addr_t mem_pa;
>  	struct ath10k_snoc_target_info target_info;
> --
> 2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
