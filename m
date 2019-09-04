Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75178A7B67
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 08:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EooZ+g0ckFDP+gYk/X76R4RkjU45peZT//ypAdwwZ70=; b=Iiu
	9iWC+leHnt/QzmaNq0LTA+RL14z+Rs8YR6H0BNxd3O9l0BjykLd75QCqJ8mmPc6pokrhNcVrmAm/I
	7O4Aya9mIm2fAsoGFKXIPzoRV8VMrLgNanbLaiy5XyhHCnrQi788c3dcy+eSiN1V8kM+LdP3MCX1r
	0Q3gfvz17k5B5s7ghVfI00BZ6dcJ5XQdHS1+hSiE588yZT/BRGvGEPn6hQxXZ33gbjMsRhAwHlggK
	JhgcUVnqa0qpbVnXI91K6POjtlytWT5sXjJDbPJyB07+bJA8LkA5dq5nvVEVirxcRyoy7Tb9Yh9E9
	amTEeThdqnh3nUlWtY+LqwjxaSK7qqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5OaN-00013T-Tc; Wed, 04 Sep 2019 06:16:08 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5OaJ-000131-Ut
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 06:16:05 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DF48461195; Wed,  4 Sep 2019 06:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567577762;
 bh=5Xij+zFs54t+TMTsDwybgL6kdYeyg2X6LTssTBMQyz4=;
 h=From:To:Cc:Subject:Date:From;
 b=G6wHQlrSCWDTVqGv6DzRBGTctxGBAiSmhjxR2vhynb3vx/eRfAITjuylcOvm/ujiU
 B/RrLprx8aUwQMJuU0frr5XXsUokIwxBfm5u/HpgvjKvgm8+/3sNCT/pD4+YjRExYD
 FqWk8HQTPrWSbfDoT0BJaocBWbd2ouU34ilYkzkY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 75C9A60E75;
 Wed,  4 Sep 2019 06:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1567577761;
 bh=5Xij+zFs54t+TMTsDwybgL6kdYeyg2X6LTssTBMQyz4=;
 h=From:To:Cc:Subject:Date:From;
 b=ouTQD6gikvu4yUgWWDjjI5SfHl2LQAmO83PbQuVOn3RwBMsi13vOCyJAnfpnkeuAD
 vqwZ+5zdKmkjE/m/hzAjNJZkCROPSsZHyTm6UQr+UwGO1iRE3bEO+fpfk+yoDJOSsH
 FGwgWyRUtTvYWP/6iWYutJ99lMqhB7TykJ0rsxu8=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 75C9A60E75
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org,
	johannes@sipsolutions.net
Subject: [PATCH] mac80211: Store max_mtu in ieee80211_hw
Date: Wed,  4 Sep 2019 14:15:43 +0800
Message-Id: <1567577743-27684-1-git-send-email-wgong@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_231604_020126_F1DA2D35 
X-CRM114-Status: UNSURE (   9.93  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Make it possibly for drivers to adjust the default mat_mtu
by storing it in the hardware struct.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 include/net/mac80211.h | 3 +++
 net/mac80211/iface.c   | 5 ++++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/include/net/mac80211.h b/include/net/mac80211.h
index d26da01..8545b03 100644
--- a/include/net/mac80211.h
+++ b/include/net/mac80211.h
@@ -2454,6 +2454,8 @@ enum ieee80211_hw_flags {
  *
  * @weight_multiplier: Driver specific airtime weight multiplier used while
  *	refilling deficit of each TXQ.
+ *
+ * @max_mtu: the max mtu could be set.
  */
 struct ieee80211_hw {
 	struct ieee80211_conf conf;
@@ -2491,6 +2493,7 @@ struct ieee80211_hw {
 	u8 max_nan_de_entries;
 	u8 tx_sk_pacing_shift;
 	u8 weight_multiplier;
+	u32 max_mtu;
 };
 
 static inline bool _ieee80211_hw_check(struct ieee80211_hw *hw,
diff --git a/net/mac80211/iface.c b/net/mac80211/iface.c
index 06aac0a..00c33e6 100644
--- a/net/mac80211/iface.c
+++ b/net/mac80211/iface.c
@@ -1877,7 +1877,10 @@ int ieee80211_if_add(struct ieee80211_local *local, const char *name,
 
 		/* MTU range: 256 - 2304 */
 		ndev->min_mtu = 256;
-		ndev->max_mtu = IEEE80211_MAX_DATA_LEN;
+		if (local->hw.max_mtu)
+			ndev->max_mtu = local->hw.max_mtu;
+		else
+			ndev->max_mtu = IEEE80211_MAX_DATA_LEN;
 
 		ret = register_netdevice(ndev);
 		if (ret) {
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
