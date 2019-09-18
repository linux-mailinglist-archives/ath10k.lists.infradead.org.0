Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F10C4B637E
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 14:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=97i6E56B9NcbnEDYrwI+HxSkWBap7RQnzm0H4UUnwfQ=; b=DokSuTHSmur5xm
	4IG961a+uqGpzVKpycaQoReVBzzt+VkGLDtc61zLuztBOXWOBYsEs3Km0eTN40SHVvUmjvcIIcJ/0
	vdfEMzwgRXbeTLuZXsKS3fOqMtZgKExtHpMMUHTLOWHGkdMo8H4A7/eWFqOttq3UQtxC9bKXtYkAn
	4s/LgTNa2o8bLZPHz1KzNorLIKqm2aXDItp4EqkGmCGlo5yv0uDvQj/VpDXM+n+uY4YTFtKNVGQ1y
	7NryOiIUHB6t4Tfx26aXFU/FtQORIqwoS4O6B3CY4S1RCO7SerhHHgj831G4nxpIW0eZkq+WjOhwa
	35mu0v8KLHfBYMwPCMkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZJI-0006BE-Kb; Wed, 18 Sep 2019 12:43:53 +0000
Received: from dvalin.narfation.org ([2a00:17d8:100::8b1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZJA-0006AY-Og
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 12:43:46 +0000
Received: from sven-desktop.home.narfation.org
 (p200300C5971113F0000000000000063E.dip0.t-ipconnect.de
 [IPv6:2003:c5:9711:13f0::63e])
 by dvalin.narfation.org (Postfix) with ESMTPSA id 638981FEDA;
 Wed, 18 Sep 2019 12:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1568808857;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=U4tU03srKrA9+G7L8pLjlWRfYtpiLgB1ZSiQhRlxFpc=;
 b=qiHjqG3Z6Gpdx38f6T7Y2LBw6q+BN80NNoWwZcvT0GudYONbPwHPGk+C7g80fcNV2koWv1
 NS/pBEylmAtb802JdjMXnbu2UH6sm+DzVCvvtigD4Hno4tO1JOTeZ5dCfNFH61dvFswKBt
 5j5LojxS9VUHy+fulbPS262xfp4+FPE=
From: Sven Eckelmann <sven@narfation.org>
To: ath10k@lists.infradead.org
Subject: [RFC PATCH 0/2] ath10k: provide survey info as accumulated data
Date: Wed, 18 Sep 2019 14:42:57 +0200
Message-Id: <20190918124259.17804-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1568808857;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=U4tU03srKrA9+G7L8pLjlWRfYtpiLgB1ZSiQhRlxFpc=;
 b=fb9LpbdU+XBsWMxt2sl1gzr6zA4DSPFVAmHmDDPUJMHCzFyfRW6Ytkn5JEQqf58flQWlrL
 /Cwx1UOAj4hliZn789gmq+sbKF5veuKyJRxTfxYMzcgPzTDzkEymItmCJu99Bawe/7bAA8
 06fNQAK6wPjkQN36GepmTZ/VT833GeM=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1568808857; a=rsa-sha256; cv=none;
 b=DausyOTSzNPhzI77Ofdh1AusnpUprJBXA8mh0IoGFdMrT0Pgs9VvPbEKyyGy3zgjPVA3lw
 DBjs21XfFgWqKDB4RGgr4GYsOBO8l4WPgQPfJ2uNPGlbIz9k73VeILUGSNxM2+xouiNf9A
 KdmMfOO5wQPjkdbOiujXAjK2qscwb5k=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_054344_948782_80705F11 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:17d8:100:0:0:0:0:8b1 listed in]
 [list.dnswl.org]
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
Cc: vnaralas@codeaurora.org, linux-wireless@vger.kernel.org,
 Sven Eckelmann <seckelmann@datto.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Sven Eckelmann <seckelmann@datto.com>

Hi,

it was observed that ath9k provides accumulated survey counters but ath10k
neither provides deltas nor accumulated counters. Instead it returns
some value which was returned at some point from the firmware.

But as it turns out, this data is not reliable. To make it more useful,
ath10k has to:

* retrieve counters rather frequently for hardware which is known to use
  firmware versions with low number counter bits (for only 14-30s)
* clean up received counter values 
* accumulate counters from firmware

A comparison of the resulting output with these fixes can be seen under
https://stats.freifunk-vogtland.net/d/ffv_node/nodeinfo?orgId=1&var-node=ac86749f4d60&fullscreen&panelId=5&from=1568782046974&to=1568807068706

The left side of the graph shows the output before the patches were applied
and the right side the output with the patches applied. Just as reference, an
ath9k device in the same building is
https://stats.freifunk-vogtland.net/d/ffv_node/nodeinfo?orgId=1&var-node=ac86740037e0&fullscreen&panelId=5&from=1568782046974&to=1568807068706

Kind regards,
	Sven

Sven Eckelmann (2):
  ath10k: report survey info as accumulated values
  ath10k: regularly fetch survey counters

 drivers/net/wireless/ath/ath10k/core.c |  8 ++++
 drivers/net/wireless/ath/ath10k/core.h |  3 ++
 drivers/net/wireless/ath/ath10k/hw.c   | 13 +++--
 drivers/net/wireless/ath/ath10k/mac.c  | 52 ++++++++++++++++++++
 drivers/net/wireless/ath/ath10k/mac.h  |  3 ++
 drivers/net/wireless/ath/ath10k/wmi.c  | 66 ++++++++++++++++++++++----
 6 files changed, 130 insertions(+), 15 deletions(-)

-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
