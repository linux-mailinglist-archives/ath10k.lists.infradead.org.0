Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 965BFF6FB8
	for <lists+ath10k@lfdr.de>; Mon, 11 Nov 2019 09:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sKDz705++XGG315wFcLAKuTKOlzFSq/LDHFF1hvLEEg=; b=ByNPELtFYyktJc
	Alui7OL1gmkrGRamGj7CXmnY3Aj6HzGhUMeqzpfRh9xAtysCpZvl6Aqn8KyjVtFOcNz+sOkrPccrL
	VGawOITkwOXPt3VOcow3WhGBF0YEdAGaF3aW7Vk04Sn40p9XmJmxPZ4zB0K12cwRtXuziDmq52scc
	EfxvgarOhL8nT+nKH0OgAgUmcBnM3ZC/D5ihOm4NzC21qj5Lt1OAO2cz79MERZKzoLtlYEMtyhk7s
	Z42v8i+m8cJKy3bx/r53aVEugUma2wWjhWfE2qC4J5VqRZ4LO9+8zDXQNbQMLs0rYNwB9N0Ajqxxw
	eTEMV2xJ0970qJqnJRpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU566-0005y5-1E; Mon, 11 Nov 2019 08:30:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU562-0005xh-S9
 for ath10k@lists.infradead.org; Mon, 11 Nov 2019 08:30:52 +0000
Received: by mail-wr1-x442.google.com with SMTP id e6so13643401wrw.1
 for <ath10k@lists.infradead.org>; Mon, 11 Nov 2019 00:30:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vfYbEgAY+sR3WMegjSQALh1Z+ZR76lirPNOK7ye15WI=;
 b=gjzRX6FElRGF2YiXqGnW+70KStai+MSuuEbnT/GlxVjUBZuTVA9LKPg6tWbrGNg651
 dWWXPy9d8C43yvFZfkXGzxaa/hbVAYfI4j8c1VbvjlErhs1J8NUE9SKGGEB4g9E+va2G
 jPaJPzsFcO/Kmy5YR60JYR5qwqGawaCxj/+VtGy+G4uWyrvdxL/8AleBLVuZpwAdVTMx
 LYA+sK+bNaoxVmO5inDnR7pf8J8vZRWVZMI/8v32X/fIFkADtu7Ct+7b7zNBDkOODb0Q
 php0LQdre0UTPokV0wsHkCMTQRmE9l2jcY5Zaq6gz1W9ebZ2grrPqzPbGAn7xKIj/dj0
 J2CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vfYbEgAY+sR3WMegjSQALh1Z+ZR76lirPNOK7ye15WI=;
 b=TvzujVcSSSxEHwqGHYvzPZJSG+mXJQmXeu+RsVPdIjysyten8WwAk7BJE0JTs8oJ+t
 HhKNp0x+s5DngfitqA0RkZV+RJmw7ekLops0fF3doQSLqAY5HzQ1uB2hGXGyd76PqWcR
 cQ7oTF3gE0MtzwX72iixsiByJP+k7jTDfILaLv2ZjFG5HE9n+ikDP2xh0XsumovmY5+y
 4GKFuzoS0wZDHznRX+SFFICdQPtYGtyMiV8ATaJMFa5clNpdgv+WGSjNM96gNLKC7Ger
 Xu/XD5z6QPOSXl57Vmapq0yZ33zKKfcr7FsVeyO/mLYF756kIcaK+YQQSEuQUHEqrfvK
 iekQ==
X-Gm-Message-State: APjAAAUSMVFck8NPu5nsmRpBaOQwdc9/fNtmUg3NoDgYkA3v4bL9vQPd
 9XBZ+4oVEiXSWg4Qnj0TdQA=
X-Google-Smtp-Source: APXvYqz9QuOoHzXr9dxaAs1TYOGl6ilw72R4moECg96uYMmSQezS69Nck4LCtXSgFstLqvbSLuwoGg==
X-Received: by 2002:adf:e5c5:: with SMTP id a5mr20580552wrn.103.1573461047691; 
 Mon, 11 Nov 2019 00:30:47 -0800 (PST)
Received: from localhost.localdomain ([193.27.220.66])
 by smtp.gmail.com with ESMTPSA id r2sm4146713wrp.64.2019.11.11.00.30.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 00:30:46 -0800 (PST)
From: Eduardo Abinader <eduardoabinader@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH] ath10k:mac: disassoc dbg msg after return check
Date: Mon, 11 Nov 2019 09:30:40 +0100
Message-Id: <20191111083040.16824-1-eduardoabinader@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_003050_934908_0565FE35 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (eduardoabinader[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Eduardo Abinader <eduardoabinader@gmail.com>, ath10k@lists.infradead.org,
 kvalo@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Signed-off-by: Eduardo Abinader <eduardoabinader@gmail.com>
---
 drivers/net/wireless/ath/ath10k/mac.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index 5e3450cfb07b..038d5c27bed7 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -6786,13 +6786,13 @@ static int ath10k_sta_state(struct ieee80211_hw *hw,
 		/*
 		 * Disassociation.
 		 */
-		ath10k_dbg(ar, ATH10K_DBG_MAC, "mac sta %pM disassociated\n",
-			   sta->addr);
-
 		ret = ath10k_station_disassoc(ar, vif, sta);
 		if (ret)
 			ath10k_warn(ar, "failed to disassociate station: %pM vdev %i: %i\n",
 				    sta->addr, arvif->vdev_id, ret);
+		else
+			ath10k_dbg(ar, ATH10K_DBG_MAC, "mac sta %pM disassociated\n",
+			   sta->addr);
 	}
 exit:
 	mutex_unlock(&ar->conf_mutex);
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
