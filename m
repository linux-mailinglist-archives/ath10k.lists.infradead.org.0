Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5121DA354
	for <lists+ath10k@lfdr.de>; Tue, 19 May 2020 23:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xa2thLs+pJGJSxIxVZACluryK4angpylPr3zbZbFtxU=; b=LkstNe8lFRtEvV
	vN4DTUDNRZGNouhFZ9FpELlKZrT0g1vcn6uaUdaoHS3Do+oRrPgOymKCDm18Ht++rOr+8mULGrCbs
	6Rr+Pbe/p2tdXx6J+BYeV+b4u4j8ar/5hmEypPnIfVhMKs+2yzDURtWKUG0Uq9opSSLPz7pNK2X9p
	Lu7koM19QVV8vkW75SY9cqVx9LUSy7jUig9H/QZ9WAAMsyTN/05ompPqJhSQtlnnC+xisOnQ13ZLx
	RsvRVg4d7WKaLDEuMH5VDZVJzqhE33wvpzBCKjzkz7J6LCMu8VcLFL4l4DeDEMtdOEvktk8oqV2Ea
	Qi/7qiafklz6KTlF+ObQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb9ag-0006ye-L8; Tue, 19 May 2020 21:15:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb9ac-0006xf-9v
 for ath10k@lists.infradead.org; Tue, 19 May 2020 21:15:55 +0000
