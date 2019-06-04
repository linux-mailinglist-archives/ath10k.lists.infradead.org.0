Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD934344B7
	for <lists+ath10k@lfdr.de>; Tue,  4 Jun 2019 12:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nvc6eoI8Fj6oyXCxX/4W+VUBlKbN0GC6L/MUuDwe5aQ=; b=C5cgASeKxSi2vv
	6Z8/wWX6g8vmPLT0TVWKyAZiRnhe9rdV708ZeynhLgClHEVE1efCbB2mqDbKeJGyULwhAiSm6sKAM
	uaPhmP+jmZWQzFPCbCYfubFuatFqBLwib/4JVAXcvM6ATFHC6Sjk3ZOgymmNtf4neFPGU6tBWGVKW
	Zybl9c6x0ISgA7Lrb93NZfr4Z6M4r+A1mcz4JwU1DPSJEU860rfC8AoVBT/Cz/XSpS1pgSRNjLBnS
	Bp/6urcKrpqLupnShKgJQwqfLBVeR6qFx2Juj6aya0ka1g9OK2Nut7WUPkuplPMgvzQmCroWGfhoS
	M/aH2+CqKsoULCbbxWYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6xd-0002Pr-FW; Tue, 04 Jun 2019 10:46:33 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6wh-00019T-JF
 for ath10k@lists.infradead.org; Tue, 04 Jun 2019 10:45:54 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 03:45:33 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2019 03:45:32 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hY6wd-0000gg-IK; Tue, 04 Jun 2019 18:45:31 +0800
Date: Tue, 4 Jun 2019 18:45:27 +0800
From: kbuild test robot <lkp@intel.com>
To: John Crispin <john@phrozen.org>
Subject: [ath6kl:pending 170/170]
 drivers/net/wireless/ath/ath11k/mac.c:1334:83: sparse: sparse: incorrect
 type in assignment (different base types)
Message-ID: <201906041825.blatvak2%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_034536_050749_541D234C 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 ath10k@lists.infradead.org, Shashidhar Lakkavalli <slakkavalli@datto.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git pending
head:   17aca2d9a969788a7f1e3e0c72b5485bf6a432a4
commit: 17aca2d9a969788a7f1e3e0c72b5485bf6a432a4 [170/170] ath11k: add HE support
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-7-g2b96cd8-dirty
        git checkout 17aca2d9a969788a7f1e3e0c72b5485bf6a432a4
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/net/wireless/ath/ath11k/mac.c:1334:83: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int @@    got restricted __le16 constunsigned int @@
>> drivers/net/wireless/ath/ath11k/mac.c:1334:83: sparse:    expected unsigned int
>> drivers/net/wireless/ath/ath11k/mac.c:1334:83: sparse:    got restricted __le16 const [usertype] rx_mcs_80p80
   drivers/net/wireless/ath/ath11k/mac.c:1336:83: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int @@    got restricted __le16 constunsigned int @@
   drivers/net/wireless/ath/ath11k/mac.c:1336:83: sparse:    expected unsigned int
>> drivers/net/wireless/ath/ath11k/mac.c:1336:83: sparse:    got restricted __le16 const [usertype] tx_mcs_80p80
   drivers/net/wireless/ath/ath11k/mac.c:1340:73: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int @@    got restricted __le16 constunsigned int @@
   drivers/net/wireless/ath/ath11k/mac.c:1340:73: sparse:    expected unsigned int
>> drivers/net/wireless/ath/ath11k/mac.c:1340:73: sparse:    got restricted __le16 const [usertype] rx_mcs_160
   drivers/net/wireless/ath/ath11k/mac.c:1342:73: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int @@    got restricted __le16 constunsigned int @@
   drivers/net/wireless/ath/ath11k/mac.c:1342:73: sparse:    expected unsigned int
>> drivers/net/wireless/ath/ath11k/mac.c:1342:73: sparse:    got restricted __le16 const [usertype] tx_mcs_160
   drivers/net/wireless/ath/ath11k/mac.c:1348:72: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int @@    got restricted __le16 constunsigned int @@
   drivers/net/wireless/ath/ath11k/mac.c:1348:72: sparse:    expected unsigned int
>> drivers/net/wireless/ath/ath11k/mac.c:1348:72: sparse:    got restricted __le16 const [usertype] rx_mcs_80
   drivers/net/wireless/ath/ath11k/mac.c:1350:72: sparse: sparse: incorrect type in assignment (different base types) @@    expected unsigned int @@    got restricted __le16 constunsigned int @@
   drivers/net/wireless/ath/ath11k/mac.c:1350:72: sparse:    expected unsigned int
