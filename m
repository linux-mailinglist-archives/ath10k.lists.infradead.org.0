Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61F4BAEE2
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 10:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CzwV2AwuPdKuNH9F/JNtkiOkshvumRQ6WuM4nBk6BT8=; b=CMkeRv8c2nM3gN
	H3XFmbGX4fNkcYGnodMNQfIdaTyZpXY4XMye88v/XMEPIOpsjCJzST7b6guo9qqts+EPioVNYQ2Is
	J/L2fY6YJUY4FJlrU85YQ/8DeSdO7jJyIs5stwKS5jp2ScieYMuXimbkE+mwU6kvT0XYk5xtYDqk4
	u5pRD+sUitjc53nkVtgWJ3hJdsPW/ai+MMJTsFDKrJC+C/4eHQe2eCVRoOOJOOklgqe/utfia6fyl
	HlMLd7Zlg0iL3ASKXEBhKQcHtjtWI/gjEx25iZG2Oy+wct4dfpyQcMI8yOMv6OH/9X6IRZvkv5qng
	dP/YYmh1Crl/uHQHC4qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJNR-0003bh-16; Mon, 23 Sep 2019 08:07:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJNM-0003bM-57
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 08:07:17 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id BF08661156; Mon, 23 Sep 2019 08:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569226035;
 bh=uH4zjXlXe/hhr/BYrZpT/kC8NHNyTFcFYPAI/Bqxml8=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=OT6DcloXVJmOJ3QTEHF1DiRl9vCg3C0PNeBi2qVPp2RGgWQ97kv+uIiiOGrDCqhZh
 OBAlO2duM2HP56G7t45wre6FfeYxJi/AWc1enPSWoBs1Ta1in5TSAsd3VwweO44JGg
 79XYMmFDRB5BO7CyRyAxr9AY3tqrNFxbTaS+fnUA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-106-186.rev.dnainternet.fi
 [37.136.106.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 47A566034D;
 Mon, 23 Sep 2019 08:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569226035;
 bh=uH4zjXlXe/hhr/BYrZpT/kC8NHNyTFcFYPAI/Bqxml8=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=OT6DcloXVJmOJ3QTEHF1DiRl9vCg3C0PNeBi2qVPp2RGgWQ97kv+uIiiOGrDCqhZh
 OBAlO2duM2HP56G7t45wre6FfeYxJi/AWc1enPSWoBs1Ta1in5TSAsd3VwweO44JGg
 79XYMmFDRB5BO7CyRyAxr9AY3tqrNFxbTaS+fnUA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 47A566034D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Surabhi Vishnoi <svishnoi@codeaurora.org>
Subject: Re: [PATCH 1/2] ath10k: Add support for adding htt_rx_ops based on
 htt_version
References: <1551251628-22518-1-git-send-email-svishnoi@codeaurora.org>
 <1551251628-22518-2-git-send-email-svishnoi@codeaurora.org>
Date: Mon, 23 Sep 2019 11:07:12 +0300
In-Reply-To: <1551251628-22518-2-git-send-email-svishnoi@codeaurora.org>
 (Surabhi Vishnoi's message of "Wed, 27 Feb 2019 12:43:47 +0530")
Message-ID: <87ef07a11r.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_010716_241485_3DF85F29 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Surabhi Vishnoi <svishnoi@codeaurora.org> writes:

> Refactor the code to add the support to attach htt_rx_ops
> based on HTT version.
>
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
>
> Signed-off-by: Surabhi Vishnoi <svishnoi@codeaurora.org>

[...]

> @@ -3572,7 +3580,7 @@ int ath10k_htt_txrx_compl_task(struct ath10k *ar, int budget)
>  	.htt_reset_paddrs_ring = ath10k_htt_reset_paddrs_ring_64,
>  };
>  
> -static const struct ath10k_htt_rx_ops htt_rx_ops_hl = {
> +static struct ath10k_htt_rx_ops htt_rx_ops_hl = {
>  };
>  
>  void ath10k_htt_set_rx_ops(struct ath10k_htt *htt)
> @@ -3585,4 +3593,19 @@ void ath10k_htt_set_rx_ops(struct ath10k_htt *htt)
>  		htt->rx_ops = &htt_rx_ops_64;
>  	else
>  		htt->rx_ops = &htt_rx_ops_32;
> +
> +	switch (ar->running_fw->fw_file.htt_op_version) {
> +	case ATH10K_FW_HTT_OP_VERSION_MAIN:
> +	case ATH10K_FW_HTT_OP_VERSION_10_1:
> +	case ATH10K_FW_HTT_OP_VERSION_10_4:
> +		htt->rx_ops->htt_fetch_peer_stats = ath10k_htt_fetch_peer_stats;
> +	break;
> +	case ATH10K_FW_HTT_OP_VERSION_TLV:
> +		htt->rx_ops->htt_fetch_peer_stats = ath10k_htt_fetch_peer_stats_tlv;
> +	break;
> +	case ATH10K_FW_HTT_OP_VERSION_MAX:
> +	case ATH10K_FW_HTT_OP_VERSION_UNSET:
> +		WARN_ON(1);
> +	return;
> +	}
>  }

I just realised this won't work. Let's say that there's both a qca988x
and a qca6174 PCI device on the same host. Then htt->rx_ops is shared by
_both_ devices and the htt_fetch_peer_stats field will contain the value
of the last initialised ath10k device.

So back to the drawing board. As this feature is for wcn3990 would it be
enough to modify htt_rx_ops_64? IIRC only wcn3990 support 64bit HTT
interface, right? Of course then qca6174 won't support this feature, but
does the qca6174 firmware even support that?

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
