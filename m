Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3591205A
	for <lists+ath10k@lfdr.de>; Thu,  2 May 2019 18:36:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bj7Mn/h3cu/zlet7VcLbujwkbz8e9Gqsx2RfuqMM0RY=; b=qUx1f10E89Rx9v
	bOKkhZR99aE9TWcllhv8nofItchw4IpYr1xdnzyjg0j8K6KpT3GP82tYcNIkrqP7jfSJPbfHM6/mV
	6rTOntRDt3NQnBAkvQFb4qBqoVpLlLVo/LtpDhrRYtXGCrkQpfdG/fiGwGcQ0zCrApFrBbWU2V9Yh
	1fpTYju9CQ/o7uHeeX1X4BmXB22r7b5mjkhBHnPVUO3zpBVrB3t+TK03QhdT+PvzOyXLvZ7bySACL
	AXgTBmsoiCylXDlTxQXBp//0HRpatIF00kji9bivc+R7m9d881Qpkdt1P67PkV/PV524KFi5mZb7h
	m2AXoqQ3hnDbYxyqu+ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEgx-0005sR-41; Thu, 02 May 2019 16:36:15 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEgr-0005rk-W4
 for ath10k@lists.infradead.org; Thu, 02 May 2019 16:36:11 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 09:36:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="342850831"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 02 May 2019 09:36:09 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hMEgp-00039k-SU; Fri, 03 May 2019 00:36:07 +0800
Date: Fri, 3 May 2019 00:35:48 +0800
From: kbuild test robot <lkp@intel.com>
To: Sathishkumar Muruganandam <murugana@codeaurora.org>
Subject: [ath6kl:ath11k-bringup 25/111]
 drivers/net/wireless/ath/ath11k/wmi.c:4040:6: sparse: sparse: symbol
 'ath11k_wmi_pull_pdev_stats_base' was not declared. Should it be static?
Message-ID: <201905030017.UAWcRaLV%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_093610_045328_6807C0B2 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: Kalle Valo <kvalo@codeaurora.org>, kbuild-all@01.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git ath11k-bringup
head:   9cacba94c6118dd96276ffe745dbad51dd4fe6b4
commit: d25cb35c6f10ac1a9ffae4611f22cb92ba448058 [25/111] ath11k: add support for FW stats via WMI
reproduce:
        # apt-get install sparse
        git checkout d25cb35c6f10ac1a9ffae4611f22cb92ba448058
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   drivers/net/wireless/ath/ath11k/wmi.c:181:12: sparse: sparse: symbol 'ath11k_wmi_tlv_parse_alloc' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:201:5: sparse: sparse: symbol 'ath11k_wmi_cmd_send_nowait' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:468:5: sparse: sparse: symbol 'ath11k_service_ready_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:714:6: sparse: sparse: symbol 'ath11k_wmi_put_wmi_channel' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:937:6: sparse: sparse: symbol 'ath11k_send_green_ap_ps_enable_cmd' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:968:6: sparse: sparse: symbol 'ath11k_send_gpio_config_cmd' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:1006:5: sparse: sparse: symbol 'ath11k_send_gpio_output_cmd' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:1036:5: sparse: sparse: symbol 'ath11k_send_vdev_set_fwtest_param_cmd' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:2356:5: sparse: sparse: symbol 'ath11k_send_set_sta_ps_mode_cmd' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:2390:5: sparse: sparse: symbol 'ath11k_send_set_mimops_cmd' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:2447:5: sparse: sparse: symbol 'ath11k_send_set_smps_params_cmd' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:2553:5: sparse: sparse: symbol 'ath11k_send_bcn_buf_ll_cmd' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3205:5: sparse: sparse: symbol 'ath11k_service_ready_ext_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3222:5: sparse: sparse: symbol 'ath11k_pull_vdev_start_resp_tlv' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3296:5: sparse: sparse: symbol 'ath11k_pull_reg_chan_list_update_ev' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3410:5: sparse: sparse: symbol 'ath11k_pull_peer_del_resp_ev' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3441:5: sparse: sparse: symbol 'ath11k_pull_bcn_tx_status_ev' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3470:5: sparse: sparse: symbol 'ath11k_pull_vdev_stopped_param_tlv' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3531:5: sparse: sparse: symbol 'ath11k_pull_mgmt_rx_params_tlv' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3622:5: sparse: sparse: symbol 'ath11k_pull_mgmt_tx_compl_param_tlv' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3794:5: sparse: sparse: symbol 'ath11k_pull_scan_ev' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3827:5: sparse: sparse: symbol 'ath11k_pull_peer_sta_kickout_ev' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3854:5: sparse: sparse: symbol 'ath11k_pull_roam_ev' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3902:5: sparse: sparse: symbol 'ath11k_pull_chan_info_ev' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3939:5: sparse: sparse: symbol 'ath11k_pull_pdev_bss_chan_info_ev' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:3979:5: sparse: sparse: symbol 'ath11k_pull_vdev_install_key_compl_ev' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:4011:5: sparse: sparse: symbol 'ath11k_pull_peer_assoc_conf_ev' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4040:6: sparse: sparse: symbol 'ath11k_wmi_pull_pdev_stats_base' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4081:6: sparse: sparse: symbol 'ath11k_wmi_pull_pdev_stats_rx' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4357:8: sparse: sparse: symbol 'ath11k_wmi_fw_stats_num_bcn' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:4771:5: sparse: sparse: symbol 'ath11k_reg_chan_list_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:4922:5: sparse: sparse: symbol 'ath11k_ready_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:4938:6: sparse: sparse: symbol 'ath11k_peer_delete_resp_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:4968:6: sparse: sparse: symbol 'ath11k_vdev_start_resp_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:5007:6: sparse: sparse: symbol 'ath11k_bcn_tx_status_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:5026:6: sparse: sparse: symbol 'ath11k_vdev_stopped_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:5053:6: sparse: sparse: symbol 'ath11k_mgmt_rx_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:5168:6: sparse: sparse: symbol 'ath11k_mgmt_tx_compl_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:5199:6: sparse: sparse: symbol 'ath11k_scan_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:5258:6: sparse: sparse: symbol 'ath11k_peer_sta_kickout_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:5307:6: sparse: sparse: symbol 'ath11k_roam_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:5353:6: sparse: sparse: symbol 'ath11k_chan_info_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:5427:6: sparse: sparse: symbol 'ath11k_pdev_bss_chan_info_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:5502:6: sparse: sparse: symbol 'ath11k_vdev_install_key_compl_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:5541:6: sparse: sparse: symbol 'ath11k_service_available_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:5577:6: sparse: sparse: symbol 'ath11k_peer_assoc_conf_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:5603:6: sparse: sparse: symbol 'ath11k_update_stats_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:4873:9: sparse: sparse: context imbalance in 'ath11k_reg_chan_list_event' - different lock contexts for basic block

Please review and possibly fold the followup patch.

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