>> drivers/net/wireless/ath/ath11k/mac.c:1350:72: sparse:    got restricted __le16 const [usertype] tx_mcs_80

vim +1334 drivers/net/wireless/ath/ath11k/mac.c

  1279	
  1280	static void ath11k_peer_assoc_h_he(struct ath11k *ar,
  1281					   struct ieee80211_vif *vif,
  1282					   struct ieee80211_sta *sta,
  1283					   struct peer_assoc_params *arg)
  1284	{
  1285		const struct ieee80211_sta_he_cap *he_cap = &sta->he_cap;
  1286	
  1287		if (!he_cap->has_he)
  1288			return;
  1289	
  1290		arg->he_flag = true;
  1291	
  1292		memcpy(&arg->peer_he_cap_macinfo, he_cap->he_cap_elem.mac_cap_info,
  1293		       sizeof(arg->peer_he_cap_macinfo));
  1294		memcpy(&arg->peer_he_cap_phyinfo, he_cap->he_cap_elem.phy_cap_info,
  1295		       sizeof(arg->peer_he_cap_phyinfo));
  1296		memcpy(&arg->peer_he_ops, &vif->bss_conf.he_operation,
  1297		       sizeof(arg->peer_he_ops));
  1298	
  1299		if (he_cap->he_cap_elem.phy_cap_info[6] &
  1300		    IEEE80211_HE_PHY_CAP6_PPE_THRESHOLD_PRESENT) {
  1301			int bit = 7;
  1302			int nss, ru;
  1303	
  1304			arg->peer_ppet.numss_m1 = he_cap->ppe_thres[0] &
  1305						  IEEE80211_PPE_THRES_NSS_MASK;
  1306			arg->peer_ppet.ru_bit_mask =
  1307				(he_cap->ppe_thres[0] &
  1308				 IEEE80211_PPE_THRES_RU_INDEX_BITMASK_MASK) >>
  1309				IEEE80211_PPE_THRES_RU_INDEX_BITMASK_POS;
  1310	
  1311			for (nss = 0; nss <= arg->peer_ppet.numss_m1; nss++) {
  1312				for (ru = 0; ru < 4; ru++) {
  1313					u32 val = 0;
  1314					int i;
  1315	
  1316					if ((arg->peer_ppet.ru_bit_mask & BIT(ru)) == 0)
  1317						continue;
  1318					for (i = 0; i < 6; i++) {
  1319						val >>= 1;
  1320						val |= ((he_cap->ppe_thres[bit / 8] >>
  1321							 (bit % 8)) & 0x1) << 5;
  1322						bit++;
  1323					}
  1324					arg->peer_ppet.ppet16_ppet8_ru3_ru0[nss] |=
  1325									val << (ru * 6);
  1326				}
  1327			}
  1328		}
  1329	
  1330		switch (sta->bandwidth) {
  1331		case IEEE80211_STA_RX_BW_160:
  1332			if (he_cap->he_cap_elem.phy_cap_info[0] &
  1333			    IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_80PLUS80_MHZ_IN_5G) {
> 1334				arg->peer_he_rx_mcs_set[WMI_HECAP_TXRX_MCS_NSS_IDX_80_80] =
  1335					he_cap->he_mcs_nss_supp.rx_mcs_80p80;
> 1336				arg->peer_he_tx_mcs_set[WMI_HECAP_TXRX_MCS_NSS_IDX_80_80] =
  1337					he_cap->he_mcs_nss_supp.tx_mcs_80p80;
  1338				arg->peer_he_mcs_count++;
  1339			}
> 1340			arg->peer_he_rx_mcs_set[WMI_HECAP_TXRX_MCS_NSS_IDX_160] =
  1341				he_cap->he_mcs_nss_supp.rx_mcs_160;
> 1342			arg->peer_he_tx_mcs_set[WMI_HECAP_TXRX_MCS_NSS_IDX_160] =
  1343				he_cap->he_mcs_nss_supp.tx_mcs_160;
  1344			arg->peer_he_mcs_count++;
  1345			/* drop through */
  1346	
  1347		default:
> 1348			arg->peer_he_rx_mcs_set[WMI_HECAP_TXRX_MCS_NSS_IDX_80] =
  1349				he_cap->he_mcs_nss_supp.rx_mcs_80;
> 1350			arg->peer_he_tx_mcs_set[WMI_HECAP_TXRX_MCS_NSS_IDX_80] =
  1351				he_cap->he_mcs_nss_supp.tx_mcs_80;
  1352			arg->peer_he_mcs_count++;
  1353			break;
  1354		}
  1355	}
  1356	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
