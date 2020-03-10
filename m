Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E724717F599
	for <lists+ath10k@lfdr.de>; Tue, 10 Mar 2020 12:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u/tDap9JZY++kqR2i5ACeTL891e/IvzdU75m2yAplvY=; b=bUAn5UiqDyeP4Y
	UQvZ9M7GZacbCSfusr293oQN+qXnSqBs2J7o9LOSEIjhlYutJlPVNXDxjL0kSzIKSWU2bqbrwyGB6
	sgOqXbU6JaLpctSVItHu/gD8qaUwsFQBn/NkhygL9Ko4qFMS5K1dPBxtILJ4omRaE3LW06fGJOZXA
	XIh/pNSzJ9lgAeFGgNTIhbUFzJmePabmL9UTbCIvvJ9tAYv8q1GVQJrF9xNvXJ7Cv39RetcyEpWBn
	bMTb7nSExVL/0A+hXxvLvobJKLBF8fV53hIVMkotSJWYWYbfdc6LH7AXjq68pBDFIedKQKAy44X+n
	3bvExz9u9gZoQUTMAHxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBcfl-0000rH-Dy; Tue, 10 Mar 2020 11:03:41 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBcff-0000ne-Av
 for ath10k@lists.infradead.org; Tue, 10 Mar 2020 11:03:37 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02AAsLc6028238;
 Tue, 10 Mar 2020 11:03:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2020-01-29;
 bh=y1L/bbTDxaNoJHBAfXPoOvIcTxkzjsOPubv/udzHkhU=;
 b=RGANz+tbZCDyX/LW8iwz6KN1zGlEjHqzQtCqyeAW8fZTyqs1D2Oa84SzNKd3ezCDox2z
 hmCX/08tFw4mjgyA/RCfQ5j99DRiRmKujNq03Hk/1e/TipZRAarB49URZog76NbW5JAm
 FGaf8PPmwYJE155VWmhRQLNHoQlwEq1yZQjDaJOXS63rmTNYIgIt31xo9fRiojMm7Myu
 RBFypumsp/jDk1BW/aglwT5Dq947agJfMpoTmsJJJtZZIGuScZB1Kn/0lNz4xFmqzbCN
 ByFURMKjWO2/F0Hsf3j58eneCGIVUsK7u0iO9lgeFtUR67M8FDBlImlJBXXZUOF7fL6A Ig== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2ym3jqmv54-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Mar 2020 11:03:23 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02AB2KMn015547;
 Tue, 10 Mar 2020 11:03:22 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2yp8ns1q45-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Mar 2020 11:03:22 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02AB3KEp005846;
 Tue, 10 Mar 2020 11:03:20 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 10 Mar 2020 04:03:19 -0700
Date: Tue, 10 Mar 2020 14:03:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@lists.01.org, Sriram R <srirrama@codeaurora.org>
Subject: [ath6kl:pending 32/34] drivers/net/wireless/ath/ath11k/mac.c:2431
 ath11k_mac_op_set_key() error: we previously assumed 'peer' could be null
 (see line 2406)
Message-ID: <20200310110313.GC11561@kadam>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9555
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0 phishscore=0
 spamscore=0 malwarescore=0 adultscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003100073
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9555
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 clxscore=1011
 priorityscore=1501 mlxscore=0 phishscore=0 mlxlogscore=999 impostorscore=0
 bulkscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003100073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_040335_459553_928812E2 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 1.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Tamizh Chelvam Raja <tamizhr@codeaurora.org>, kbuild-all@lists.01.org,
 ath10k@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git pending
head:   8098994ce0e3684547d874966af5d4c27c11f855
commit: a0ad1ebe9632f7077f8a827ea23fa1508383c6b0 [32/34] ath11k: Perform per-msdu rx processing

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

smatch warnings:
drivers/net/wireless/ath/ath11k/mac.c:2431 ath11k_mac_op_set_key() error: we previously assumed 'peer' could be null (see line 2406)

