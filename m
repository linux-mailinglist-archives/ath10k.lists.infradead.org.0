Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C293358962
	for <lists+ath10k@lfdr.de>; Thu, 27 Jun 2019 19:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BcYLQF4gldWyPNJg5vzUXJCz7PQofZrm/hwS/OgPTsk=; b=gab8lIS9Az5BIC
	KFqJDd8Q42FDy3rR3Pfk7Y6bGInPz0BscD4zww8S30ypoUq7WOcWyZu2/3dZqQc8U8pS5mnVaj2i+
	Zby3FYwu86ZiOoM4fxdw9dcrL+YyG0HWPf/ZvcOFp1IzOoNRIBESo+2ajHTaz6wMSwfRHICmb9exb
	/wwCPLdgU81wxtYyKicZro7Gv/+cg/WcP+2H6oGfKCpQq034N+5tF9zMIAXEcQurKP9equTnN66/k
	9DAzlemwUfSfkX945H6oHNcBYgtyWMh48yWMtPwZqETDc+d10LsrBvP6ZwNhu01jJw73JScsbx1ll
	b9zLoUijGF2Mh3MQ5Orw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgYg6-00051p-U9; Thu, 27 Jun 2019 17:59:22 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgYg1-00051O-N1
 for ath10k@lists.infradead.org; Thu, 27 Jun 2019 17:59:19 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7D99D60A05; Thu, 27 Jun 2019 17:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561658354;
 bh=TDt+TsIJojoSi3nFbwHzrAxp6vhuwRTs7dV6p+GiuOQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=dVC46lenHyoEMljBFU9ZsiUt93wtfp0geWHqWvkX3+6/e3A3RFV1PPhbiISMiGvUi
 uu7b79vx8/gPCg40agLksbKrS9+XD3oI2h8luPOAfBFQv1VumHXaBedgBftDJT7gTz
 0Ln0++VueDQ9BuwqqG9U+4RIdj9OMBncXEwjKrI8=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5031B60741;
 Thu, 27 Jun 2019 17:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561658354;
 bh=TDt+TsIJojoSi3nFbwHzrAxp6vhuwRTs7dV6p+GiuOQ=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=cNkHgbLRUj1HY7Cqf9E1ov5EEVCB4M/ylnsuvpElf5ItxEpVwcygxkW4BJ9aNt0vi
 jwrQtiOp4Or8IBR7NAkoo315jD8jMdOuL13pFVeXL5ycRVeVknzMKHFkhJCKVBJH7D
 lJWvtjwyxvKDAoGIiuGJHrSVYejyW+gkLc62MaPM=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5031B60741
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: add new hw_ops for sdio chip
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1560757048-19223-1-git-send-email-wgong@codeaurora.org>
References: <1560757048-19223-1-git-send-email-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190627175914.7D99D60A05@smtp.codeaurora.org>
Date: Thu, 27 Jun 2019 17:59:14 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_105917_773350_B88AD397 
X-CRM114-Status: UNSURE (   8.62  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> It report error message while suspend/resume test.
> dmesg log:
> [  150.749962] ath10k_sdio mmc1:0001:1: hif read32 not supported
> [  150.755728] ath10k_sdio mmc1:0001:1: failed to set coverage class: expected integer microsecond value in register
> 
> Reason is sdio chip does not support set_coverage_class as well as
> pcie chip, remove the set_coverage_class handler will avoid it.
> 
> callstack of the error message:
> OUTLINED_FUNCTION_6+0xc/0x14 [ath10k_core]
> ath10k_mac_op_set_coverage_class+0x2c/0x40 [ath10k_core]
> ieee80211_reconfig+0x5d0/0x108c [mac80211]
> ieee80211_resume+0x34/0x6c [mac80211]
> wiphy_resume+0xbc/0x13c [cfg80211]
> dpm_run_callback+0xa4/0x168
> device_resume+0x1d4/0x200
> async_resume+0x1c/0x34
> async_run_entry_fn+0x48/0xf8
> process_one_work+0x178/0x2f8
> worker_thread+0x1d8/0x2cc
> kthread+0x11c/0x12c
> ret_from_fork+0x10/0x18
> 
> the error log will not happen after this patch applied.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

6b4021deb03f ath10k: add new hw_ops for sdio chip

-- 
https://patchwork.kernel.org/patch/10998099/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
