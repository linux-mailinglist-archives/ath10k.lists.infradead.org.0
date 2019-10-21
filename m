Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E529DF7E2
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 00:15:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETRqGVYuEjSPV4Lbmh1FwINcmzGGSr2camF2SPkpwgU=; b=WCJ8G1Dv5EDj6H
	4LAO069HsdeFdxizc8ObGhFN0kvlz+DkR3g64eT6b67yt2RAkoMN/iVUsTNBAkyqXnqgS0UmMmpf/
	Y8lWjzhr5ajdQP7Kj72V9M7hakjSGzA3x+DFkuCOFEjuwF+lPCXgPo9gZxTxWGRBZMsjm0qoVQ0mg
	aiZVsoRJ5SBR4TK2YoaTCgRJqP6HbSEYqgwwff6zsUxs8dzFQgOsSEX0TnU7kRBmtd3a7PqGMOseV
	1+AMMk3IVf7JO3uP+lq0EV/RmyFcwlKP4T4AV88T4WQfbWYvEJahKV76l6RfzR8sdTpHkwduDDYoc
	hMmmtRWCrlcpdEGZ951A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMfx9-0003mP-OT; Mon, 21 Oct 2019 22:15:03 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMfx4-0003li-C7
 for ath10k@lists.infradead.org; Mon, 21 Oct 2019 22:14:59 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 15:14:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,325,1566889200"; d="scan'208";a="209532870"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 21 Oct 2019 15:14:54 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iMfwz-0003qt-Mn; Tue, 22 Oct 2019 06:14:53 +0800
Date: Tue, 22 Oct 2019 06:14:33 +0800
From: kbuild test robot <lkp@intel.com>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Subject: [RFC PATCH] mac80211: ieee80211_calc_rx_airtime() can be static
Message-ID: <20191021221433.5nnny72acwx7lr4a@4978f4969bb8>
References: <157148503639.2989444.8337290298332344733.stgit@toke.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157148503639.2989444.8337290298332344733.stgit@toke.dk>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_151458_470011_91544B78 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: Kan Yan <kyan@google.com>, kbuild-all@lists.01.org,
 Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


Fixes: 427959c8f966 ("mac80211: Import airtime calculation code from mt76")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 airtime.c |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/net/mac80211/airtime.c b/net/mac80211/airtime.c
index c8d0cee613660..3f13640643e34 100644
--- a/net/mac80211/airtime.c
+++ b/net/mac80211/airtime.c
@@ -208,9 +208,9 @@ ieee80211_calc_legacy_rate_duration(const struct ieee80211_rate *rate,
 	return duration;
 }
 
-u32 ieee80211_calc_rx_airtime(struct ieee80211_hw *hw,
-			      struct ieee80211_rx_status *status,
-			      int len)
+static u32 ieee80211_calc_rx_airtime(struct ieee80211_hw *hw,
+				     struct ieee80211_rx_status *status,
+				     int len)
 {
 	struct ieee80211_supported_band *sband;
 	const struct ieee80211_rate *rate;
@@ -279,9 +279,9 @@ u32 ieee80211_calc_rx_airtime(struct ieee80211_hw *hw,
 	return duration;
 }
 
-u32 ieee80211_calc_tx_airtime_rate(struct ieee80211_hw *hw,
-				   struct ieee80211_tx_rate *rate,
-				   u8 band, int len)
+static u32 ieee80211_calc_tx_airtime_rate(struct ieee80211_hw *hw,
+					  struct ieee80211_tx_rate *rate,
+					  u8 band, int len)
 {
 	struct ieee80211_rx_status stat = {
 		.band = band,

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
