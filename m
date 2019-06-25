Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B365854F67
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 14:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rfua7Oo5wDd1nFEOeMJwQphMhktPRKbTAGe0G0730s0=; b=H6q+3zkv4Cjr5K
	cOAG+rBYvWoRAG+T+uQMqOvBgBBJAPtakj/jflJRsrL4lr63sl3gzv131jADX/cItYZEj1ER+NRu6
	fE/imMXVf742jlC3BuTK5t8l6dGZ65t/eYBwTvjFXwcKg3T8DJN21E/nmeAcDbOytqStpM65Iko75
	s6X7LggSiYMaJG0wCIAuifTISbMs2+w1AedmN1XY0lvj1OFqQE5mOLlkYI3snrAqSyYRTjqexQBGO
	Kc5s0rZuIsT5tFk4Qn3hnBP1vpau8PYMrnGqaRK7s8s5QmoIfT6mIYinTqmxC4zI1XN/XeeK7OWRN
	vjvj+cuJkfXTEiwtGWzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkz9-000639-NS; Tue, 25 Jun 2019 12:55:43 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkyw-0005uZ-RZ
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 12:55:32 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7E8E260312; Tue, 25 Jun 2019 12:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467330;
 bh=9mHyf51T1LY6v1BR1u/RU6KOZF5ZuRVx48WIzvXtED4=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=V8mx96r/5MoFYHD2pXe56dN17nmHh+uWseWk/jLuXnptmLnh259pWffRa7G0h7qom
 mvpaxy/xFJPsIcsrwh3akMTVAwmvMh4Dzglr/HfWbfUmiqvOW8Y6BKasmFU5KbxRnA
 edzEc1Hw+0kR8FnUtqEPOfrSNfgnnH94rbPOazeo=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 80ABD601E7;
 Tue, 25 Jun 2019 12:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467329;
 bh=9mHyf51T1LY6v1BR1u/RU6KOZF5ZuRVx48WIzvXtED4=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=ojrQLi+R1zq1dXQxP6Pb9isdf0Ob7Ds5lRZWhciqa3X+VujI4Iegk8Kvol5WeHPyn
 8DlqUOJQEr52vZs/Oyq6oMD75ApyKdlpxuA2EjLtgimZStlTmE+njmmzbt2tU3cDW1
 VHVmmFg+yRusm3mJKjreLBJBd8HgZIxyrLA/9ZlU=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 80ABD601E7
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: acquire lock to fix lockdep's warning
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190506073836.184059-1-tientzu@chromium.org>
References: <20190506073836.184059-1-tientzu@chromium.org>
To: Claire Chang <tientzu@chromium.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625125530.7E8E260312@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 12:55:30 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_055530_928161_4901B282 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Claire Chang <tientzu@chromium.org>, drinkcat@chromium.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Claire Chang <tientzu@chromium.org> wrote:

> Lockdep warns at lockdep_assert_held(&ar->data_lock) in
> ath10k_htt_rx_pn_check_replay_hl(). Acquire ar->data_lock before calling
> ath10k_htt_rx_pn_check_replay_hl() to fix it.
> 
> Call trace:
> ath10k_htt_rx_pn_check_replay_hl+0x118/0x134 [ath10k_core]
> ath10k_htt_rx_proc_rx_ind_hl+0xd8/0x250 [ath10k_core]
> ath10k_htt_t2h_msg_handler+0x148/0xf30 [ath10k_core]
> ath10k_htt_htc_t2h_msg_handler+0x24/0x40 [ath10k_core]
> ath10k_sdio_irq_handler+0x374/0xaa4 [ath10k_sdio]
> 
> Fixes: 130c77495708 ("ath10k: add PN replay protection for high latency devices")
> Signed-off-by: Claire Chang <tientzu@chromium.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

ef9cc0c44394 ath10k: acquire lock to fix lockdep's warning

-- 
https://patchwork.kernel.org/patch/10930667/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
