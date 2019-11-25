Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BC4108D9D
	for <lists+ath10k@lfdr.de>; Mon, 25 Nov 2019 13:12:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vv8fTLlUb5kY6D40xxn4OZJ5UarI98mAI7nGrwZ6SQk=; b=TOkdAcuJf0zlVu
	ugK4PSovbzd3CfHKv1Go/YfIPknwjKMuvjv1VC2mpfDk7YQy8577aKhBaEA5ysofLyT1IBt7L+Jwz
	IAmdstQ8FaUa6OHVYq8qp3TaQyI1xg1sjGLhnL+E/arRCOuP3MOhLqk2Ubbkmqe2XwtHmxxD4b6Lg
	Kq64hlLmlxwOEKj8C4di9U0q0X+r3459i8aqigB6akSjbQxwkrWJwUlhS/eMTKyR0+Bx8eYgPkIf8
	ztfHTKgMdBVueqY/MhgT3AKJ3VvyHtyGQOrehEG5MSY+wwUP3u7NtQkPdfhAfS3x7SYjXpTRHJYFx
	kI0XXDDqbvtAbfuT4Omw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDEK-0003PA-4T; Mon, 25 Nov 2019 12:12:36 +0000
Received: from a27-187.smtp-out.us-west-2.amazonses.com ([54.240.27.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDEG-0003Oi-4d
 for ath10k@lists.infradead.org; Mon, 25 Nov 2019 12:12:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574683949;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=saokk9WmANN+C8ayw+t+pgMh7y6LLWQgSH1we9CHsyU=;
 b=f2vroMWWZKSFy6b+x0+SPAu11zHpiywKqr9UEAJ+KAqZYq/jXWVI3/SLErUAjQDy
 7IEHQDwTHqXUQY6wCu/RaENduCAsDiAqNDuLx7tm+SNWYRsvMT0a8wP6g5rxL4cLdN3
 bMpQdysizSd74Xpb8o41hu7PgCXQHxwGFjs9bA0w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574683949;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=saokk9WmANN+C8ayw+t+pgMh7y6LLWQgSH1we9CHsyU=;
 b=K/Xt3WliwXxpRnaZ2BpdqWUXhqWQo01bkxcvNlMpH+qPW4oHDfYHvF1SIfxSkC42
 EMMUXqTAAhGObt4tkUy5UAhfWHgEieppfGpwVde5050OAaLpL8ar9D1Fe3SQ3Ptqa1Q
 mn44FUCTgYLtNUUrkUpLYE2t1AsnrvcZpPIQn8wc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 86684C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: report rssi of each chain to mac80211 for sdio
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191114111931.27800-1-wgong@codeaurora.org>
References: <20191114111931.27800-1-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016ea27a3af5-72e6fd2d-ac20-4c33-b7e8-ea307700a9b3-000000@us-west-2.amazonses.com>
Date: Mon, 25 Nov 2019 12:12:29 +0000
X-SES-Outgoing: 2019.11.25-54.240.27.187
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_041232_211234_A640E56B 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Wen Gong <wgong@codeaurora.org> wrote:

> iw command only show rssi without each chain's rssi on sdio
> iw wlan0 station dump
> Station a0:40:a0:93:3e:de (on wlan0)
> signal:         -82 dBm
> signal avg:     -82 dBm
> 
> after this patch, it will show each chain's rssi on sdio
> Station a0:40:a0:93:3e:de (on wlan0)
> signal:         -82 [-84, -88] dBm
> signal avg:     -82 [-84, -87] dBm
> 
> For QCA6174 PCIe, the ppdu have the correct rssi of each chain, it
> indicate rssi of rx data by ath10k_htt_rx_h_signal. For sdio chip, the
> rssi of each chain stored in rx management reported by firmware, the
> ath10k_wmi_tlv_op_pull_mgmt_rx_ev which used for tlv wmi will get the
> rssi of each chain and stored them in wmi_mgmt_rx_ev_arg, then indicate
> them to mac80211. For non-tlv wmi chip, it will not get the rssi of each
> chain and not indicate to mac80211, for non-tlv wmi chip, this patch will
> not have impact. For tlv wmi chip, if the rssi of chain in mgmt is valid,
> it will be indicate to mac80211, tested with QCA6174 PCIe/SDIO, the rssi
> of 2 chain in mgmt is valid.
> 
> rssi of chains in mgmt of QCA6174 SDIO:
> 92096.652780: ath10k:ath10k_log_warn: ath10k_sdio mmc1:0001:1 rssi[0]:70
> 92096.657324: ath10k:ath10k_log_warn: ath10k_sdio mmc1:0001:1 rssi[1]:68
> 92096.662009: ath10k:ath10k_log_warn: ath10k_sdio mmc1:0001:1 rssi[2]:128
> 92096.666647: ath10k:ath10k_log_warn: ath10k_sdio mmc1:0001:1 rssi[3]:128
> 
> rssi of chains in mgmt of QCA6174 PCIe:
> [ 1581.049816] ath10k_pci 0000:02:00.0: mgmt rssi[0]:17
> [ 1581.049818] ath10k_pci 0000:02:00.0: mgmt rssi[1]:22
> [ 1581.049821] ath10k_pci 0000:02:00.0: mgmt rssi[2]:128
> [ 1581.049823] ath10k_pci 0000:02:00.0: mgmt rssi[3]:128
> 
> after apply this patch, the iw's rssi of PCIe do not changed, result is
> same with before.
> 
> iw wlan0 station dump of QCA6174 PCIe:
> Station 6c:e8:73:b8:92:dc (on wlan0)
>         signal:         -70 [-77, -72] dBm
>         signal avg:     -69 [-78, -72] dBm
> 
> iw wlan-5000mhz station dump of QCA9984 PCIe
> connected with 2 client which has 2 chain:
> Station 70:48:0f:1f:1a:b2 (on wlan-5000mhz)
>         signal:         -47 [-55, -48, -87, -88] dBm
>         signal avg:     -42 [-50, -43, -83, -86] dBm
> Station ac:c1:ee:39:e3:83 (on wlan-5000mhz)
>         signal:         -43 [-46, -45, -79, -84] dBm
>         signal avg:     -43 [-46, -46, -82, -83] dBm
> 
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00017-QCARMSWP-1.
> Tested with QCA6174 PCIe with firmware WLAN.RM.4.4.1-00110-QCARMSWP-1.
> Tested with QCA9984 PCIe with firmware 10.4-3.9.0.2-00040.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

7005eafc1f1c ath10k: report rssi of each chain to mac80211 for sdio

-- 
https://patchwork.kernel.org/patch/11243567/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
