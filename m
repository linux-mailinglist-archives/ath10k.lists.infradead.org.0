Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D35D1E68
	for <lists+ath10k@lfdr.de>; Thu, 10 Oct 2019 04:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfLR5QI+7UdjwBGF/qQ8my/nZ8iCwl6948uxBzyhdT0=; b=sqcF4xfC6ik0vU
	MYAe7Q6a/sQJ69mJkeuJvK6DBDmnQ26UlmYda6Vms2Ah3UGhx3r5D7Wd6eA+uiF/ZX6sT/2jSlc8d
	sENx8dgMFGDnY7OJki7K8tTi3sCWMW5V00YOvi7r9gfMFaYyEotmbg+KJ8eSmrSYB5XEOi6YV55nH
	Rhh4znVcWB6WWQJskxylwPF70aufQKGsohGRDv90/R6vTGhIINy8Hk71WbeLRwjlFpcMlQlxDug8v
	rE0bELrT5omN8xoFDU2BX1OzBmFWKzZ9n+/XsCqjadd0L8g9oDq45F3KTabGW2aUtEqe3rXsg0daW
	V55M9BqmgY+JQ4ZUojmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIO8v-0005oV-GV; Thu, 10 Oct 2019 02:25:29 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIO8n-0005d6-5T
 for ath10k@lists.infradead.org; Thu, 10 Oct 2019 02:25:23 +0000
Received: by mail-pl1-x649.google.com with SMTP id t12so2879941plo.12
 for <ath10k@lists.infradead.org>; Wed, 09 Oct 2019 19:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=L4nzz3bjMuFKbPxqsBzUn7GSLl8d809KWh9MfMvl8kY=;
 b=CbozMeIqCJarybV1Ouu36Zc9WedXe1FLwvFQCzhz/VBT7fjzESBQI7FEPezpJnoWuN
 Jd7nRVuFPwxvXuLElJIb+BGBAWEMlpG8B+V0R8LYyP5jv3iVNcn3ibzhf7NOtFoD4P0X
 9xFq/9aHOSHOKD0IHO6/QWugQ9il3CQa9kNuXnpAorsB8yZdWsRg0V1Yzww8s7IUtTWK
 mXXtECmOi5wkJsc5ZwqFOc59Wm9rLvON/hImuwF8A5WwhaBe0OMM9A3+gn8tUlHSh2v7
 fz0TW7nJYgmIdJIsJzjoebeBsLCDrIlBZME2uyndx9QHNkVLTse6bKGJRwKbrYhkm2aA
 79lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=L4nzz3bjMuFKbPxqsBzUn7GSLl8d809KWh9MfMvl8kY=;
 b=lPpfG3c6hvF1WN5lzrGTOLwry8BNKWaQY73QoyGKEYENoEwXdCqUPbpWIl/tWMPsls
 JJOcZ1QjomA+P6T6sDGbrjsaTECRB64OKJwFtwubHGlteQkEFf50zV3DH6+ZoDxWwqjG
 vgrqmRaDdgmXZEOXmElM2a96p/iTuDbcbFuZMBEIW1d9xKoyH50j6kvnLE3CiUI1UFpn
 +yqza8oueKkeAQBe+la81wS0lmEJiwbQp8yG41Nb4SKWZIbLuaDdQ0CVYehhzxjt86pS
 y1OMDs08uGNdsE1fR/y/d+Qrjc7j/dy8WLrYxP93PtYcntErOklPUFfWGJC2gYMr2z50
 BO4g==
X-Gm-Message-State: APjAAAVbQ4H18mJ9nuYKsXWhNbqgFrJz4u94LUkyXB40bEVPYEVsjOlx
 IUPyTSTQAdVfAcPHxHPvy4KJBxpv
X-Google-Smtp-Source: APXvYqwRpgzCxTErpNz1BqhTDkAu5fumr8yQt9AA+zFeXBb6Fnhci9ndsBKe1QGblqWjHg1CQGraNevq
X-Received: by 2002:a63:9dcd:: with SMTP id i196mr7860564pgd.343.1570674319312; 
 Wed, 09 Oct 2019 19:25:19 -0700 (PDT)
