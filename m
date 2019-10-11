Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E11FD3780
	for <lists+ath10k@lfdr.de>; Fri, 11 Oct 2019 04:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WZuu2NYTekA1iXD9HFtcm+s13njz0UMLUom8ezb3PSM=; b=jTSu0orXD4rKhZ
	LVL1nZ5c228FY3MeMOKbk/piNROgXQ8+opx1JrrIJRVgdTRleEzjU7qN3wmNRyxSvuVQ5VZMeyyj5
	X1sp22rsUKGA4gqheepP4jk/s5Qrk7Fpl9eA7x5hmBGN7xl6pNH8c3IOh4Pgqj/SoWbRFKIi3bgMR
	gVvk6ZqAQieaKb0O1KvU0dYDxbNIhUBqgYvNJ+JB/9zTyphWZx37kix1cqYgzD1bE4511CA4s+tcL
	gtswoQkSVbQwKe/YJmi9eTMixwq8Hs4i3PwEYfLDHlMFTIfI7Zv6yphdMVSFn3nQKNSYFQ/WKyosq
	Omz76G/BfiOymO7ybv1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIkbT-0004Db-JW; Fri, 11 Oct 2019 02:24:27 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIkbP-0004AB-5I
 for ath10k@lists.infradead.org; Fri, 11 Oct 2019 02:24:24 +0000
Received: by mail-vk1-xa49.google.com with SMTP id u123so2910980vkf.8
 for <ath10k@lists.infradead.org>; Thu, 10 Oct 2019 19:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=pUbhQpJqyQJujGGClNz5rGmi70325W4vJGIc//2AsLU=;
 b=TZpDuH+CtoaZW48xbK27bT8Enq+cfoyxNqz92gTog1NMcRv7axdRUt8GE1jRFig2yl
 dADCRJ4LoasiDbn4RtpXrlUjHr1VgguwFY+OkzpFxTZwDZrUQGIzs2clK+JF6/9/n4QA
 pXPG7JS+/kMnOTbrupQrdIiaxRdZ+ENo/rjxMVQux/hI8ZR11FLDETY20TcOk5RQVH3o
 vu7XpXIJCnnMDwAhVhbBGpCAO5Bx1ud9L7NiViyWoPpDkX9NH7GZ0vB0OfrUte2JBjJ0
 T3CA+Ph/1o5OZTRaATzD3Wu2m31eRR5JXfTZFirBX3UebEwlMwlv/Uy4wFqDU44Sj1+8
 93bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=pUbhQpJqyQJujGGClNz5rGmi70325W4vJGIc//2AsLU=;
 b=WTWPXjMWl+MZ9FUkwlO5kZMe46lZAqIcblg/ZWx5Y0joFfukBh/EQoAGgR1KwzGZ3r
 kRmo18FxtMLTEi3n6ia3sE5XYfN35uhiZkX7/oug88rCML/A3fI6EY2nECHAjcfR5TPY
 f0uPaxog/Cpm1aPjwaIcqase8rJdQK37jLIxQ8StqF2jCWsiU7hmXlrXT47/zXOtA/rh
 IQmn9VOkjNZ50Bj27yOyQStH7d1CEYMa/PnIzKfWQZtgwKKNaPp709p2W4Yv78ctH5B9
 Uvb7Qpnk8Ll+4Mm9dJ/AAi4854aKr+aY8vUtTwCfG8FaRUBDG6YGSHBnI0MlQPZNKQpG
 33vQ==
X-Gm-Message-State: APjAAAVsItKo/8awRzFKPU4SWgkeA0Vo377i4Oip6yGfkUzrSRVwWoUd
 YutzGXjdSY/HZ+wdubVHtqK1ANEq
X-Google-Smtp-Source: APXvYqxY3q2B3RSwzFSwc+FyjuVBvP5Fj90jJy/rxeafgUwzP3vNGN4KnVt5cfm9v1T2wdN74PDWYXeB
X-Received: by 2002:a67:f4c4:: with SMTP id s4mr7526195vsn.185.1570760658126; 
 Thu, 10 Oct 2019 19:24:18 -0700 (PDT)
Date: Thu, 10 Oct 2019 19:24:11 -0700
Message-Id: <20191011022413.176208-1-kyan@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v4 0/2] Implement Airtime-based Queue Limit (AQL)
From: Kan Yan <kyan@google.com>
To: johannes@sipsolutions.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_192423_239065_E0C74354 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patch series implements Airtime-based Queue Limit (AQL) in the mac80211 and Ath10k driver. It is based on an earlier version from the ChromiumOS tree[0].

This version has been tested with QCA9884 platform with 4.14 kernel. Tests show AQL is able to reduce latency by an order of magnitude in a congested environment without negative impact on the throughput.

[0] https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1703105/7

Kan Yan (2):
  mac80211: Implement Airtime-based Queue Limit (AQL)
  ath10k: Enable Airtime-based Queue Limit (AQL)

 drivers/net/wireless/ath/ath10k/htt_rx.c |  1 +
 drivers/net/wireless/ath/ath10k/mac.c    |  6 +-
 drivers/net/wireless/ath/ath10k/txrx.c   | 11 +++-
 include/net/cfg80211.h                   |  7 +++
 include/net/mac80211.h                   | 47 ++++++++++++++
 net/mac80211/debugfs.c                   | 78 ++++++++++++++++++++++++
 net/mac80211/debugfs_sta.c               | 43 ++++++++++---
 net/mac80211/ieee80211_i.h               |  4 ++
 net/mac80211/main.c                      |  9 ++-
 net/mac80211/sta_info.c                  | 33 ++++++++++
 net/mac80211/sta_info.h                  |  4 ++
 net/mac80211/tx.c                        | 46 +++++++++++++-
 12 files changed, 270 insertions(+), 19 deletions(-)

-- 
Changes from v1:
 - Fix checkpatch error.
 - Keep iterate the list of active_txq until an eligible txq's deficit become non-negative in ieee80211_next_txq(), instead of break the loop after one iteration.
 - Enforce the AQL limit in ath10k's pull mode in ath10k_htt_rx_tx_fetch_ind()

Changes from v2:
 - More coding style fixes.
 - Fixed a bug that txq is not removed from the active_txqs list when txq.sta is null.
 - Removed AQL queue limit check from ieee80211_txq_may_transmit(), so at least one frame will be sent to the firmware when called from ath10k_htt_rx_tx_fetch_ind() in ath10k's poll mode.

Changes from v3:
 - Coding style fixes.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
