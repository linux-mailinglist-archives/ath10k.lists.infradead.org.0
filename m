Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0129149F94
	for <lists+ath10k@lfdr.de>; Tue, 18 Jun 2019 13:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cinaoMv3mCZKXyYj926s5rTjwKo/D+PM0E1Z3VfjfA4=; b=Tzmd6of5q5mjEi
	gDNLsE5gwJ82/aJkoegAVaMnZkExb3NvMvVzLi9mJfPmvk5ioZG6vlbd059yykav2IeigBWGtFVPX
	jmNT/ilRp186uR8VC49IZE5pzES//xlr/6nDRLxBAejEJlhrMyPcspuMM0kDEvN9v4/Y8Fw5wYZWg
	vMs0fhDzMswE3UpoD4zdNWYQo/JswoiS+ZaSctEcAm+M1ETYTnrv9iTdEDQtLwlDoE/22aQWBV5zD
	EmDRZXRgMHkXm+Ad/uq/c2D0dekX8NERuZoVdA2BIPEEs+vmRC1KNiAv6w7RSsOreoesFjfNoW2EW
	qxuwgjcGy8ePs7RpuFjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCag-0000nW-Gi; Tue, 18 Jun 2019 11:47:54 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCad-0000kA-BB
 for ath10k@lists.infradead.org; Tue, 18 Jun 2019 11:47:52 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5IBhwEG153057;
 Tue, 18 Jun 2019 11:47:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=8NU4SCv8gORyn+c2ljIREb1QQMYmlkPZ91mLe4JB9dA=;
 b=vhtC7lPEdLtpE7hHuXMpzewHGDtYsaMiAl1VDMDLwrBbJb6onHw44BHTRvsbCsPDQ3GY
 gooWK6I/jKXgqTMv4EIWT1rjxx4TNyj8NvvFaYPSGyPSCCuM5Zju8GBWK6aSHHz0xtbc
 VcIrRN9ChJ4cRsPjWR4MjTSoL6t4PJzRymDiEF+qOSXEZRxds5qjVQ+w8OdymVclZGKc
 NKTd2KlJSWj8wDt7qnsXpA3bKChlbaikmIDubRdCr7Jb9lURuto5isI4rUGf/Zs2JG6v
 +jFPQOyXJyybpyZqI5YMtxrVvkbO/Q7AgSbno76WWzam2M1Ibb8T+yZFD7VClpJ7A6Zh FQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2t4r3tm0e5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Jun 2019 11:47:45 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5IBlKp3186875;
 Tue, 18 Jun 2019 11:47:44 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2t5h5tpf4a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Jun 2019 11:47:44 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5IBldMB018085;
 Tue, 18 Jun 2019 11:47:42 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 18 Jun 2019 04:47:39 -0700
Date: Tue, 18 Jun 2019 14:47:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: John Crispin <john@phrozen.org>
Subject: Re: [ath6kl:pending-ath11k 198/205]
 drivers/net/wireless/ath/ath11k/mac.c:1274 ath11k_peer_assoc_h_he() error:
 memcpy() 'he_cap->he_cap_elem.mac_cap_info' too small (6 vs 8)
Message-ID: <20190618114732.GD18776@kadam>
References: <20190618065329.GY1893@kadam>
 <be8949ff-7ac2-3570-05ec-342036a6f52e@phrozen.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <be8949ff-7ac2-3570-05ec-342036a6f52e@phrozen.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9291
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906180097
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9291
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906180097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_044751_471416_C85929A0 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Kalle Valo <kvalo@codeaurora.org>, kbuild@01.org,
 kbuild test robot <lkp@intel.com>, ath10k@lists.infradead.org,
 kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 08:59:55AM +0200, John Crispin wrote:
> 
> On 18/06/2019 08:53, kbuild test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git pending-ath11k
> > head:   0f82fec5679664bb91d6c167fd1a146f113e4197
> > commit: cbdb3159fdf450b7b3999a06600aa0e1fb78383f [198/205] ath11k: set additional values inside wmi_peer_assoc_complete_cmd
> > 
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > 
> > New smatch warnings:
> > drivers/net/wireless/ath/ath11k/mac.c:1274 ath11k_peer_assoc_h_he() error: memcpy() 'he_cap->he_cap_elem.mac_cap_info' too small (6 vs 8)
> > 
> > Old smatch warnings:
> > drivers/net/wireless/ath/ath11k/mac.c:1276 ath11k_peer_assoc_h_he() error: memcpy() 'he_cap->he_cap_elem.phy_cap_info' too small (11 vs 12)
> > 
> > # https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?id=cbdb3159fdf450b7b3999a06600aa0e1fb78383f
> > git remote add ath6kl https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git
> > git remote update ath6kl
> > git checkout cbdb3159fdf450b7b3999a06600aa0e1fb78383f
> > vim +1274 drivers/net/wireless/ath/ath11k/mac.c
> > 
> > 258bbf52 Kalle Valo   2019-02-05  1260
> > 258bbf52 Kalle Valo   2019-02-05  1261  static void ath11k_peer_assoc_h_he(struct ath11k *ar,
> > 258bbf52 Kalle Valo   2019-02-05  1262  				   struct ieee80211_vif *vif,
> > 258bbf52 Kalle Valo   2019-02-05  1263  				   struct ieee80211_sta *sta,
> > 258bbf52 Kalle Valo   2019-02-05  1264  				   struct peer_assoc_params *arg)
> > 258bbf52 Kalle Valo   2019-02-05  1265  {
> > 17aca2d9 John Crispin 2019-06-03  1266  	const struct ieee80211_sta_he_cap *he_cap = &sta->he_cap;
> > 3db59a23 Kalle Valo   2019-06-12  1267  	u16 v;
> > 17aca2d9 John Crispin 2019-06-03  1268
> > 17aca2d9 John Crispin 2019-06-03  1269  	if (!he_cap->has_he)
> > 17aca2d9 John Crispin 2019-06-03  1270  		return;
> > 17aca2d9 John Crispin 2019-06-03  1271
> > 17aca2d9 John Crispin 2019-06-03  1272  	arg->he_flag = true;
> > 17aca2d9 John Crispin 2019-06-03  1273
> > 17aca2d9 John Crispin 2019-06-03 @1274  	memcpy(&arg->peer_he_cap_macinfo, he_cap->he_cap_elem.mac_cap_info,
> > 17aca2d9 John Crispin 2019-06-03  1275  	       sizeof(arg->peer_he_cap_macinfo));
> > 
> > Smatch thinks these are different sizes...  I don't have a copy of
> > struct peer_assoc_params so I can't check.
> 
> Hi,
> 
> its he_cap->he_cap_elem.mac_cap_info[6] and arg->peer_he_cap_macinfo[2] and we only copy the first 2 elements as the FW only cares for the first 2 bytes.
> 

I did download the latest git.  The problem is that
he_cap->he_cap_elem.mac_cap_info[] is six bytes and arg->peer_he_cap_macinfo[]
is two u32s or eight bytes.  So we are reading beyond the end of the
array.

regards,
dan carpenter


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
