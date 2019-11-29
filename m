Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C79D10D1D6
	for <lists+ath10k@lfdr.de>; Fri, 29 Nov 2019 08:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jaJkNY9ikaUTQJcQQ0xp1NSZZkQPVhgPxEWjCpQxH8w=; b=kRQ+geB8u/ChkD
	YABlcGQVR2v1QJ5k3i/tiPCIPtDKTKsB/L4Z4fxvutnns86YmMbbfv6rV1G3108ssKe8RvZUypf77
	mBVQMAoXvvnNU5HCeODSBLIPNGMCWvQhsSSuGqnj9YpLeJKnhzDzXz7LVEPr9JTfRNp+1Rb+mlZ2P
	yJVQJi01wGsVgJES/lK1FEX0MJwM7L5ecfMeNcN0G24t1jQRMoYhbijGEyMW2yLCC8w6akDsR4ikz
	FgIThjFSuNKUwlXg+dtHbSwEZW/n6i8dpTDLpzGntXVa/7C/RXQ2xkAX4FkvUCo4MfrM5gUjdMCod
	N6FXMBDV9A1DCm2qcfhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaanC-0001gm-JU; Fri, 29 Nov 2019 07:34:18 +0000
Received: from a27-185.smtp-out.us-west-2.amazonses.com ([54.240.27.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaan9-0001gF-3e
 for ath10k@lists.infradead.org; Fri, 29 Nov 2019 07:34:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575012849;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding;
 bh=rumz662KjdjNJ1SZfQvs+wG/DPl5sQDgKdfpuWgWoRM=;
 b=PMvk/rxitpmcO14q3oHfdaJR3AtMbwzXyI/iQmBzo8K8J5UESIyxG2DIRRHPsyI3
 PMDmskk0UP4WyUo+4tJagrtR6WGRWCj/ly/GLyAgpF1LIxLYQVRxF9Uf5+vRAw7VO48
 /oNbds6mIvkX2uzm9+qQrL7JK8P+lKBg3yMxI+Rg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575012849;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
 bh=rumz662KjdjNJ1SZfQvs+wG/DPl5sQDgKdfpuWgWoRM=;
 b=adak8Cj+p2ATWZsaYS54i+kCL1+JODdGJjS8g32TM47Yuwa3KPxF/VvvPzZBkQiY
 4QYYUfBE2SNLhcI4f2rQs6PcBd6XRlWw0h7F2CVD6hGyO22QzU0GxR5hGUHQH91Nyra
 fWhKz3umz2pozeRbzzsJOfLd14KD2/yrIOJGfQxE=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6FED6C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=wgong@codeaurora.org
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH] ath: add support for special 0x0 regulatory domain
Date: Fri, 29 Nov 2019 07:34:09 +0000
Message-ID: <0101016eb614d48f-c13bb166-f01f-41ed-b12b-332bb69e5f06-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-SES-Outgoing: 2019.11.29-54.240.27.185
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_233415_312378_A99D38FA 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.185 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Some sdio chips of rome QCA6174's regulatory domain code of EEPROM is
empty, then ath_is_world_regd will return false for this case, and
it will lead function __ath_reg_dyn_country not work, thus the regdomain
will not update for NL80211_REGDOM_SET_BY_COUNTRY_IE type, it result
ath10k set the same regdomain/reg_5ghz_ctl/reg_2ghz_ctl to firmware,
then the tx power will not changed with different regdomain's AP. The
regulatory domain code of EEPROM of some QCA6174 PCIE chip is 0x6c, it
means world wide regdomain, for this chip, it does not have the issue.

For empty reulatory domain code chip, set it to world regulatory domain
in functio ath_regd_sanitize, then it will fix the issue.

Tested with QCA6174 SDIO with firmware
WLAN.RMH.4.4.1-00029.

Signed-off-by: Wen Gong <wgong@codeaurora.org>
---
 drivers/net/wireless/ath/regd.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/ath/regd.c b/drivers/net/wireless/ath/regd.c
index 20f4f8ea9f89..bee9110b91f3 100644
--- a/drivers/net/wireless/ath/regd.c
+++ b/drivers/net/wireless/ath/regd.c
@@ -666,14 +666,14 @@ ath_regd_init_wiphy(struct ath_regulatory *reg,
 
 /*
  * Some users have reported their EEPROM programmed with
- * 0x8000 set, this is not a supported regulatory domain
- * but since we have more than one user with it we need
- * a solution for them. We default to 0x64, which is the
- * default Atheros world regulatory domain.
+ * 0x8000 or 0x0 set, this is not a supported regulatory
+ * domain but since we have more than one user with it we
+ * need a solution for them. We default to 0x64, which is
+ * the default Atheros world regulatory domain.
  */
 static void ath_regd_sanitize(struct ath_regulatory *reg)
 {
-	if (reg->current_rd != COUNTRY_ERD_FLAG)
+	if (reg->current_rd != COUNTRY_ERD_FLAG && reg->current_rd != 0)
 		return;
 	printk(KERN_DEBUG "ath: EEPROM regdomain sanitized\n");
 	reg->current_rd = 0x64;
-- 
2.23.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
