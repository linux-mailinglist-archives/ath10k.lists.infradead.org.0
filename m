Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A795F49988
	for <lists+ath10k@lfdr.de>; Tue, 18 Jun 2019 08:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Npk3AN3OtKgj5eHdRalHCAUNOS8T1xGsfZ/j6yeW+7U=; b=sys/UYr4F2CXbj
	Ni37ExDXiZMsup8MrKo1B3N2y9kUJ5sHUITHf6N0fVOph6IPNUw+f92puIc2G95yTN9PqDzoFVz4Q
	h3b6PcU6ZEPY259f7soXa4U1uCPY7NqCAqG8bwLYkv8NtvpGgWnE6OwfKdapeyE4YrGASVABcKafM
	y3qxiUNmfTuBBHYbi8gAx/zq1znMTDuB3ZO9lEtCPyD+ltnFPRz04OHdiQ7xQ9A61uvnmwmztbZ16
	1eKiG2JeUipE8A09Feov0XLkbZFe5KUl25jViT+af7+abW+cxTLLZCoHVk5F9oaw+9gXplGgidLIb
	29V2Y4ip5LWU9OT9ouFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd827-0003WN-JB; Tue, 18 Jun 2019 06:55:55 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd81x-0003P2-1Z
 for ath10k@lists.infradead.org; Tue, 18 Jun 2019 06:55:47 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5I6sQ15102210;
 Tue, 18 Jun 2019 06:55:41 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2t4r3tjekj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Jun 2019 06:55:40 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5I6rK13015826;
 Tue, 18 Jun 2019 06:53:40 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2t5mgbs8gc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Jun 2019 06:53:40 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5I6rcrM004500;
 Tue, 18 Jun 2019 06:53:38 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 17 Jun 2019 23:53:37 -0700
Date: Tue, 18 Jun 2019 09:53:29 +0300
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org, John Crispin <john@phrozen.org>
Subject: [ath6kl:pending-ath11k 198/205]
 drivers/net/wireless/ath/ath11k/mac.c:1274 ath11k_peer_assoc_h_he() error:
 memcpy() 'he_cap->he_cap_elem.mac_cap_info' too small (6 vs 8)
Message-ID: <20190618065329.GY1893@kadam>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9291
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906180057
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9291
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906180057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_235545_191772_032842C3 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.4 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom; id=lkp%40intel.com;
 ip=156.151.31.86; r=bombadil.infradead.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Kalle Valo <kvalo@codeaurora.org>, ath10k@lists.infradead.org,
 kbuild-all@01.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git pending-ath11k
head:   0f82fec5679664bb91d6c167fd1a146f113e4197
commit: cbdb3159fdf450b7b3999a06600aa0e1fb78383f [198/205] ath11k: set additional values inside wmi_peer_assoc_complete_cmd

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

New smatch warnings:
drivers/net/wireless/ath/ath11k/mac.c:1274 ath11k_peer_assoc_h_he() error: memcpy() 'he_cap->he_cap_elem.mac_cap_info' too small (6 vs 8)

Old smatch warnings:
drivers/net/wireless/ath/ath11k/mac.c:1276 ath11k_peer_assoc_h_he() error: memcpy() 'he_cap->he_cap_elem.phy_cap_info' too small (11 vs 12)

# https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?id=cbdb3159fdf450b7b3999a06600aa0e1fb78383f
git remote add ath6kl https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git
git remote update ath6kl
git checkout cbdb3159fdf450b7b3999a06600aa0e1fb78383f
vim +1274 drivers/net/wireless/ath/ath11k/mac.c

