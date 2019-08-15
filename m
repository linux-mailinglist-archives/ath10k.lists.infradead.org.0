Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72958F639
	for <lists+ath10k@lfdr.de>; Thu, 15 Aug 2019 23:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1RXKggtvq9hopPas7rpvbncrvg6FVgGw7EWCgCDooFo=; b=U+E
	HnzggIQ/di6vup99WCEJ4xBOAoji8GnbU095K6tirA9f6cf5pCjhOOZWeD9ysa5YtyHXzOdv4q49l
	QdX8M03UqNx215RMVeMhZg5xSpS41s4K38P3rCJB+X9P6+yEeOFhdhFNbE0sBojLxYgPInIwg7VIL
	UiQLQME/qN1aZXqpXU79OGainHVtWhUw90c+xbsOvGguoVIyCKLAFK48hbwFE5LXIcP2957UrwSct
	Vppg+HLzG6HPhI2wA4xVrxqXTNbFIdXHybAf3MecvbFBkJKjM4PdkXpORMxr2btWj6UT4g2isw7tX
	kJ3uvHU5QKsD5ptl9pZ+AxZ2C3uKynQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyMvN-0007OD-Ot; Thu, 15 Aug 2019 21:04:45 +0000
Received: from mail-yw1-f65.google.com ([209.85.161.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyMvG-0007NH-HU
 for ath10k@lists.infradead.org; Thu, 15 Aug 2019 21:04:41 +0000
Received: by mail-yw1-f65.google.com with SMTP id i138so1144467ywg.8
 for <ath10k@lists.infradead.org>; Thu, 15 Aug 2019 14:04:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+R4DESpyDCTZ4/02fHbOI51O/W8uEbFi4iGwP/pNzHY=;
 b=C2sEMgc7qAe2bPB33YLpNdbI8pmhgwypZ0QVW0Qf1PqhSQ8BZDTd/qxK9Q92DT2yKj
 kArHBwd/mMFfN6ozgRWq62xsrpkEjTh71AOUD/5/esJwlX9jC2PHda5yXwjnJvHUpEpW
 9iI+e8S+CmF/1XJD8xT7h+OqFeFfgqtFSyIwXalWi1VhongQ7CQNbgLDrx5l5uZJyny1
 zOsX9ZBd5/jr1lMdtdWZXvYxvT5DJS1qovCIaSWeSynfnZqPO5QVw507uT7j8K163m+A
 5at+vltpAOeqJlSs4If7vT2xA7j9d0hqmKAUNPzqFG3hVDPAqktYWb6ZIe/crBs6ql2z
 o73Q==
X-Gm-Message-State: APjAAAVExCrA6T9Qp1+x28LYJqqTka5+TTIMkP3EAXUZpDiKDDo56o2z
 1A+S6N+owGgqefJvz2dJZY4=
X-Google-Smtp-Source: APXvYqz7fEvZy6Sm2rvk8VGtZJ+AorpI71niilpfuX4QYL55lDYQF0j9lQCgHV0uOFCk9Ksr1bp4hQ==
X-Received: by 2002:a81:de4e:: with SMTP id o14mr4405193ywl.369.1565903076933; 
 Thu, 15 Aug 2019 14:04:36 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id s188sm871287ywd.7.2019.08.15.14.04.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 15 Aug 2019 14:04:35 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: [PATCH] ath10k: add cleanup in ath10k_sta_state()
Date: Thu, 15 Aug 2019 16:04:31 -0500
Message-Id: <1565903072-3948-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_140438_577573_61D58D0A 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wenwenict[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "open list:NETWORKING DRIVERS WIRELESS" <linux-wireless@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QUALCOMM ATHEROS ATH10K WIRELESS DRIVER"
 <ath10k@lists.infradead.org>, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

If 'sta->tdls' is false, no cleanup is executed, leading to memory/resource
leaks, e.g., 'arsta->tx_stats'. To fix this issue, perform cleanup before
go to the 'exit' label.

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 drivers/net/wireless/ath/ath10k/mac.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 0606416..f99e6d2 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -6548,8 +6548,12 @@ static int ath10k_sta_state(struct ieee80211_hw *hw,
 
 		spin_unlock_bh(&ar->data_lock);
 
-		if (!sta->tdls)
+		if (!sta->tdls) {
+			ath10k_peer_delete(ar, arvif->vdev_id, sta->addr);
+			ath10k_mac_dec_num_stations(arvif, sta);
+			kfree(arsta->tx_stats);
 			goto exit;
+		}
 
 		ret = ath10k_wmi_update_fw_tdls_state(ar, arvif->vdev_id,
 						      WMI_TDLS_ENABLE_ACTIVE);
-- 
2.7.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
