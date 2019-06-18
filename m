Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBB9498A5
	for <lists+ath10k@lfdr.de>; Tue, 18 Jun 2019 07:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aOBlk4AuJXTOdrZGuzdza9jAhJ7lMruBWjWz4L9QaZM=; b=fTJ
	GRgBEfG119x3vYmJKJAg+9Hn4QIex52kZrVsRqw+ijwBu4hozNXMVjXPzKWozX3TZ+9QZljfssnbA
	ntHpe/f2qr1NrYL9xq46PAMdxYzZRodxzMzJqgS0DZ+dsX1R+ybGUGVvOM4d0/srbcE/yq6+bsjkK
	RjwvrivaSzNd0Rg9ICsZYI9IIbtYjfOgINh1qIqXKEzsgtKbzpYT0DpIm3C4BEzcrq81r3A1lmMmA
	26hOtRkLqPzAEo/9dv5DgB1snKpoqaTjIKAxoUK3W9J3d9pdnIUNJCC3PzUjvLQWCUOwoG1ySHi61
	8JltMHtymXsqPd/glU+q0a8OtpIDfnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd6eh-0006in-FZ; Tue, 18 Jun 2019 05:27:39 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd6ee-0006iL-7O
 for ath10k@lists.infradead.org; Tue, 18 Jun 2019 05:27:37 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 130C760312; Tue, 18 Jun 2019 05:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560835655;
 bh=5all+4v3xe8x8XDGTOIA6q4p47cOQMRMUu1s+MqNhX0=;
 h=From:To:Cc:Subject:Date:From;
 b=RjTRZnhj1d+l1898eT8YEiP2yHFoQsl6CeMntjpVgM/CebZVRjJnyvfvt5Co4M9Wc
 KOPf/jGLNUzkVJW5flU4pULrxzZxU81OFbShTEDDNUBmDrdmd57rI0Q2Ws3YZTFaAn
 oXIfT7A238+BPXtqpIjSZQWmne9uUWdrg3XLoDak=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from akolli-ThinkPad-L560.qca.qualcomm.com
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: tamizhr@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1883B602FE;
 Tue, 18 Jun 2019 05:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1560835654;
 bh=5all+4v3xe8x8XDGTOIA6q4p47cOQMRMUu1s+MqNhX0=;
 h=From:To:Cc:Subject:Date:From;
 b=RFYKcx4p2Xiaudog4bKAq4pz3MwxflDLB/twndPsLGTn7VgRmMOo4aOmvFzRTODAE
 EeblF+/xspw6JUvxUWKCPaGU3r5mHIVe2preZJ3S2Qc203uaKLA3r1r0z1iBDBcVcI
 fb2ndKF8VXgheG4pwXK7uL/Ls2xrBVdMupd6lKqI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1883B602FE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=tamizhr@codeaurora.org
From: Tamizh chelvam <tamizhr@codeaurora.org>
To: johannes@sipsolutions.net,
	ath10k@lists.infradead.org
Subject: [PATCHv6 0/9] cfg80211/mac80211: Add support for TID specific
 configuration
Date: Tue, 18 Jun 2019 10:57:03 +0530
Message-Id: <1560835632-17405-1-git-send-email-tamizhr@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_222736_301783_21239803 
X-CRM114-Status: UNSURE (   8.14  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, Tamizh chelvam <tamizhr@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Add infrastructure to support per TID configurations like noack policy,
retry count, AMPDU control(disable/enable), RTSCTS control(enable/disable)
and TX rate mask configurations.
This will be useful for the driver which can supports data TID
specific configuration rather than phy level configurations.
Here NL80211_CMD_SET_TID_CONFIG added to support this operation by
accepting TID configuration.
This command can accept STA mac addreess to make the configuration
station specific rather than applying to all the connected stations
to the netdev.
And this nested command configuration can accept multiple number of
data TID specific configuration in a single command,
enum ieee80211_tid_conf_mask used to notify the driver that which
configuration got modified for the TID.

Tamizh chelvam (9):
  nl80211: New netlink command for TID specific configuration
  nl80211: Add new netlink attribute for TID speicific retry count
  nl80211: Add netlink attribute for AMPDU aggregation enable/disable
  nl80211: Add netlink attribute to enable/disable RTS_CTS
  nl80211: Add netlink attribute to configure TID specific tx rate
  mac80211: Add api to support configuring TID specific configuration
  ath10k: Add wmi command support for station specific TID config
  ath10k: Add new api to support TID specific configuration
  ath10k: Add extended TID configuration support

v6:
  * Addressed Johannes comments.

v5:
  * Fixed possible memleak of 'tid_conf' in nl80211_set_tid_config.

v4:
  * Fixed kbuild warnings.

v3:
  * Modified "nl80211: Add netlink attribute to configure TID specific tx rate" patch
    to accept multiple TX rate configuration at a time.
  * Modified noack and ampdu variable data type to int in
    "mac80211: Add api to support configuring TID specific configuration" patch to store
    default configuration.
  * Modified "ath10k: Add new api to support TID specific configuration" patch to handle
    default values for noack and ampdu. And added sta pointer sanity check in
    ath10k_mac_tid_bitrate_config function.
  * Fixed "ath10k: Add extended TID configuration support" wmi command parameters
    assigned part.

v2:
  * Added support to accept multiple TID configuration
  * Added support to configure TX rate and RTSCTS control

 drivers/net/wireless/ath/ath10k/core.c    |    4 +
 drivers/net/wireless/ath/ath10k/core.h    |    6 +
 drivers/net/wireless/ath/ath10k/mac.c     |  681 +++++++++++++++++++++++++----
 drivers/net/wireless/ath/ath10k/wmi-ops.h |   19 +
 drivers/net/wireless/ath/ath10k/wmi.c     |   35 ++
 drivers/net/wireless/ath/ath10k/wmi.h     |   72 +++
 include/net/cfg80211.h                    |   57 +++
 include/net/mac80211.h                    |   38 ++
 include/uapi/linux/nl80211.h              |  188 ++++++++
 net/mac80211/cfg.c                        |   28 ++
 net/mac80211/driver-ops.h                 |   15 +
 net/wireless/nl80211.c                    |  284 +++++++++++-
 net/wireless/rdev-ops.h                   |   12 +
 net/wireless/trace.h                      |   17 +
 14 files changed, 1371 insertions(+), 85 deletions(-)

-- 
1.7.9.5


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
