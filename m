Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C244F1DA355
	for <lists+ath10k@lfdr.de>; Tue, 19 May 2020 23:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1OwYa0aKt4C/YhWijQGhHyBUJOi+5MALCoK9oMv49Q=; b=I8sXDlIrkFI4LU
	ZYnhEYdA72lZyzmnlpyTCE3JPg4nuccQT//LPZr4CAkRvvm8hFg1xj0hxZQtWwAbmnm1TyeU6PMRd
	jxj4yJqRAnFuRUZ7o/88odfaCBEA8JQougDCFJruzEy8MplwJMzLJQa0YI8L1jpN629S6z0XF3YWg
	NyWqzWy3lU3NECFoa+jpJN6XwhWUNgvv77S6n3vFqyr4XEx/z6hYXfBWTo7dS0v5MDZ4BI3L2VV9C
	r8qH58SGYK8SQ7MhwvR4di2A/V73WvQhVLYtXfrrE6PWSfE9w0BrJb2Z7yLbiJAt7/uYlKHj710yy
	+rI4GDwe2Or0Ou0+GlAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb9ai-000701-DW; Tue, 19 May 2020 21:16:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb9ac-0006xv-W3
 for ath10k@lists.infradead.org; Tue, 19 May 2020 21:15:56 +0000
Received: from kicinski-fedora-PC1C0HJN.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5FE7F20826;
 Tue, 19 May 2020 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589922954;
 bh=BsSOFtmV7u1jPVJuOgFAo1ISyFJ3dm/VGxsNz+31aOU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=P+l/QP7Caz+Vwato0aIZ7fKNtE51zlgpMpSQsd0GfvW0A3K4eg911OVDEr52MNiQ7
 6JXWtncJ6risFf9z6fpmyvnU89qnHG8acFt1iU8brX8dJGMTxgeKGIevP4JlzcYeJJ
 RSrcjrxbGiTzzj232j3DIXn45/4eT7ADalrFwdqc=
From: Jakub Kicinski <kuba@kernel.org>
To: mcgrof@kernel.org
Subject: [RFC 2/2] i2400m: use devlink health reporter
Date: Tue, 19 May 2020 14:15:31 -0700
Message-Id: <20200519211531.3702593-2-kuba@kernel.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200519010530.GS11244@42.do-not-panic.com>
References: <20200519010530.GS11244@42.do-not-panic.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_141555_065063_5D96B1F5 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-wireless@vger.kernel.org, aquini@redhat.com, peterz@infradead.org,
 daniel.vetter@ffwll.ch, mchehab+samsung@kernel.org, will@kernel.org,
 greearb@candelatech.com, bhe@redhat.com, briannorris@chromium.org,
 ath10k@lists.infradead.org, derosier@gmail.com, tiwai@suse.de,
 mingo@redhat.com, Jakub Kicinski <kuba@kernel.org>, dyoung@redhat.com,
 pmladek@suse.com, jiri@resnulli.us, keescook@chromium.org, arnd@arndb.de,
 gpiccoli@canonical.com, rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, johannes@sipsolutions.net,
 kvalo@codeaurora.org, netdev@vger.kernel.org, schlad@suse.de,
 linux-kernel@vger.kernel.org, jeyu@kernel.org, akpm@linux-foundation.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

It builds.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 drivers/net/wimax/i2400m/rx.c  | 2 ++
 drivers/net/wimax/i2400m/usb.c | 5 +++++
 2 files changed, 7 insertions(+)

diff --git a/drivers/net/wimax/i2400m/rx.c b/drivers/net/wimax/i2400m/rx.c
index c9fb619a9e01..cc7fe78f2df0 100644
--- a/drivers/net/wimax/i2400m/rx.c
+++ b/drivers/net/wimax/i2400m/rx.c
@@ -144,6 +144,7 @@
  *       i2400m_msg_size_check
  *       wimax_msg
  */
+#include <linux/devlink.h>
 #include <linux/slab.h>
 #include <linux/kernel.h>
 #include <linux/if_arp.h>
@@ -712,6 +713,7 @@ void __i2400m_roq_queue(struct i2400m *i2400m, struct i2400m_roq *roq,
 	dev_err(dev, "SW BUG? failed to insert packet\n");
 	dev_err(dev, "ERX: roq %p [ws %u] skb %p nsn %d sn %u\n",
 		roq, roq->ws, skb, nsn, roq_data->sn);
+	devlink_simple_fw_reporter_report_crash(dev);
 	skb_queue_walk(&roq->queue, skb_itr) {
 		roq_data_itr = (struct i2400m_roq_data *) &skb_itr->cb;
 		nsn_itr = __i2400m_roq_nsn(roq, roq_data_itr->sn);
diff --git a/drivers/net/wimax/i2400m/usb.c b/drivers/net/wimax/i2400m/usb.c
index 9659f9e1aaa6..5c811dccbf1d 100644
--- a/drivers/net/wimax/i2400m/usb.c
+++ b/drivers/net/wimax/i2400m/usb.c
@@ -49,6 +49,7 @@
  *   usb_reset_device()
  */
 #include "i2400m-usb.h"
+#include <linux/devlink.h>
 #include <linux/wimax/i2400m.h>
 #include <linux/debugfs.h>
 #include <linux/slab.h>
@@ -423,6 +424,8 @@ int i2400mu_probe(struct usb_interface *iface,
 	if (usb_dev->speed != USB_SPEED_HIGH)
 		dev_err(dev, "device not connected as high speed\n");
 
+	devlink_simple_fw_reporter_prepare(dev);
+
 	/* Allocate instance [calls i2400m_netdev_setup() on it]. */
 	result = -ENOMEM;
 	net_dev = alloc_netdev(sizeof(*i2400mu), "wmx%d", NET_NAME_UNKNOWN,
@@ -506,6 +509,7 @@ int i2400mu_probe(struct usb_interface *iface,
 	usb_put_dev(i2400mu->usb_dev);
 	free_netdev(net_dev);
 error_alloc_netdev:
+	devlink_simple_fw_reporter_cleanup(dev);
 	return result;
 }
 
@@ -532,6 +536,7 @@ void i2400mu_disconnect(struct usb_interface *iface)
 	usb_set_intfdata(iface, NULL);
 	usb_put_dev(i2400mu->usb_dev);
 	free_netdev(net_dev);
+	devlink_simple_fw_reporter_cleanup(dev);
 	d_fnend(3, dev, "(iface %p i2400m %p) = void\n", iface, i2400m);
 }
 
-- 
2.25.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
