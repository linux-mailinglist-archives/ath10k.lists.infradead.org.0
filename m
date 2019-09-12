Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CD2B1187
	for <lists+ath10k@lfdr.de>; Thu, 12 Sep 2019 16:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCTo817QMxJCtF35sAKdVKXkYAKUL0w6ByjVwP5s1Hw=; b=qIvS6BoPazuM3O
	ZeoGaMM8pHDfvY7DwrYp8yuYqNmQGyMJQcy0fNFmMfpv44jOB6GWnl/xt8PufQLxIv281hvGGCxmE
	R9nDQ/QPZrTPdl7WZThZTBOoEeHoqfRiVxBRH6GkI/8uNw+nzXZQsQR6PofsKusi1FSR1IYBECS6x
	bjzn/kAmyQtkEGTnmrujl+JRp/woc1ZZxSesYmWWtQQ0+R9/Uqa2mWb9v9mHjt5fCl3CYfyqistxI
	uLWULiWauoqcSB4UTgPFC1P7zZo72t1e+SdmPTTGVQKf7b2rHESzdWRhp4mj39z2IpA01MMyOW1At
	yqg8utHJQFf9fPsI1t1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8QUH-0001OY-Rb; Thu, 12 Sep 2019 14:54:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8QUD-0001NP-8T
 for ath10k@lists.infradead.org; Thu, 12 Sep 2019 14:54:18 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7580F6055A; Thu, 12 Sep 2019 14:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568300056;
 bh=NBk5oR13bcsUTqIz3QlQRAZKnIqQ4XOZKy0W3KGrYjM=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=Zr4eLmxmayiDYpFd6lPaPJQPufwUk9cwfiF3ZGCv9LMbQ1KnyqZEGNFpnABufR7Si
 eurHw+CQzxojUdznjeQKGFdX/k97xsKBiI8nve7obZbNjSyjo7ZFyiACbxsf7Dy1gt
 IWsTNsxr0UmPl+1ydlRwKSkHiHUHZlYsTdAsIlok=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 32F2060209;
 Thu, 12 Sep 2019 14:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568300056;
 bh=NBk5oR13bcsUTqIz3QlQRAZKnIqQ4XOZKy0W3KGrYjM=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=TGRPPQHxIITs/L0oNoPPvp7zF/O2E7m77s0sf7k3/YOiZdmKrA48bJ1bNZLxYtBvP
 91zNonFS7EexZb1WSLZN6kT70bR+h7AVinFbeCWMRbrm3J1X3JWoKnISNjMWDOR4f/
 nnwIRrPrs9xDvHgnJnO6mqISyY/YvMt5SIFSsrhk=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 32F2060209
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v5 1/8] ath10k: adjust skb length in
 ath10k_sdio_mbox_rx_packet
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1567679893-14029-2-git-send-email-wgong@codeaurora.org>
References: <1567679893-14029-2-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190912145416.7580F6055A@smtp.codeaurora.org>
Date: Thu, 12 Sep 2019 14:54:16 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_075417_362657_7D29A768 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> When the FW bundles multiple packets, pkt->act_len may be incorrect
> as it refers to the first packet only (however, the FW will only
> bundle packets that fit into the same pkt->alloc_len).
> 
> Before this patch, the skb length would be set (incorrectly) to
> pkt->act_len in ath10k_sdio_mbox_rx_packet, and then later manually
> adjusted in ath10k_sdio_mbox_rx_process_packet.
> 
> The first problem is that ath10k_sdio_mbox_rx_process_packet does not
> use proper skb_put commands to adjust the length (it directly changes
> skb->len), so we end up with a mismatch between skb->head + skb->tail
> and skb->data + skb->len. This is quite serious, and causes corruptions
> in the TCP stack, as the stack tries to coalesce packets, and relies
> on skb->tail being correct (that is, skb_tail_pointer must point to
> the first byte_after_ the data).
> 
> Instead of re-adjusting the size in ath10k_sdio_mbox_rx_process_packet,
> this moves the code to ath10k_sdio_mbox_rx_packet, and also add a
> bounds check, as skb_put would crash the kernel if not enough space is
> available.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> 
> Fixes: 8530b4e7b22bc3b ("ath10k: sdio: set skb len for all rx packets")
> Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

b7139960832e ath10k: adjust skb length in ath10k_sdio_mbox_rx_packet

-- 
https://patchwork.kernel.org/patch/11132657/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
