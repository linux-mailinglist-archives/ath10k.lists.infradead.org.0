Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9D91C094C
	for <lists+ath10k@lfdr.de>; Thu, 30 Apr 2020 23:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQ9oKWGer1EEG60klazLRTz6B/xOyYA6KmqeVugzQ6o=; b=hi6oKRrwn2yTz7
	Y3f8t0ZMNsWQV41QpRtxVPh/kIO2IE7bUbjWiAdb9OOex0xx8VOG8G8uUkjJ/4ZyeDcAc7SiDSPKZ
	33C4504jFtnyJA6PKN5P9WGNE++4eqvexgT9+/d3CHxeYnCuY2dF4d4Q3dRl+1p82i0QDNZ9zukKS
	V2JGFk78BzEacq3HxWOED3Uw6NuwYvNrt3M8BAE6XXuoGoLeEZ55C7/MpxMtoJtTIuTjUJ3wQpn61
	MNbfhkLjn7nrbVm95dalGDsTrJbo24CtOdK90qcqvcGXDlIyFQXNC5pm/+fBIkJttMZElQrG8N+/0
	lAZDeE7/TDrBCzfVM+fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGnH-0005Ax-S9; Thu, 30 Apr 2020 21:32:31 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGnE-00059f-2a
 for ath10k@lists.infradead.org; Thu, 30 Apr 2020 21:32:29 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MuUza-1jCBdY2bPm-00rWvV; Thu, 30 Apr 2020 23:32:02 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: linux-kernel@vger.kernel.org, Kalle Valo <kvalo@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Michal Kazior <michal.kazior@tieto.com>
Subject: [PATCH 04/15] ath10k: fix gcc-10 zero-length-bounds warnings
Date: Thu, 30 Apr 2020 23:30:46 +0200
Message-Id: <20200430213101.135134-5-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200430213101.135134-1-arnd@arndb.de>
References: <20200430213101.135134-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ccN1pTp5mmzG1V/LbfNTrOg5a2/CArUQ2I6vcwgPdfkvayXPXxD
 UcaYf0K7t7QiHPFwXmL0MAjZ8kc646dtFKMnW+OwN9WF6dNvNIuFMoXI5ZUGl5Zd7TJBjmW
 3VoU67At7c8JSqXoWPosMq5jkjGERss8vZA+5lcxJJPByBpE+bTRXi56M546CAW7xSUjDYa
 28T1892LzHqslkkRJVYWA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rCAqcLlN2Qw=:i+uJ1FCvreCnBJCFHWLH0L
 Jae4i0/9E0VTrPezIrTFvhERBWJAoPbnuZN4oa2hTMXo7r+ggwY5tsz86kKuZvRLN4rNk8AXS
 NNulXMo1lYfw2aYJa6ysZg6ZlrrYCvAcGOpOHDBLUx9A8fGn01OzURuffwY7xsJSN5cyyBRKb
 j0KSlMoiyMibqznbXADUfkYaP9IGpBBRtrXE3QZCs90SHSnBca4pi95WM2YVMcwBnWw4B3Bmm
 tBNuNn30vV9JjOxdcKfOURDIOwYYaEXdXM2DE5QrT4T8yvwJ8eBWfwUAeHPNnXZ3YzsSuTdTJ
 m1TkVnqBVNJ+K8XcFsmEGmLl3sPizRlB+gpWvSRQRNWPN/NQdFbLosAanrn12sUvsxAGV43GJ
 6kPsrNYSUvJiGaieBS2UJWyqwo1vjq2Q2itwv6Q/ViyhSlkk9QaB8vcZwZ97EJZp4HaVbNvMr
 5rE0gmlEgsv4+4EsOUFjjkkUYxfolz3C5vxV5VVTFgofEwPrntEymtbfy74KAoRhjL3SPE/7+
 WyJmtQgifvAMe+Ztx0jYMFp5sRjFxZt2+iyaPsSCDvk5kHZz2yjUrHvbPyTn55xS6Mn6vbwiz
 EhCgh9jghUmRIqnpuHOEJ2UzNAJn+KYf4jrvIAF16w7oAPxf+Yg96p2DYFyuSnfamQWLFH/xT
 Mng16ViWcUik3KWL/1+xteRAWAC3irsWeJB1puAKtpYuRXf/B9aNEzYxyTxkSSpYuBrPj0Ptd
 Jf4NES5x/eL5ax1OuDHopXar+O4y51ObCA4hGRAwKwdXSHxkp2+Sz1Xz8O3Ezj+9HmL8YvOOF
 7GAXUSkAxvlSKV96wBb/QZzzBOwiPWzSSdpxnihC5Uj/9xcTlI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_143228_410308_C53DC8CD 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
 Arnd Bergmann <arnd@arndb.de>, Erik Stromdahl <erik.stromdahl@gmail.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Kalle Valo <kvalo@qca.qualcomm.com>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

gcc-10 started warning about out-of-bounds access for zero-length
arrays:

In file included from drivers/net/wireless/ath/ath10k/core.h:18,
                 from drivers/net/wireless/ath/ath10k/htt_rx.c:8:
drivers/net/wireless/ath/ath10k/htt_rx.c: In function 'ath10k_htt_rx_tx_fetch_ind':
drivers/net/wireless/ath/ath10k/htt.h:1683:17: warning: array subscript 65535 is outside the bounds of an interior zero-length array 'struct htt_tx_fetch_record[0]' [-Wzero-length-bounds]
 1683 |  return (void *)&ind->records[le16_to_cpu(ind->num_records)];
      |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/wireless/ath/ath10k/htt.h:1676:29: note: while referencing 'records'
 1676 |  struct htt_tx_fetch_record records[0];
      |                             ^~~~~~~

The structure was already converted to have a flexible-array member in
the past, but there are two zero-length members in the end and only
one of them can be a flexible-array member.

Swap the two around to avoid the warning, as 'resp_ids' is not accessed
in a way that causes a warning.

Fixes: 3ba225b506a2 ("treewide: Replace zero-length array with flexible-array member")
Fixes: 22e6b3bc5d96 ("ath10k: add new htt definitions")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/ath/ath10k/htt.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
index e7096a73c6ca..7621f0a3dc77 100644
--- a/drivers/net/wireless/ath/ath10k/htt.h
+++ b/drivers/net/wireless/ath/ath10k/htt.h
@@ -1673,8 +1673,8 @@ struct htt_tx_fetch_ind {
 	__le32 token;
 	__le16 num_resp_ids;
 	__le16 num_records;
-	struct htt_tx_fetch_record records[0];
-	__le32 resp_ids[]; /* ath10k_htt_get_tx_fetch_ind_resp_ids() */
+	__le32 resp_ids[0]; /* ath10k_htt_get_tx_fetch_ind_resp_ids() */
+	struct htt_tx_fetch_record records[];
 } __packed;
 
 static inline void *
-- 
2.26.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
