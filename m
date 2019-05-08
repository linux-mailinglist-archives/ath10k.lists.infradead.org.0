Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D7617225
	for <lists+ath10k@lfdr.de>; Wed,  8 May 2019 09:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1Hwbv5TMVygQ3+X4daElifXjlU0voGZMfZIqLjihU8=; b=mhW/IBIA8HUL+q
	bQYiBR1hL+Y4ci/kuboxjyD62oVCVG1zPHjftEAgXOVBX3kbJ8M0mxjjadBo55djfIZ0HEuKz42l/
	at+qjIWFnudNdg5Yb0V9sSGh1T9fWakbV2HDaHp6WJbmbS3wWl9AAILO4ZNyMNccvLGAQxRQGWY2d
	HHqnmFRtHsVdyLPbT/2hWxdB7sm6aI6AI49S81LJoDs95PW1GkVpRk06NfdoliNiIfHlfRySOfXJ/
	G6nhqJI+L/gcxzDIigq9Zjmr30gTKMHdL/mOq/NF5pUnrp4YrVLki5o2xcLwhGfLXjDqqqEIx8+qC
	7qJqsIUZ3jVfsrUtE9tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGbs-0006DP-PF; Wed, 08 May 2019 07:03:24 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGbN-0005fO-Gw
 for ath10k@lists.infradead.org; Wed, 08 May 2019 07:02:58 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x48723vG020285
 for <ath10k@lists.infradead.org>; Wed, 8 May 2019 03:02:53 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2sbrxkm0fn-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <ath10k@lists.infradead.org>; Wed, 08 May 2019 03:02:52 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <ath10k@lists.infradead.org> from <alastair@au1.ibm.com>;
 Wed, 8 May 2019 08:02:50 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 8 May 2019 08:02:40 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4872dhS48038106
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 8 May 2019 07:02:40 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C0C4011C04C;
 Wed,  8 May 2019 07:02:39 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2753A11C050;
 Wed,  8 May 2019 07:02:39 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed,  8 May 2019 07:02:39 +0000 (GMT)
Received: from adsilva.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id 5D665A03B6;
 Wed,  8 May 2019 17:02:35 +1000 (AEST)
From: "Alastair D'Silva" <alastair@au1.ibm.com>
To: alastair@d-silva.org
Subject: [PATCH v2 5/7] lib/hexdump.c: Allow multiple groups to be separated
 by lines '|'
Date: Wed,  8 May 2019 17:01:45 +1000
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190508070148.23130-1-alastair@au1.ibm.com>
References: <20190508070148.23130-1-alastair@au1.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19050807-0012-0000-0000-000003196FA2
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050807-0013-0000-0000-00002151EFD6
Message-Id: <20190508070148.23130-6-alastair@au1.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-08_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905080046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_000253_682165_0B605932 
X-CRM114-Status: GOOD (  26.63  )
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

With the wider display format, it can become hard to identify how many
bytes into the line you are looking at.

The patch adds new flags to hex_dump_to_buffer() and print_hex_dump() to
print vertical lines to separate every N groups of bytes.

eg.
buf:00000000: 454d414e 43415053|4e495f45 00584544  NAMESPAC|E_INDEX.
buf:00000010: 00000000 00000002|00000000 00000000  ........|........

Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
---
 include/linux/printk.h |  3 +++
 lib/hexdump.c          | 59 ++++++++++++++++++++++++++++++++++++------
 2 files changed, 54 insertions(+), 8 deletions(-)

