Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6D9477FE
	for <lists+ath10k@lfdr.de>; Mon, 17 Jun 2019 04:07:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sfvnVJ5Byx+3tT7pZ0taml8Pcj85Qp/YhZARPvmkrnc=; b=jmMs/0YlaGmGtn
	suClNdak+vY/bY6WAji/8qAucd3VKDI2D701NxnHXqmMtNWJlETSjefeI064VEKfsrILMpPftEWUb
	lKT61LX3hEn1XlwD+VpH1DtOa9rBSHnKcMYCXBOLxUwI+rpKGbxrU5QDZUWvmAc1Bd/4D+ayTWnY0
	Z/LvpIYorxx6XB19YJ30HNXRos8/gcAQ3rjnLxVUGa/jdDFi/TGMC0IlL7PsZxtSQ4sW/7IBpucG7
	JamO3OBp+WR5Mblbrtm2C7MU03iIjZkX9Fsv7BL2nN6+uQ1nYknYyHTVxTo0mrPHIeMvXQ9V+D4Q9
	t8APG8052uNwtEj7SAgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hch3R-0006N9-K4; Mon, 17 Jun 2019 02:07:29 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hch2z-0005z4-2d
 for ath10k@lists.infradead.org; Mon, 17 Jun 2019 02:07:02 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5H26rEe080866
 for <ath10k@lists.infradead.org>; Sun, 16 Jun 2019 22:06:57 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2t5vedyfdx-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <ath10k@lists.infradead.org>; Sun, 16 Jun 2019 22:06:57 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <ath10k@lists.infradead.org> from <alastair@au1.ibm.com>;
 Mon, 17 Jun 2019 03:06:54 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 17 Jun 2019 03:06:44 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5H26hYh40763590
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Jun 2019 02:06:43 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 153D14C040;
 Mon, 17 Jun 2019 02:06:43 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 65CF74C04A;
 Mon, 17 Jun 2019 02:06:42 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Mon, 17 Jun 2019 02:06:42 +0000 (GMT)
Received: from adsilva.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id 4D149A0225;
 Mon, 17 Jun 2019 12:06:41 +1000 (AEST)
From: "Alastair D'Silva" <alastair@au1.ibm.com>
To: alastair@d-silva.org
Subject: [PATCH v3 1/7] lib/hexdump.c: Fix selftests
Date: Mon, 17 Jun 2019 12:04:24 +1000
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190617020430.8708-1-alastair@au1.ibm.com>
References: <20190617020430.8708-1-alastair@au1.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19061702-0008-0000-0000-000002F449E2
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19061702-0009-0000-0000-000022615944
Message-Id: <20190617020430.8708-2-alastair@au1.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-17_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=925 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906170019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_190701_235751_80B16E03 
X-CRM114-Status: GOOD (  24.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-fbdev@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 Petr Mladek <pmladek@suse.com>, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-fsdevel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Benson Leung <bleung@chromium.org>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

From: Alastair D'Silva <alastair@d-silva.org>

The overflow tests did not account for the situation where no
overflow occurs and len < rowsize.

This patch renames the cryptic variables and accounts for the
above case.

The selftests now pass.

Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
---
 lib/test_hexdump.c | 47 ++++++++++++++++++++++++++--------------------
 1 file changed, 27 insertions(+), 20 deletions(-)

diff --git a/lib/test_hexdump.c b/lib/test_hexdump.c
index 5144899d3c6b..d78ddd62ffd0 100644
--- a/lib/test_hexdump.c
+++ b/lib/test_hexdump.c
@@ -163,45 +163,52 @@ static void __init test_hexdump_overflow(size_t buflen, size_t len,
 {
 	char test[TEST_HEXDUMP_BUF_SIZE];
 	char buf[TEST_HEXDUMP_BUF_SIZE];
-	int rs = rowsize, gs = groupsize;
-	int ae, he, e, f, r;
-	bool a;
+	int ascii_len, hex_len, expected_len, fill_point, ngroups, rc;
+	bool match;
 
 	total_tests++;
 
 	memset(buf, FILL_CHAR, sizeof(buf));
 
-	r = hex_dump_to_buffer(data_b, len, rs, gs, buf, buflen, ascii);
+	rc = hex_dump_to_buffer(data_b, len, rowsize, groupsize, buf, buflen, ascii);
 
 	/*
 	 * Caller must provide the data length multiple of groupsize. The
 	 * calculations below are made with that assumption in mind.
 	 */
-	ae = rs * 2 /* hex */ + rs / gs /* spaces */ + 1 /* space */ + len /* ascii */;
-	he = (gs * 2 /* hex */ + 1 /* space */) * len / gs - 1 /* no trailing space */;
+	ngroups = rowsize / groupsize;
+	hex_len = (groupsize * 2 /* hex */ + 1 /* spaces */) * ngroups
+		  - 1 /* no trailing space */;
+	ascii_len = hex_len + 2 /* space */ + len /* ascii */;
+
+	if (len < rowsize) {
+		ngroups = len / groupsize;
+		hex_len = (groupsize * 2 /* hex */ + 1 /* spaces */) * ngroups
+		  - 1 /* no trailing space */;
+	}
 
-	if (ascii)
-		e = ae;
-	else
-		e = he;
+	expected_len = (ascii) ? ascii_len : hex_len;
 
-	f = min_t(int, e + 1, buflen);
+	fill_point = min_t(int, expected_len + 1, buflen);
 	if (buflen) {
-		test_hexdump_prepare_test(len, rs, gs, test, sizeof(test), ascii);
-		test[f - 1] = '\0';
+		test_hexdump_prepare_test(len, rowsize, groupsize, test,
+					  sizeof(test), ascii);
+		test[fill_point - 1] = '\0';
 	}
-	memset(test + f, FILL_CHAR, sizeof(test) - f);
+	memset(test + fill_point, FILL_CHAR, sizeof(test) - fill_point);
 
-	a = r == e && !memcmp(test, buf, TEST_HEXDUMP_BUF_SIZE);
+	match = rc == expected_len && !memcmp(test, buf, TEST_HEXDUMP_BUF_SIZE);
 
 	buf[sizeof(buf) - 1] = '\0';
 
-	if (!a) {
-		pr_err("Len: %zu buflen: %zu strlen: %zu\n",
-			len, buflen, strnlen(buf, sizeof(buf)));
-		pr_err("Result: %d '%s'\n", r, buf);
-		pr_err("Expect: %d '%s'\n", e, test);
+	if (!match) {
+		pr_err("rowsize: %u groupsize: %u ascii: %d Len: %zu buflen: %zu strlen: %zu\n",
+			rowsize, groupsize, ascii, len, buflen,
+			strnlen(buf, sizeof(buf)));
+		pr_err("Result: %d '%-.*s'\n", rc, (int)buflen, buf);
+		pr_err("Expect: %d '%-.*s'\n", expected_len, (int)buflen, test);
 		failed_tests++;
+
 	}
 }
 
-- 
2.21.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
