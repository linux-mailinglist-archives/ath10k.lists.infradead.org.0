Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 107B21EC8F4
	for <lists+ath10k@lfdr.de>; Wed,  3 Jun 2020 07:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pi+Y0hZbpxS0/3GZ10ok++6tPaGapYKLD0Muvt3iq2c=; b=pWc4Db0QLDfgut
	FbK3dU+6Z/iiUTnKPg3414QFiGU3A9p/1pkdWUF/t4u0+XKKFQEVntfIJ2dU/k/9BOp2QfmE6xfCT
	4/wgYQQ1O2IZeEQS1dUXgLQaov65Nq+GkvtjO2SxcrF8A9kBV8Lt6dQXQhh89LbZ+RT8TXXZGTd+T
	yFia19cOwDffNvd4GcbR+h7Uz7MJCG64+cutfSd80N94YIrjbrnjmWJesuiuSTQetxDU1ASo2M098
	9VPZ+XKpV0+GpDNb3WY7WeDUHaTA1rh9Gz4uDGoQcXyPZAH3IqY/wWqQvvrkOhTL2oc7X0tMF5Rpf
	TexqdQoa7qC1e7P2eMxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgMKV-0003oq-SO; Wed, 03 Jun 2020 05:52:47 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgMKQ-0003nM-V5
 for ath10k@lists.infradead.org; Wed, 03 Jun 2020 05:52:45 +0000
IronPort-SDR: fmMjdWQ2frHtLqq7jNMN/roYiPyKq3szbvkZZJSweQomeCnFau9kOzeHEUKTiA8I/YqlemQlym
 3x/DdnvnLJMw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 22:52:38 -0700
IronPort-SDR: bT+S2hf7/qctmRZO2ZD7hTC069k6XCJdyDxzO3OEwtk9Segu8t56qRdFIVmCeOkfNhQ64339lb
 8PYTm9a+6A0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,467,1583222400"; d="scan'208";a="377989162"
Received: from lkp-server01.sh.intel.com (HELO e5a7ad696f24) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 Jun 2020 22:52:36 -0700
Received: from kbuild by e5a7ad696f24 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jgMKJ-0000O7-Rf; Wed, 03 Jun 2020 05:52:35 +0000
Date: Wed, 03 Jun 2020 13:52:31 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath11k-qca6390-bringup] BUILD SUCCESS
 1f08b40388971a59d03370c0bdd3b0d5c3754132