# https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?id=a0ad1ebe9632f7077f8a827ea23fa1508383c6b0
git remote add ath6kl https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git
git remote update ath6kl
git checkout a0ad1ebe9632f7077f8a827ea23fa1508383c6b0
vim +/peer +2431 drivers/net/wireless/ath/ath11k/mac.c

5c65159f28953 Kalle Valo           2019-11-23  2320  static int ath11k_mac_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
d5c65159f28953 Kalle Valo           2019-11-23  2321  				 struct ieee80211_vif *vif, struct ieee80211_sta *sta,
d5c65159f28953 Kalle Valo           2019-11-23  2322  				 struct ieee80211_key_conf *key)
d5c65159f28953 Kalle Valo           2019-11-23  2323  {
d5c65159f28953 Kalle Valo           2019-11-23  2324  	struct ath11k *ar = hw->priv;
d5c65159f28953 Kalle Valo           2019-11-23  2325  	struct ath11k_base *ab = ar->ab;
d5c65159f28953 Kalle Valo           2019-11-23  2326  	struct ath11k_vif *arvif = ath11k_vif_to_arvif(vif);
d5c65159f28953 Kalle Valo           2019-11-23  2327  	struct ath11k_peer *peer;
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2328  	struct ath11k_sta *arsta;
d5c65159f28953 Kalle Valo           2019-11-23  2329  	const u8 *peer_addr;
d5c65159f28953 Kalle Valo           2019-11-23  2330  	int ret = 0;
d5c65159f28953 Kalle Valo           2019-11-23  2331  	u32 flags = 0;
d5c65159f28953 Kalle Valo           2019-11-23  2332  
d5c65159f28953 Kalle Valo           2019-11-23  2333  	/* BIP needs to be done in software */
d5c65159f28953 Kalle Valo           2019-11-23  2334  	if (key->cipher == WLAN_CIPHER_SUITE_AES_CMAC ||
d5c65159f28953 Kalle Valo           2019-11-23  2335  	    key->cipher == WLAN_CIPHER_SUITE_BIP_GMAC_128 ||
d5c65159f28953 Kalle Valo           2019-11-23  2336  	    key->cipher == WLAN_CIPHER_SUITE_BIP_GMAC_256 ||
d5c65159f28953 Kalle Valo           2019-11-23  2337  	    key->cipher == WLAN_CIPHER_SUITE_BIP_CMAC_256)
d5c65159f28953 Kalle Valo           2019-11-23  2338  		return 1;
d5c65159f28953 Kalle Valo           2019-11-23  2339  
d5c65159f28953 Kalle Valo           2019-11-23  2340  	if (key->keyidx > WMI_MAX_KEY_INDEX)
d5c65159f28953 Kalle Valo           2019-11-23  2341  		return -ENOSPC;
d5c65159f28953 Kalle Valo           2019-11-23  2342  
d5c65159f28953 Kalle Valo           2019-11-23  2343  	mutex_lock(&ar->conf_mutex);
d5c65159f28953 Kalle Valo           2019-11-23  2344  
d5c65159f28953 Kalle Valo           2019-11-23  2345  	if (sta)
d5c65159f28953 Kalle Valo           2019-11-23  2346  		peer_addr = sta->addr;
d5c65159f28953 Kalle Valo           2019-11-23  2347  	else if (arvif->vdev_type == WMI_VDEV_TYPE_STA)
d5c65159f28953 Kalle Valo           2019-11-23  2348  		peer_addr = vif->bss_conf.bssid;
d5c65159f28953 Kalle Valo           2019-11-23  2349  	else
d5c65159f28953 Kalle Valo           2019-11-23  2350  		peer_addr = vif->addr;
d5c65159f28953 Kalle Valo           2019-11-23  2351  
d5c65159f28953 Kalle Valo           2019-11-23  2352  	key->hw_key_idx = key->keyidx;
d5c65159f28953 Kalle Valo           2019-11-23  2353  
d5c65159f28953 Kalle Valo           2019-11-23  2354  	/* the peer should not disappear in mid-way (unless FW goes awry) since
d5c65159f28953 Kalle Valo           2019-11-23  2355  	 * we already hold conf_mutex. we just make sure its there now.
d5c65159f28953 Kalle Valo           2019-11-23  2356  	 */
d5c65159f28953 Kalle Valo           2019-11-23  2357  	spin_lock_bh(&ab->base_lock);
d5c65159f28953 Kalle Valo           2019-11-23  2358  	peer = ath11k_peer_find(ab, arvif->vdev_id, peer_addr);
d5c65159f28953 Kalle Valo           2019-11-23  2359  	spin_unlock_bh(&ab->base_lock);
d5c65159f28953 Kalle Valo           2019-11-23  2360  
d5c65159f28953 Kalle Valo           2019-11-23  2361  	if (!peer) {
d5c65159f28953 Kalle Valo           2019-11-23  2362  		if (cmd == SET_KEY) {
d5c65159f28953 Kalle Valo           2019-11-23  2363  			ath11k_warn(ab, "cannot install key for non-existent peer %pM\n",
d5c65159f28953 Kalle Valo           2019-11-23  2364  				    peer_addr);
d5c65159f28953 Kalle Valo           2019-11-23  2365  			ret = -EOPNOTSUPP;
d5c65159f28953 Kalle Valo           2019-11-23  2366  			goto exit;
d5c65159f28953 Kalle Valo           2019-11-23  2367  		} else {
d5c65159f28953 Kalle Valo           2019-11-23  2368  			/* if the peer doesn't exist there is no key to disable
d5c65159f28953 Kalle Valo           2019-11-23  2369  			 * anymore
d5c65159f28953 Kalle Valo           2019-11-23  2370  			 */
d5c65159f28953 Kalle Valo           2019-11-23  2371  			goto exit;
d5c65159f28953 Kalle Valo           2019-11-23  2372  		}
d5c65159f28953 Kalle Valo           2019-11-23  2373  	}
d5c65159f28953 Kalle Valo           2019-11-23  2374  
d5c65159f28953 Kalle Valo           2019-11-23  2375  	if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE)
d5c65159f28953 Kalle Valo           2019-11-23  2376  		flags |= WMI_KEY_PAIRWISE;
d5c65159f28953 Kalle Valo           2019-11-23  2377  	else
d5c65159f28953 Kalle Valo           2019-11-23  2378  		flags |= WMI_KEY_GROUP;
d5c65159f28953 Kalle Valo           2019-11-23  2379  
d5c65159f28953 Kalle Valo           2019-11-23  2380  	ret = ath11k_install_key(arvif, key, cmd, peer_addr, flags);
d5c65159f28953 Kalle Valo           2019-11-23  2381  	if (ret) {
d5c65159f28953 Kalle Valo           2019-11-23  2382  		ath11k_warn(ab, "ath11k_install_key failed (%d)\n", ret);
d5c65159f28953 Kalle Valo           2019-11-23  2383  		goto exit;
d5c65159f28953 Kalle Valo           2019-11-23  2384  	}
d5c65159f28953 Kalle Valo           2019-11-23  2385  
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2386  	ret = ath11k_dp_peer_rx_pn_replay_config(arvif, peer_addr, cmd, key);
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2387  	if (ret) {
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2388  		ath11k_warn(ab, "failed to offload PN replay detection %d\n", ret);
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2389  		goto exit;
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2390  	}
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2391  
d5c65159f28953 Kalle Valo           2019-11-23  2392  	spin_lock_bh(&ab->base_lock);
d5c65159f28953 Kalle Valo           2019-11-23  2393  	peer = ath11k_peer_find(ab, arvif->vdev_id, peer_addr);
481e5890884c05 Manikanta Pubbisetty 2020-02-14  2394  	if (peer && cmd == SET_KEY) {
d5c65159f28953 Kalle Valo           2019-11-23  2395  		peer->keys[key->keyidx] = key;
481e5890884c05 Manikanta Pubbisetty 2020-02-14  2396  		if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE)
481e5890884c05 Manikanta Pubbisetty 2020-02-14  2397  			peer->ucast_keyidx = key->keyidx;
481e5890884c05 Manikanta Pubbisetty 2020-02-14  2398  		else
481e5890884c05 Manikanta Pubbisetty 2020-02-14  2399  			peer->mcast_keyidx = key->keyidx;
481e5890884c05 Manikanta Pubbisetty 2020-02-14  2400  	} else if (peer && cmd == DISABLE_KEY) {
d5c65159f28953 Kalle Valo           2019-11-23  2401  		peer->keys[key->keyidx] = NULL;
481e5890884c05 Manikanta Pubbisetty 2020-02-14  2402  		if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE)
481e5890884c05 Manikanta Pubbisetty 2020-02-14  2403  			peer->ucast_keyidx = 0;
481e5890884c05 Manikanta Pubbisetty 2020-02-14  2404  		else
481e5890884c05 Manikanta Pubbisetty 2020-02-14  2405  			peer->mcast_keyidx = 0;
481e5890884c05 Manikanta Pubbisetty 2020-02-14 @2406  	} else if (!peer)
d5c65159f28953 Kalle Valo           2019-11-23  2407  		/* impossible unless FW goes crazy */
d5c65159f28953 Kalle Valo           2019-11-23  2408  		ath11k_warn(ab, "peer %pM disappeared!\n", peer_addr);

