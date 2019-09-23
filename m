Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92853BB37F
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 14:17:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=R7dvrBM6UYSSvE3J4bjKSYMWVwP4eqOaYFoKPpGEFqY=; b=bhs
	G7tljlQ9A+hUfb2v7GDBKLLOV7qwyUqbgIUXm3ZzfydK8SobOUO04bzlg/+RRZWdCWZ43O/8OtT5t
	F+76WKsLLHsJRiL7Wx/TVKDMnIzmRIrTOaNM5hvhlODu/BMiYdNtVQPoYnGGIScYQIJOEGVPWUYgX
	LSaPkYTq2ywfDAIL0mKRBQrWCIvWvJDMzFi0jnh2u46o4p7tkr5vJh6xbwk6a94B3AcQMElw3oCeL
	aqKIw5Y1bqVd+pcdAjtfUUNuHrhLet4PibZP/HpZrcRullxucW58DuMq4sO5R7ciU06OOCRPnm8QB
	Np167bp59YaHdwscutoYIM5R/2zPw7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCNHo-0004Lh-M5; Mon, 23 Sep 2019 12:17:48 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCNHj-0004L7-Qw
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 12:17:45 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 77AE060736; Mon, 23 Sep 2019 12:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569241063;
 bh=bvbaad8pbX1e6EV6dGELNLsVx/3SP4Fhi2KTXgX8jL0=;
 h=From:To:Cc:Subject:Date:From;
 b=o/keuJbbpnua3sjhPNxlmpKJ5d9WTo2qPXAW6xjiIv5LnbtdyQtoYmkC135fgEC7M
 eRbtTe2Mn1SJurkZoNXoQ13yAHDrAGMmAqUfrSzE1oUC3YS7rrQqqGLhx/AnaMwPie
 gHpNXj1n1miYUQ1FTUqaL2rzVtDv4pJj4JAUmEuc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from wgong-HP-Z240-SFF-Workstation.qca.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: wgong@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5E1966013C;
 Mon, 23 Sep 2019 12:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569241063;
 bh=bvbaad8pbX1e6EV6dGELNLsVx/3SP4Fhi2KTXgX8jL0=;
 h=From:To:Cc:Subject:Date:From;
 b=o/keuJbbpnua3sjhPNxlmpKJ5d9WTo2qPXAW6xjiIv5LnbtdyQtoYmkC135fgEC7M
 eRbtTe2Mn1SJurkZoNXoQ13yAHDrAGMmAqUfrSzE1oUC3YS7rrQqqGLhx/AnaMwPie
 gHpNXj1n1miYUQ1FTUqaL2rzVtDv4pJj4JAUmEuc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5E1966013C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v3 0/2] add fw coredump for sdio when firmware assert
Date: Mon, 23 Sep 2019 20:17:33 +0800
Message-Id: <1569241055-30816-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_051743_895124_83BF1B85 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-wireless@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

add fw coredump for sdio when firmware assert

Wen Gong (2):
  ath10k: add bus type for each layout of coredump
v2: change code style
v3: split bus type to another patch, 
remove ATH10K_BUS_ANY, 
add bus type for each layout
  ath10k: add fw coredump for sdio when firmware assert
v2: change code style
v3: add commit log for fastdump, 
add commit log for ath10k_sdio_hif_diag_read,
change ath10k_err to dbg log

 drivers/net/wireless/ath/ath10k/bmi.c       |   1 +
 drivers/net/wireless/ath/ath10k/core.c      |   4 +
 drivers/net/wireless/ath/ath10k/coredump.c  | 348 +++++++++++++++++++++++++++-
 drivers/net/wireless/ath/ath10k/coredump.h  |   1 +
 drivers/net/wireless/ath/ath10k/sdio.c      | 338 ++++++++++++++++++++++++++-
 drivers/net/wireless/ath/ath10k/targaddrs.h |  10 +
 6 files changed, 697 insertions(+), 5 deletions(-)

-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
