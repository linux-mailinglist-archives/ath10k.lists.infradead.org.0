Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BAE1CEB34
	for <lists+ath10k@lfdr.de>; Tue, 12 May 2020 05:12:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4FS00s2gaJNQ3PtiTU7d75CtUgAFMPipgNpyQsLMMJY=; b=abqEBn8s+TGtuF
	Z+D9GjwD51VEwS1rfmYaPr/PeCyeXwqDGvFMZub7mrMKIGLWG4jXM48J1lyqFceRo/gmLQcXHHJ51
	eGMuOU9hOe156/aCeA9ILwEE/uzN+BaQcPmJLG07gkULO8YShdvmFXwP6eXbRR4jlcgD8ZtA/kb+J
	a2G8LU7c3pyGjluR0s+kDGm/OKAkyGYEmzgJbcxJmO/WjUel0pS1n49vPlmOS/2osvA/qJ4Dt6GJ5
	iHI+3ctcxeskLzxyXsKM7TOV3DUeiNY1atWokDxFyEODsq9leZ++VXLu45ibS9sdtDXk5b2tAKiMo
	CZtleJqq7etR4NVXyRqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYLLk-0004UI-QM; Tue, 12 May 2020 03:12:56 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYLLa-0004NS-KN
 for ath10k@lists.infradead.org; Tue, 12 May 2020 03:12:48 +0000
IronPort-SDR: vUtINBOdVZz3Io+tmpEB0B9+/CUeW0EEPK+1TbVO+LUofcxOubFhgqXuvPrVztiLwa0x3pGX9m
 BV5ePf05SiiA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2020 20:12:45 -0700
IronPort-SDR: ihvY1YY3ZeoebfkLt5EtWAUYzUkvYrvdFRklcrQQVBC3nEOo689C3gKmswWNNi/GoBRNzrAR5s
 ymC08IC/niIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,381,1583222400"; d="scan'208";a="297886385"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 11 May 2020 20:12:44 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jYLLY-000IDr-13; Tue, 12 May 2020 11:12:44 +0800
Date: Tue, 12 May 2020 11:11:56 +0800
From: kbuild test robot <lkp@intel.com>
To: Govind Singh <govinds@codeaurora.org>
Subject: [ath6kl:pending 21/24] drivers/net/wireless/ath/ath11k/pci.c:49:34:
 warning: Local variable 'msi_config' shadows outer variable [shadowVariable]
Message-ID: <202005121153.gLRyf9Tw%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_201246_718528_DD62B6B9 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git pending
head:   6303acc5b03a5fc3bf6cf5fa072ae0dc9aaa5dd0
commit: 398a800c183de17a49a5779550e72fbc3ba1e592 [21/24] ath11k: Add msi config init for QCA6390

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>


cppcheck warnings: (new ones prefixed by >>)

>> drivers/net/wireless/ath/ath11k/pci.c:49:34: warning: Local variable 'msi_config' shadows outer variable [shadowVariable]
    const struct ath11k_msi_config *msi_config;
                                    ^
   drivers/net/wireless/ath/ath11k/pci.c:23:39: note: Shadowed declaration
   static const struct ath11k_msi_config msi_config = {
                                         ^
   drivers/net/wireless/ath/ath11k/pci.c:49:34: note: Shadow variable
    const struct ath11k_msi_config *msi_config;
                                    ^

vim +/msi_config +49 drivers/net/wireless/ath/ath11k/pci.c

    45	
    46	static int ath11k_pci_enable_msi(struct ath11k_pci *ab_pci)
    47	{
    48		struct ath11k_base *ab = ab_pci->ab;
  > 49		const struct ath11k_msi_config *msi_config;
    50		struct msi_desc *msi_desc;
    51		int num_vectors;
    52		int ret;
    53	
    54		ret = ath11k_pci_get_msi_assignment(ab_pci);
    55		if (ret) {
    56			ath11k_err(ab, "failed to get MSI assignment, err = %d\n", ret);
    57			goto out;
    58		}
    59	
    60		msi_config = ab_pci->msi_config;
    61		if (!msi_config) {
    62			ath11k_err(ab, "msi_config is NULL!\n");
    63			ret = -EINVAL;
    64			goto out;
    65		}
    66	
    67		num_vectors = pci_alloc_irq_vectors(ab_pci->pdev,
    68						    msi_config->total_vectors,
    69						    msi_config->total_vectors,
    70						    PCI_IRQ_MSI);
    71		if (num_vectors != msi_config->total_vectors) {
    72			ath11k_err(ab, "failed to get enough MSI vectors (%d), available vectors = %d",
    73				   msi_config->total_vectors, num_vectors);
    74			if (num_vectors >= 0)
    75				ret = -EINVAL;
    76			goto reset_msi_config;
    77		}
    78	
    79		msi_desc = irq_get_msi_desc(ab_pci->pdev->irq);
    80		if (!msi_desc) {
    81			ath11k_err(ab, "msi_desc is NULL!\n");
    82			ret = -EINVAL;
    83			goto free_msi_vector;
    84		}
    85	
    86		ab_pci->msi_ep_base_data = msi_desc->msg.data;
    87	
    88		ath11k_dbg(ab, ATH11K_DBG_PCI, "msi base data is %d\n", ab_pci->msi_ep_base_data);
    89	
    90		return 0;
    91	
    92	free_msi_vector:
    93		pci_free_irq_vectors(ab_pci->pdev);
    94	reset_msi_config:
    95		ab_pci->msi_config = NULL;
    96	out:
    97		return ret;
    98	}
    99	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
