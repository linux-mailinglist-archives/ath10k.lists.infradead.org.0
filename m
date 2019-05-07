Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F0416552
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 16:03:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUuCA6cVbyx8B1ndjPJ+vzoWRzqXiwcJr7UnbRmE0Yg=; b=XQqdlSl/BgulCc
	ur0eVF4t7B5nVRzxdgiX3Hl4GWohwBC+p/SBkKmo+538Cvq6AGyziw9EyQ3itV74M5kp1KtbDbnp1
	zHDs++foOupFvdLnB3fJKiLz71MYMUSl8/bnDSehJevQb/cqV3+NFrtfVwPAV7644Wk+x28+C09p4
	ptReEbYoXUaCLY5zcieoqCKvFKqwOTefmxmoe7CBNDSuPj9XoZtzDRYlhCAGRofwrQctmtotPqTR2
	IL+DDGzUqHCw9UM09KLi3WjiCq8earW2D8ujd21i88JlQzxCOce9Zvg117MAo3Pj4db55UIULCSkN
	VHiXB3PnhmZ/4j4J8exg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0gx-000837-QS; Tue, 07 May 2019 14:03:35 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0gr-00082n-4x
 for ath10k@lists.infradead.org; Tue, 07 May 2019 14:03:33 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DA6A46016D; Tue,  7 May 2019 14:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237808;
 bh=eT6ZBtXGR9mYCGZN6jMX7x+xoHA0A+GMjJGBxlXEYVM=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=VH62xprhcsDn1/qcW1jDBssMWEnpYxyyFJGug4Rp3pb9JZIqvKQBWfYyMoyPdxujA
 T0wD/+LmUQyVOZOzkf/bpplaPrAfyaJ5JHXy7XjeQv6N4FXNcFgo+3VXP1cfpoGwlJ
 /CkU+komWG6wjAp9RP/LXlznZAgQTT66HF5CIsW0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id ACC7260850;
 Tue,  7 May 2019 14:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237808;
 bh=eT6ZBtXGR9mYCGZN6jMX7x+xoHA0A+GMjJGBxlXEYVM=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=pIWpT4xbAz4jfrbFvVSu+Q2YZRca1O5IDSnFREI4NOzSkTYcq6zVZ4K+wWZhc47/w
 d8zFa48i920Gy98nrrLoC3aecZW4msjPVIZCrGrj9Q87gmw6oiUklC2XLTl/HBrIIS
 2yGISxwU8/LXUYxkqAklVwHIoFoE9ooN6Ap809V8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org ACC7260850
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: add peer id check in ath10k_peer_find_by_id
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1556536632-19433-1-git-send-email-wgong@codeaurora.org>
References: <1556536632-19433-1-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190507140328.DA6A46016D@smtp.codeaurora.org>
Date: Tue,  7 May 2019 14:03:28 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_070329_541741_D39A08D9 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> For some SDIO chip, the peer id is 65535 for MPDU with error status,
> then test_bit will trigger buffer overflow for peer's memory, if kasan
> enabled, it will report error.
> 
> Reason is when station is in disconnecting status, firmware do not delete
> the peer info since it not disconnected completely, meanwhile some AP will
> still send data packet to station, then hardware will receive the packet
> and send to firmware, firmware's logic will report peer id of 65535 for
> MPDU with error status.
> 
> Add check for overflow the size of peer's peer_ids will avoid the buffer
> overflow access.
> 
> Call trace of kasan:
> dump_backtrace+0x0/0x2ec
> show_stack+0x20/0x2c
> __dump_stack+0x20/0x28
> dump_stack+0xc8/0xec
> print_address_description+0x74/0x240
> kasan_report+0x250/0x26c
> __asan_report_load8_noabort+0x20/0x2c
> ath10k_peer_find_by_id+0x180/0x1e4 [ath10k_core]
> ath10k_htt_t2h_msg_handler+0x100c/0x2fd4 [ath10k_core]
> ath10k_htt_htc_t2h_msg_handler+0x20/0x34 [ath10k_core]
> ath10k_sdio_irq_handler+0xcc8/0x1678 [ath10k_sdio]
> process_sdio_pending_irqs+0xec/0x370
> sdio_run_irqs+0x68/0xe4
> sdio_irq_work+0x1c/0x28
> process_one_work+0x3d8/0x8b0
> worker_thread+0x508/0x7cc
> kthread+0x24c/0x264
> ret_from_fork+0x10/0x18
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

49ed34b835e2 ath10k: add peer id check in ath10k_peer_find_by_id

-- 
https://patchwork.kernel.org/patch/10921671/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
