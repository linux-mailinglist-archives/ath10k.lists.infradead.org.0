Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9FA1D5B71
	for <lists+ath10k@lfdr.de>; Fri, 15 May 2020 23:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PynxH1IaC5SBdVoB5uR3ReTbNsx+nqyk0yeXsXU3gY=; b=A/zCTzVuzAUzyi
	YLU6vq40Zwnj0kNjERIstEVpfUDNLoC/+RRVGWdHMwILyO8M1m+9LPxxLu8HyoefePiaAQpJ15aut
	Qb9+Sy+pteII4SGbsafKK6QN7AsBNRIQPWjDzzKFGo+s/QoyqOb0QeW5r6qX/DQVS6m4exQDWGaQX
	pPyqU5ssNanY7/FuM5PmZ1XyiwXfZTU2bqTz7Uc3xOjqqekWvsYy3Rxr63z/ehkpGy5C/49ooBPfG
	IzM4CGAmDwl24kolCUXMLHCm4S8awjeb1KIyW2NVznO/oOtcGLlaf0URkTfmOrphjnhbvyzZni8W1
	5ez+C55UNpO6jRgXv4RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhtN-0001a4-KB; Fri, 15 May 2020 21:29:17 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhtI-0001X7-Rs
 for ath10k@lists.infradead.org; Fri, 15 May 2020 21:29:14 +0000
Received: by mail-pl1-f195.google.com with SMTP id f15so1436808plr.3
 for <ath10k@lists.infradead.org>; Fri, 15 May 2020 14:29:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aC7L6/f42/gPjIDsH2AkyT3HK+i3vctnLudoDWO4A04=;
 b=iWRZgJQegl0kliN5cg68sGSA2c4vyEu+UtPoh9nzK8KOW5plGDQ5hUY7h5/ng+uLbv
 MbWU7jMLidLLDPQJGtIIPSUAeLc/7+nCPf2t45qy/0Mh5uppeVUngFl5YwsYH7G0pO0D
 ZirJX2KmuYHmm0d4beOCAQlo+/0dUzijIRgqAGLvXKo6Grx+A/hjKd8Dsl+lLEomeOW8
 6y0yVZ6sZXJrVQosEeAj25Gh6xyqrL3PjryxrqvLv6tDmlMpd5xjDfcCIkflJwT01awq
 QICr0qGyQAauvA1DEcbi2R3SeoAqpgmcW5UwalUfP0Bq0+xrWP9rNCWusSHHxP5AJ/So
 72Rw==
X-Gm-Message-State: AOAM531Oe4htD32fdgukKfD0COWGZ2SNaoqg0K2lCUqIRpZsRjh9uNf3
 1AKh9EfgGR9t1qoYeLNxwis=
X-Google-Smtp-Source: ABdhPJxXNou50yIHSh6fq7UacJSKWUh4Fh8iActeIPzYhcfbgAV9CeFNZwMPi6ZjkC+/+JSXSaCiwQ==
X-Received: by 2002:a17:90a:d818:: with SMTP id
 a24mr5616179pjv.75.1589578146344; 
 Fri, 15 May 2020 14:29:06 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id w190sm2302171pfw.35.2020.05.15.14.28.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 14:29:04 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 42D5442376; Fri, 15 May 2020 21:28:50 +0000 (UTC)
From: Luis Chamberlain <mcgrof@kernel.org>
To: jeyu@kernel.org
Subject: [PATCH v2 13/15] ath6kl: use new module_firmware_crashed()
Date: Fri, 15 May 2020 21:28:44 +0000
Message-Id: <20200515212846.1347-14-mcgrof@kernel.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200515212846.1347-1-mcgrof@kernel.org>
References: <20200515212846.1347-1-mcgrof@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_142912_899142_094D9B1B 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 bhe@redhat.com, ath10k@lists.infradead.org, tiwai@suse.de, mingo@redhat.com,
 dyoung@redhat.com, pmladek@suse.com, keescook@chromium.org, arnd@arndb.de,
 gpiccoli@canonical.com, rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, kvalo@codeaurora.org,
 netdev@vger.kernel.org, schlad@suse.de, linux-kernel@vger.kernel.org,
 Luis Chamberlain <mcgrof@kernel.org>, akpm@linux-foundation.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

This makes use of the new module_firmware_crashed() to help
annotate when firmware for device drivers crash. When firmware
crashes devices can sometimes become unresponsive, and recovery
sometimes requires a driver unload / reload and in the worst cases
a reboot.

Using a taint flag allows us to annotate when this happens clearly.

Cc: linux-wireless@vger.kernel.org
Cc: ath10k@lists.infradead.org
Cc: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 drivers/net/wireless/ath/ath6kl/hif.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/ath/ath6kl/hif.c b/drivers/net/wireless/ath/ath6kl/hif.c
index d1942537ea10..cfd838607544 100644
--- a/drivers/net/wireless/ath/ath6kl/hif.c
+++ b/drivers/net/wireless/ath/ath6kl/hif.c
@@ -120,6 +120,7 @@ static int ath6kl_hif_proc_dbg_intr(struct ath6kl_device *dev)
 	int ret;
 
 	ath6kl_warn("firmware crashed\n");
+	module_firmware_crashed();
 
 	/*
 	 * read counter to clear the interrupt, the debug error interrupt is
-- 
2.26.2


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