diff --git a/include/linux/printk.h b/include/linux/printk.h
index 00a82e468643..dc693aec394c 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -482,6 +482,9 @@ enum {
 
 #define HEXDUMP_ASCII			(1 << 0)
 #define HEXDUMP_SUPPRESS_REPEATED	(1 << 1)
+#define HEXDUMP_2_GRP_LINES		(1 << 2)
+#define HEXDUMP_4_GRP_LINES		(1 << 3)
+#define HEXDUMP_8_GRP_LINES		(1 << 4)
 
 extern int hex_dump_to_buffer(const void *buf, size_t len, int rowsize,
 			      int groupsize, char *linebuf, size_t linebuflen,
diff --git a/lib/hexdump.c b/lib/hexdump.c
index ddd1697e5f9b..6f4d1176c332 100644
--- a/lib/hexdump.c
+++ b/lib/hexdump.c
@@ -77,6 +77,23 @@ char *bin2hex(char *dst, const void *src, size_t count)
 }
 EXPORT_SYMBOL(bin2hex);
 
+static const char *group_separator(int group, u64 flags)
+{
+	if (group == 0)
+		return " ";
+
+	if ((flags & HEXDUMP_8_GRP_LINES) && !((group) % 8))
+		return "|";
+
+	if ((flags & HEXDUMP_4_GRP_LINES) && !((group) % 4))
+		return "|";
+
+	if ((flags & HEXDUMP_2_GRP_LINES) && !((group) % 2))
+		return "|";
+
+	return " ";
+}
+
 /**
  * hex_dump_to_buffer - convert a blob of data to "hex ASCII" in memory
  * @buf: data blob to dump
@@ -87,6 +104,9 @@ EXPORT_SYMBOL(bin2hex);
  * @linebuflen: total size of @linebuf, including space for terminating NUL
  * @flags: A bitwise OR of the following flags:
  *	HEXDUMP_ASCII:			include ASCII after the hex output
+ *	HEXDUMP_2_GRP_LINES:		insert a '|' after every 2 groups
+ *	HEXDUMP_4_GRP_LINES:		insert a '|' after every 4 groups
+ *	HEXDUMP_8_GRP_LINES:		insert a '|' after every 8 groups
  *
  * hex_dump_to_buffer() works on one "line" of output at a time, converting
  * <groupsize> bytes of input to hexadecimal (and optionally printable ASCII)
@@ -118,6 +138,7 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 	int j, lx = 0;
 	int ascii_column;
 	int ret;
+	int line_chars = 0;
 
 	if (!is_power_of_2(groupsize) || groupsize > 8)
 		groupsize = 1;
@@ -144,7 +165,8 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 
 		for (j = 0; j < ngroups; j++) {
 			ret = snprintf(linebuf + lx, linebuflen - lx,
-				       "%s%16.16llx", j ? " " : "",
+				       "%s%16.16llx",
+				       j ? group_separator(j, flags) : "",
 				       get_unaligned(ptr8 + j));
 			if (ret >= linebuflen - lx)
 				goto overflow1;
@@ -155,7 +177,8 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 
 		for (j = 0; j < ngroups; j++) {
 			ret = snprintf(linebuf + lx, linebuflen - lx,
-				       "%s%8.8x", j ? " " : "",
+				       "%s%8.8x",
+				       j ? group_separator(j, flags) : "",
 				       get_unaligned(ptr4 + j));
 			if (ret >= linebuflen - lx)
 				goto overflow1;
@@ -166,7 +189,8 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 
 		for (j = 0; j < ngroups; j++) {
 			ret = snprintf(linebuf + lx, linebuflen - lx,
-				       "%s%4.4x", j ? " " : "",
+				       "%s%4.4x",
+				       j ? group_separator(j, flags) : "",
 				       get_unaligned(ptr2 + j));
 			if (ret >= linebuflen - lx)
 				goto overflow1;
@@ -196,11 +220,26 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 			goto overflow2;
 		linebuf[lx++] = ' ';
 	}
+
+	if (flags & HEXDUMP_2_GRP_LINES)
+		line_chars = groupsize * 2;
+	if (flags & HEXDUMP_4_GRP_LINES)
+		line_chars = groupsize * 4;
+	if (flags & HEXDUMP_8_GRP_LINES)
+		line_chars = groupsize * 8;
+
 	for (j = 0; j < len; j++) {
 		if (linebuflen < lx + 2)
 			goto overflow2;
 		ch = ptr[j];
 		linebuf[lx++] = (isascii(ch) && isprint(ch)) ? ch : '.';
+
+		if (line_chars && ((j + 1) < len) &&
+				((j + 1) % line_chars == 0)) {
+			if (linebuflen < lx + 2)
+				goto overflow2;
+			linebuf[lx++] = '|';
+		}
 	}
 nil:
 	linebuf[lx] = '\0';
@@ -208,7 +247,8 @@ int hex_dump_to_buffer(const void *buf, size_t len, int rowsize, int groupsize,
 overflow2:
 	linebuf[lx++] = '\0';
 overflow1:
-	return (flags & HEXDUMP_ASCII) ? ascii_column + len :
+	return (flags & HEXDUMP_ASCII) ? ascii_column + len +
+					(len - 1) / line_chars :
 					 (groupsize * 2 + 1) * ngroups - 1;
 }
 EXPORT_SYMBOL(hex_dump_to_buffer);
@@ -246,7 +286,7 @@ static void announce_skipped(const char *level, const char *prefix_str,
 	if (count == 0)
 		return;
 
-	printk("%s%s ** Skipped %lu bytes of value 0x%x **\n",
+	printk("%s%s ** Skipped %lu bytes of value 0x%02x **\n",
 	       level, prefix_str, count, val);
 }
 
@@ -266,6 +306,9 @@ static void announce_skipped(const char *level, const char *prefix_str,
  *	HEXDUMP_ASCII:			include ASCII after the hex output
  *	HEXDUMP_SUPPRESS_REPEATED:	suppress repeated lines of identical
  *					bytes
+ *	HEXDUMP_2_GRP_LINES:		insert a '|' after every 2 groups
+ *	HEXDUMP_4_GRP_LINES:		insert a '|' after every 4 groups
+ *	HEXDUMP_8_GRP_LINES:		insert a '|' after every 8 groups
  *
  * Given a buffer of u8 data, print_hex_dump() prints a hex + ASCII dump
  * to the kernel log at the specified kernel log level, with an optional
@@ -295,14 +338,14 @@ void print_hex_dump_ext(const char *level, const char *prefix_str,
 	u8 skipped_val = 0;
 	size_t skipped = 0;
 
-
 	if (rowsize % groupsize)
 		rowsize -= rowsize % groupsize;
 
 	/* Worst case line length:
-	 * 2 hex chars + space per byte in, 2 spaces, 1 char per byte in, NULL
+	 * 2 hex chars + space per byte in, 2 spaces, 1 char per byte in,
+	 * 1 char per N groups, NULL
 	 */
-	linebuf_len = rowsize * 3 + 2 + rowsize + 1;
+	linebuf_len = rowsize * 3 + 2 + rowsize + rowsize / groupsize + 1;
 	linebuf = kzalloc(linebuf_len, GFP_KERNEL);
 	if (!linebuf) {
 		printk("%s%shexdump: Could not alloc %u bytes for buffer\n",
-- 
2.21.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
