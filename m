Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA50BAEFC
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 10:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7J1E8lCjCocLd9T59XSWHO9CqlUcYbD20sLrbdG7bw=; b=frcx/x6NsdV8z0
	6ls/dxlhIFpb6VMqgNyuA/bl5efn/QorPWAw8RJYZJsJU0b9KQQgKepDPNLBRTffNJJWN4fxr/GId
	GhLvZ4gdxAtku8afXqTr2vT/ZRXlTS89fF41kvL6x1o5pECsCI6Exc5DQMNVapX0WfgVg37L8riPZ
	WVTT3aZ15GS8vG+XkOCopOICCqO4AuZvkjC2pOX4TjB/H+FeOqEfSvYZ38U/RMhXL0BYyjBOCq2c8
	R1qAILbadjvsWuCa/zdoXFBkVD7yJcXG+hmXGmfY8NlVUNSsma1rfb/1AfoWIBXxwAOTooswbp8hF
	hraR5Kvv/HVVPCLhSAOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJSC-00054g-Q1; Mon, 23 Sep 2019 08:12:16 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJS7-00054J-RG
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 08:12:13 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8C8326034D; Mon, 23 Sep 2019 08:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569226331;
 bh=nd+YstKI8r8Tq4qSUaTYi3GnQD8Vhzgbz1GEJTb7dng=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=W3hPzeQbaDIWkdhsPE2iJ/DpngHSjNuvjpLUAn8sn7VtHhi1nndc46OP+LlZU63au
 GdluXqyk0gxXwsPMQOzcVNQwBNV5r+FBlz2BDhDE7DNPnvWn/buoBX79b3qyLoGHln
 eoD2RD+VFHkGEjfcpmSmisFV5xzBprko7+wDNbPA=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 184E06119F;
 Mon, 23 Sep 2019 08:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569226331;
 bh=nd+YstKI8r8Tq4qSUaTYi3GnQD8Vhzgbz1GEJTb7dng=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=W3hPzeQbaDIWkdhsPE2iJ/DpngHSjNuvjpLUAn8sn7VtHhi1nndc46OP+LlZU63au
 GdluXqyk0gxXwsPMQOzcVNQwBNV5r+FBlz2BDhDE7DNPnvWn/buoBX79b3qyLoGHln
 eoD2RD+VFHkGEjfcpmSmisFV5xzBprko7+wDNbPA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 184E06119F
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Surabhi Vishnoi <svishnoi@codeaurora.org>
Subject: Re: [PATCH 2/2] ath10k: Add support for per peer HTT tx stats for
 WCN3990
References: <1551251628-22518-1-git-send-email-svishnoi@codeaurora.org>
 <1551251628-22518-3-git-send-email-svishnoi@codeaurora.org>
Date: Mon, 23 Sep 2019 11:12:07 +0300
In-Reply-To: <1551251628-22518-3-git-send-email-svishnoi@codeaurora.org>
 (Surabhi Vishnoi's message of "Wed, 27 Feb 2019 12:43:48 +0530")
Message-ID: <87a7ava0tk.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_011211_923294_CA77B360 
X-CRM114-Status: GOOD (  13.06  )
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

> The firmware sends peer stats to the host driver if the firmware
> advertises WMI_SERVICE_PEER_STATS service and the host driver
> indicates the WMI_RSRC_CFG_FLAG_TX_PEER_STATS capability in the
> host capab flag in wmi init cmd.
>
> When peer stats are enabled, firmware sends one HTT event
> HTT_TLV_T2H_MSG_TYPE_PEER_STATS for every four PPDUs transmitted.
> HTT msg payload has tag followed by length followed by
> success pkts/bytes, failed pkts/bytes, retry pkts/bytes and rate
> info per ppdu.
>
> Parse peer stats sent by the firmware in tlv format and update the
> tx rate information and tx_stats debugfs entry per STA.
>
> To get the tx_stats:
> echo 1 > /sys/kernel/debug/ieee80211/phyX/ath10k/enable_extd_tx_stats
> cat /sys/kernel/debug/ieee80211/phyX/net:wlanX/stations/xx:xx:xx:xx:xx:xx/tx_stats
>
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
>
> Signed-off-by: Surabhi Vishnoi <svishnoi@codeaurora.org>

[...]

> @@ -3438,7 +3566,7 @@ bool ath10k_htt_t2h_msg_handler(struct ath10k *ar, struct sk_buff *skb)
>  		ath10k_htt_rx_tx_mode_switch_ind(ar, skb);
>  		break;
>  	case HTT_T2H_MSG_TYPE_PEER_STATS:
> -		ath10k_htt_fetch_peer_stats(ar, skb);
> +		htt->rx_ops->htt_fetch_peer_stats(ar, skb);
>  		break;

I think this belongs to patch 1.

> +#define ATH10K_HW_GI_MASK				GENMASK(5, 5)

BIT(5)

> +#define ATH10K_HW_SKIPPED_RATE_CTRL_MASK		GENMASK(6, 6)

BIT(6)

> +#define ATH10K_HW_WCN3990_GI_MASK			GENMASK(6, 6)

BIT(6)

> +#define ATH10K_HW_WCN3990_SKIPPED_RATE_CTRL_MASK	GENMASK(7, 7)

BIT(7)

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
