Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D49671E6626
	for <lists+ath10k@lfdr.de>; Thu, 28 May 2020 17:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gBa2idRe0lo8bEYuTZg/WBx6XJyJ3JKY0iSpN9/g0Y=; b=BC+mcd92sYvqxA
	kEGpLYajU1UwNN/pkPOrlIZvczb7P1pfBBOCBNBV8sFzo0XPaYTtgvoIoYlt/FreZe6k7+n58Rtbn
	wo8ZUM1yXs/k/Po1eBMZYUHfRfHU609PCWIlFNsi6EE3SK9j4le2Q3z5viabIXsZ6WLpiRZIesP3G
	HKGAcOnTBDNQ0AJoAW5lUUAFQS4lVADOWVFYsGnKF7eChv1SaHMAd0fWQak4GY7Sfw1158ymcOa3J
	NQQwXTlpCNuESR1lRlkMYb7lyT7f8QXiWSZURFVP1zmf1agkx6P6jY4EKXwMf4XHCcsefh3nVEPm+
	1FQ8gMDAyVPDNrEACpiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeKWH-0006XF-Cj; Thu, 28 May 2020 15:32:33 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeKWE-0006Wk-0Z
 for ath10k@lists.infradead.org; Thu, 28 May 2020 15:32:31 +0000
IronPort-SDR: /gDWxbgl8D9x0toHXYeXo8XB6JvUBYepV0UOcWvgub10HuVvo8opOEpqjhtmyhI7DCVTyoZki+
 7qsJliX5fgsQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 08:32:28 -0700
IronPort-SDR: gM7QlGkaOpTlXYdBKrq4USNv8An7fD1pjEcNDul8X0oFKKrV40TBwTvsmauMSe0g+nGwbeVLLA
 0RCHOc8wSb2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,445,1583222400"; d="scan'208";a="302847592"
Received: from lkp-server02.sh.intel.com (HELO 5e8f22f9921b) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 28 May 2020 08:32:26 -0700
Received: from kbuild by 5e8f22f9921b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jeKWA-00009e-8T; Thu, 28 May 2020 15:32:26 +0000
Date: Thu, 28 May 2020 23:31:46 +0800
From: kbuild test robot <lkp@intel.com>
To: Carl Huang <cjhuang@codeaurora.org>
Subject: [RFC PATCH ath6kl] ath11k: ath11k_dp_srng_calculate_msi_group() can
 be static
Message-ID: <20200528153146.GA25006@3f49cb9714f8>
References: <202005282327.ZEJRVYGS%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202005282327.ZEJRVYGS%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_083230_099995_B27BE153 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
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
Cc: kbuild-all@lists.01.org, ath10k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


Fixes: f2748890bfc2 ("ath11k: enable DP interrupt setup for QCA6390")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 dp.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath11k/dp.c b/drivers/net/wireless/ath/ath11k/dp.c
index d1be849bd46fa..bb9271ed7f626 100644
--- a/drivers/net/wireless/ath/ath11k/dp.c
+++ b/drivers/net/wireless/ath/ath11k/dp.c
@@ -121,8 +121,8 @@ static int ath11k_dp_srng_find_ring_in_mask(int ring_num, const u8 *grp_mask)
 	return -ENOENT;
 }
 
-int ath11k_dp_srng_calculate_msi_group(struct ath11k_base *ab,
-				       enum hal_ring_type type, int ring_num)
+static int ath11k_dp_srng_calculate_msi_group(struct ath11k_base *ab,
+					      enum hal_ring_type type, int ring_num)
 {
 	const u8 *grp_mask;
 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
