Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C68123F22
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 06:29:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B66UP9XIdQEMpU+2LIf31z8pww/c+nFHoVxNcMuIe+E=; b=BpTRrDnfiku/iG
	veJK7F2J5hZFRjN51a1AJ/kCJ/o9M93Nu1Lg/XKUi3HBK7IVCHrN1pI+loeOSpJtJALckU2cwgduT
	+0h6lK54RxDDdwbwUp2Vzn5ProfFWfKH8Lp5of4PjSc9VCbYkixTdA5KSVJfclVMrArjH95e/vDl2
	ozR11nzQUDJZUJdZj43J4V7b+gd0hZKwjSt8+pj1/NWJ2LnvqM4hFNAbBv8QQfhR2TMQ2e4XJyPQ4
	FOorbiFd197JnkBACEI/0euOw0fOu1eMZtTK0karIiqXpUJQrsuKbncnm91ZgC7D2j37eWOeZJF4X
	Qbj+n1USXfL5ZG6Qm6lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihRtz-0006ao-M8; Wed, 18 Dec 2019 05:29:39 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihRtw-0006aM-2g
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 05:29:37 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBI5F1cc014132;
 Wed, 18 Dec 2019 05:29:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=zJTs4wkULJS+a90GrfbPGPpqSA2lLPv3IbJQu22kaxc=;
 b=T/iqncc02AxcwFXTyn20lWBtPJO/UXWHlqz6WZqXzpjsH6sEKZA054U0fpH6Qthy3DOD
 USLvF8alc3h1ZpoHd5dNrpPQPMM466nJDgcDV7LwgZ3/dqnJfrmaLtSSOgt6g8yLAE4I
 V9DKLlnBomA6+iZEo3svlKJJWDVqKjtB4i1JQmR0EiisJkh8B/K52e8j1xjoYy6REnF1
 LFxEmuIm+mgMdz+2Hgtc+qVNMd1I94GriZDV2lqeUVtFlHuMmirgCGxfQQybL3MPhklj
 VKFDbvJ8XelKyMBqJkkxQIljDh9Fp2JV3EU1j3KzUi/z3O4BquWG6VdXjb+luIv+uB30 nw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2wvq5uke0w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Dec 2019 05:29:30 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBI5K44h144475;
 Wed, 18 Dec 2019 05:27:29 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2wxm4wv80s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Dec 2019 05:27:29 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xBI5RSRh023838;
 Wed, 18 Dec 2019 05:27:28 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 17 Dec 2019 21:27:27 -0800
Date: Wed, 18 Dec 2019 08:27:21 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [bug report] mmc: core: Re-work HW reset for SDIO cards
Message-ID: <20191218052721.GC2524@kadam>
References: <20191213185050.m6iku7defq44syrl@kili.mountain>
 <CAPDyKFoKvhGDuQ+C0Sp2N3==CXiMWfpcrT28+dQ2+Nq_UPaXYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFoKvhGDuQ+C0Sp2N3==CXiMWfpcrT28+dQ2+Nq_UPaXYQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9474
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912180041
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9474
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912180041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_212936_205944_856880ED 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 08:54:47AM +0100, Ulf Hansson wrote:
> + Kalle
> 
> On Fri, 13 Dec 2019 at 19:51, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > Hello Ulf Hansson,
> >
> > The patch 2ac55d5e5ec9: "mmc: core: Re-work HW reset for SDIO cards"
> > from Oct 17, 2019, leads to the following static checker warning:
> >
> >         drivers/net/wireless/ath/ath10k/sdio.c:1521 ath10k_sdio_hif_power_down()
> >         warn: 'ret' can be either negative or positive
> 
> Thanks for reporting!
> 
> >
> > drivers/net/wireless/ath/ath10k/sdio.c
> >   1495  static void ath10k_sdio_hif_power_down(struct ath10k *ar)
> >   1496  {
> >   1497          struct ath10k_sdio *ar_sdio = ath10k_sdio_priv(ar);
> >   1498          int ret;
> >   1499
> >   1500          if (ar_sdio->is_disabled)
> >   1501                  return;
> >   1502
> >   1503          ath10k_dbg(ar, ATH10K_DBG_BOOT, "sdio power off\n");
> >   1504
> >   1505          /* Disable the card */
> >   1506          sdio_claim_host(ar_sdio->func);
> >   1507
> >   1508          ret = sdio_disable_func(ar_sdio->func);
> >   1509          if (ret) {
> >   1510                  ath10k_warn(ar, "unable to disable sdio function: %d\n", ret);
> >   1511                  sdio_release_host(ar_sdio->func);
> >   1512                  return;
> >   1513          }
> >   1514
> >   1515          ret = mmc_hw_reset(ar_sdio->func->card->host);
> >   1516          if (ret)
> >
> > It used to be that mmc_hw_reset() return negative error codes or zero
> > but now it returns 1 on certain success paths.
> 
> Correct.
> 
> I was actually looking into this while changing the behaviour of
> mmc_hw_reset(). However I decided to leave this as is.
> 
> The main reason is, that mmc_hw_reset() is not going to power down the
> card. It's hard power cycle, so I am kind of surprised that is being
> used at all in this path. This in combination of expecting the value
> from mmc_hw_reset() to never be 1 here, seemed like a good idea to
> preserve the logging of the warning message.
> 
> To silent the static checker tool from warning, we could check
> explicitly for "1". Is that something you want me to do?

I feel like checking for 1 would be more readable for humans as well.

Or we could just leave it as-is.  I'm not likely to ever publish this
static checker warning.

regards,
dan carpenter


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
