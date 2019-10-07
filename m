Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE232CDDB4
	for <lists+ath10k@lfdr.de>; Mon,  7 Oct 2019 10:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OiiuAUHr0tQ2Qb1N8YcyBBNrvi35lWQHEnVOYb2X8vU=; b=UkCE61ANTDBnlx
	ogFn9HY7asXLWL4qzR1j9LHDiLJric3WXgaz/mdEdd7JvhRs5gshh+DA/szTEUZjLMg1XZ05FzpoQ
	OleFZwjBGyHRPVVCGntn9Wn1XjK8LRC9AsmBgsDhgiUEOZ6lswRUWR8+QkmkqNjFri6fOcnApJlvn
	GkN5tRdTgZHqSpnCw/mYD5CTY9S7nBl+n1nDfBYwGu0/J8sqlwyI/Ky1yKK0d3vccztRGJIIW4saE
	Z3vD5e407LGX8QgFKNHXK8TCS89F+38o8IG920j77SR2tWk18z3hERtIpQWGwx78FWthMwEFB7TrK
	FiPbxHzADtTmHKdKcF1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOim-0002w2-L5; Mon, 07 Oct 2019 08:50:24 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOii-0002vR-KP
 for ath10k@lists.infradead.org; Mon, 07 Oct 2019 08:50:22 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x978nXvk179074;
 Mon, 7 Oct 2019 08:50:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=VQkZryK2aezDQNpWThieE0WO7967+E1fkMMie3Eegdo=;
 b=obakWYpvHBG2ARRqe+EpaNnzB0bN+LSzntonSM93zUGKxr82Nh3dcWEM9xKI8tJRRNsF
 C+SqkOSSCExnL6bZp4I3vD0HMHakvRtzirQ9ZlMl20aAsALC0XFH3p/99JZ6tCT5kVNC
 S2Fa9Tj56tVALVZyJgFHo47M+G9oBnX+I2FPx0uSNMw9aMW3KIiIjNMeecyuW0MrZIZ2
 z3gtQUgzvCcu9QvzukpOC+GsTlSqhR+Kykz5Mp0nli2Ggvdt9JaIoiSnp4586IjWqqLT
 TvhySNDS9XlYfThxkq35nl7ldMyhTWa6h7GSUpH45XcsKDsiQPiitaOaJMHai/NRMoZe Og== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2vek4q5dg0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Oct 2019 08:50:12 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x978nQSI168538;
 Mon, 7 Oct 2019 08:50:11 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2vf4ph4xjm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 07 Oct 2019 08:50:11 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x978oAdj003856;
 Mon, 7 Oct 2019 08:50:10 GMT
Received: from mwanda (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 07 Oct 2019 08:50:09 +0000
Date: Mon, 7 Oct 2019 11:50:03 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kalle Valo <kvalo@codeaurora.org>, Govind Singh <govinds@codeaurora.org>
Subject: [PATCH] ath10k: Fix an && vs || typo
Message-ID: <20191007085003.GB3865@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9402
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910070092
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9402
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910070092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_015020_756113_1D73F4B3 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

The kernel will Oops later in the function if either of these pointers
is NULL so clearly || was intended instead of &&.

Fixes: 3f14b73c3843 ("ath10k: Enable MSA region dump support for WCN3990")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/net/wireless/ath/ath10k/snoc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/snoc.c b/drivers/net/wireless/ath/ath10k/snoc.c
index cd22c8654aa9..16177497bba7 100644
--- a/drivers/net/wireless/ath/ath10k/snoc.c
+++ b/drivers/net/wireless/ath/ath10k/snoc.c
@@ -1400,7 +1400,7 @@ static void ath10k_msa_dump_memory(struct ath10k *ar,
 	size_t buf_len;
 	u8 *buf;
 
-	if (!crash_data && !crash_data->ramdump_buf)
+	if (!crash_data || !crash_data->ramdump_buf)
 		return;
 
 	mem_layout = ath10k_coredump_get_mem_layout(ar);
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
