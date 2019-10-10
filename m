Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A06D1E67
	for <lists+ath10k@lfdr.de>; Thu, 10 Oct 2019 04:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mIeRqncTnacFZjmSvGCeCcwG9t4ZNWw07dBJjhYhpW0=; b=Uz4v1E05RAM5dK
	lfvJuAHH23e1DuK+2IAGhrg7JbQVlPRUxvR1eZ9UThA91d5qk6lPb4nizgYhdn75izxv7PhMl97tJ
	yOVIRHjGCwAKL8lyF54B3s5C+4y7ejJ4fQ6RX1u6MneDNx4ELBz8w5emnqwuD+hmDRl/QqDQD0CvT
	FNuFkIJwmx3on1JviF831HMyD5SVEbuYiQ709nm7WIaonbOMuBA8sF0swz620iI58CJ5QSIXh5aIR
	8w5AUyxIRn5oscGmnX2cJlfbGYuP9aO6OYchcUX7GY8tlhsZ6+SAdE/F7fZNUrPwvJux2wIsawcVe
	mTuaOKjcDFkRE1EQ+3sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIO8n-0005fo-TM; Thu, 10 Oct 2019 02:25:21 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIO8j-00057O-J6
 for ath10k@lists.infradead.org; Thu, 10 Oct 2019 02:25:19 +0000
Received: by mail-pf1-x449.google.com with SMTP id r7so3569155pfg.2
 for <ath10k@lists.infradead.org>; Wed, 09 Oct 2019 19:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=8pgq/CJPBzYHme4OP1iERhbwcRrWZJInlW+BNY7gFGQ=;
 b=LjVT4DuRP3siHRjeM97PhfGmplfGen12OwmQ/PglT1ts58sTq0z7wHlH4XZaxJjS9Q
 ps5L/a0WZkQIhMa0yDjEmHNLmSloFtMavUbQ987AoeZsgT4ZzebHeScsczTJ/Ke6C4zE
 iMBSnQj+F816TbJp5d6J0q6Hzfuw01ui3/OgwtxlFGnCFRsJDQqosXIKWrVyzEFsMntr
 DMr34pV93QqU56dtV+RyedGcSG6n1I2tOjzyBGr2B+78849IQV/E30bhm1DcRAvUgtLh
 PBI3mTdmTvTJthmO4dFIX6gFb9Nu675VXuSnZOxtwg62gbWisX1wohkn4auq7+PhbeU4
 YX6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=8pgq/CJPBzYHme4OP1iERhbwcRrWZJInlW+BNY7gFGQ=;
 b=MJyD2CMvwqsepIJWv4T+98Sihw7OAt0RXkDhQ6mrVhDT7/OOGNy2UnangXuyYDGaAn
 Q3LMuEQ5NNiuvGk7Wqe3Md2qiQTLHyEmfIR9l4Hi0yc2zVanrfuRlG9AvEqNjI/ccoko
 kquh4/6ftkLJwJT5/NlZjL8kKMw9wPE7Xtd5hjbNsZK5Tu+jjLXI7Yfp+/sWTWnA3uYa
 cipddAE8oQkaVsQLx7z9OFEArmhxOzzbJdNZcPeicpRxSbj+5r6MyrPLjYDsICnINwuD
 f340AsnQTgaPxO8hR2AzmWLsQ2ljwn7g8Q/CGxm8xcS8Eg2klGEqP4iONU7jodTnrL28
 t/6Q==
X-Gm-Message-State: APjAAAUZqeYGhk42incWwTr9BVLPQJgv0SQ+GLXch4R8dcbiicjt4pIP
 24Cjeh2ziBI0J+jsmQp6ao5uz7h8
X-Google-Smtp-Source: APXvYqy2xg8KKbFIWzroLfW1okl9kYDSxQOdVYCJHqgcIuAc4XhwwuPotnFKnIzAsaNDtLnuBbcfORnP
X-Received: by 2002:a63:4046:: with SMTP id n67mr7304981pga.200.1570674315898; 
 Wed, 09 Oct 2019 19:25:15 -0700 (PDT)
Date: Wed,  9 Oct 2019 19:25:00 -0700
Message-Id: <20191010022502.141862-1-kyan@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH v3 0/2] Implement Airtime-based Queue Limit (AQL)
From: Kan Yan <kyan@google.com>
To: johannes@sipsolutions.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_192517_674426_2FE3DE32 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
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

This patch series implements Airtime-based Queue Limit (AQL) in the mac80211 and Ath10k driver. It is based on an earlier version from the ChromiumOS tree[0].

This version has been tested with QCA9884 platform with 4.14 kernel. Tests show AQL is able to reduce latency by an order of magnitude in a congested environment without negative impact on the throughput.

[0] https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1703105/7

Kan Yan (2):
  mac80211: Implement Airtime-based Queue Limit (AQL)
  ath10k: Enable Airtime-based Queue Limit (AQL)

 drivers/net/wireless/ath/ath10k/htt_rx.c |  1 +
 drivers/net/wireless/ath/ath10k/mac.c    |  8 ++-
 drivers/net/wireless/ath/ath10k/txrx.c   | 11 +++-
 include/net/cfg80211.h                   |  7 +++
 include/net/mac80211.h                   | 43 +++++++++++++
 net/mac80211/debugfs.c                   | 78 ++++++++++++++++++++++++
 net/mac80211/debugfs_sta.c               | 43 ++++++++++---
 net/mac80211/ieee80211_i.h               |  4 ++
 net/mac80211/main.c                      |  8 ++-
 net/mac80211/sta_info.c                  | 30 +++++++++
 net/mac80211/sta_info.h                  |  4 ++
 net/mac80211/tx.c                        | 46 +++++++++++++-
 12 files changed, 263 insertions(+), 20 deletions(-)

-- 
Changes from v1:
 - Fix checkpatch error.
 - Keep iterate the list of active_txq until an eligible txq's deficit become non-negative in ieee80211_next_txq(), instead of break the loop after one iteration.
 - Enforce the AQL limit in ath10k's pull mode in ath10k_htt_rx_tx_fetch_ind()

Changes from v2:
 - More coding style fixes.
 - Fixed a bug that txq is not removed from the active_txqs list when txq.sta is null.
 - Removed AQL queue limit check from ieee80211_txq_may_transmit(), so at least one frame will be sent to the firmware when called from ath10k_htt_rx_tx_fetch_ind() in ath10k's poll mode.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
