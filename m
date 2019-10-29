Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E63E83EF
	for <lists+ath10k@lfdr.de>; Tue, 29 Oct 2019 10:13:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g6XdOfsUmSif6nLGRAwdkFRlFy9LpYCWidBlfswwDns=; b=bDOdlWHEOs9DlE
	u1YU8ScUBZXBTKytQLKZAA+59SOvy1UtkpIJ+zRw3oajUPV+yGSoqc9w65iNCk0vscATWkh1ht9xu
	S+WcgNC6avgVeGCpM+1HPOLEnfD4MrEQNRjRbmOTlPab0FkaPR6rpUB2UMbzze17Bm3CfdFdJ4dtC
	4mDJN4TtE7lRcje35cjQdvA/ra+ko8184NgWBDpmqtAKBiRfGiNUpahH7G2qldrtnfSClJ6x0awIT
	yyvk4DpL61rPEtNv5Wu2knewFk2DdophIK7W9cwEO3RfvOfTq37FGGDdoBE/YNFpACEYz7ra0/qCv
	a68iK9ZmQUOhMFofEqtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPNZ1-0000aG-5O; Tue, 29 Oct 2019 09:13:19 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNYw-0000Yl-4r
 for ath10k@lists.infradead.org; Tue, 29 Oct 2019 09:13:15 +0000
Received: from p5dcfbe82.dip0.t-ipconnect.de ([93.207.190.130] helo=bertha.lan)
 by ds12 with esmtpa (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iPNYs-0005ZW-Q4; Tue, 29 Oct 2019 10:13:10 +0100
From: John Crispin <john@phrozen.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: [PATCH V9 0/3] mac80211: add 802.11 encapsulation offloading
Date: Tue, 29 Oct 2019 10:13:01 +0100
Message-Id: <20191029091304.7330-1-john@phrozen.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_021314_349331_5CA29431 
X-CRM114-Status: GOOD (  10.91  )
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

Changes in V9
* implement comments from Johannes
* add tx status reporting
* let the driver decide if tx frag will break encap mode
* use true/false for bool values
* move use_4addr check to driver

Changes in V8
* fix double locking when setting frag threshold

Changes in V7
* dont mask out monitor support when encap is available. Instead turn encap
  of if a monitor device is brought up or already present

Changes in V6
* the conditional masking out monitor support was inverse

Changes in V5
* implement comments from Johannes

Changes in V4
* disable encap when TKIP is used instead of refusing TKIP
* use a flag inside tx_info instead of an extra element
* move 4addr detection into ieee80211_set_hw_80211_encap()
* ieee80211_tx_dequeue() was dropping out to early

Changes in V3
* rebase on latest kernel
* various code style clean ups
* give some of the variables and functions more obvious names
* move the code that disables support for non-linear frames to the core
* disable monitor and tkip support

John Crispin (3):
  mac80211: move store skb ack code to its own function
  mac80211: add hw 80211 encapsulation offloading support
  ath10k: add tx hw 802.11 encapusaltion offloading support

 drivers/net/wireless/ath/ath10k/core.c   |  11 ++
 drivers/net/wireless/ath/ath10k/core.h   |   3 +
 drivers/net/wireless/ath/ath10k/htt_tx.c |  24 ++-
 drivers/net/wireless/ath/ath10k/mac.c    |  76 ++++++--
 drivers/net/wireless/ath/ath10k/txrx.c   |  11 +-
 include/net/mac80211.h                   |  39 ++++
 net/mac80211/debugfs.c                   |   1 +
 net/mac80211/ieee80211_i.h               |   9 +
 net/mac80211/iface.c                     |  68 +++++++
 net/mac80211/key.c                       |   7 +
 net/mac80211/status.c                    |  74 +++++++
 net/mac80211/tx.c                        | 233 ++++++++++++++++++++---
 12 files changed, 506 insertions(+), 50 deletions(-)

-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
