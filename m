Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6791E671B
	for <lists+ath10k@lfdr.de>; Thu, 28 May 2020 18:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkJIKN4S7Ua6ThumZnTAUyo7AeE+BNetYmwv3DSd9i8=; b=Q+LpZBu/hZDFk9
	zZDy05VpzL7N4qYK8MaR82lGh5elKQsGuIjbHAWqe1Yz5xqLBs1p3ELog0zXsOyY92Z/PJA+RdRTj
	xRVwWc3AU8KKrgkUsLZknwZ+0naz4mKBY0W29VQPvsfd6VusVfGiic/3eaMq0NtaSH2O8LeGvQZdc
	nRzrGbzfoDUkYKLXco5UZwQOrWqpihU/nSkatwK6qm23evr2k62Hh9Z9XLyL0xDLUAMViXUI4u8b8
	slvd/pB5L7mmQEA6p+cJeE85LxluTgFn4SWjphuTEoLFPuc66E1w9tiWhCzFGsnClaCjcw3gF+LxS
	E08QBpxWJmJZvBjGxtfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeL5I-0001sY-AU; Thu, 28 May 2020 16:08:44 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeL5F-0001s9-49
 for ath10k@lists.infradead.org; Thu, 28 May 2020 16:08:42 +0000
IronPort-SDR: Bdn0/FfFJuGDIx5sd3Gen0pwcyROa27/XAg4gn/2XtegQwz5QXjI/km32CGvvfyheFAza/FRw2
 3YMVhRhHNvaQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 09:08:40 -0700
IronPort-SDR: ouqsrFv6AgybQKGo1U1XW6HKfgxPsRTnuFbVWCvcIFMWf39OaHORG8nGXWYVU55AKuhrWztWGE
 69FAqfIbm+kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,445,1583222400"; d="scan'208";a="443005715"
Received: from lkp-server02.sh.intel.com (HELO 5e8f22f9921b) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 28 May 2020 09:08:37 -0700
Received: from kbuild by 5e8f22f9921b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jeL5B-00009t-2u; Thu, 28 May 2020 16:08:37 +0000
Date: Fri, 29 May 2020 00:08:29 +0800
From: kbuild test robot <lkp@intel.com>
To: Carl Huang <cjhuang@codeaurora.org>
Subject: [RFC PATCH ath6kl] ath11k: ath11k_mac_id_to_pdev_id_ipq8074() can be
 static
Message-ID: <20200528160829.GA50950@3f49cb9714f8>
References: <202005290059.xMptJizM%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202005290059.xMptJizM%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_090841_206212_88A089D0 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kbuild-all@lists.01.org, ath10k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


Fixes: f4e7ef9fc04c ("ath11k: setup QCA6390 rings for both rxdmas")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 hw.c |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath11k/hw.c b/drivers/net/wireless/ath/ath11k/hw.c
index 65cae23d39481..1f59867b67b02 100644
--- a/drivers/net/wireless/ath/ath11k/hw.c
+++ b/drivers/net/wireless/ath/ath11k/hw.c
@@ -205,22 +205,22 @@ static void ath11k_init_wmi_config_ipq8074(struct ath11k_base *ab,
 	config->twt_ap_sta_count = 1000;
 }
 
-int ath11k_mac_id_to_pdev_id_ipq8074(int mac_id)
+static int ath11k_mac_id_to_pdev_id_ipq8074(int mac_id)
 {
 	return mac_id;
 }
 
-int ath11k_mac_id_to_srng_id_ipq8074(int mac_id)
+static int ath11k_mac_id_to_srng_id_ipq8074(int mac_id)
 {
 	return 0;
 }
 
-int ath11k_mac_id_to_pdev_id_qca6x90(int mac_id)
+static int ath11k_mac_id_to_pdev_id_qca6x90(int mac_id)
 {
 	return 0;
 }
 
-int ath11k_mac_id_to_srng_id_qca6x90(int mac_id)
+static int ath11k_mac_id_to_srng_id_qca6x90(int mac_id)
 {
 	return mac_id;
 }

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
