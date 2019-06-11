Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE943CAFD
	for <lists+ath10k@lfdr.de>; Tue, 11 Jun 2019 14:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eoqs9IjcqVNN3KV6bdTU0mBhy943nLZK+B74t+jcbIg=; b=H4G86Hk6K7BH/6
	CsRsxsBf2CK1qzqD0FMK9v+Z9oLF2ColN3fmoHl19/oKo/pbkDPQhSCOH3EmQL50RuW/ZcM6MAXfI
	eVDxyuCaeQHfIIc6nkok++Je9N66/Nr4GD2h2/AVEhcAGVUH5N2mBMeptR84rkBsoFP8lDT9evy4n
	Z+xzqU6/psYnjWe4wYHMurA3h0KsVBRMolGU3eGVRKIiHlm4leN8/i1USUKQeTLEioEoeRm01nvKd
	ntIWkny7cu05UGBIa5fXhAjAu2PtLCB68s0sfFtehQh3bWxqCVI6m4SDPoULEJdnVNdQbz5cTv7vJ
	DH3COUhxQtqHKsCeQmXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafkS-0005yx-EK; Tue, 11 Jun 2019 12:19:32 +0000
Received: from durin.narfation.org ([79.140.41.39])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafkL-0005xb-8z
 for ath10k@lists.infradead.org; Tue, 11 Jun 2019 12:19:27 +0000
Received: from sven-desktop.home.narfation.org
 (p200300C5970379EE000000000000070D.dip0.t-ipconnect.de
 [IPv6:2003:c5:9703:79ee::70d])
 by durin.narfation.org (Postfix) with ESMTPSA id EF9A91100D3;
 Tue, 11 Jun 2019 14:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1560255561;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=qqBTwquj+/+qeCna/vowQ9lULWZujDdkUGiUnhQczqk=;
 b=SW5T63ugWxYa8bRMH+6NvKyd47cX4jxj3osw7l041oJq55zx2msFBJfcIMtSk5cYBbme9f
 G0HlrvXvcmWCZndT8u69RZNlYi7kGiH60wULZb/ts18Ka+j+/SHKmr5CyjHqZPG3wLCtiR
 K2Cc8npAErMbD76sSAXhOrU4/SKoSTk=
From: Sven Eckelmann <sven@narfation.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: fix max antenna gain unit
Date: Tue, 11 Jun 2019 14:19:10 +0200
Message-Id: <20190611121910.27643-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1560255561;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=qqBTwquj+/+qeCna/vowQ9lULWZujDdkUGiUnhQczqk=;
 b=ORJyWRIRUK81kZ1FIv2c3gQ0vtA1VibKzesh8rXD8aW9izu/WWTfdSc3/7RYdt8hslf1CX
 dPfkCcU7wJFLdm8JZIGR9lP3nVRSWLHJ3cNGmVPuB4nLi9sVsuCCstwD166xlpPjuwmClv
 tnMFAI1qyFN5ulDh8OeoSE6D1+o+6BA=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1560255561; a=rsa-sha256; cv=none;
 b=hGOvKs1Whed3Q6xW+fPohBK/t/J9iKPkLUkpADy81S4tD634mf3vWxaFE9t77GTQANw2eH
 EmAKADiXjrUlDDFNl5raHFKo7J9zx3GFh0OfcBO6Q4C/2hH7TQu3SCNfiXBpF0YYEwFMqx
 lf4h+IoFTdixsYA+CBhN5Qvq/HYOnZY=
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_051925_760038_1FADA7A2 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [79.140.41.39 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michal Kazior <michal@plume.com>, linux-wireless@vger.kernel.org,
 Sven Eckelmann <seckelmann@datto.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Sven Eckelmann <seckelmann@datto.com>

Most of the txpower for the ath10k firmware is stored as twicepower (0.5 dB
steps). This isn't the case for max_antenna_gain - which is still expected
by the firmware as dB.

The firmware is converting it from dB to the internal (twicepower)
representation when it calculates the limits of a channel. This can be seen
in tpc_stats when configuring "12" as max_antenna_gain. Instead of the
expected 12 (6 dB), the tpc_stats shows 24 (12 dB).

Tested on QCA9888 and IPQ4019 with firmware 10.4-3.5.3-00057.

Fixes: 02256930d9b8 ("ath10k: use proper tx power unit")
Signed-off-by: Sven Eckelmann <seckelmann@datto.com>
---
Cc: Michal Kazior <michal@plume.com>

 drivers/net/wireless/ath/ath10k/mac.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 9c703d287333..35d026a2772a 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -1008,7 +1008,7 @@ static int ath10k_monitor_vdev_start(struct ath10k *ar, int vdev_id)
 	arg.channel.min_power = 0;
 	arg.channel.max_power = channel->max_power * 2;
 	arg.channel.max_reg_power = channel->max_reg_power * 2;
-	arg.channel.max_antenna_gain = channel->max_antenna_gain * 2;
+	arg.channel.max_antenna_gain = channel->max_antenna_gain;
 
 	reinit_completion(&ar->vdev_setup_done);
 
@@ -1450,7 +1450,7 @@ static int ath10k_vdev_start_restart(struct ath10k_vif *arvif,
 	arg.channel.min_power = 0;
 	arg.channel.max_power = chandef->chan->max_power * 2;
 	arg.channel.max_reg_power = chandef->chan->max_reg_power * 2;
-	arg.channel.max_antenna_gain = chandef->chan->max_antenna_gain * 2;
+	arg.channel.max_antenna_gain = chandef->chan->max_antenna_gain;
 
 	if (arvif->vdev_type == WMI_VDEV_TYPE_AP) {
 		arg.ssid = arvif->u.ap.ssid;
@@ -3105,7 +3105,7 @@ static int ath10k_update_channel_list(struct ath10k *ar)
 			ch->min_power = 0;
 			ch->max_power = channel->max_power * 2;
 			ch->max_reg_power = channel->max_reg_power * 2;
-			ch->max_antenna_gain = channel->max_antenna_gain * 2;
+			ch->max_antenna_gain = channel->max_antenna_gain;
 			ch->reg_class_id = 0; /* FIXME */
 
 			/* FIXME: why use only legacy modes, why not any
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
