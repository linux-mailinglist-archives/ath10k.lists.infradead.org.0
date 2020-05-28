Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4CA1E64DC
	for <lists+ath10k@lfdr.de>; Thu, 28 May 2020 16:56:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2B4dwPGkR2Bz21ILr+LcwhR1Ri0yUvApkgG0IjDLbE=; b=YVrq0lk8WD6qyb
	Hrbix3UX0QdIUcmWgXiHbTWDkUxFjbuxNjMD8GLiKKZnWK1t90s2TcLt3MZaYrOtALNlKysUW7FO/
	Mu08wJakMzZPFJ4EGMLCNwyv4xf5DEAGk5o5I5YnrOC8zpgxGHB/m221OutHYHrUeRk/cYB8pwq8E
	pakam7yKCazW8JSx0bwDR0EIAYr7ZprqNWTkCeZiGeKPlSVtY8ChM2V7sDK3BA8i8mdqXAUHkIgSv
	yDaw/z+vr8Ce9B6KLdoIIikBo8Eung8KYp/vK+9aGa6jHPpFYs8yDceanrRv/kar5OenSX4mQuBqn
	wsce7H3aFxWCMSBJEj9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJxA-0002kS-2O; Thu, 28 May 2020 14:56:16 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJx6-0002k7-7y
 for ath10k@lists.infradead.org; Thu, 28 May 2020 14:56:13 +0000
IronPort-SDR: pIsPzAX0/U2z15QAWBDi5tO2ljSnC5nFkaafCn4Z1lDnjVizoGdokoHFJU9N20pFhuo0cJbQG7
 ae4pl6cMX4pQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 07:56:10 -0700
IronPort-SDR: JFS91SI6rPCI6aLtFeWaqn7sexaJRtWZLCpc3aNaP/rMP8cpnmCIghJjMp/X86KcDsRYBKwXGE
 KUGUGmQHcPtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,445,1583222400"; d="scan'208";a="270874605"
Received: from lkp-server02.sh.intel.com (HELO 5e8f22f9921b) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 28 May 2020 07:56:09 -0700
Received: from kbuild by 5e8f22f9921b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jeJx2-00009D-Fc; Thu, 28 May 2020 14:56:08 +0000
Date: Thu, 28 May 2020 22:55:49 +0800
From: kbuild test robot <lkp@intel.com>
To: Carl Huang <cjhuang@codeaurora.org>
Subject: [RFC PATCH ath6kl] ath11k: host_ce_config_wlan_ipq8074[] can be static
Message-ID: <20200528145549.GA89558@3f49cb9714f8>
References: <202005282230.4SJMb2ms%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202005282230.4SJMb2ms%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_075612_326434_D0F5970D 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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


Fixes: 26d01bfe84cf ("ath11k: define different ce count")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 ce.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath11k/ce.c b/drivers/net/wireless/ath/ath11k/ce.c
index 212d41f7d28e8..85e94ca834a6b 100644
--- a/drivers/net/wireless/ath/ath11k/ce.c
+++ b/drivers/net/wireless/ath/ath11k/ce.c
@@ -9,7 +9,7 @@
 
 #define host_ce_config_wlan ab->ce.host_ce_config
 
-const struct ce_attr host_ce_config_wlan_ipq8074[] = {
+static const struct ce_attr host_ce_config_wlan_ipq8074[] = {
 	/* CE0: host->target HTC control and raw streams */
 	{
 		.flags = CE_ATTR_FLAGS,

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