return?

4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2409  
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2410  	if (sta) {
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2411  		arsta = (struct ath11k_sta *)sta->drv_priv;
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2412  
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2413  		switch (key->cipher) {
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2414  		case WLAN_CIPHER_SUITE_TKIP:
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2415  		case WLAN_CIPHER_SUITE_CCMP:
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2416  		case WLAN_CIPHER_SUITE_CCMP_256:
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2417  		case WLAN_CIPHER_SUITE_GCMP:
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2418  		case WLAN_CIPHER_SUITE_GCMP_256:
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2419  			if (cmd == SET_KEY)
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2420  				arsta->pn_type = HAL_PN_TYPE_WPA;
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2421  			else
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2422  				arsta->pn_type = HAL_PN_TYPE_NONE;
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2423  			break;
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2424  		default:
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2425  			arsta->pn_type = HAL_PN_TYPE_NONE;
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2426  			break;
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2427  		}
4ba8cd524555a1 Manikanta Pubbisetty 2020-02-14  2428  	}
a0ad1ebe9632f7 Sriram R             2020-02-17  2429  
a0ad1ebe9632f7 Sriram R             2020-02-17  2430  	if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE)
a0ad1ebe9632f7 Sriram R             2020-02-17 @2431  		peer->sec_type = ath11k_dp_tx_get_encrypt_type(key->cipher);
                                                                ^^^^^^^^^^^^^^

a0ad1ebe9632f7 Sriram R             2020-02-17  2432  	else
a0ad1ebe9632f7 Sriram R             2020-02-17  2433  		peer->sec_type_grp = ath11k_dp_tx_get_encrypt_type(key->cipher);
a0ad1ebe9632f7 Sriram R             2020-02-17  2434  
d5c65159f28953 Kalle Valo           2019-11-23  2435  	spin_unlock_bh(&ab->base_lock);
d5c65159f28953 Kalle Valo           2019-11-23  2436  
d5c65159f28953 Kalle Valo           2019-11-23  2437  exit:
d5c65159f28953 Kalle Valo           2019-11-23  2438  	mutex_unlock(&ar->conf_mutex);
d5c65159f28953 Kalle Valo           2019-11-23  2439  	return ret;
d5c65159f28953 Kalle Valo           2019-11-23  2440  }

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