Date: Wed,  9 Oct 2019 19:25:01 -0700
In-Reply-To: <20191010022502.141862-1-kyan@google.com>
Message-Id: <20191010022502.141862-2-kyan@google.com>
Mime-Version: 1.0
References: <20191010022502.141862-1-kyan@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH v3 1/2] mac80211: Implement Airtime-based Queue Limit (AQL)
From: Kan Yan <kyan@google.com>
To: johannes@sipsolutions.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_192521_224140_631A4C38 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kan Yan <kyan@google.com>, make-wifi-fast@lists.bufferbloat.net,
 toke@redhat.com, linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 yiboz@codeaurora.org, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

In order for the Fq_CoDel integrated in mac80211 layer operates effectively
to control excessive queueing latency, the CoDel algorithm requires an
accurate measure of how long the packets stays in the queue, aka sojourn
time. The sojourn time measured at mac80211 layer doesn't include queueing
latency in lower layer (firmware/hardware) and CoDel expects lower layer to
have a short queue. However, most 802.11ac chipsets offload tasks such TX
aggregation to firmware or hardware, thus have a deep lower layer queue.
Without a mechanism to control the lower layer queue size, packets only
stays in mac80211 layer transiently before being sent to firmware queue.
As a result, the sojourn time measured by CoDel in the mac80211 layer is
almost always lower than the CoDel latency target, hence CoDel does little
to control the latency, even when the lower layer queue causes excessive
latency.

Byte Queue limits (BQL) is commonly used to address the similar issue with
wired network interface. However, this method cannot be applied directly
to the wireless network interface. Byte is not a suitable measure of queue
depth in the wireless network, as the data rate can vary dramatically from
station to station in the same network, from a few Mbps to over Gbps.

This patch implemented an Airtime-based Queue Limit (AQL) to make CoDel
works effectively with wireless drivers that utilized firmware/hardware
offloading. AQL only allows each txq to release just enough packets to the
lower layer to form 1-2 large aggregations to keep hardware fully utilized
and keep the rest of frames in mac80211 layer to be controlled by the CoDel
algorithm.

Signed-off-by: Kan Yan <kyan@google.com>
---
 include/net/cfg80211.h     |  7 ++++
 include/net/mac80211.h     | 43 +++++++++++++++++++++
 net/mac80211/debugfs.c     | 78 ++++++++++++++++++++++++++++++++++++++
 net/mac80211/debugfs_sta.c | 43 ++++++++++++++++-----
 net/mac80211/ieee80211_i.h |  4 ++
 net/mac80211/main.c        |  8 +++-
 net/mac80211/sta_info.c    | 30 +++++++++++++++
 net/mac80211/sta_info.h    |  4 ++
 net/mac80211/tx.c          | 46 ++++++++++++++++++++--
 9 files changed, 249 insertions(+), 14 deletions(-)

