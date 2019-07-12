Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D6966ABA
	for <lists+ath10k@lfdr.de>; Fri, 12 Jul 2019 12:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zIQS33H/v1uqIG1C9/r5dgjVI6OlXrLP8o5/fMql8BI=; b=Kx6lDmhH25wr5X
	Pt/E2hkhKAvgWl3zff7Nkqnm/mCRLcn4ISOh5Mk06m2wlEZq6GzmuZXVXEIGkRK9CcGZ0hbcHyoac
	wcJriIl2sassCD+n69IBwUC9lItLUbklTk4lxQ6pjuNT6P0xK8cXCTeWjxPt+w2ACSBKuUzNqX64W
	eodgeOxi1L+TddmuF8d0on6xCADp5KStA1j3HPP0J/wl3FBMBMP1JYoQUlEvpRgTvF8Yj0+N7IOzZ
	M2Cy5XzjEvzNtsfaqrkZY+LL/IfRewxnKIRZ+6yv1PQ3Az4l0YQRmXzparpa5TuxTB+vdb7ScYLnC
	MXmdRfpxOiDrlrGJT3iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlsUH-0002hV-Qv; Fri, 12 Jul 2019 10:09:09 +0000
Received: from mail1.bemta23.messagelabs.com ([67.219.246.3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsUB-0002gZ-FD
 for ath10k@lists.infradead.org; Fri, 12 Jul 2019 10:09:04 +0000
Received: from [67.219.246.101] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-3.bemta.az-b.us-east-1.aws.symcld.net id DB/E5-10895-83C582D5;
 Fri, 12 Jul 2019 10:08:56 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPIsWRWlGSWpSXmKPExsXi5LtOQNciRiP
 W4Mx2QYtHl44xW7xZcYfdgclj85J6j8+b5AKYolgz85LyKxJYM76dusBWMJu94ueuHsYGxi1s
 XYxcHEICqxklWva3QTlrGCWOn/3ADOFsAHJOtrB0MXJysAnoSPx+9IgdxBYRUJD4NekjG4jNL
 KAi8WTyLrC4sECQxK2Fy8BsFgFVia9TF4D18gpYS/z70cAMYksIyEv8XLGJHSIuKHFy5hMWiD
 nyEs1bZzND2BISB1+8ALOFBJQlJh15zQjRqyBxeMlv5gmM/LOQtM9C0j4LSfsCRuZVjGZJRZn
 pGSW5iZk5uoYGBrqGhka6hrqGZpZ6iVW6SXqlxbqpicUluoZ6ieXFesWVuck5KXp5qSWbGIFh
 m1LAuHIH49+Zb/QOMUpyMCmJ8k7mU48V4kvKT6nMSCzOiC8qzUktPsQow8GhJMH7NEojVkiwK
 DU9tSItMwcYQzBpCQ4eJRFenWigNG9xQWJucWY6ROoUoy7H2u1LFjELseTl56VKifP6ghQJgB
 RllObBjYDF8yVGWSlhXkYGBgYhnoLUotzMElT5V4ziHIxKwrxGIFN4MvNK4Da9AjqCCegIVT8
 1kCNKEhFSUg1MTUtmis058Edsp0gf7z3uA6bCU9mTGyqSQs8k3b+wKWlTGtvVzuki7183rX06
 N7Mo2dXK6IFOSCfvnjielq4TPHyyov877be+ZuWefXrRPPbcvc4R2V1f5H+Y7XRMvVvDxblu2
 sZtU7f/fzH1Udwvh0mKP0Jm+vWpiV2fMfnhta36/HL3jV4FZRrVebw8d5hjh0F2782OGcZJR8
 4vnbVXVSBJ5UPaxebvjrfvdqrv/FgndpqFoenDrOUrRR4avHuRHndfyKvBYr/FWpdY/8SnAvH
 z0iwz1IoeV9uteOp1+NZW+UTJsKYpook5jyf1F6xWl/j1Lzq0J3nLvVAeVbW8KPmvHyRMVm//
 Jf1eZIuSEktxRqKhFnNRcSIAW3QlUGIDAAA=
X-Env-Sender: Isaac.Hermida@digi.com
X-Msg-Ref: server-3.tower-385.messagelabs.com!1562926135!1490048!1
X-Originating-IP: [66.77.174.16]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.43.9; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 24681 invoked from network); 12 Jul 2019 10:08:56 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
 by server-3.tower-385.messagelabs.com with ECDHE-RSA-AES256-SHA384 encrypted
 SMTP; 12 Jul 2019 10:08:56 -0000
Received: from MTK-SMS-XCH04.digi.com (10.10.8.198) by MCL-VMS-XCH01.digi.com
 (10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.439.0;
 Fri, 12 Jul 2019 05:08:55 -0500
Received: from DOR-SMS-XCH01.digi.com (10.49.8.99) by MTK-SMS-XCH04.digi.com
 (10.10.8.198) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 12 Jul
 2019 05:08:55 -0500
Received: from log-cln-ihermida.digi.com (10.101.2.100) by
 dor-sms-xch01.digi.com (10.49.8.99) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 12 Jul 2019 12:08:53 +0200
From: Isaac Hermida <isaac.hermida@digi.com>
To: <ath10k@lists.infradead.org>
Subject: [PATCH][master/pending] ath10k: assign new interfaces type to parent
 type
Date: Fri, 12 Jul 2019 12:08:46 +0200
Message-ID: <20190712100846.11158-1-isaac.hermida@digi.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Originating-IP: [10.101.2.100]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_030903_600073_51BFC873 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.219.246.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This is needed to have the AP mode working for SDIO.
Tested with lastest master/pending code on a QCA6564 chip with firmware
firmware-sdio-6.bin_WLAN.RMH.4.4.1-00011-QCARMSWP-2

Signed-off-by: Isaac Hermida <isaac.hermida@digi.com>
---
 drivers/net/wireless/ath/ath10k/mac.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index e43a566eef77..2c4f8da98b24 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -5150,6 +5150,9 @@ static int ath10k_add_interface(struct ieee80211_hw *hw,
 	arvif->ar = ar;
 	arvif->vif = vif;
 
+	// assign type of the new interface to the parent type (SDIO, PCI, etc)
+	ar->dev_type = arvif->ar->bus_param.dev_type;
+
 	INIT_LIST_HEAD(&arvif->list);
 	INIT_WORK(&arvif->ap_csa_work, ath10k_mac_vif_ap_csa_work);
 	INIT_DELAYED_WORK(&arvif->connection_loss_work,

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
