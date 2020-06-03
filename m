Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A03AB1ED798
	for <lists+ath10k@lfdr.de>; Wed,  3 Jun 2020 22:45:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Grxv890l2MeCSBDzZ0EvHM6uzSuiZ6B/mRmKr2azVs=; b=uSw0I2T0VDgTlN
	zgGOcedanVpZ6A+Pz1/AKXwBhw/dH2+DucwK7Sdb/0VOEIFHqErCCmv3Qk6oDh91ZS9ZQ0zUBWa76
	3TEZpgmonskksqxzsDZErHjUrYu9gWQxhtELCCP+KmqM/LDLjWoU+bxBMlpSfVRIwhxcTeer2RrzA
	QgiUrqdVgQPQirsv2QhGUU6xFg197Jx6dklmMRP8YeKofHerbQa7QRKl53HLGCfbOEy2THwt+NbL9
	eyafuMuBL3qHn4Nd2MXQTq0pAPgtC6HKaQzzjampG8cowKpNV9zXrGlpa7QM5pa/bdoS9y2hc48Zu
	SXZOcmUigt5+O3+6r+iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgaGX-0004RC-IE; Wed, 03 Jun 2020 20:45:37 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgaGR-0004Qf-Ok
 for ath10k@lists.infradead.org; Wed, 03 Jun 2020 20:45:35 +0000
IronPort-SDR: 4eTlYFMjM+WXydMbdsfiXLDj/2yHsxbJ6kle86VPJG2XY/4E576hP5S6108tILYpI1dh7faqZQ
 gVu4ld7L6afA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 13:45:30 -0700
IronPort-SDR: FJmigaZwwO7G9xPkGrewby/eC8NHEDFCHt8VLyvM1E8Ch7eDuDoxmnRd6X2F6jbIP8Nl9W+Net
 2SFHus+vgt7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,469,1583222400"; d="scan'208";a="294099662"
Received: from lkp-server01.sh.intel.com (HELO 8bb2cd163565) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jun 2020 13:45:28 -0700
Received: from kbuild by 8bb2cd163565 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jgaGN-0000D8-OX; Wed, 03 Jun 2020 20:45:27 +0000
Date: Thu, 04 Jun 2020 04:45:19 +0800
From: kernel test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath11k-qca6390-bringup] BUILD SUCCESS
 7a08f5b1d800b7c85dab4f469f690f78a103d4c9
Message-ID: <5ed80bdf.KtXAsvrHY6kD4cMZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_134531_898906_29A0EE65 
X-CRM114-Status: UNSURE (   5.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.8 LONGWORDS              Long string of long words
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
branch HEAD: 7a08f5b1d800b7c85dab4f469f690f78a103d4c9  HACK: ath11k: support for hw1.1

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
|-- arm-allmodconfig
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
|-- arm-allyesconfig
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
|-- arm64-allmodconfig
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
|-- arm64-allyesconfig
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
|-- i386-allmodconfig
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
|-- parisc-allmodconfig
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
|-- parisc-allyesconfig
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
|-- x86_64-allyesconfig
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

elapsed time: 484m

configs tested: 82
configs skipped: 3

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
sh                 kfr2r09-romimage_defconfig
sh                   secureedge5410_defconfig
arm                      footbridge_defconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
i386                              allnoconfig
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
mips                              allnoconfig
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
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
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
