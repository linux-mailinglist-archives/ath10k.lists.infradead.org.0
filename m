Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D527518987
	for <lists+ath10k@lfdr.de>; Thu,  9 May 2019 14:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=shZqD7twhV8aGWJC1yzrPi7PBF0azAQFD5ENjAAHvi8=; b=luT
	/REefi41pFrqhuY3s/cuDC6PsqosNqf12o8kgvTU5zTRvdhtEpK/+d9qICeWHRqyrwicob19gVn9V
	IV+Rivvkz/aHVj6D4pKBsg3Y30NyhMHu7rBoluTqvqfs3JlyIjnlZ7lrwR3hjXXSeqeWt9VPsDbUi
	v8Odan+VzGz0fh0W2vMiV53QeDV+CxpHZggz1/m6QpsjilfT+ksHHuao2LRW+5Z6cdiEfLBbZrSvB
	X9HMYNvZF+EJxhg1M6Da2VdyY2oQ1DrOdkGEATai4J3GqrG9dgsD9hQMHlBxmPJu1/Anck1uDjA6g
	AMDg+lISzN0vWfOdoWngRLnf6ql3POQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOhxM-0006J8-1u; Thu, 09 May 2019 12:15:24 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOhxH-0006Ik-SX
 for ath10k@lists.infradead.org; Thu, 09 May 2019 12:15:21 +0000
Received: by mail-qt1-x844.google.com with SMTP id r3so2124619qtp.10
 for <ath10k@lists.infradead.org>; Thu, 09 May 2019 05:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=IKMDkwdrLcqX/qesr5m3IU/imK5EeBRe8xlw3bBhjGk=;
 b=h721oY8UqCUOn6c8xbqobJgJFx8EXnnkOiGxFsk0mpSdpKmYXgJP67riWL1V3t1n2U
 uLFiEULrv4VU9Ttn0mPYeMbwKIxxExpVurE1e6UYhC+vdmg7wBGbhgRhLFIQtvEd45D0
 EP9lCDzmd2NXLngNM3N77rVk9caVAfBSMWZUTd1xmXmTMjsNM8iyuyw+U/1nhTPv+0EK
 ZBa/ZH+wgQWBJ8gbw5yluE8mvDO5AG9+NTbb+b72Z+98L5KvldRpSPLQeXW+4MfC1dsA
 r8XlkFegStSyh9MK7rvGASimjFnLSFbQrxyIJ/dELyQWtu5Hrtg8GI4/x6q9qd5UdZuv
 IyJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IKMDkwdrLcqX/qesr5m3IU/imK5EeBRe8xlw3bBhjGk=;
 b=lo1gnuA3HiCUXZppa2jbXnK0ZGK/dq0vBm0nNQ129fZLPdBLg53OrflLo9ttTDbLlJ
 Je9GLZQF1bCeXHP5JCw1+WdLc8NpJCk86yusC21CiMA3gfl3UNhRnR30iWaSjbxkxOYq
 /JPhns0ii34jKv53iYl/RBIEv/av3a+YfA/EbMQkHNheWXTtbpyot1BchinVxeObrBNa
 j4qXjHAumR0yRmF+NG69Wsw5UDi+myrDsia6SPU57k/BjW2AfzI6tPLXoQxkvThabOXL
 idgLt6kDYkYrC7O83p3UtHPn6dm/dOnKWvr1+r08jTJTqqZG3hdygC8Ud47qfP4icwqE
 zLBQ==
X-Gm-Message-State: APjAAAUzR373lzN0SL2jAPmkQdcrR3xGgSkSPlcwLccUuS55Ak5/Qirt
 pyTHxKaIT/hv50fhY+tyEIY=
X-Google-Smtp-Source: APXvYqwqSfGjDRb3AxYDUp1+tJP8NCNud6YMOtgVKmQl+6U2MiJe0ROsEKCnWIG0ELTffiBXwDg/2Q==
X-Received: by 2002:ac8:24cf:: with SMTP id t15mr3325992qtt.112.1557404117947; 
 Thu, 09 May 2019 05:15:17 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id
 76sm980563qke.46.2019.05.09.05.15.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 05:15:17 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: kvalo@codeaurora.org
Subject: [PATCH] ath10k: Change the warning message string
Date: Thu,  9 May 2019 09:15:00 -0300
Message-Id: <20190509121500.4730-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_051519_946514_59208BB6 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: andreyknvl@google.com, Fabio Estevam <festevam@gmail.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 gregkh@linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The "WARNING" string confuses syzbot, which thinks it found
a crash [1].

Change the string to avoid such problem.

[1] https://lkml.org/lkml/2019/5/9/243

Reported-by: syzbot+c1b25598aa60dcd47e78@syzkaller.appspotmail.com
Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 drivers/net/wireless/ath/ath10k/usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/usb.c b/drivers/net/wireless/ath/ath10k/usb.c
index 970cf69ac35f..a3ecf7d77949 100644
--- a/drivers/net/wireless/ath/ath10k/usb.c
+++ b/drivers/net/wireless/ath/ath10k/usb.c
@@ -1016,7 +1016,7 @@ static int ath10k_usb_probe(struct usb_interface *interface,
 	}
 
 	/* TODO: remove this once USB support is fully implemented */
-	ath10k_warn(ar, "WARNING: ath10k USB support is incomplete, don't expect anything to work!\n");
+	ath10k_warn(ar, "Warning: ath10k USB support is incomplete, don't expect anything to work!\n");
 
 	return 0;
 
-- 
2.17.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
