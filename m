Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A1611FCD
	for <lists+ath10k@lfdr.de>; Thu,  2 May 2019 18:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=++qwVwKsPogZHOHPQUYMGRe+Hqa2+FMFOn+ta9Q6vwY=; b=QkbAcpcLRj4GHk
	DlHOOz53vpTIdmiKV01An52RzjVrJe4aVoAllf0CEwrmHeu25mC7NTIVUs4uGZguub59Jjg7j216I
	07OSp7lK661M9XWtgpC1LBDi/uMcbw85Np6t8V830C8DgaPGx4+bcYFbkrAyDxgUqNXgMPQzJatuK
	0Cgx4i3gdT0Xw0fdDSx0CC6Xz6Q3MN+a46KN/4OiM+l7dA3pPrqzCnEANwycIcyhPsjJLt4hqK8eD
	6zpBVUvsed9pcX/6EvCknhJuKMJjPC7mnILf5xvAK7FsSRKu2GqdvAQTV50dxPqWHD7LEvF4nHPhG
	Db9vc/EG4RlVoZ3o46zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEJk-0004Ol-KX; Thu, 02 May 2019 16:12:16 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEJe-0004Mz-4Z
 for ath10k@lists.infradead.org; Thu, 02 May 2019 16:12:12 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 09:12:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="140712398"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2019 09:12:08 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hMEJb-0005nX-HG; Fri, 03 May 2019 00:12:07 +0800
Date: Fri, 3 May 2019 00:11:27 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath11k-bringup 3/111]
 drivers/net/wireless/ath/ath11k/reg.c:27:39: sparse: sparse: incorrect type
 in argument 1 (different address spaces)
