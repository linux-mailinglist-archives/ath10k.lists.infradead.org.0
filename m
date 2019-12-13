Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98BA11EABA
	for <lists+ath10k@lfdr.de>; Fri, 13 Dec 2019 19:51:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4sDHm/KOzOFxek/DZFrsZEJF9S0KA6FXV9iusNfdNmw=; b=uGDv08qF2IkXVm
	s+30tWBXYX2OPFzLJOzvqYMF/U1o7ZvS9prVyTssnqzvK5kS43KQcCuL6IFU2/cQttOPMFwTw9LBA
	jUUd5MWWF4NWOPOQ7y4qQK3UCSOYBAk+sBMD/6KYKtyrMIT1o7ujylnN58gts99mF0DHgGj73Ffkr
	7OmCuur5w50mWYuqXMYZwZwvUociV4fkNKZWTDIfrNuTm/YzHh9kercJq8bUU5xFKYIzacis1ucpb
	sDy7IK7xSSLFF03Ls00kGuQ82Vio2/x3tUCFDWfQwOtik1x5LpCOkNtv2C6kgPIHl72irw5MSmslE
	WY8TFIghJ8J6RnNeP2Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifq1u-0004ig-8X; Fri, 13 Dec 2019 18:51:10 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifq1n-0004ek-O5
 for ath10k@lists.infradead.org; Fri, 13 Dec 2019 18:51:08 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBDIiSiO187214;
 Fri, 13 Dec 2019 18:51:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=OHdV8pT7zAW4ljzAh7kGrjCK8SyrDdk1D8mSHJct65s=;
 b=by25lE7Pa3vr6Wr3ZMDaPNxZkoKmR1Uh67/9Uf0F+sxbN1bNqn2E4CPKEp0J/LoA+aVa
 FhjFN50tBY0WK/R8yqv0GBpJIfwDSPyPwg3b7+d4glAJsPLnOKBy4z/EMcOOMbfoyPRs
 +C7W1SRIQhWXv2u0Jtn1iJSxB9NV0Y0kfFBwLeuGBESBIqqLAyCi0HbYhBXWgW1rtwXA
 sdNUj9EJWOE1JmHv4nzljOtu9TlOExPQxnKOyfiyHcEKw7TBQsp3n5a4vs2QD7dsFOJI
 /bYc86Y5eAX6SzdzMpWYzuuFPXkv3GfXjsN7W9IWtYt/13+kp4jsmOaE3dyZCo68Q06H ng== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2wr41qts65-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Dec 2019 18:51:00 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBDImZEr013240;
 Fri, 13 Dec 2019 18:50:59 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2wvdwq9f79-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 13 Dec 2019 18:50:59 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xBDIowPB029384;
 Fri, 13 Dec 2019 18:50:58 GMT
Received: from kili.mountain (/129.205.23.165)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 13 Dec 2019 10:50:57 -0800
Date: Fri, 13 Dec 2019 21:50:50 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: ulf.hansson@linaro.org
Subject: [bug report] mmc: core: Re-work HW reset for SDIO cards
Message-ID: <20191213185050.m6iku7defq44syrl@kili.mountain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9470
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=689
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912130145
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9470
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=751 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912130145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_105103_863784_36446B7C 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hello Ulf Hansson,

The patch 2ac55d5e5ec9: "mmc: core: Re-work HW reset for SDIO cards"
from Oct 17, 2019, leads to the following static checker warning:

	drivers/net/wireless/ath/ath10k/sdio.c:1521 ath10k_sdio_hif_power_down()
	warn: 'ret' can be either negative or positive

drivers/net/wireless/ath/ath10k/sdio.c
  1495  static void ath10k_sdio_hif_power_down(struct ath10k *ar)
  1496  {
  1497          struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
  1498          int ret;
  1499  
  1500          if (ar_sdio->is_disabled)
  1501                  return;
  1502  
  1503          ath10k_dbg(ar, ATH10K_DBG_BOOT, "sdio power off\n");
  1504  
  1505          /* Disable the card */
  1506          sdio_claim_host(ar_sdio->func);
  1507  
  1508          ret = sdio_disable_func(ar_sdio->func);
  1509          if (ret) {
  1510                  ath10k_warn(ar, "unable to disable sdio function: %d\n", ret);
  1511                  sdio_release_host(ar_sdio->func);
  1512                  return;
  1513          }
  1514  
  1515          ret = mmc_hw_reset(ar_sdio->func->card->host);
  1516          if (ret)

It used to be that mmc_hw_reset() return negative error codes or zero
but now it returns 1 on certain success paths.

  1517                  ath10k_warn(ar, "unable to reset sdio: %d\n", ret);
  1518  
  1519          sdio_release_host(ar_sdio->func);
  1520  
  1521          ar_sdio->is_disabled = true;
  1522  }


regards,
dan carpenter

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
