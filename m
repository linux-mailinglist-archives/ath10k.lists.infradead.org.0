Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BA9498DF
	for <lists+ath10k@lfdr.de>; Tue, 18 Jun 2019 08:28:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jCP2VH2K3XZs2NS9S8V9i9U+9cujjOSkrYyn81FezOg=; b=N3VVQV9MIx8r62
	M4UlD39HZGxrtWXdwjrSjrBfJJT0KGX9Ulj4wqyvjXLo9Nh26mKP0mJnn6JgWcDG7hzsEOcnS/XXw
	wWK282XpSsLLuI7Czmf+RI3eDQz6UsXeXAhJIuc0XvOQMy/Q6jHda9CuSj1MBuOH+HZJYNz938K0K
	QskV0/VhdH08j9bppeaT5GLZkKjUsvWPUr5Blqcn8Ak9QIcrWYDDKzuQaPjR93WIDfNfSK4UB+Uxo
	GlewGZI3cxhRHyR5++s7E4tZfha5QS9tRpHP1xgisHJq8WMjCA0JxyXomMKBoS+g8oKhgUJjxDqAZ
	MFhqHN6hC9vlWngrNQgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd7bT-0006gY-JV; Tue, 18 Jun 2019 06:28:23 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd7bP-0006fV-8V
 for ath10k@lists.infradead.org; Tue, 18 Jun 2019 06:28:20 +0000
Received: from p5dcfbabb.dip0.t-ipconnect.de ([93.207.186.187]
 helo=bertha.fritz.box) by ds12 with esmtpa (Exim 4.89)
 (envelope-from <john@phrozen.org>)
 id 1hd7bJ-0000gk-Oz; Tue, 18 Jun 2019 08:28:13 +0200
From: John Crispin <john@phrozen.org>
To: Johannes Berg <johannes@sipsolutions.net>,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH V6 0/2] mac80211: add 802.11 encapsulation offloading
Date: Tue, 18 Jun 2019 08:28:05 +0200
Message-Id: <20190618062807.17158-1-john@phrozen.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_232819_459619_C4ADFB0F 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This series picks up prior work from QCA. The patch is currently shipped
inside QSDK as part of the wlan-open package.

The series tries to address all feedback from the V2
-> https://patchwork.kernel.org/patch/9602585/

Changes in V3
* rebase on latest kernel
* various code style clean ups
* give some of the variables and functions more obvious names
* move the code that disables support for non-linear frames to the core
* disable monitor and tkip support

Changes in V4
* disable encap when TKIP is used instead of refusing TKIP
* use a flag inside tx_info instead of an extra element
* move 4addr detection into ieee80211_set_hw_80211_encap()
* ieee80211_tx_dequeue() was dropping out to early

Changes in V5
* implement comments from Johannes

Changes in V6
* the conditional masking out monitor support was inverse

Vasanthakumar Thiagarajan (2):
  mac80211: add hw 80211 encapsulation offloading support
  ath10k: add tx hw 802.11 encapusaltion offloading suppor

 drivers/net/wireless/ath/ath10k/core.c   |  11 ++
 drivers/net/wireless/ath/ath10k/core.h   |   3 +
 drivers/net/wireless/ath/ath10k/htt_tx.c |  24 +--
 drivers/net/wireless/ath/ath10k/mac.c    |  70 +++++++--
 drivers/net/wireless/ath/ath10k/txrx.c   |  11 +-
 include/net/mac80211.h                   |  25 +++
 net/mac80211/cfg.c                       |   6 +
 net/mac80211/debugfs.c                   |   1 +
 net/mac80211/ieee80211_i.h               |  10 ++
 net/mac80211/iface.c                     |  84 ++++++++++
 net/mac80211/key.c                       |   7 +
 net/mac80211/main.c                      |  10 +-
 net/mac80211/status.c                    |  79 ++++++++++
 net/mac80211/tx.c                        | 187 ++++++++++++++++++++++-
 14 files changed, 495 insertions(+), 33 deletions(-)

-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
