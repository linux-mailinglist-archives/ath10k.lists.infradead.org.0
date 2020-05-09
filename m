Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CB91CC123
	for <lists+ath10k@lfdr.de>; Sat,  9 May 2020 14:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sswNkLKCqW7z0hnZ7Sk5MmaWKgjrX28KDnMf5daADBc=; b=Nh9sPrHVRue9nJ
	EuBGYi3vb+uQu0t7h8qZMOjUTB/BIBg6YdQP/tJ384d11aDJHHpw8ijKaQxVa25Eo1Cw0kcMiO4gM
	tm8NytEzTNmKcjy2bU3RFGsuQ5UgzeEoU+DO5Si74bKpcfmGPw45wt4BUkvCZxCLO003cyElZgay3
	ssjI0Pl2QAXbPwF7qtc3t1az1JtserdH1FwY+D1blO6BGHzT7JxyGkIh+U9AzSlR/KUIHQtKrOKYW
	rJ4m7lsWC0Doc6pGZiB9emMt3Po+r3n8iwbYqwqt6b7tQoIt3nBHSKlj/qNrQBTZ5OmK3pYoxkt6g
	xNA+0qYDyw7qamjtLZxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXOGb-0004VY-St; Sat, 09 May 2020 12:07:41 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXOGY-0004Uz-EO
 for ath10k@lists.infradead.org; Sat, 09 May 2020 12:07:40 +0000
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1N7RDn-1j3u291OAv-017q80; Sat, 09 May 2020 14:07:28 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH net-next 2/2] ath10k: fix ath10k_pci struct layout
Date: Sat,  9 May 2020 14:06:33 +0200
Message-Id: <20200509120707.188595-2-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200509120707.188595-1-arnd@arndb.de>
References: <20200509120707.188595-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:PwCZxgyuJPTotwKY546enVLNSjcEZwvUHNxW+ZeWlIbFQWRywio
 zufRY0iO7HkMQ8lpmHRn7fJ7AYqhTdmqsbL4v/355PdA91ANvQzywOGv32/DXJRqAzoINys
 YI1hF8rtOMGIYhcGlOLQvSRJB+NxU1YCGGTFGdB1h3UOqf1PfcOw8D2VVKjSHwdNXuWUWqx
 wS8L4ildOaTnVsG7hvJ4g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pQykyiEsgvc=:5PhDczXHDy7IquzkJB7qTx
 /TzHKhDP4SwR+IAaOr6xcVgCWBKtTo4cZXwMyTyZSPvlnPeIDkbsJWDsJnhBuEHtt9e+HzHF4
 eRR3/J1QXBWDNRKTUKdxDCOkvg4bbkDqABbaMM0agEkDoLrnGj/f3NepIcaKGW228mgtbtu8C
 s4Kc8sFNIu4AdyYrfEStC7jccU2QsSyq2lQDMhf1wJaKrYxtwaeyfYYgbFY9OaOxBKxcUGV1w
 EkrQgy+lkZrZY8WJ0kWCZDlGYIUJB9HrAhwxVyW6dO92OemvzlrOjRAu4ZImR8V69bCoWGJJ0
 4I+wcFjVecW2davHhm4mN3QQmmCgx30e1gTSUlRTAu93V6+2vudc5QgwBUedYCI86kN+x9Beo
 r+okGwG/0QqR0UyHnC+xJ6NdK71oo4zSghPiHYtLOTPsRqNRCttYs6s7ZAndqMJfxG+uJa7uD
 NESEzJTIYhpBW+d9wbt+QRl9m0vXj8lrAHf9vExbOSGyl6br9wuyfoPpDWUhgz1zlAv7q+PcO
 /9cpPmMeDMYjKNnKDLmfAWPsUM2g5kG7B6Wl682HScUYZDjmwts9cTvjD6Wp/DiRJ2Z8plHaD
 Q7/+e5gfUd7VDBrSw4XQvm6tQFxxrkIAtoFCzZCJoyEcAZbfJ2Z5kByMuT37zVb7lzNg5EOnU
 rs2QXjHQh6HSbSnEYrSNaAAcWVYx8XStXWaz9gyzr5Rx4cJLEavX0SJPLK+nd/wCq95+XWAvi
 rUl2iiomWXVzH3yr75qsmE5QZjWp1mMkgUMPGBDDgJyh9wIi4oK/+WWnIbuMmLoUE+GSK722i
 +mzFCSq72AE9Nwq49GRlcizgTFDuZhr+DSP8QmUvBVXYM77A8Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_050738_772723_6C30F909 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.73 listed in wl.mailspike.net]
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 Arnd Bergmann <arnd@arndb.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

gcc-10 correctly points out a bug with a zero-length array in
struct ath10k_pci:

drivers/net/wireless/ath/ath10k/ahb.c: In function 'ath10k_ahb_remove':
drivers/net/wireless/ath/ath10k/ahb.c:30:9: error: array subscript 0 is outside the bounds of an interior zero-length array 'struct ath10k_ahb[0]' [-Werror=zero-length-bounds]
   30 |  return &((struct ath10k_pci *)ar->drv_priv)->ahb[0];
      |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from drivers/net/wireless/ath/ath10k/ahb.c:13:
drivers/net/wireless/ath/ath10k/pci.h:185:20: note: while referencing 'ahb'
  185 |  struct ath10k_ahb ahb[0];
      |                    ^~~

The last addition to the struct ignored the comments and added
new members behind the array that must remain last.

Change it to a flexible-array member and move it last again to
make it work correctly, prevent the same thing from happening
again (all compilers warn about flexible-array members in the
middle of a struct) and get it to build without warnings.

Fixes: 521fc37be3d8 ("ath10k: Avoid override CE5 configuration for QCA99X0 chipsets")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/ath/ath10k/pci.h | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/pci.h b/drivers/net/wireless/ath/ath10k/pci.h
index e3cbd259a2dc..862d0901c5b8 100644
--- a/drivers/net/wireless/ath/ath10k/pci.h
+++ b/drivers/net/wireless/ath/ath10k/pci.h
@@ -178,15 +178,16 @@ struct ath10k_pci {
 	 */
 	u32 (*targ_cpu_to_ce_addr)(struct ath10k *ar, u32 addr);
 
+	struct ce_attr *attr;
+	struct ce_pipe_config *pipe_config;
+	struct ce_service_to_pipe *serv_to_pipe;
+
 	/* Keep this entry in the last, memory for struct ath10k_ahb is
 	 * allocated (ahb support enabled case) in the continuation of
 	 * this struct.
 	 */
-	struct ath10k_ahb ahb[0];
+	struct ath10k_ahb ahb[];
 
-	struct ce_attr *attr;
-	struct ce_pipe_config *pipe_config;
-	struct ce_service_to_pipe *serv_to_pipe;
 };
 
 static inline struct ath10k_pci *ath10k_pci_priv(struct ath10k *ar)
-- 
2.26.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
