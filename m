Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A35C0198AE
	for <lists+ath10k@lfdr.de>; Fri, 10 May 2019 09:02:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1/32pXa9kQzDWiXgzymSHfSxZdvlb1Z3RQ64vqd/wNw=; b=Cqk
	J6xSN7cgzcDbc5+IUo6C/2qlv4ImYpNmvieMZ1LBasvYjYrnkE8Vqw1ohD2AynyZtUNsRlaLaMMVr
	96rrWi5Wnv+vvW10Fqi+VOSgROTSUXq6kgi1F4R8Mc5dn8WhhJC1gVdaQ/DvrkxrGNkrc8cACxKUL
	9WXBJS4L7UzgxIKasj3+nTwqDzYmS4ixAWAK/ipjdbZf1lNjrKXDaFrJ99HFvpRiSOKQXHnuVUZPZ
	iNJAVfwTVrfSq7SgaEyFVujGhvHb34Ay4XkzPmW3fMJ/WsVcoyrJcbiOFgb2rfqB5E/4Gr3or7NnU
	m1yVwTZmEiqu8fYreukCBgINRfgj0hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOzXj-0006N9-1x; Fri, 10 May 2019 07:02:07 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOzXe-0006MU-OT
 for ath10k@lists.infradead.org; Fri, 10 May 2019 07:02:04 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id C5EB960744; Fri, 10 May 2019 07:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557471721;
 bh=jOTxeffynwtDEKNRNC1OxZc+a8+J8mZ7VRSufbn91VU=;
 h=From:To:Cc:Subject:Date:From;
 b=bArGWL9nJ66fYJj7+WZZ3ygFZH0RM7D4Z7nht3etTIzG/CiAZ4pQonmD/cm+Hdf7E
 dLC8hd68qQXZ4xvLVQHN1+G8SCpBSA+6+NimHoDr90TFnWbjtVxQmVOPuitKptC4R7
 maq0EB1zXdUP3zOHtqVjVGRJxy3rLFnbVL611j7o=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from ybzhao-Latitude-E5440.ap.qualcomm.com (unknown [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: yiboz@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 00A8F6076C;
 Fri, 10 May 2019 07:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557471721;
 bh=jOTxeffynwtDEKNRNC1OxZc+a8+J8mZ7VRSufbn91VU=;
 h=From:To:Cc:Subject:Date:From;
 b=bArGWL9nJ66fYJj7+WZZ3ygFZH0RM7D4Z7nht3etTIzG/CiAZ4pQonmD/cm+Hdf7E
 dLC8hd68qQXZ4xvLVQHN1+G8SCpBSA+6+NimHoDr90TFnWbjtVxQmVOPuitKptC4R7
 maq0EB1zXdUP3zOHtqVjVGRJxy3rLFnbVL611j7o=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 00A8F6076C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: linux-wireless@vger.kernel.org
Subject: [PATCH] mac80211: remove warning message
Date: Fri, 10 May 2019 15:01:02 +0800
Message-Id: <1557471662-1355-1-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_000202_821912_D877C4C2 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Zhi Chen <zhichen@codeaurora.org>, Yibo Zhao <yiboz@codeaurora.org>,
 ath10k@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

In multiple SSID cases, it takes time to prepare every AP interface
to be ready in initializing phase. If a sta already knows everything it
needs to join one of the APs and sends authentication to the AP which
is not fully prepared at this point of time, AP's channel context
could be NULL. As a result, warning message occurs.

Even worse, if the AP is under attack via tools such as MDK3 and massive
authentication requests are received in a very short time, console will
be hung due to kernel warning messages.

If this case can be hit during normal functionality, there should be no
WARN_ON(). Those should be reserved to cases that are not supposed to be
hit at all or some other more specific cases like indicating obsolete
interface.

Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
Signed-off-by: Yibo Zhao <yiboz@codeaurora.org>
---
 net/mac80211/ieee80211_i.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/mac80211/ieee80211_i.h b/net/mac80211/ieee80211_i.h
index 2ae0364..f39c289 100644
--- a/net/mac80211/ieee80211_i.h
+++ b/net/mac80211/ieee80211_i.h
@@ -1435,7 +1435,7 @@ struct ieee80211_local {
 	rcu_read_lock();
 	chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);
 
-	if (WARN_ON_ONCE(!chanctx_conf)) {
+	if (!chanctx_conf) {
 		rcu_read_unlock();
 		return NULL;
 	}
-- 
1.9.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