Message-ID: <5ed73a9f.rgJwY9+4zV/8hDqu%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_225243_080108_ECE5AC48 
X-CRM114-Status: UNSURE (   5.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 1.8 LONGWORDS              Long string of long words
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  ath11k-qca6390-bringup
branch HEAD: 1f08b40388971a59d03370c0bdd3b0d5c3754132  HACK: ath11k: support for hw1.1

Warning in current branch:

drivers/net/wireless/ath/ath11k/dp.c:124:5: warning: no previous prototype for 'ath11k_dp_srng_calculate_msi_group' [-Wmissing-prototypes]
drivers/net/wireless/ath/ath11k/hw.c:208:5: warning: no previous prototype for 'ath11k_mac_id_to_pdev_id_ipq8074' [-Wmissing-prototypes]
drivers/net/wireless/ath/ath11k/hw.c:213:5: warning: no previous prototype for 'ath11k_mac_id_to_srng_id_ipq8074' [-Wmissing-prototypes]
drivers/net/wireless/ath/ath11k/hw.c:218:5: warning: no previous prototype for 'ath11k_mac_id_to_pdev_id_qca6x90' [-Wmissing-prototypes]
drivers/net/wireless/ath/ath11k/hw.c:223:5: warning: no previous prototype for 'ath11k_mac_id_to_srng_id_qca6x90' [-Wmissing-prototypes]
drivers/net/wireless/ath/ath11k/mhi.c:321:5: warning: no previous prototype for 'ath11k_pci_set_mhi_state' [-Wmissing-prototypes]
drivers/net/wireless/ath/ath11k/pci.c:1192:5: warning: no previous prototype for 'ath11k_pci_init' [-Wmissing-prototypes]
drivers/net/wireless/ath/ath11k/pci.c:1205:6: warning: no previous prototype for 'ath11k_pci_exit' [-Wmissing-prototypes]
drivers/net/wireless/ath/ath11k/pci.c:371:6: warning: no previous prototype for 'ath11k_pci_get_msi_address' [-Wmissing-prototypes]
drivers/net/wireless/ath/ath11k/pci.c:417:5: warning: no previous prototype for 'ath11k_get_user_msi_assignment' [-Wmissing-prototypes]
drivers/net/wireless/ath/ath11k/pci.c:759:5: warning: no previous prototype for 'ath11k_pci_qca6x90_powerup' [-Wmissing-prototypes]
drivers/net/wireless/ath/ath11k/pci.c:764:6: warning: no previous prototype for 'ath11k_pci_qca6x90_powerdown' [-Wmissing-prototypes]
drivers/net/wireless/ath/ath11k/qmi.c:1676:8: warning: format '%d' expects a matching 'int' argument [-Wformat=]
drivers/net/wireless/ath/ath11k/qmi.c:1676:8: warning: format '%d' expects argument of type 'int', but argument 4 has type 'dma_addr_t' {aka 'long long unsigned int'} [-Wformat=]

Warning ids grouped by kconfigs:

recent_errors
|-- alpha-allyesconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-mhi.c:warning:no-previous-prototype-for-ath11k_pci_set_mhi_state
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_get_user_msi_assignment
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_exit
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_get_msi_address
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_init
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerdown
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerup
|   |-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-argument-of-type-int-but-argument-has-type-dma_addr_t-aka-long-long-unsigned-int
|-- c6x-allyesconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|-- h8300-allmodconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|-- h8300-allyesconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|-- i386-allyesconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-mhi.c:warning:no-previous-prototype-for-ath11k_pci_set_mhi_state
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_get_user_msi_assignment
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_exit
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_get_msi_address
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_init
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerdown
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerup
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|-- ia64-allmodconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-mhi.c:warning:no-previous-prototype-for-ath11k_pci_set_mhi_state
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_get_user_msi_assignment
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_exit
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_get_msi_address
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_init
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerdown
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerup
|   |-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-argument-of-type-int-but-argument-has-type-dma_addr_t-aka-long-long-unsigned-int
|-- ia64-allyesconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-mhi.c:warning:no-previous-prototype-for-ath11k_pci_set_mhi_state
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_get_user_msi_assignment
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_exit
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_get_msi_address
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_init
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerdown
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerup
|   |-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-argument-of-type-int-but-argument-has-type-dma_addr_t-aka-long-long-unsigned-int
|-- m68k-allmodconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|-- m68k-allyesconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|-- nios2-allyesconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|-- openrisc-allyesconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|-- powerpc-allmodconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-mhi.c:warning:no-previous-prototype-for-ath11k_pci_set_mhi_state
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_get_user_msi_assignment
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_exit
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_get_msi_address
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_init
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerdown
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerup
|   |-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-argument-of-type-int-but-argument-has-type-dma_addr_t-aka-long-long-unsigned-int
|-- powerpc-allyesconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-mhi.c:warning:no-previous-prototype-for-ath11k_pci_set_mhi_state
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_get_user_msi_assignment
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_exit
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_get_msi_address
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_init
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerdown
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerup
|   |-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-argument-of-type-int-but-argument-has-type-dma_addr_t-aka-long-long-unsigned-int
|-- riscv-allmodconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-mhi.c:warning:no-previous-prototype-for-ath11k_pci_set_mhi_state
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_get_user_msi_assignment
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_exit
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_get_msi_address
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_init
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerdown
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerup
|   |-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-argument-of-type-int-but-argument-has-type-dma_addr_t-aka-long-long-unsigned-int
|-- riscv-allyesconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-mhi.c:warning:no-previous-prototype-for-ath11k_pci_set_mhi_state
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_get_user_msi_assignment
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_exit
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_get_msi_address
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_init
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerdown
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerup
|   |-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-argument-of-type-int-but-argument-has-type-dma_addr_t-aka-long-long-unsigned-int
|-- sh-allmodconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|-- sparc-allyesconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-mhi.c:warning:no-previous-prototype-for-ath11k_pci_set_mhi_state
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_get_user_msi_assignment
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_exit
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_get_msi_address
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_init
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerdown
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerup
|   |-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-argument-of-type-int-but-argument-has-type-dma_addr_t-aka-long-long-unsigned-int
|-- sparc64-allmodconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-mhi.c:warning:no-previous-prototype-for-ath11k_pci_set_mhi_state
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_get_user_msi_assignment
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_exit
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_get_msi_address
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_init
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerdown
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerup
|   |-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-argument-of-type-int-but-argument-has-type-dma_addr_t-aka-long-long-unsigned-int
|-- sparc64-allyesconfig
|   |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
|   |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
|   |-- drivers-net-wireless-ath-ath11k-mhi.c:warning:no-previous-prototype-for-ath11k_pci_set_mhi_state
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_get_user_msi_assignment
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_exit
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_get_msi_address
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_init
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerdown
|   |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerup
|   |-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument
|   `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-argument-of-type-int-but-argument-has-type-dma_addr_t-aka-long-long-unsigned-int
`-- xtensa-allyesconfig
    |-- drivers-net-wireless-ath-ath11k-dp.c:warning:no-previous-prototype-for-ath11k_dp_srng_calculate_msi_group
    |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_ipq8074
    |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_pdev_id_qca6x90
    |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_ipq8074
    |-- drivers-net-wireless-ath-ath11k-hw.c:warning:no-previous-prototype-for-ath11k_mac_id_to_srng_id_qca6x90
    |-- drivers-net-wireless-ath-ath11k-mhi.c:warning:no-previous-prototype-for-ath11k_pci_set_mhi_state
    |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_get_user_msi_assignment
    |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_exit
    |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_get_msi_address
    |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_init
    |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerdown
    |-- drivers-net-wireless-ath-ath11k-pci.c:warning:no-previous-prototype-for-ath11k_pci_qca6x90_powerup
    `-- drivers-net-wireless-ath-ath11k-qmi.c:warning:format-d-expects-a-matching-int-argument

elapsed time: 480m

configs tested: 102
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm                       imx_v4_v5_defconfig
h8300                     edosk2674_defconfig
parisc                generic-64bit_defconfig
m68k                         amcore_defconfig
powerpc                 mpc8272_ads_defconfig
arm                         s5pv210_defconfig
arm                       multi_v4t_defconfig
sh                        edosk7705_defconfig
arm                              alldefconfig
sh                          rsk7203_defconfig
powerpc                     pq2fads_defconfig
powerpc                     mpc83xx_defconfig
sh                            migor_defconfig
arm                          prima2_defconfig
s390                              allnoconfig
mips                              allnoconfig
mips                            gpr_defconfig
sh                     sh7710voipgw_defconfig
powerpc                          alldefconfig
mips                        maltaup_defconfig
mips                        jmr3927_defconfig
arm                       netwinder_defconfig
arm                          badge4_defconfig
mips                  decstation_64_defconfig
arc                        nsimosci_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allmodconfig
um                               allyesconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
