Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3655917222
	for <lists+ath10k@lfdr.de>; Wed,  8 May 2019 09:03:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMsSvYe1y+B1fT4+6aaUNhTqb3tClTephV4w4G6lOhM=; b=N7zvJDs6cveKKy
	2xPFJ01l6B6Rs1o3cjvDeBB7gwJcAZ0QEKxIeaFOAbxr+T2RGuyPzqTq65JUFB9IYLBo0L2AwJOzR
	k8CfOW18M32MKx2nfAjp9PReqzjLSF9l/rg8QR7mGF2c2Q5vwBGX/4OQgwlruEKvau8+ZS9US9Mir
	fEEW+VgW99VG+QUDNyX4NqWvkKnaDZif2Q0IpkfryAMgQ4m0qn18H+CC31ZwlqJ5hZLJ8DUPBccPA
	5RjDM5fdw0u+L0PQpBN32rkTDfxxM7XFMdnWHfFzUQGrQP5kKmts3F7eJL0krCpJyKUN5LmElbZFu
	mQo4Nqfy2OH2pE67VnSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGbg-0005wj-De; Wed, 08 May 2019 07:03:12 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGbN-0005f9-4Y
 for ath10k@lists.infradead.org; Wed, 08 May 2019 07:02:56 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x48725tZ020514
 for <ath10k@lists.infradead.org>; Wed, 8 May 2019 03:02:52 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2sbrxkm0fr-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <ath10k@lists.infradead.org>; Wed, 08 May 2019 03:02:52 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <ath10k@lists.infradead.org> from <alastair@au1.ibm.com>;
 Wed, 8 May 2019 08:02:50 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 8 May 2019 08:02:41 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4872euL55181412
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 8 May 2019 07:02:40 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 130A8AE058;
 Wed,  8 May 2019 07:02:40 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2C072AE053;
 Wed,  8 May 2019 07:02:39 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed,  8 May 2019 07:02:39 +0000 (GMT)
Received: from adsilva.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id 7E655A03C4;
 Wed,  8 May 2019 17:02:35 +1000 (AEST)
