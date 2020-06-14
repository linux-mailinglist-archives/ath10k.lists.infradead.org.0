Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A221F8897
	for <lists+ath10k@lfdr.de>; Sun, 14 Jun 2020 13:27:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oUmHO8GtYgmV+LEfV8axoVqm/SnYeBsvVYkGLl/nPS4=; b=jM3nsP3jrUtQaP
	lMnfmzCOKoFRT0bJ0hnNPBY4yElxPzTnmRrHWCP1qmoI6TWRDG0NWe9CYDsuPqasdjHIdV223Pljb
	E0LOF3khqXh09puDuFdhbBHOLvT3qWpROdetReNiDUk3HSN6yszCzJkeoFJI8c2ktgL3shagtOixM
	roliPhDxisdjuK2o78nXSmuoW+sEygMzyfPVv9z2jT51M4eJLalJ8k27wVOwzmjj6DoFfwcZTGQnI
	z/kLrTVhYXj3IE+Mft+dCkvkti0upVdvYSMq6KnQEnM4lZZh9OAWfYnHadsg5K0QYbi+6QwplXMHO
	8z5lS+ZSSM0Auv/hXMJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkQnP-0002Eh-Bv; Sun, 14 Jun 2020 11:27:27 +0000
Received: from dvalin.narfation.org ([213.160.73.56])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkQnJ-0002ED-Ol
 for ath10k@lists.infradead.org; Sun, 14 Jun 2020 11:27:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1592134036;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=x3kIWwfoDmasL/x0ySkxgj1UGDL9LlCfFBJO0KTrbPo=;
 b=aQLFIt1RQ9rvV25ADjA7pqeWdBu/DRerDhscB4xIJc/q8Oj4D1m2ySivivI9EDgIVcAQPA
 cyC3dXBhYDerQ2/5i3B9hp7QGrBOvG8LpRxJbNkp3G53UB1yAWlLbIgJLicd0YJQqvdpnO
 CZGL2mRjHkA1fH6cYNxPcPb0hvd/DSA=
From: Sven Eckelmann <sven@narfation.org>
To: ath10k@lists.infradead.org
Subject: [PATCH v5] ath10k: provide survey info as accumulated data
Date: Sun, 14 Jun 2020 13:26:44 +0200
Message-Id: <20200614112644.27284-1-sven@narfation.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_042722_118314_DD0068BE 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [213.160.73.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Venkateswara Naralasetty <vnaralas@codeaurora.org>,
 Sven Eckelmann <sven@narfation.org>, linux-kernel@vger.kernel.org,
 John Deere <24601deerej@gmail.com>, Markus Theil <markus.theil@tu-ilmenau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Venkateswara Naralasetty <vnaralas@codeaurora.org>

It is expected that the returned counters by .get_survey are monotonic
increasing. But the data from ath10k gets reset to zero regularly. Channel
active/busy time are then showing incorrect values (less than previous or
sometimes zero) for the currently active channel during successive survey
dump commands.

example:

  $ iw dev wlan0 survey dump
  Survey data from wlan0
  	frequency:                      5180 MHz [in use]
  	channel active time:            54995 ms
  	channel busy time:              432 ms
  	channel receive time:           0 ms
  	channel transmit time:          59 ms
  ...

  $ iw dev wlan0 survey dump
  Survey data from wlan0
  	frequency:                      5180 MHz [in use]
  	channel active time:            32592 ms
  	channel busy time:              254 ms
  	channel receive time:           0 ms
  	channel transmit time:          0 ms
  ...

The correct way to handle this is to use the non-clearing
WMI_BSS_SURVEY_REQ_TYPE_READ wmi_bss_survey_req_type. The firmware will
then accumulate the survey data and handle wrap arounds.

Tested on:

* QCA9984 hw1.0 firmware 10.4-3.5.3-00057
* QCA988X hw2.0 firmware 10.2.4-1.0-00047
* QCA9888 hw2.0 firmware 10.4-3.9.0.2-00024
* QCA4019 hw1.0 firmware 10.4-3.6-00140

Fixes: fa7937e3d5c2 ("ath10k: update bss channel survey information")
Signed-off-by: Venkateswara Naralasetty <vnaralas@codeaurora.org>
Tested-by: Markus Theil <markus.theil@tu-ilmenau.de>
Tested-by: John Deere <24601deerej@gmail.com>
[sven@narfation.org: adjust commit message]
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
v5:
* add additional tested devices
* restructure commit message

v4:
 * updated signed-off-by

v3:
 * Rebased on TOT and added Tested-by

Everything expect QCA9984 hw1.0 firmware 10.4-3.5.3-00057 was also tested
by me.
---
 drivers/net/wireless/ath/ath10k/mac.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 919d15584d4a..77daca67a8e1 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -7283,7 +7283,7 @@ ath10k_mac_update_bss_chan_survey(struct ath10k *ar,
 				  struct ieee80211_channel *channel)
 {
 	int ret;
-	enum wmi_bss_survey_req_type type = WMI_BSS_SURVEY_REQ_TYPE_READ_CLEAR;
+	enum wmi_bss_survey_req_type type = WMI_BSS_SURVEY_REQ_TYPE_READ;
 
 	lockdep_assert_held(&ar->conf_mutex);
 
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
