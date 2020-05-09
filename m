Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA271CBD6B
	for <lists+ath10k@lfdr.de>; Sat,  9 May 2020 06:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOesBF7zjq9RAbU9Cq99s63LXIPpjTSicRR5x+PAVC4=; b=mP3ZwM7o7Wj+i5
	zTnS6U4T5G93W/1J2KZ1cXnpGZXMU7Ql7UZuNwW5bX/Y4Shk5ApDqYIETjuez2YjZJ4zPDqbilmdn
	ervxJ3TaI8FQv7uWCvKPhf/rsXRkPD8DMlE4+pnMie3mEW3LYWkWlKf0DQ0BWLu55c6BK8LZGGfyr
	NUQMM3nkIpR3hO0XFceGfNQKnPBAUm868Z54yftKlDtLRaCvX6j74Nqi6hU0WQ1zwYWyuZUyDpjHT
	EbCi4CCtRwrVAz9sZBoxIHpVpEjCdqNJJv5gWsGcZf0sF1GQl79rng3ZTt+fHCWYHJKSzNpVjsevN
	Gd26cBGCZY5DuG9xkRXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXHDv-00056G-K8; Sat, 09 May 2020 04:36:27 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXHDs-00055L-03
 for ath10k@lists.infradead.org; Sat, 09 May 2020 04:36:25 +0000
Received: by mail-pg1-f194.google.com with SMTP id f23so1192662pgj.4
 for <ath10k@lists.infradead.org>; Fri, 08 May 2020 21:36:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=myNCixB4Wt/Dj4YEDmqFhw0GwtgJlBYyFB3jPG3Nx54=;
 b=kETbLO8G8o3UMd38pjfLFzZp0lH26q6t6VoAq92qMCw+KeL51QfB9Qrky+Wj8JlUNZ
 wZCXKWRC/1c+5+r79KJDpbN4d+Rxen1wlL9XNKGdx635cilYGLItC+8Obvzs1fqFspo8
 EQH8W1CuYmA5kbt1Tg/9u+5DzlIpX3mjsce/rjX0YnjhS3Y2N8UNmP5SuH+jI/3W5Y/F
 fv5Rdk0ewGbjWEHv3xJkTHdEPJkltwlU3TCtt9hiy/41ThjkXLMs5Zc5DG/8huCf/GRV
 +wBI0EFm2Hlg7MjNNlj2lc5RvpkNvXcou8YSek/ZVK08iOSgumnosGFmskR96vc6/dZH
 2U6A==
X-Gm-Message-State: AGi0PuZwsSra6fMUK6X8/pfyLFFvHbDANQIJiNR188JaVoGXY6uPJ8cc
 CvokAT8Pgg27J6nfUC8tyDM=
X-Google-Smtp-Source: APiQypLM8elFsSmsIb97VrDyhu+XcSDHVdS0mODbH0OjwWueTY6Rt/ao0SdaeJu6GXa/+IQBQp9rMg==
X-Received: by 2002:a63:1820:: with SMTP id y32mr4836345pgl.182.1588998977066; 
 Fri, 08 May 2020 21:36:17 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id h6sm3719180pje.37.2020.05.08.21.36.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 May 2020 21:36:15 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 5F7E742340; Sat,  9 May 2020 04:36:01 +0000 (UTC)
From: Luis Chamberlain <mcgrof@kernel.org>
To: jeyu@kernel.org
Subject: [PATCH 13/15] ath6kl: use new module_firmware_crashed()
Date: Sat,  9 May 2020 04:35:50 +0000
Message-Id: <20200509043552.8745-14-mcgrof@kernel.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200509043552.8745-1-mcgrof@kernel.org>
References: <20200509043552.8745-1-mcgrof@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_213624_040953_F377F9E4 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
2.25.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