diff --git a/include/net/cfg80211.h b/include/net/cfg80211.h
index 26e2ad2c7027..05352eac82ec 100644
--- a/include/net/cfg80211.h
+++ b/include/net/cfg80211.h
@@ -2499,6 +2499,13 @@ enum wiphy_params_flags {
 
 #define IEEE80211_DEFAULT_AIRTIME_WEIGHT	256
 
+/* The per TXQ firmware queue limit in airtime */
+#define IEEE80211_DEFAULT_AQL_TXQ_LIMIT_L	4000
+#define IEEE80211_DEFAULT_AQL_TXQ_LIMIT_H	8000
+
+/* The per interface airtime threshold to switch to lower queue limit */
+#define IEEE80211_AQL_THRESHOLD			24000
+
 /**
  * struct cfg80211_pmksa - PMK Security Association
  *
diff --git a/include/net/mac80211.h b/include/net/mac80211.h
index d26da013f7c0..07bdd87ff745 100644
--- a/include/net/mac80211.h
+++ b/include/net/mac80211.h
@@ -5543,6 +5543,49 @@ void ieee80211_send_eosp_nullfunc(struct ieee80211_sta *pubsta, int tid);
 void ieee80211_sta_register_airtime(struct ieee80211_sta *pubsta, u8 tid,
 				    u32 tx_airtime, u32 rx_airtime);
 
+/**
+ * ieee80211_sta_update_pending_airtime - update txq's estimated airtime
+ *
+ * Update the estimated total airtime of frames queued in a lower layer queue.
+ *
+ * The estimated airtime is calculated for each frame using the last reported
+ * data rate and stored in the SKB's CB. Once the frame is completed, the same
+ * airtime stored in the CB should be subtracted from a txq's pending airtime
+ * count.
+ *
+ * @pubsta: the station
+ * @tid: the TID to update airtime for
+ * @tx_airtime: the estimated airtime (in usec)
+ */
+void ieee80211_sta_update_pending_airtime(struct ieee80211_sta *pubsta,
+					  u8 tid, s32 tx_airtime);
+
+static inline void
+ieee80211_sta_register_pending_airtime(struct ieee80211_sta *pubsta,
+				       u8 tid, s32 tx_airtime)
+{
+	ieee80211_sta_update_pending_airtime(pubsta, tid, tx_airtime);
+}
+
+static inline void
+ieee80211_sta_release_pending_airtime(struct ieee80211_sta *pubsta,
+				      u8 tid, s32 tx_airtime)
+{
+	ieee80211_sta_update_pending_airtime(pubsta, tid, -tx_airtime);
+}
+
+/**
+ * ieee80211_txq_aql_check - check if a txq can send frame to device
+ *
+ * @hw: pointer obtained from ieee80211_alloc_hw()
+ * @txq: pointer obtained from station or virtual interface
+ *
+ * Return true if the AQL's airtime limit has not been reached and the txq can
+ * continue to send more packets to the device. Otherwise return false.
+ */
+bool
+ieee80211_txq_aql_check(struct ieee80211_hw *hw, struct ieee80211_txq *txq);
+
 /**
  * ieee80211_iter_keys - iterate keys programmed into the device
  * @hw: pointer obtained from ieee80211_alloc_hw()
diff --git a/net/mac80211/debugfs.c b/net/mac80211/debugfs.c
index 2e7f75938c51..26570e45cee3 100644
--- a/net/mac80211/debugfs.c
+++ b/net/mac80211/debugfs.c
@@ -148,6 +148,80 @@ static const struct file_operations aqm_ops = {
 	.llseek = default_llseek,
 };
 
+static ssize_t aql_txq_limit_read(struct file *file,
+				  char __user *user_buf,
+				  size_t count,
+				  loff_t *ppos)
+{
+	struct ieee80211_local *local = file->private_data;
+	char buf[400];
+	int len = 0;
+
+	len = scnprintf(buf, sizeof(buf),
+			"AC	AQL limit low	AQL limit high\n"
+			"0	%u		%u\n"
+			"1	%u		%u\n"
+			"2	%u		%u\n"
+			"3	%u		%u\n",
+			local->aql_txq_limit_low[0],
+			local->aql_txq_limit_high[0],
+			local->aql_txq_limit_low[1],
+			local->aql_txq_limit_high[1],
+			local->aql_txq_limit_low[2],
+			local->aql_txq_limit_high[2],
+			local->aql_txq_limit_low[3],
+			local->aql_txq_limit_high[3]);
+	return simple_read_from_buffer(user_buf, count, ppos,
+				       buf, len);
+}
+
+static ssize_t aql_txq_limit_write(struct file *file,
+				   const char __user *user_buf,
+				   size_t count,
+				   loff_t *ppos)
+{
+	struct ieee80211_local *local = file->private_data;
+	char buf[100];
+	size_t len;
+	u32 ac, q_limit_low, q_limit_high;
+	struct sta_info *sta;
+
+	if (count > sizeof(buf))
+		return -EINVAL;
+
+	if (copy_from_user(buf, user_buf, count))
+		return -EFAULT;
+
+	buf[sizeof(buf) - 1] = 0;
+	len = strlen(buf);
+	if (len > 0 && buf[len - 1] == '\n')
+		buf[len - 1] = 0;
+
+	if (sscanf(buf, "%u %u %u", &ac, &q_limit_low, &q_limit_high) != 3)
+		return -EINVAL;
+
+	if (ac >= IEEE80211_NUM_ACS)
+		return -EINVAL;
+
+	local->aql_txq_limit_low[ac] = q_limit_low;
+	local->aql_txq_limit_high[ac] = q_limit_high;
+
+	mutex_lock(&local->sta_mtx);
+	list_for_each_entry(sta, &local->sta_list, list) {
+		sta->airtime[ac].aql_limit_low = q_limit_low;
+		sta->airtime[ac].aql_limit_high = q_limit_high;
+	}
+	mutex_unlock(&local->sta_mtx);
+	return count;
+}
+
+static const struct file_operations aql_txq_limit_ops = {
+	.write = aql_txq_limit_write,
+	.read = aql_txq_limit_read,
+	.open = simple_open,
+	.llseek = default_llseek,
+};
+
 static ssize_t force_tx_status_read(struct file *file,
 				    char __user *user_buf,
 				    size_t count,
@@ -442,6 +516,10 @@ void debugfs_hw_add(struct ieee80211_local *local)
 	debugfs_create_u16("airtime_flags", 0600,
 			   phyd, &local->airtime_flags);
 
+	DEBUGFS_ADD(aql_txq_limit);
+	debugfs_create_u32("aql_threshold", 0600,
+			   phyd, &local->aql_threshold);
+
 	statsd = debugfs_create_dir("statistics", phyd);
 
 	/* if the dir failed, don't put all the other things into the root! */
diff --git a/net/mac80211/debugfs_sta.c b/net/mac80211/debugfs_sta.c
index c8ad20c28c43..9f9b8f5ed86a 100644
--- a/net/mac80211/debugfs_sta.c
+++ b/net/mac80211/debugfs_sta.c
@@ -197,10 +197,12 @@ static ssize_t sta_airtime_read(struct file *file, char __user *userbuf,
 {
 	struct sta_info *sta = file->private_data;
 	struct ieee80211_local *local = sta->sdata->local;
-	size_t bufsz = 200;
+	size_t bufsz = 400;
 	char *buf = kzalloc(bufsz, GFP_KERNEL), *p = buf;
 	u64 rx_airtime = 0, tx_airtime = 0;
 	s64 deficit[IEEE80211_NUM_ACS];
+	u32 q_depth[IEEE80211_NUM_ACS];
+	u32 q_limit_l[IEEE80211_NUM_ACS], q_limit_h[IEEE80211_NUM_ACS];
 	ssize_t rv;
 	int ac;
 
@@ -212,19 +214,22 @@ static ssize_t sta_airtime_read(struct file *file, char __user *userbuf,
 		rx_airtime += sta->airtime[ac].rx_airtime;
 		tx_airtime += sta->airtime[ac].tx_airtime;
 		deficit[ac] = sta->airtime[ac].deficit;
+		q_limit_l[ac] = sta->airtime[ac].aql_limit_low;
+		q_limit_h[ac] = sta->airtime[ac].aql_limit_high;
+		q_depth[ac] = sta->airtime[ac].aql_tx_pending;
 		spin_unlock_bh(&local->active_txq_lock[ac]);
 	}
 
 	p += scnprintf(p, bufsz + buf - p,
 		"RX: %llu us\nTX: %llu us\nWeight: %u\n"
-		"Deficit: VO: %lld us VI: %lld us BE: %lld us BK: %lld us\n",
-		rx_airtime,
-		tx_airtime,
-		sta->airtime_weight,
-		deficit[0],
-		deficit[1],
-		deficit[2],
-		deficit[3]);
+		"Deficit: VO: %lld us VI: %lld us BE: %lld us BK: %lld us\n"
+		"Q depth: VO: %u us VI: %u us BE: %u us BK: %u us\n"
+		"Q limit[low/high]: VO: %u/%u VI: %u/%u BE: %u/%u BK: %u/%u\n",
+		rx_airtime, tx_airtime, sta->airtime_weight,
+		deficit[0], deficit[1], deficit[2], deficit[3],
+		q_depth[0], q_depth[1], q_depth[2], q_depth[3],
+		q_limit_l[0], q_limit_h[0], q_limit_l[1], q_limit_h[1],
+		q_limit_l[2], q_limit_h[2], q_limit_l[3], q_limit_h[3]),
 
 	rv = simple_read_from_buffer(userbuf, count, ppos, buf, p - buf);
 	kfree(buf);
@@ -236,7 +241,25 @@ static ssize_t sta_airtime_write(struct file *file, const char __user *userbuf,
 {
 	struct sta_info *sta = file->private_data;
 	struct ieee80211_local *local = sta->sdata->local;
-	int ac;
+	u32 ac, q_limit_l, q_limit_h;
+	char _buf[100] = {}, *buf = _buf;
+
+	if (count > sizeof(_buf))
+		return -EINVAL;
+
+	if (copy_from_user(buf, userbuf, count))
+		return -EFAULT;
+
+	buf[sizeof(_buf) - 1] = '\0';
+	if (sscanf(buf, "queue limit %u %u %u", &ac, &q_limit_l, &q_limit_h)
+	    != 3)
+		return -EINVAL;
+
+	if (ac >= IEEE80211_NUM_ACS)
+		return -EINVAL;
+
+	sta->airtime[ac].aql_limit_low = q_limit_l;
+	sta->airtime[ac].aql_limit_high = q_limit_h;
 
 	for (ac = 0; ac < IEEE80211_NUM_ACS; ac++) {
 		spin_lock_bh(&local->active_txq_lock[ac]);
diff --git a/net/mac80211/ieee80211_i.h b/net/mac80211/ieee80211_i.h
index 004e2e3adb88..c7e98ed0710d 100644
--- a/net/mac80211/ieee80211_i.h
+++ b/net/mac80211/ieee80211_i.h
@@ -1142,6 +1142,10 @@ struct ieee80211_local {
 	u16 schedule_round[IEEE80211_NUM_ACS];
 
 	u16 airtime_flags;
+	u32 aql_txq_limit_low[IEEE80211_NUM_ACS];
+	u32 aql_txq_limit_high[IEEE80211_NUM_ACS];
+	u32 aql_threshold;
+	s32 aql_total_pending_airtime;
 
 	const struct ieee80211_ops *ops;
 
diff --git a/net/mac80211/main.c b/net/mac80211/main.c
index 4c2702f128f3..750d783aae05 100644
--- a/net/mac80211/main.c
+++ b/net/mac80211/main.c
@@ -666,8 +666,14 @@ struct ieee80211_hw *ieee80211_alloc_hw_nm(size_t priv_data_len,
 	for (i = 0; i < IEEE80211_NUM_ACS; i++) {
 		INIT_LIST_HEAD(&local->active_txqs[i]);
 		spin_lock_init(&local->active_txq_lock[i]);
+		local->aql_txq_limit_low[i] = IEEE80211_DEFAULT_AQL_TXQ_LIMIT_L;
+		local->aql_txq_limit_high[i] =
+			IEEE80211_DEFAULT_AQL_TXQ_LIMIT_H;
 	}
-	local->airtime_flags = AIRTIME_USE_TX | AIRTIME_USE_RX;
+
+	local->airtime_flags =
+		AIRTIME_USE_TX | AIRTIME_USE_RX | AIRTIME_USE_AQL;
+	local->aql_threshold = IEEE80211_AQL_THRESHOLD;
 
 	INIT_LIST_HEAD(&local->chanctx_list);
 	mutex_init(&local->chanctx_mtx);
diff --git a/net/mac80211/sta_info.c b/net/mac80211/sta_info.c
index 95eb8220e2e4..9a3db1e16a9f 100644
--- a/net/mac80211/sta_info.c
+++ b/net/mac80211/sta_info.c
@@ -396,6 +396,9 @@ struct sta_info *sta_info_alloc(struct ieee80211_sub_if_data *sdata,
 		skb_queue_head_init(&sta->ps_tx_buf[i]);
 		skb_queue_head_init(&sta->tx_filtered[i]);
 		sta->airtime[i].deficit = sta->airtime_weight;
+		sta->airtime[i].aql_tx_pending = 0;
+		sta->airtime[i].aql_limit_low = local->aql_txq_limit_low[i];
+		sta->airtime[i].aql_limit_high = local->aql_txq_limit_high[i];
 	}
 
 	for (i = 0; i < IEEE80211_NUM_TIDS; i++)
@@ -1894,6 +1897,33 @@ void ieee80211_sta_register_airtime(struct ieee80211_sta *pubsta, u8 tid,
 }
 EXPORT_SYMBOL(ieee80211_sta_register_airtime);
 
+void ieee80211_sta_update_pending_airtime(struct ieee80211_sta *pubsta, u8 tid,
+					  s32 tx_airtime)
+{
+	u8 ac = ieee80211_ac_from_tid(tid);
+	struct sta_info *sta = container_of(pubsta, struct sta_info, sta);
+	struct ieee80211_local *local = sta->local;
+
+	spin_lock_bh(&local->active_txq_lock[ac]);
+	if (unlikely(sta->airtime[ac].aql_tx_pending + tx_airtime > S32_MAX)) {
+		WARN_ONCE(1, "TXQ pending airtime underflow: %d, %d",
+			  sta->airtime[ac].aql_tx_pending, tx_airtime);
+		sta->airtime[ac].aql_tx_pending = 0;
+	} else {
+		sta->airtime[ac].aql_tx_pending += tx_airtime;
+	}
+
+	if (unlikely(local->aql_total_pending_airtime + tx_airtime > S32_MAX)) {
+		WARN_ONCE(1, "pending airtime underflow: %d, %d",
+			  local->aql_total_pending_airtime, tx_airtime);
+		local->aql_total_pending_airtime = 0;
+	} else {
+		local->aql_total_pending_airtime += tx_airtime;
+	}
+	spin_unlock_bh(&local->active_txq_lock[ac]);
+}
+EXPORT_SYMBOL(ieee80211_sta_update_pending_airtime);
+
 int sta_info_move_state(struct sta_info *sta,
 			enum ieee80211_sta_state new_state)
 {
diff --git a/net/mac80211/sta_info.h b/net/mac80211/sta_info.h
index 3260d4234920..6ce252407b19 100644
--- a/net/mac80211/sta_info.h
+++ b/net/mac80211/sta_info.h
@@ -127,11 +127,15 @@ enum ieee80211_agg_stop_reason {
 /* Debugfs flags to enable/disable use of RX/TX airtime in scheduler */
 #define AIRTIME_USE_TX		BIT(0)
 #define AIRTIME_USE_RX		BIT(1)
+#define AIRTIME_USE_AQL		BIT(2)
 
 struct airtime_info {
 	u64 rx_airtime;
 	u64 tx_airtime;
 	s64 deficit;
+	u32 aql_tx_pending; /* Estimated airtime for frames pending in queue */
+	u32 aql_limit_low;
+	u32 aql_limit_high;
 };
 
 struct sta_info;
diff --git a/net/mac80211/tx.c b/net/mac80211/tx.c
index f13eb2f61ccf..81d66cfae369 100644
--- a/net/mac80211/tx.c
+++ b/net/mac80211/tx.c
@@ -3669,7 +3669,8 @@ struct ieee80211_txq *ieee80211_next_txq(struct ieee80211_hw *hw, u8 ac)
 {
 	struct ieee80211_local *local = hw_to_local(hw);
 	struct ieee80211_txq *ret = NULL;
-	struct txq_info *txqi = NULL;
+	struct txq_info *txqi = NULL, *head = NULL;
+	bool found_eligible_txq = false;
 
 	spin_lock_bh(&local->active_txq_lock[ac]);
 
@@ -3680,13 +3681,26 @@ struct ieee80211_txq *ieee80211_next_txq(struct ieee80211_hw *hw, u8 ac)
 	if (!txqi)
 		goto out;
 
+	if (txqi == head && !found_eligible_txq)
+		goto out;
+
+	if (!head)
+		head = txqi;
+
 	if (txqi->txq.sta) {
 		struct sta_info *sta = container_of(txqi->txq.sta,
-						struct sta_info, sta);
+						    struct sta_info, sta);
+		bool aql_check = ieee80211_txq_aql_check(hw, &txqi->txq);
+		s64 deficit = sta->airtime[txqi->txq.ac].deficit;
+
+		if (aql_check)
+			found_eligible_txq = true;
 
-		if (sta->airtime[txqi->txq.ac].deficit < 0) {
+		if (deficit < 0)
 			sta->airtime[txqi->txq.ac].deficit +=
 				sta->airtime_weight;
+
+		if (deficit < 0 || !aql_check) {
 			list_move_tail(&txqi->schedule_order,
 				       &local->active_txqs[txqi->txq.ac]);
 			goto begin;
@@ -3740,6 +3754,32 @@ void __ieee80211_schedule_txq(struct ieee80211_hw *hw,
 }
 EXPORT_SYMBOL(__ieee80211_schedule_txq);
 
+bool ieee80211_txq_aql_check(struct ieee80211_hw *hw,
+			     struct ieee80211_txq *txq)
+{
+	struct sta_info *sta;
+	struct ieee80211_local *local = hw_to_local(hw);
+
+	if (!(local->airtime_flags & AIRTIME_USE_AQL))
+		return true;
+
+	if (!txq->sta)
+		return true;
+
+	sta = container_of(txq->sta, struct sta_info, sta);
+	if (sta->airtime[txq->ac].aql_tx_pending <
+	    sta->airtime[txq->ac].aql_limit_low)
+		return true;
+
+	if (local->aql_total_pending_airtime < local->aql_threshold &&
+	    sta->airtime[txq->ac].aql_tx_pending <
+	    sta->airtime[txq->ac].aql_limit_high)
+		return true;
+
+	return false;
+}
+EXPORT_SYMBOL(ieee80211_txq_aql_check);
+
 bool ieee80211_txq_may_transmit(struct ieee80211_hw *hw,
 				struct ieee80211_txq *txq)
 {
-- 
2.23.0.581.g78d2f28ef7-goog


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