258bbf52 Kalle Valo   2019-02-05  1260  
258bbf52 Kalle Valo   2019-02-05  1261  static void ath11k_peer_assoc_h_he(struct ath11k *ar,
258bbf52 Kalle Valo   2019-02-05  1262  				   struct ieee80211_vif *vif,
258bbf52 Kalle Valo   2019-02-05  1263  				   struct ieee80211_sta *sta,
258bbf52 Kalle Valo   2019-02-05  1264  				   struct peer_assoc_params *arg)
258bbf52 Kalle Valo   2019-02-05  1265  {
17aca2d9 John Crispin 2019-06-03  1266  	const struct ieee80211_sta_he_cap *he_cap = &sta->he_cap;
3db59a23 Kalle Valo   2019-06-12  1267  	u16 v;
17aca2d9 John Crispin 2019-06-03  1268  
17aca2d9 John Crispin 2019-06-03  1269  	if (!he_cap->has_he)
17aca2d9 John Crispin 2019-06-03  1270  		return;
17aca2d9 John Crispin 2019-06-03  1271  
17aca2d9 John Crispin 2019-06-03  1272  	arg->he_flag = true;
17aca2d9 John Crispin 2019-06-03  1273  
17aca2d9 John Crispin 2019-06-03 @1274  	memcpy(&arg->peer_he_cap_macinfo, he_cap->he_cap_elem.mac_cap_info,
17aca2d9 John Crispin 2019-06-03  1275  	       sizeof(arg->peer_he_cap_macinfo));

Smatch thinks these are different sizes...  I don't have a copy of
struct peer_assoc_params so I can't check.

17aca2d9 John Crispin 2019-06-03  1276  	memcpy(&arg->peer_he_cap_phyinfo, he_cap->he_cap_elem.phy_cap_info,
17aca2d9 John Crispin 2019-06-03  1277  	       sizeof(arg->peer_he_cap_phyinfo));
17aca2d9 John Crispin 2019-06-03  1278  	memcpy(&arg->peer_he_ops, &vif->bss_conf.he_operation,
17aca2d9 John Crispin 2019-06-03  1279  	       sizeof(arg->peer_he_ops));
cbdb3159 John Crispin 2019-06-17  1280  	arg->peer_he_cap_macinfo_internal = 0x0;
17aca2d9 John Crispin 2019-06-03  1281  
17aca2d9 John Crispin 2019-06-03  1282  	if (he_cap->he_cap_elem.phy_cap_info[6] &
17aca2d9 John Crispin 2019-06-03  1283  	    IEEE80211_HE_PHY_CAP6_PPE_THRESHOLD_PRESENT) {
17aca2d9 John Crispin 2019-06-03  1284  		int bit = 7;
17aca2d9 John Crispin 2019-06-03  1285  		int nss, ru;
17aca2d9 John Crispin 2019-06-03  1286  
17aca2d9 John Crispin 2019-06-03  1287  		arg->peer_ppet.numss_m1 = he_cap->ppe_thres[0] &
17aca2d9 John Crispin 2019-06-03  1288  					  IEEE80211_PPE_THRES_NSS_MASK;
17aca2d9 John Crispin 2019-06-03  1289  		arg->peer_ppet.ru_bit_mask =
17aca2d9 John Crispin 2019-06-03  1290  			(he_cap->ppe_thres[0] &
17aca2d9 John Crispin 2019-06-03  1291  			 IEEE80211_PPE_THRES_RU_INDEX_BITMASK_MASK) >>
17aca2d9 John Crispin 2019-06-03  1292  			IEEE80211_PPE_THRES_RU_INDEX_BITMASK_POS;
17aca2d9 John Crispin 2019-06-03  1293  
17aca2d9 John Crispin 2019-06-03  1294  		for (nss = 0; nss <= arg->peer_ppet.numss_m1; nss++) {
17aca2d9 John Crispin 2019-06-03  1295  			for (ru = 0; ru < 4; ru++) {
17aca2d9 John Crispin 2019-06-03  1296  				u32 val = 0;
17aca2d9 John Crispin 2019-06-03  1297  				int i;
17aca2d9 John Crispin 2019-06-03  1298  
17aca2d9 John Crispin 2019-06-03  1299  				if ((arg->peer_ppet.ru_bit_mask & BIT(ru)) == 0)
17aca2d9 John Crispin 2019-06-03  1300  					continue;
17aca2d9 John Crispin 2019-06-03  1301  				for (i = 0; i < 6; i++) {
17aca2d9 John Crispin 2019-06-03  1302  					val >>= 1;
17aca2d9 John Crispin 2019-06-03  1303  					val |= ((he_cap->ppe_thres[bit / 8] >>
17aca2d9 John Crispin 2019-06-03  1304  						 (bit % 8)) & 0x1) << 5;
17aca2d9 John Crispin 2019-06-03  1305  					bit++;
17aca2d9 John Crispin 2019-06-03  1306  				}
17aca2d9 John Crispin 2019-06-03  1307  				arg->peer_ppet.ppet16_ppet8_ru3_ru0[nss] |=
17aca2d9 John Crispin 2019-06-03  1308  								val << (ru * 6);
17aca2d9 John Crispin 2019-06-03  1309  			}
17aca2d9 John Crispin 2019-06-03  1310  		}
17aca2d9 John Crispin 2019-06-03  1311  	}
17aca2d9 John Crispin 2019-06-03  1312  
17aca2d9 John Crispin 2019-06-03  1313  	switch (sta->bandwidth) {
17aca2d9 John Crispin 2019-06-03  1314  	case IEEE80211_STA_RX_BW_160:
17aca2d9 John Crispin 2019-06-03  1315  		if (he_cap->he_cap_elem.phy_cap_info[0] &
17aca2d9 John Crispin 2019-06-03  1316  		    IEEE80211_HE_PHY_CAP0_CHANNEL_WIDTH_SET_80PLUS80_MHZ_IN_5G) {
3db59a23 Kalle Valo   2019-06-12  1317  			v = le16_to_cpu(he_cap->he_mcs_nss_supp.rx_mcs_80p80);
3db59a23 Kalle Valo   2019-06-12  1318  			arg->peer_he_rx_mcs_set[WMI_HECAP_TXRX_MCS_NSS_IDX_80_80] = v;
3db59a23 Kalle Valo   2019-06-12  1319  
3db59a23 Kalle Valo   2019-06-12  1320  			v = le16_to_cpu(he_cap->he_mcs_nss_supp.tx_mcs_80p80);
3db59a23 Kalle Valo   2019-06-12  1321  			arg->peer_he_tx_mcs_set[WMI_HECAP_TXRX_MCS_NSS_IDX_80_80] = v;
3db59a23 Kalle Valo   2019-06-12  1322  
17aca2d9 John Crispin 2019-06-03  1323  			arg->peer_he_mcs_count++;
17aca2d9 John Crispin 2019-06-03  1324  		}
3db59a23 Kalle Valo   2019-06-12  1325  
3db59a23 Kalle Valo   2019-06-12  1326  		v = le16_to_cpu(he_cap->he_mcs_nss_supp.rx_mcs_160);
3db59a23 Kalle Valo   2019-06-12  1327  		arg->peer_he_rx_mcs_set[WMI_HECAP_TXRX_MCS_NSS_IDX_160] = v;
3db59a23 Kalle Valo   2019-06-12  1328  
3db59a23 Kalle Valo   2019-06-12  1329  		v = le16_to_cpu(he_cap->he_mcs_nss_supp.tx_mcs_160);
3db59a23 Kalle Valo   2019-06-12  1330  		arg->peer_he_tx_mcs_set[WMI_HECAP_TXRX_MCS_NSS_IDX_160] = v;
3db59a23 Kalle Valo   2019-06-12  1331  
17aca2d9 John Crispin 2019-06-03  1332  		arg->peer_he_mcs_count++;
17aca2d9 John Crispin 2019-06-03  1333  		/* drop through */
17aca2d9 John Crispin 2019-06-03  1334  
17aca2d9 John Crispin 2019-06-03  1335  	default:
3db59a23 Kalle Valo   2019-06-12  1336  		v = le16_to_cpu(he_cap->he_mcs_nss_supp.rx_mcs_80);
3db59a23 Kalle Valo   2019-06-12  1337  		arg->peer_he_rx_mcs_set[WMI_HECAP_TXRX_MCS_NSS_IDX_80] = v;
3db59a23 Kalle Valo   2019-06-12  1338  		v = le16_to_cpu(he_cap->he_mcs_nss_supp.tx_mcs_80);
3db59a23 Kalle Valo   2019-06-12  1339  		arg->peer_he_tx_mcs_set[WMI_HECAP_TXRX_MCS_NSS_IDX_80] = v;
17aca2d9 John Crispin 2019-06-03  1340  		arg->peer_he_mcs_count++;
17aca2d9 John Crispin 2019-06-03  1341  		break;
17aca2d9 John Crispin 2019-06-03  1342  	}
258bbf52 Kalle Valo   2019-02-05  1343  }
258bbf52 Kalle Valo   2019-02-05  1344  

:::::: The code at line 1274 was first introduced by commit
:::::: 17aca2d9a969788a7f1e3e0c72b5485bf6a432a4 ath11k: add HE support

:::::: TO: John Crispin <john@phrozen.org>
:::::: CC: Kalle Valo <kvalo@codeaurora.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
