Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E217F16152
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 11:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Aa5RvfA9bIV7WfRj4oeTl4H9DbJX3q2aFgVBsXN2YJs=; b=bOrY+I7krhiUuqrrN5SP0uPNX
	eFO+adGti5c0UzkYB/9QT294kCQLdcaDcCgmAPv+ZcXiGZtqQBVpEgvwtRFYHw58ynRpLNbqgLBKe
	+K8tenG2YrndSA5XhTahJcwXjWKL4iMUAAPCQeGukOXhhsjHNP/oYRprU1ZctLM9tztoOfxTcv5ly
	lLswurgY4+Yn3Gd3bI3F/y8oYM+4EtGBZZqK+5ebOYWWm3EzRtQEuc+a5BeCS6sqqKkt3TZlwT2Ds
	SftoAuTWnOHksvJNru1vSRs8tcjvjO7dmJqOE020jDMatdsahy9n6DpWgEhF5+KjzgQwWfZYfvR+H
	8f0vpnKfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwgi-0003H4-On; Tue, 07 May 2019 09:47:04 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwgf-0003Gk-OA
 for ath10k@lists.infradead.org; Tue, 07 May 2019 09:47:03 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 650F760350; Tue,  7 May 2019 09:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557222421;
 bh=RAyzohDn1aU2dlablTawubDG3Pao/HbLnxOxlCaxpEg=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=oozTZcK+lkJHmmVxycstWOMYmD+rGwB3v2pxEiOSl87mRKFHF1oMlTvHoDjmVQevj
 ZzGsLP4RVSijwhmdEBjWJnxEExTnMpNSsQHz18kNvdhEWagiOqwPN/RPftN8OFpX1A
 0yybX5QSlTHecjEiHihHyph8TOxSLhGzvG23+bsA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 04E85606DB
 for <ath10k@lists.infradead.org>; Tue,  7 May 2019 09:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557222421;
 bh=RAyzohDn1aU2dlablTawubDG3Pao/HbLnxOxlCaxpEg=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=oozTZcK+lkJHmmVxycstWOMYmD+rGwB3v2pxEiOSl87mRKFHF1oMlTvHoDjmVQevj
 ZzGsLP4RVSijwhmdEBjWJnxEExTnMpNSsQHz18kNvdhEWagiOqwPN/RPftN8OFpX1A
 0yybX5QSlTHecjEiHihHyph8TOxSLhGzvG23+bsA=
MIME-Version: 1.0
Date: Tue, 07 May 2019 15:17:00 +0530
From: Manikanta Pubbisetty <mpubbise@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: Re: [PATCH] ath11k:print firmware info during boot
In-Reply-To: <1557222253-22745-1-git-send-email-mpubbise@codeaurora.org>
References: <1557222253-22745-1-git-send-email-mpubbise@codeaurora.org>
Message-ID: <3b0b9bd0cf348b7aa30bb6d42b834021@codeaurora.org>
X-Sender: mpubbise@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_024701_821548_2977D519 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-05-07 15:14, Manikanta Pubbisetty wrote:
> Print fw info like version, time stamp and fw build info
> during boot.
> 
> Signed-off-by: Manikanta Pubbisetty <mpubbise@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath11k/qmi.c | 20 ++++++++++++++++----
>  drivers/net/wireless/ath/ath11k/qmi.h |  1 +
>  2 files changed, 17 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/wireless/ath/ath11k/qmi.c
> b/drivers/net/wireless/ath/ath11k/qmi.c
> index aca717c..f1b272d 100644
> --- a/drivers/net/wireless/ath/ath11k/qmi.c
> +++ b/drivers/net/wireless/ath/ath11k/qmi.c
> @@ -1774,14 +1774,26 @@ static int
> ath11k_qmi_request_target_cap(struct ath11k_base *ab)
>  	if (resp.soc_info_valid)
>  		ab->qmi.target.soc_id = resp.soc_info.soc_id;
> 
> -	if (resp.fw_version_info_valid)
> +	if (resp.fw_version_info_valid) {
>  		ab->qmi.target.fw_version = resp.fw_version_info.fw_version;
> +		strlcpy(ab->qmi.target.fw_build_timestamp,
> +			resp.fw_version_info.fw_build_timestamp,
> +			sizeof(ab->qmi.target.fw_build_timestamp));
> +	}
> +
> +	if (resp.fw_build_id_valid)
> +		strlcpy(ab->qmi.target.fw_build_id, resp.fw_build_id,
> +			sizeof(ab->qmi.target.fw_build_id));
> 
>  	ath11k_info(ab, "qmi target: chip_id: 0x%x, chip_family: 0x%x,"
> -			"board_id: 0x%x, soc_id: 0x%x, fw_version: 0x%x\n",
> +			"board_id: 0x%x, soc_id: 0x%x\n",
>  		    ab->qmi.target.chip_id, ab->qmi.target.chip_family,
> -		    ab->qmi.target.board_id, ab->qmi.target.soc_id,
> -		    ab->qmi.target.fw_version);
> +		    ab->qmi.target.board_id, ab->qmi.target.soc_id);
> +
> +	ath11k_info(ab, "qmi fw_version: 0x%x fw_build_timestamp: %s 
> fw_build_id: %s",
> +		    ab->qmi.target.fw_version,
> +		    ab->qmi.target.fw_build_timestamp,
> +		    ab->qmi.target.fw_build_id);
> 
>  out:
>  	return ret;
> diff --git a/drivers/net/wireless/ath/ath11k/qmi.h
> b/drivers/net/wireless/ath/ath11k/qmi.h
> index b017596..1781236 100644
> --- a/drivers/net/wireless/ath/ath11k/qmi.h
> +++ b/drivers/net/wireless/ath/ath11k/qmi.h
> @@ -98,6 +98,7 @@ struct target_info {
>  	u32 soc_id;
>  	u32 fw_version;
>  	char fw_build_timestamp[ATH11K_QMI_WLANFW_MAX_TIMESTAMP_LEN_V01 + 1];
> +	char fw_build_id[ATH11K_QMI_WLANFW_MAX_BUILD_ID_LEN_V01 + 1];
>  };
> 
>  struct ath11k_qmi {


Send to wrong mailing list, please ignore the patch.

Thanks,
Manikanta

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
