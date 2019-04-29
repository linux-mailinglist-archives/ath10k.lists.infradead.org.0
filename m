Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D34FE4BE
	for <lists+ath10k@lfdr.de>; Mon, 29 Apr 2019 16:27:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38XZ5F71CxcoLgtHkqCVPMNRQ5eGN2iQ57QoOCd3SqI=; b=Ne//csh3X0xCl3
	hEx5+QORvR2Q3NwipeFPY41RNxR2TLmXFI0ctB46LObcOCYh/r5SlwoFxsp/nnK5mB4KkSOxcvyXh
	jgrROp/KetRABACIYy35iKU9RYDP5x2xvpi2PRh/VrKot9CNhWSidkW0mWdZIbpD55enKukeBTcTy
	endmfcAxtAz83/j4Pmw2b/XUmmKKW0Oh/Ym4hPGx0NA03HfJz0WqlBlNLnQ1cZ8kXdXUcWRTf49ah
	u76lz0ilLf5O0DIIb+h6Z3d3QnAS8lDR3n4tNIm237oqn3a3eKBmGL7huHLK3DcLxoDvaw26oNMXh
	cQrwT0VamERQc2PUfXOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7FE-000102-FI; Mon, 29 Apr 2019 14:27:00 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7FA-0000zc-Kx
 for ath10k@lists.infradead.org; Mon, 29 Apr 2019 14:26:58 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 5E938607DF; Mon, 29 Apr 2019 14:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556548016;
 bh=IV0ZG6ry64zXhiRgrGKXvLnELJTpAeh9g3O3T8TohQw=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=m6bVYXu6hdBpom4N8mp3+cdHioWWWIqFuuWXoycN+K7ZN4BR91NbFENodyX6XqPjR
 hnMfcW4rjMt7/1aEkoAGbhL6telhZzrnuVlXtST1JkY5i/W3j6nbMHNad/NauOYHBw
 O1K1viBbWet0mB+fFRHQO3Y/5MqutWc84pJ0/f/Q=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EE3DD607DF;
 Mon, 29 Apr 2019 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556548014;
 bh=IV0ZG6ry64zXhiRgrGKXvLnELJTpAeh9g3O3T8TohQw=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=niUyj4ztBOldr2anyLvHJxl/K8lZPA503ruQC6k8aQ0gJeJRmqwuBVGdsAjOs6fSB
 IKJ0Lf/JDBEJvf8LDRCiR4aWS/otNSaty53YiCnj3KyWGDmAzkqxqkneiEXDhxcUt4
 9H3gzKHCwPG0awntrOGZUFAeuGE0+434DxJwBOHs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EE3DD607DF
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Drop WARN_ON()s that always trigger during system
 resume
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <2884043.Jv1Mn93hE8@aspire.rjw.lan>
References: <2884043.Jv1Mn93hE8@aspire.rjw.lan>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190429142656.5E938607DF@smtp.codeaurora.org>
Date: Mon, 29 Apr 2019 14:26:55 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_072656_708753_1DB4D168 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Todd Brandt <todd.e.brandt@intel.com>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Linux PM <linux-pm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

"Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:

> ath10k_mac_vif_chan() always returns an error for the given vif
> during system-wide resume which reliably triggers two WARN_ON()s
> in ath10k_bss_info_changed() and they are not particularly
> useful in that code path, so drop them.
> 
> Tested: QCA6174 hw3.2 PCI with WLAN.RM.2.0-00180-QCARMSWPZ-1
> Tested: QCA6174 hw3.2 SDIO with WLAN.RMH.4.4.1-00007-QCARMSWP-1
> 
> Fixes: cd93b83ad927 ("ath10k: support for multicast rate control")
> Fixes: f279294e9ee2 ("ath10k: add support for configuring management packet rate")
> Cc: stable@vger.kernel.org
> Reviewed-by: Brian Norris <briannorris@chromium.org>
> Tested-by: Brian Norris <briannorris@chromium.org>
> Tested-by: Claire Chang <tientzu@chromium.org>
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-current branch of ath.git, thanks.

9e80ad37f678 ath10k: Drop WARN_ON()s that always trigger during system resume

-- 
https://patchwork.kernel.org/patch/10837139/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