Message-ID: <201905030039.lpVlyOqx%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_091210_317917_38EE8EC0 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git ath11k-bringup
head:   9cacba94c6118dd96276ffe745dbad51dd4fe6b4
commit: 258bbf525e652e244aa8b2331f55fda573fbe926 [3/111] ath11k: add driver
reproduce:
        # apt-get install sparse
        git checkout 258bbf525e652e244aa8b2331f55fda573fbe926
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/net/wireless/ath/ath11k/reg.c:27:39: sparse: sparse: incorrect type in argument 1 (different address spaces) @@    expected void const * @@    got char const [noderevoid const * @@
>> drivers/net/wireless/ath/ath11k/reg.c:27:39: sparse:    expected void const *
>> drivers/net/wireless/ath/ath11k/reg.c:27:39: sparse:    got char const [noderef] <asn:4> *
--
>> drivers/net/wireless/ath/ath11k/qmi.c:1864:41: sparse: sparse: Using plain integer as NULL pointer
>> drivers/net/wireless/ath/ath11k/qmi.c:1964:70: sparse: sparse: incorrect type in argument 4 (different address spaces) @@    expected void *bdf_addr @@    got void [noderef] <asn:2> *[assivoid *bdf_addr @@
>> drivers/net/wireless/ath/ath11k/qmi.c:1964:70: sparse:    expected void *bdf_addr
>> drivers/net/wireless/ath/ath11k/qmi.c:1964:70: sparse:    got void [noderef] <asn:2> *[assigned] bdf_addr
--
>> drivers/net/wireless/ath/ath11k/wmi.c:166:12: sparse: sparse: symbol 'ath11k_wmi_tlv_parse_alloc' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:186:5: sparse: sparse: symbol 'ath11k_wmi_cmd_send_nowait' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:216:5: sparse: sparse: symbol 'ath11k_wmi_cmd_send' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:441:5: sparse: sparse: symbol 'ath11k_service_ready_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:457:16: sparse: sparse: symbol 'ath11k_wmi_alloc_skb' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:687:6: sparse: sparse: symbol 'ath11k_wmi_put_wmi_channel' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:910:6: sparse: sparse: symbol 'ath11k_send_green_ap_ps_enable_cmd' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:940:6: sparse: sparse: symbol 'ath11k_send_gpio_config_cmd' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:977:5: sparse: sparse: symbol 'ath11k_send_gpio_output_cmd' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:1006:5: sparse: sparse: symbol 'ath11k_send_vdev_set_fwtest_param_cmd' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:2325:5: sparse: sparse: symbol 'ath11k_send_set_sta_ps_mode_cmd' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:2358:5: sparse: sparse: symbol 'ath11k_send_set_mimops_cmd' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:2412:5: sparse: sparse: symbol 'ath11k_send_set_smps_params_cmd' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:2516:5: sparse: sparse: symbol 'ath11k_send_bcn_buf_ll_cmd' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3168:5: sparse: sparse: symbol 'ath11k_service_ready_ext_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3185:5: sparse: sparse: symbol 'ath11k_pull_vdev_start_resp_tlv' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3259:5: sparse: sparse: symbol 'ath11k_pull_reg_chan_list_update_ev' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3373:5: sparse: sparse: symbol 'ath11k_pull_peer_del_resp_ev' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3404:5: sparse: sparse: symbol 'ath11k_pull_bcn_tx_status_ev' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3433:5: sparse: sparse: symbol 'ath11k_pull_vdev_stopped_param_tlv' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3505:5: sparse: sparse: symbol 'ath11k_pull_mgmt_rx_params_tlv' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3596:5: sparse: sparse: symbol 'ath11k_pull_mgmt_tx_compl_param_tlv' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3768:5: sparse: sparse: symbol 'ath11k_pull_scan_ev' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3801:5: sparse: sparse: symbol 'ath11k_pull_peer_sta_kickout_ev' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3828:5: sparse: sparse: symbol 'ath11k_pull_roam_ev' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3876:5: sparse: sparse: symbol 'ath11k_pull_chan_info_ev' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3913:5: sparse: sparse: symbol 'ath11k_pull_pdev_bss_chan_info_ev' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3953:5: sparse: sparse: symbol 'ath11k_pull_vdev_install_key_compl_ev' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:3985:5: sparse: sparse: symbol 'ath11k_pull_peer_assoc_conf_ev' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4031:5: sparse: sparse: symbol 'ath11k_reg_chan_list_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4182:5: sparse: sparse: symbol 'ath11k_ready_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4198:6: sparse: sparse: symbol 'ath11k_peer_delete_resp_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4228:6: sparse: sparse: symbol 'ath11k_vdev_start_resp_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4267:6: sparse: sparse: symbol 'ath11k_bcn_tx_status_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4286:6: sparse: sparse: symbol 'ath11k_vdev_stopped_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4313:6: sparse: sparse: symbol 'ath11k_mgmt_rx_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4428:6: sparse: sparse: symbol 'ath11k_mgmt_tx_compl_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4459:6: sparse: sparse: symbol 'ath11k_scan_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4518:6: sparse: sparse: symbol 'ath11k_peer_sta_kickout_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4567:6: sparse: sparse: symbol 'ath11k_roam_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4613:6: sparse: sparse: symbol 'ath11k_chan_info_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4687:6: sparse: sparse: symbol 'ath11k_pdev_bss_chan_info_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4762:6: sparse: sparse: symbol 'ath11k_vdev_install_key_compl_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4801:6: sparse: sparse: symbol 'ath11k_service_available_event' was not declared. Should it be static?
>> drivers/net/wireless/ath/ath11k/wmi.c:4837:6: sparse: sparse: symbol 'ath11k_peer_assoc_conf_event' was not declared. Should it be static?
   drivers/net/wireless/ath/ath11k/wmi.c:4133:9: sparse: sparse: context imbalance in 'ath11k_reg_chan_list_event' - different lock contexts for basic block
--
>> drivers/net/wireless/ath/ath11k/dp_tx.c:649:23: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/dp_tx.c:651:23: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/dp_tx.c:654:23: sparse: sparse: dubious: x & !y
--
>> drivers/net/wireless/ath/ath11k/debug_htt_stats.c:850:59: sparse: sparse: Using plain integer as NULL pointer
   drivers/net/wireless/ath/ath11k/debug_htt_stats.c:4619:51: sparse: sparse: non size-preserving integer to pointer cast
   drivers/net/wireless/ath/ath11k/debug_htt_stats.c:4706:24: sparse: sparse: non size-preserving pointer to integer cast
--
>> drivers/net/wireless/ath/ath11k/hal_rx.c:118:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:120:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:122:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:124:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:126:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:128:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:130:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:132:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:134:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:136:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:138:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:140:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:142:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:144:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:146:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:148:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:150:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:152:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:154:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:156:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:158:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:160:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:166:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:170:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:172:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:176:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:178:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:180:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:182:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:184:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:186:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:188:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:190:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:192:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:213:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:217:17: sparse: sparse: dubious: x & !y
   drivers/net/wireless/ath/ath11k/hal_rx.c:219:17: sparse: sparse: dubious: x & !y

Please review and possibly fold the followup patch.

vim +27 drivers/net/wireless/ath/ath11k/reg.c

    24	
    25	static bool ath11k_regdom_changes(struct ath11k *ar, char *alpha2)
    26	{
  > 27		return !!(memcmp(ar->hw->wiphy->regd->alpha2, alpha2, 2));
    28	}
    29	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
