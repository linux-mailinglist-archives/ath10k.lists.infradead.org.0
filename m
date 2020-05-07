Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C83B1C8237
	for <lists+ath10k@lfdr.de>; Thu,  7 May 2020 08:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gg6I+x/XBg2V2XpshLzUTeYxPOGbrFu4ghfKzFVGIsE=; b=nlGVxoiRk3QLLC
	0mrrF7DKmJCL1JViHJ/o6rwtnfqkoYff0g/nU6U6xOVUyq1y6z3T33CaWPbGCsrdCObqRZ6RlDhHD
	FqgGN0ZDZIKMVZsW1TV4ObOMdS05JDoktuKNqMwonMcLexbKao6wng3S7Qpq2F/VyO452i1FJXmc8
	iILSA28afZHctog1K4kcgIW4f9wudekfx3IVf+Zp7BjxdnBggIR8PDPlK8K0sCJgIdItrA4eqRCf0
	QxOAc0DUnmqP/sPatpWisLivJi7CdL6QcIU5oDCp4Eg0fnPkDVMOHl35jQDlar9dtYneOn3ioUkFm
	T4sumDKJ4seOTqgRoMeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZjL-0007jX-Qz; Thu, 07 May 2020 06:09:59 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZgp-00067m-R1
 for ath10k@lists.infradead.org; Thu, 07 May 2020 06:07:30 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588831647; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=w52CLOliTGUIv4DY+s5b588tvhYB84FRFaDJLCmhljA=;
 b=HJ2lwAVFmQjjOICtjt24IwP2Z3WN3S2SavMOFFyJuRLsvOgrwttVEOTglTH4l/BuDnnalBN6
 bCpaUkSfgCkAT6orV8uGK0KVku8eLOBaK5gEEjyhde7Ped7f7isEko7X7OgaDDU22CaE39y9
 +EiZSotPHb9CSSKqb3tSkAbGSK4=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb3a593.7f1e298fa4c8-smtp-out-n04;
 Thu, 07 May 2020 06:07:15 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C59CFC433F2; Thu,  7 May 2020 06:07:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EBEAEC433D2;
 Thu,  7 May 2020 06:07:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EBEAEC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: Remove msdu from idr when management pkt send
 fails
References: <1588667015-25490-1-git-send-email-pillair@codeaurora.org>
Date: Thu, 07 May 2020 09:07:11 +0300
In-Reply-To: <1588667015-25490-1-git-send-email-pillair@codeaurora.org>
 (Rakesh Pillai's message of "Tue, 5 May 2020 13:53:35 +0530")
Message-ID: <875zd88ei8.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_230727_451219_F10D5442 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Rakesh Pillai <pillair@codeaurora.org> writes:

> Currently when the sending of any management pkt
> via wmi command fails, the packet is being unmapped
> freed in the error handling. But the idr entry added,
> which is used to track these packet is not getting removed.
>
> Hence, during unload, in wmi cleanup, all the entries
> in IDR are removed and the corresponding buffer is
> attempted to be freed. This can cause a situation where
> one packet is attempted to be freed twice.
>
> Fix this error by rmeoving the msdu from the idr
> list when the sending of a management packet over
> wmi fails.
>
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-01040-QCAHLSWMTPLZ-1
>
> Fixes: 1807da49733e ("ath10k: wmi: add management tx by reference support over wmi")
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>

[...]

> --- a/drivers/net/wireless/ath/ath10k/wmi-ops.h
> +++ b/drivers/net/wireless/ath/ath10k/wmi-ops.h
> @@ -133,6 +133,7 @@ struct wmi_ops {
>  	struct sk_buff *(*gen_mgmt_tx_send)(struct ath10k *ar,
>  					    struct sk_buff *skb,
>  					    dma_addr_t paddr);
> +	int (*cleanup_mgmt_tx_send)(struct ath10k *ar, struct sk_buff *msdu);
>  	struct sk_buff *(*gen_dbglog_cfg)(struct ath10k *ar, u64 module_enable,
>  					  u32 log_level);
>  	struct sk_buff *(*gen_pktlog_enable)(struct ath10k *ar, u32 filter);
> @@ -442,6 +443,15 @@ ath10k_wmi_get_txbf_conf_scheme(struct ath10k *ar)
>  }
>  
>  static inline int
> +ath10k_wmi_cleanup_mgmt_tx_send(struct ath10k *ar, struct sk_buff *msdu)
> +{
> +	if (!ar->wmi.ops->cleanup_mgmt_tx_send)
> +		return -EOPNOTSUPP;
> +
> +	return ar->wmi.ops->cleanup_mgmt_tx_send(ar, msdu);
> +}
> +
> +static inline int
>  ath10k_wmi_mgmt_tx_send(struct ath10k *ar, struct sk_buff *msdu,
>  			dma_addr_t paddr)
>  {
> @@ -457,8 +467,11 @@ ath10k_wmi_mgmt_tx_send(struct ath10k *ar, struct sk_buff *msdu,
>  
>  	ret = ath10k_wmi_cmd_send(ar, skb,
>  				  ar->wmi.cmd->mgmt_tx_send_cmdid);
> -	if (ret)
> +	if (ret) {
> +		/* remove this msdu from idr tracking */
> +		ath10k_wmi_cleanup_mgmt_tx_send(ar, msdu);
>  		return ret;
> +	}

I missed that this call was in wmi-ops.h, but the idea is that file
should be just a dumb wrapper and not have any logic. So I moved this to
mac.c, the functionality should be the same but please do check my
changes:

https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=master-pending&id=71195d2244ed812c73dc617f7536566400f7ce87

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
