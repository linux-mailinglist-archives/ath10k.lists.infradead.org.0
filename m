Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C52C11FCC
	for <lists+ath10k@lfdr.de>; Thu,  2 May 2019 18:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Da19TNeZNUOZzzxrOtRhGSz/c71on3C8fEvCxH+djX0=; b=btHTfCbo3Cd/Bb
	DFmDRL6Mj52PQpftXz0OGMklFGN3c/dKKTHv6JJCED8t7HvFkpIFEXE76JB7D382/F6sbotZmV7Ey
	eOtEdQgeLSCb9hYoQVUhdq1t80THZPZkjQW2/5AZgR+zVwOEnGwWNkbRFlqIlyZKzRuyaB7VyzK9S
	25qZiH2spFpvyXVYwRgn2rtVf9Y39iSWT1c1hCrVe5y3FLt69UTxC2ALTvxLJC1K5Ed4jCCq3L9i2
	h7NDmFBiRqikg6hZQU39JqC3oWlh3dywf0g9G5edOfEA6a84mWPg/HuaNoTPa60G08+ueD6fNgwuT
	pfsZhUC6zR+/UvFeFgEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEJi-0004Ns-DK; Thu, 02 May 2019 16:12:14 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEJe-0004My-4J
 for ath10k@lists.infradead.org; Thu, 02 May 2019 16:12:11 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 09:12:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="228698428"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 02 May 2019 09:12:08 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hMEJb-0005oG-IR; Fri, 03 May 2019 00:12:07 +0800
Date: Fri, 3 May 2019 00:11:27 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [RFC PATCH ath6kl] ath11k: ath11k_wmi_tlv_parse_alloc can be static
Message-ID: <20190502161127.GA84687@lkp-kbuild02>
References: <201905030039.lpVlyOqx%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201905030039.lpVlyOqx%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_091210_318106_AA04FB43 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kbuild-all@01.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


Fixes: 258bbf525e65 ("ath11k: add driver")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 wmi.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath11k/wmi.c b/drivers/net/wireless/ath/ath11k/wmi.c
index 741885e..6ff7f27 100644
--- a/drivers/net/wireless/ath/ath11k/wmi.c
+++ b/drivers/net/wireless/ath/ath11k/wmi.c
@@ -163,7 +163,7 @@ static int ath11k_wmi_tlv_parse(struct ath11k_base *ar, const void **tb,
 				   (void *)tb);
 }
 
-const void **
+static const void **
 ath11k_wmi_tlv_parse_alloc(struct ath11k_base *ab, const void *ptr,
 			   size_t len, gfp_t gfp)
 {

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