Received: from kicinski-fedora-PC1C0HJN.thefacebook.com (unknown
 [163.114.132.5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F10F320758;
 Tue, 19 May 2020 21:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589922953;
 bh=GCBiiHv4rqoiMSHfpHfVnIXqBOlV4WZ5kFNO/xIvb+0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pMBOhtVGkpEKrdS3IQvTsqqlUWq2yrjH0OVxOrhEQbatn8Ht0p3CeE5SmTyR4HkSO
 stOZu5LdNXWbJ4nkz+yJhMkAkNqzoppkQdh4hQaii8s16PZ338EEEBTal+chQiKhY8
 dwa2gsyphgHyjurCHyQjBcWkjja7Y7FpdLBmbAu8=
From: Jakub Kicinski <kuba@kernel.org>
To: mcgrof@kernel.org
Subject: [RFC 1/2] devlink: add simple fw crash helpers
Date: Tue, 19 May 2020 14:15:30 -0700
Message-Id: <20200519211531.3702593-1-kuba@kernel.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200519010530.GS11244@42.do-not-panic.com>
References: <20200519010530.GS11244@42.do-not-panic.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_141554_385772_3D6A1072 
X-CRM114-Status: GOOD (  15.54  )
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

Add infra for creating devlink instances for a device to report
fw crashes. This patch expects the devlink instance to be registered
at probe time. I belive to be the cleanest. We can also add a devm
version of the helpers, so that we don't have to do the clean up.
Or we can go even further and register the devlink instance only
once error has happened (for the first time, then we can just
find out if already registered by traversing the list like we
do here).

With the patch applied and a sample driver converted we get:

$ devlink dev
pci/0000:07:00.0

Then monitor for errors:

$ devlink mon health
[health,status] pci/0000:07:00.0:
  reporter fw
    state error error 1 recover 0
[health,status] pci/0000:07:00.0:
  reporter fw
    state error error 2 recover 0

These are the events I triggered on purpose. One can also inspect
the health of all devices capable of reporting fw errors:

$ devlink health
pci/0000:07:00.0:
  reporter fw
    state error error 7 recover 0

Obviously drivers may upgrade to the full devlink health API
which includes state dump, state dump auto-collect and automatic
error recovery control.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 include/linux/devlink.h               |  11 +++
 net/core/Makefile                     |   2 +-
 net/core/devlink_simple_fw_reporter.c | 101 ++++++++++++++++++++++++++
 3 files changed, 113 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/devlink.h
 create mode 100644 net/core/devlink_simple_fw_reporter.c

diff --git a/include/linux/devlink.h b/include/linux/devlink.h
new file mode 100644
index 000000000000..2b73987eefca
--- /dev/null
+++ b/include/linux/devlink.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#ifndef _LINUX_DEVLINK_H_
+#define _LINUX_DEVLINK_H_
+
+struct device;
+
+void devlink_simple_fw_reporter_prepare(struct device *dev);
+void devlink_simple_fw_reporter_cleanup(struct device *dev);
+void devlink_simple_fw_reporter_report_crash(struct device *dev);
+
+#endif
diff --git a/net/core/Makefile b/net/core/Makefile
index 3e2c378e5f31..6f1513781c17 100644
--- a/net/core/Makefile
+++ b/net/core/Makefile
@@ -31,7 +31,7 @@ obj-$(CONFIG_LWTUNNEL_BPF) += lwt_bpf.o
 obj-$(CONFIG_BPF_STREAM_PARSER) += sock_map.o
 obj-$(CONFIG_DST_CACHE) += dst_cache.o
 obj-$(CONFIG_HWBM) += hwbm.o
-obj-$(CONFIG_NET_DEVLINK) += devlink.o
+obj-$(CONFIG_NET_DEVLINK) += devlink.o devlink_simple_fw_reporter.o
 obj-$(CONFIG_GRO_CELLS) += gro_cells.o
 obj-$(CONFIG_FAILOVER) += failover.o
 obj-$(CONFIG_BPF_SYSCALL) += bpf_sk_storage.o
diff --git a/net/core/devlink_simple_fw_reporter.c b/net/core/devlink_simple_fw_reporter.c
new file mode 100644
index 000000000000..48dde9123c3c
--- /dev/null
+++ b/net/core/devlink_simple_fw_reporter.c
@@ -0,0 +1,101 @@
+#include <linux/devlink.h>
+#include <linux/list.h>
+#include <linux/mutex.h>
+#include <net/devlink.h>
+
+struct devlink_simple_fw_reporter {
+	struct list_head list;
+	struct devlink_health_reporter *reporter;
+};
+
+
+static LIST_HEAD(devlink_simple_fw_reporters);
+static DEFINE_MUTEX(devlink_simple_fw_reporters_mutex);
+
+static const struct devlink_health_reporter_ops simple_devlink_health = {
+	.name = "fw",
+};
+
+static const struct devlink_ops simple_devlink_ops = {
+};
+
+static struct devlink_simple_fw_reporter *
+devlink_simple_fw_reporter_find_for_dev(struct device *dev)
+{
+	struct devlink_simple_fw_reporter *simple_devlink, *ret = NULL;
+	struct devlink *devlink;
+
+	mutex_lock(&devlink_simple_fw_reporters_mutex);
+	list_for_each_entry(simple_devlink, &devlink_simple_fw_reporters,
+			    list) {
+		devlink = priv_to_devlink(simple_devlink);
+		if (devlink->dev == dev) {
+			ret = simple_devlink;
+			break;
+		}
+	}
+	mutex_unlock(&devlink_simple_fw_reporters_mutex);
+
+	return ret;
+}
+
+void devlink_simple_fw_reporter_report_crash(struct device *dev)
+{
+	struct devlink_simple_fw_reporter *simple_devlink;
+
+	simple_devlink = devlink_simple_fw_reporter_find_for_dev(dev);
+	if (!simple_devlink)
+		return;
+
+	devlink_health_report(simple_devlink->reporter, "firmware crash", NULL);
+}
+EXPORT_SYMBOL_GPL(devlink_simple_fw_reporter_report_crash);
+
+void devlink_simple_fw_reporter_prepare(struct device *dev)
+{
+	struct devlink_simple_fw_reporter *simple_devlink;
+	struct devlink *devlink;
+
+	devlink = devlink_alloc(&simple_devlink_ops,
+				sizeof(struct devlink_simple_fw_reporter));
+	if (!devlink)
+		return;
+
+	if (devlink_register(devlink, dev))
+		goto err_free;
+
+	simple_devlink = devlink_priv(devlink);
+	simple_devlink->reporter =
+		devlink_health_reporter_create(devlink, &simple_devlink_health,
+					       0, NULL);
+	if (IS_ERR(simple_devlink->reporter))
+		goto err_unregister;
+
+	mutex_lock(&devlink_simple_fw_reporters_mutex);
+	list_add_tail(&simple_devlink->list, &devlink_simple_fw_reporters);
+	mutex_unlock(&devlink_simple_fw_reporters_mutex);
+
+	return;
+
+err_unregister:
+	devlink_unregister(devlink);
+err_free:
+	devlink_free(devlink);
+}
+EXPORT_SYMBOL_GPL(devlink_simple_fw_reporter_prepare);
+
+void devlink_simple_fw_reporter_cleanup(struct device *dev)
+{
+	struct devlink_simple_fw_reporter *simple_devlink;
+	struct devlink *devlink;
+
+	simple_devlink = devlink_simple_fw_reporter_find_for_dev(dev);
+	if (!simple_devlink)
+		return;
+
+	devlink = priv_to_devlink(simple_devlink);
+	devlink_health_reporter_destroy(simple_devlink->reporter);
+	devlink_unregister(devlink);
+	devlink_free(devlink);
+}
+EXPORT_SYMBOL_GPL(devlink_simple_fw_reporter_cleanup);
-- 
2.25.4


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
