Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B248961ECD
	for <lists+ath10k@lfdr.de>; Mon,  8 Jul 2019 14:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zNi1OjZM8AOu5BbSROwHltkoOo0szn68itngllz7kK4=; b=Qh66DSMmKgzad4
	pETsjHqFFZfIlogCuy2sKD7OijHT2XmaCTTiGEB/XqPVAiuSrGgzRx5Vbwj49QK/5FZJXMWadnpIP
	DKXv1du0tCrdy1iDHCwVJ52iRKuIxmKtciK/hH+WexAaWYzbizfIGU7MVFwxttmYOXNjvVjhqBWwn
	alHyj8M4dimuRNrPsMkWGr0gKfGlF1gdchvVdVsV2KrLlIOdBRpwtrM//NzGH6SOBmHq/y+HBuIas
	z5cvqZPFUIfB5DAR5foxd1tJNvNWQntaZhdvJpq9jpgsqELW1omm/+CKmZueC1yBuDuFYDJzQww+8
	fV9RgO/kfQQq63PmEeZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkT6z-0004Mn-Ir; Mon, 08 Jul 2019 12:51:18 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkT6k-0004Bg-1r
 for ath10k@lists.infradead.org; Mon, 08 Jul 2019 12:51:03 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M3UIe-1hjv8o3PBC-000YS6; Mon, 08 Jul 2019 14:50:52 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH] ath10k: work around uninitialized vht_pfr variable
Date: Mon,  8 Jul 2019 14:50:06 +0200
Message-Id: <20190708125050.3689133-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:0ZEH7BLXky2hsEkFHE941e4QDy+Q0DeLq46hitjd9gIhiQjjcX3
 +rAvYpf6ObAijkvutVOtvfqk9eYOtLienzGiIpbTDGnsqZCSITBIvrTu4jxz+YdUu9QRHv3
 QxLpMOZsqLWoMbZNFdcxIW5SWLT43shXwIKV5kDoF+g5+atQdjJ2NFU8SP3cT2qvXakgjww
 UX0MmUnxTukQk/l0l/CAQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3Ejh7jG9+JE=:u6LjctvG2zwbsJ6T/k0FHq
 dgqfAC28oMIrAdI3ri95sJPS96jeTdpTsFSyNNrt79K6b7RXwdm+hovOFSNbRPvheL0RpUFUr
 j33VnbNkyz58HRB+debVGYYWUqw/JneG8hlo5nRkC6g0ckC5rYr/7ktSnqJobABl9N4vywlX7
 WPFNf6J2MZxb2LYhIe0/MJU4gacUZwBgHQ6kW9d7KTlOARuEAPgoGkGTdXQemvGlmEs0VvDXL
 luJHOTs2LjvmZ/gkHlLLTLEY5Az7G+BGPlYV7rcQMSxo+0Uy+Gv61HjOnH3CqmLcLdZPu8g/t
 13EK9BIyqmBZzHDXg/eLkt5mGLnF79mG0PnsM12rdaFZGwv1jv28lPeshJnX7myAhWbnXCXed
 6beGwDbuM1XZijsv6AkwOvMFGDoYm+5s2j52yBEkuQAeaX3gpTF55v84GlktgJba9jnAdovC1
 cEssA0JM4U0bIW9oFZfiKkTollfb1O4ZME96c8eUJ6p6F0fMu95ciNyExKgWuDiGSDlS406+K
 FiLLyENPaGPB1+EB0f4ma33zXTdn9guc0/w8GBiFS2OOmSwxUEKvfxiLVFd73Dk/b3PnQg38V
 N5dBlWtqXW+VT3xvWgmL1Lr5ZxuEqzZ0yIF/vjUq0j61xk0qqlHJhld0w5bcrJAXH2+w0XLeC
 PRGctYgwnh6YOqY2YZse3yQvX4Zx0i8eeAyEJBtbhKrhJgUkWpnsRbt4XSXH5ZB+IJKITvJnC
 ftlKEzqC3l2XxINHW4aGdJRHqZSfRuy37pFKrg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_055102_390860_8AB1338E 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sriram R <srirrama@codeaurora.org>, Arnd Bergmann <arnd@arndb.de>,
 Miaoqing Pan <miaoqing@codeaurora.org>,
 Pradeep kumar Chitrapu <pradeepc@codeaurora.org>,
 Balaji Pothunoori <bpothuno@codeaurora.org>,
 Brian Norris <briannorris@chromium.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 Rakesh Pillai <pillair@codeaurora.org>, Wen Gong <wgong@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

As clang points out, the vht_pfr is assigned to a struct member
without being initialized in one case:

drivers/net/wireless/ath/ath10k/mac.c:7528:7: error: variable 'vht_pfr' is used uninitialized whenever 'if' condition
      is false [-Werror,-Wsometimes-uninitialized]
                if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/wireless/ath/ath10k/mac.c:7551:20: note: uninitialized use occurs here
                arvif->vht_pfr = vht_pfr;
                                 ^~~~~~~
drivers/net/wireless/ath/ath10k/mac.c:7528:3: note: remove the 'if' if its condition is always true
                if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/wireless/ath/ath10k/mac.c:7483:12: note: initialize the variable 'vht_pfr' to silence this warning
        u8 vht_pfr;

Add an explicit but probably incorrect initialization here.
I suspect we want a better fix here, but chose this approach to
illustrate the issue.

Fixes: 8b97b055dc9d ("ath10k: fix failure to set multiple fixed rate")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/ath/ath10k/mac.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
index e43a566eef77..0606416dc971 100644
--- a/drivers/net/wireless/ath/ath10k/mac.c
+++ b/drivers/net/wireless/ath/ath10k/mac.c
@@ -7541,6 +7541,8 @@ static int ath10k_mac_op_set_bitrate_mask(struct ieee80211_hw *hw,
 								&vht_nss,
 								true);
 			update_bitrate_mask = false;
+		} else {
+			vht_pfr = 0;
 		}
 
 		mutex_lock(&ar->conf_mutex);
-- 
2.20.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