From: "Alastair D'Silva" <alastair@au1.ibm.com>
To: alastair@d-silva.org
Subject: [PATCH v2 7/7] lib/hexdump.c: Optionally retain byte ordering
Date: Wed,  8 May 2019 17:01:47 +1000
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190508070148.23130-1-alastair@au1.ibm.com>
References: <20190508070148.23130-1-alastair@au1.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19050807-4275-0000-0000-00000332844E
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050807-4276-0000-0000-00003841F1F4
Message-Id: <20190508070148.23130-8-alastair@au1.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-08_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905080046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_000253_254127_CE1783C0 
X-CRM114-Status: GOOD (  29.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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

The behaviour of hexdump groups is to print the data out as if
it was a native-endian number.

This patch tweaks the documentation to make this clear, and also
adds the HEXDUMP_RETAIN_BYTE_ORDER flag to allow groups of
multiple bytes to be printed without affecting the ordering
of the printed bytes.

Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
---
 include/linux/printk.h |  1 +
 lib/hexdump.c          | 30 +++++++++++++++++----
 lib/test_hexdump.c     | 60 +++++++++++++++++++++++++++++-------------
 3 files changed, 68 insertions(+), 23 deletions(-)

diff --git a/include/linux/printk.h b/include/linux/printk.h
index 5231a14e4593..15277d50159c 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -488,6 +488,7 @@ enum {
 #define HEXDUMP_2_GRP_SPACES		(1 << 5)
 #define HEXDUMP_4_GRP_SPACES		(1 << 6)
 #define HEXDUMP_8_GRP_SPACES		(1 << 7)
+#define HEXDUMP_RETAIN_BYTE_ORDER	(1 << 8)
 
 extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
 			      int groupsize, char *linebuf, size_t linebuflen,
diff --git a/lib/hexdump.c b/lib/hexdump.c
index febd614406d1..bfc9800630ae 100644
--- a/lib/hexdump.c
+++ b/lib/hexdump.c
@@ -127,7 +127,8 @@ static void separator_parameters(u64 flags, int groupsize, int *sep_chars,
  * @buf: data blob to dump
  * @len: number of bytes in the @buf
  * @rowsize: number of bytes to print per line; must be a multiple of groupsize
- * @groupsize: number of bytes to print at a time (1, 2, 4, 8; default = 1)
+ * @groupsize: number of bytes to convert to a native endian number and print:
+ * 	       1, 2, 4, 8; default = 1
  * @linebuf: where to put the converted data
  * @linebuflen: total size of @linebuf, including space for terminating NUL
  * @flags: A bitwise OR of the following flags:
@@ -138,6 +139,9 @@ static void separator_parameters(u64 flags, int groupsize, int *sep_chars,
  *	HEXDUMP_2_GRP_SPACES:		insert a ' ' after every 2 groups
  *	HEXDUMP_4_GRP_SPACES:		insert a ' ' after every 4 groups
  *	HEXDUMP_8_GRP_SPACES:		insert a ' ' after every 8 groups
+ *	HEXDUMP_RETAIN_BYTE_ORDER:	Retain the byte ordering of groups
+ *					instead of treating each group as a
+ *					native-endian number
  *
  * hex_dump_to_buffer() works on one "line" of output at a time, converting
  * <groupsize> bytes of input to hexadecimal (and optionally printable ASCII)
@@ -171,6 +175,7 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 	int ret;
 	int sep_chars = 0;
 	char sep = 0;
+	bool big_endian = (flags & HEXDUMP_RETAIN_BYTE_ORDER) ? 1 : 0;
 
 	if (!is_power_of_2(groupsize) || groupsize > 8)
 		groupsize = 1;
@@ -202,10 +207,13 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 		const u64 *ptr8 = buf;
 
 		for (j = 0; j < ngroups; j++) {
+			u64 val = big_endian ?
+					be64_to_cpu(get_unaligned(ptr8 + j)) :
+					get_unaligned(ptr8 + j);
 			ret = snprintf(linebuf + lx, linebuflen - lx,
 				       "%s%16.16llx",
 				       j ? group_separator(j, flags) : "",
-				       get_unaligned(ptr8 + j));
+				       val);
 			if (ret >= linebuflen - lx)
 				goto overflow1;
 			lx += ret;
@@ -214,10 +222,14 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 		const u32 *ptr4 = buf;
 
 		for (j = 0; j < ngroups; j++) {
+			u32 val = big_endian ?
+					be32_to_cpu(get_unaligned(ptr4 + j)) :
+					get_unaligned(ptr4 + j);
+
 			ret = snprintf(linebuf + lx, linebuflen - lx,
 				       "%s%8.8x",
 				       j ? group_separator(j, flags) : "",
-				       get_unaligned(ptr4 + j));
+				       val);
 			if (ret >= linebuflen - lx)
 				goto overflow1;
 			lx += ret;
@@ -226,10 +238,14 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 		const u16 *ptr2 = buf;
 
 		for (j = 0; j < ngroups; j++) {
+			u16 val = big_endian ?
+					be16_to_cpu(get_unaligned(ptr2 + j)) :
+					get_unaligned(ptr2 + j);
+
 			ret = snprintf(linebuf + lx, linebuflen - lx,
 				       "%s%4.4x",
 				       j ? group_separator(j, flags) : "",
-				       get_unaligned(ptr2 + j));
+				       val);
 			if (ret >= linebuflen - lx)
 				goto overflow1;
 			lx += ret;
@@ -331,7 +347,8 @@ static void announce_skipped(const char *level, const char *prefix_str,
  * @prefix_type: controls whether prefix of an offset, address, or none
  *  is printed (%DUMP_PREFIX_OFFSET, %DUMP_PREFIX_ADDRESS, %DUMP_PREFIX_NONE)
  * @rowsize: number of bytes to print per line; must be a multiple of groupsize
- * @groupsize: number of bytes to print at a time (1, 2, 4, 8; default = 1)
+ * @groupsize: number of bytes to convert to a native endian number and print:
+ * 	       1, 2, 4, 8; default = 1
  * @buf: data blob to dump
  * @len: number of bytes in the @buf
  * @ascii: include ASCII after the hex output
@@ -342,6 +359,9 @@ static void announce_skipped(const char *level, const char *prefix_str,
  *	HEXDUMP_2_GRP_LINES:		insert a '|' after every 2 groups
  *	HEXDUMP_4_GRP_LINES:		insert a '|' after every 4 groups
  *	HEXDUMP_8_GRP_LINES:		insert a '|' after every 8 groups
+ *	HEXDUMP_RETAIN_BYTE_ORDER:	Retain the byte ordering of groups
+ *					instead of treating each group as a
+ *					native-endian number
  *
  * Given a buffer of u8 data, print_hex_dump() prints a hex + ASCII dump
  * to the kernel log at the specified kernel log level, with an optional
diff --git a/lib/test_hexdump.c b/lib/test_hexdump.c
index ae340c5c1c6f..1e510e934568 100644
--- a/lib/test_hexdump.c
+++ b/lib/test_hexdump.c
@@ -98,14 +98,15 @@ static unsigned failed_tests __initdata;
 
 static void __init test_hexdump_prepare_test(size_t len, int rowsize,
 					     int groupsize, char *test,
-					     size_t testlen, bool ascii)
+					     size_t testlen, u64 flags)
 {
 	char *p;
 	const char * const *result;
 	size_t l = len;
 	int gs = groupsize, rs = rowsize;
 	unsigned int i;
-	const bool is_be = IS_ENABLED(CONFIG_CPU_BIG_ENDIAN);
+	const bool is_be = IS_ENABLED(CONFIG_CPU_BIG_ENDIAN) ||
+			(flags & HEXDUMP_RETAIN_BYTE_ORDER);
 
 	if (l > rs)
 		l = rs;
@@ -142,7 +143,7 @@ static void __init test_hexdump_prepare_test(size_t len, int rowsize,
 		p--;
 
 	/* ASCII part */
-	if (ascii) {
+	if (flags & HEXDUMP_ASCII) {
 		do {
 			*p++ = ' ';
 		} while (p < test + rs * 2 + rs / gs + 1);
@@ -157,7 +158,7 @@ static void __init test_hexdump_prepare_test(size_t len, int rowsize,
 #define TEST_HEXDUMP_BUF_SIZE		(64 * 3 + 2 + 64 + 1)
 
 static void __init test_hexdump(size_t len, int rowsize, int groupsize,
-				bool ascii)
+				u64 flags)
 {
 	char test[TEST_HEXDUMP_BUF_SIZE];
 	char real[TEST_HEXDUMP_BUF_SIZE];
@@ -166,11 +167,11 @@ static void __init test_hexdump(size_t len, int rowsize, int groupsize,
 
 	memset(real, FILL_CHAR, sizeof(real));
 	hex_dump_to_buffer(data_b, len, rowsize, groupsize, real, sizeof(real),
-			   ascii ? HEXDUMP_ASCII : 0);
+			   flags);
 
 	memset(test, FILL_CHAR, sizeof(test));
 	test_hexdump_prepare_test(len, rowsize, groupsize, test, sizeof(test),
-				  ascii);
+				  flags);
 
 	if (memcmp(test, real, TEST_HEXDUMP_BUF_SIZE)) {
 		pr_err("Len: %zu row: %d group: %d\n", len, rowsize, groupsize);
@@ -193,7 +194,7 @@ static void __init test_hexdump_set(int rowsize, bool ascii)
 
 static void __init test_hexdump_overflow(size_t buflen, size_t len,
 					 int rowsize, int groupsize,
-					 bool ascii)
+					 u64 flags)
 {
 	char test[TEST_HEXDUMP_BUF_SIZE];
 	char buf[TEST_HEXDUMP_BUF_SIZE];
@@ -205,7 +206,7 @@ static void __init test_hexdump_overflow(size_t buflen, size_t len,
 	memset(buf, FILL_CHAR, sizeof(buf));
 
 	rc = hex_dump_to_buffer(data_b, len, rowsize, groupsize, buf, buflen,
-				ascii ? HEXDUMP_ASCII : 0);
+				flags);
 
 	/*
 	 * Caller must provide the data length multiple of groupsize. The
@@ -222,12 +223,12 @@ static void __init test_hexdump_overflow(size_t buflen, size_t len,
 		  - 1 /* no trailing space */;
 	}
 
-	expected_len = (ascii) ? ascii_len : hex_len;
+	expected_len = (flags & HEXDUMP_ASCII) ? ascii_len : hex_len;
 
 	fill_point = min_t(int, expected_len + 1, buflen);
 	if (buflen) {
 		test_hexdump_prepare_test(len, rowsize, groupsize, test,
-					  sizeof(test), ascii);
+					  sizeof(test), flags);
 		test[fill_point - 1] = '\0';
 	}
 	memset(test + fill_point, FILL_CHAR, sizeof(test) - fill_point);
@@ -237,8 +238,8 @@ static void __init test_hexdump_overflow(size_t buflen, size_t len,
 	buf[sizeof(buf) - 1] = '\0';
 
 	if (!match) {
-		pr_err("rowsize: %u groupsize: %u ascii: %d Len: %zu buflen: %zu strlen: %zu\n",
-			rowsize, groupsize, ascii, len, buflen,
+		pr_err("rowsize: %u groupsize: %u flags: %llx Len: %zu buflen: %zu strlen: %zu\n",
+			rowsize, groupsize, flags, len, buflen,
 			strnlen(buf, sizeof(buf)));
 		pr_err("Result: %d '%-.*s'\n", rc, (int)buflen, buf);
 		pr_err("Expect: %d '%-.*s'\n", expected_len, (int)buflen, test);
@@ -247,7 +248,7 @@ static void __init test_hexdump_overflow(size_t buflen, size_t len,
 	}
 }
 
-static void __init test_hexdump_overflow_set(size_t buflen, bool ascii)
+static void __init test_hexdump_overflow_set(size_t buflen, u64 flags)
 {
 	unsigned int i = 0;
 	int rs = (get_random_int() % 4 + 1) * 16;
@@ -256,7 +257,7 @@ static void __init test_hexdump_overflow_set(size_t buflen, bool ascii)
 		int gs = 1 << i;
 		size_t len = get_random_int() % rs + gs;
 
-		test_hexdump_overflow(buflen, rounddown(len, gs), rs, gs, ascii);
+		test_hexdump_overflow(buflen, rounddown(len, gs), rs, gs, flags);
 	} while (i++ < 3);
 }
 
@@ -264,20 +265,43 @@ static int __init test_hexdump_init(void)
 {
 	unsigned int i;
 	int rowsize;
+	u64 flags;
 
+	flags = 0;
 	rowsize = (get_random_int() % 4 + 1) * 16;
 	for (i = 0; i < 16; i++)
-		test_hexdump_set(rowsize, false);
+		test_hexdump_set(rowsize, flags);
 
+	flags = HEXDUMP_ASCII;
 	rowsize = (get_random_int() % 4 + 1) * 16;
 	for (i = 0; i < 16; i++)
-		test_hexdump_set(rowsize, true);
+		test_hexdump_set(rowsize, flags);
 
+	flags = HEXDUMP_RETAIN_BYTE_ORDER;
+	rowsize = (get_random_int() % 2 + 1) * 16;
+	for (i = 0; i < 16; i++)
+		test_hexdump_set(rowsize, flags);
+
+	flags = HEXDUMP_ASCII | HEXDUMP_RETAIN_BYTE_ORDER;
+	rowsize = (get_random_int() % 2 + 1) * 16;
+	for (i = 0; i < 16; i++)
+		test_hexdump_set(rowsize, flags);
+
+	flags = 0;
+	for (i = 0; i <= TEST_HEXDUMP_BUF_SIZE; i++)
+		test_hexdump_overflow_set(i, flags);
+
+	flags = HEXDUMP_ASCII;
+	for (i = 0; i <= TEST_HEXDUMP_BUF_SIZE; i++)
+		test_hexdump_overflow_set(i, flags);
+
+	flags = HEXDUMP_RETAIN_BYTE_ORDER;
 	for (i = 0; i <= TEST_HEXDUMP_BUF_SIZE; i++)
-		test_hexdump_overflow_set(i, false);
+		test_hexdump_overflow_set(i, flags);
 
+	flags = HEXDUMP_ASCII | HEXDUMP_RETAIN_BYTE_ORDER;
 	for (i = 0; i <= TEST_HEXDUMP_BUF_SIZE; i++)
-		test_hexdump_overflow_set(i, true);
+		test_hexdump_overflow_set(i, flags);
 
 	if (failed_tests == 0)
 		pr_info("all %u tests passed\n", total_tests);
-- 
2.21.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
