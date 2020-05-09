Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8445B1CC124
	for <lists+ath10k@lfdr.de>; Sat,  9 May 2020 14:07:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oH9FnE8V6oY80Zlz0++Xm2LNsIYElOBotaN3j+mRJsE=; b=kZp8qd2dUo61ua
	Codki+g0RYBZ1atSTY/CVtOt/yUSXwFhLsbQP1X09laOrd6HMJUgozeQmWYuY3hrVWJXuKWqojSUn
	2UIQJkyDHyOP20vx1diowHyfxso0lpIlVEt3FR+lb1qoUKBILrmpj1LD7Mby9LnCqSy6m+RT8+nNh
	5apGbWhnnGBl96pxyxbMOooh3G4TyCfmq0TA74zxBpY5+C2tyONsPj3FURz9CEmc3BGgb0tBvdqug
	Vj4fZjeOMeWkIp7j+CsH2TBMxygYt3YIzZEe0D7Y7fNTU4MWZjurhyhXvvjoCqO5Fp/tW7INVNFCd
	tq7h9mfVQ5c+CyxwzBBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXOGi-0004aD-2N; Sat, 09 May 2020 12:07:48 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXOGd-0004WS-33
 for ath10k@lists.infradead.org; Sat, 09 May 2020 12:07:44 +0000
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MHWvH-1jKU520UVt-00DX52; Sat, 09 May 2020 14:07:13 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH net-next 1/2] ath10k: fix gcc-10 zero-length-bounds warnings
Date: Sat,  9 May 2020 14:06:32 +0200
Message-Id: <20200509120707.188595-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:md3rGtm9B4AL9nvSbhTd+KISJpmcfvjMjuz727nzZm2ZvFT08RI
 4X3GNiglYQmcZcXlGiFzAfI8qklVyu72RVyCSXUtfldCvePSj61BDEZlHHReaflvqiznmoE
 5HonKZMPDVDwN29blRt/Ip7sw3mul8n1tgqN9WkhOKVzXFNcOZT5DWfk95qwreYQPZT6ryz
 eD7aa3o1noCIrZFf+tmXg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xnYyufblF38=:aqdJovHTUmVD7l7sJtYi6R
 O2VyTtN8cEC5i1EHJ/QrGJTzuZeDvWHv+4wBXmOdq+vCri1/O+O8ZHnHEU62SyfrF2VyfbL40
 3urDiERgiSr77LhdpxdMwRpoS8l2vfp6FvbIf2nz4ag/rn55duaDINqQSGCsJlTA/CNQQP0jA
 l6hqytr7uwp+aJzEUwGvkOHrv83UTBoC/MSyc2w1eqkEFKPb0CpMoAFJgw60vU4nYI5YDse8p
 TENge1jYBX1cKNmDact8vq15wBMtannapu9oLNfH4+OmRHVMRyiN/hUDOEQJCQgqT0aeotHkO
 Csd33s0vb2GCnFTQRRfhulmPZikLXUglgEOJkvKdwVMgOXkbWnbjFTRbh98jb8XCzrHqAEo5c
 RtjW1gozK+Ex0mMRGBCPUX5OcpV/WjDP4LdlMpbDPHYPfw2zA0slct/rVbfh3q6Y2U45h7OFp
 T8+JCeAntbaV/B3DRDFUeW7EoheAdm4WGc+FOn1xP9r8QxDXlelhmOTDqJ6BqjIXxYl7NgZ/w
 2KPZp/Ra90JLJeLJrbK4XkYJNA3JE/YPLKLOVSlaTPT8tnn5FSOVKoQ92RVzs1qTjfk5kGREu
 J05vfQLaHM3KrUEV79aUqy6k1iOi8ZPVrYEnyGH5EKHeNEkF0SfODkaDa6HhzDqKgQO/MN8d1
 9S0A+9/C/kF+KJhNTCmScZYK6WS4xkZa9tKHHZ3MCSOXS9+FGw7oIgvrs4U+IufVz3qsAGECG
 JQiilaFIEJbIHBCoYPfe2Bq2WjwoZr+Uw83CMMw0aUvIJdeHeqv9MMZC07pzZyXotRlPTRJbz
 FEJswylkJbsUwPMFx0fF8aI6b2RjADap9Uy5S4eazZvyxlM9dE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_050743_430779_879E93E9 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.74 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Erik Stromdahl <erik.stromdahl@gmail.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, Kalle Valo <kvalo@qca.qualcomm.com>,
 Michal Kazior <michal.kazior@tieto.com>, Wen Gong <wgong@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>
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

Make records[] a flexible array member to allow this, moving it behind
the other zero-length member that is not accessed in a way that gcc
warns about.

Fixes: 3ba225b506a2 ("treewide: Replace zero-length array with flexible-array member")
Fixes: 22e6b3bc5d96 ("ath10k: add new htt definitions")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wireless/ath/ath10k/htt.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt.h b/drivers/net/wireless/ath/ath10k/htt.h
index 8f3710cf28f4..aa056a186402 100644
--- a/drivers/net/wireless/ath/ath10k/htt.h
+++ b/drivers/net/wireless/ath/ath10k/htt.h
@@ -1673,8 +1673,8 @@ struct htt_tx_fetch_ind {
 	__le32 token;
 	__le16 num_resp_ids;
 	__le16 num_records;
-	struct htt_tx_fetch_record records[0];
 	__le32 resp_ids[0]; /* ath10k_htt_get_tx_fetch_ind_resp_ids() */
+	struct htt_tx_fetch_record records[];
 } __packed;
 
 static inline void *
-- 
2.26.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
