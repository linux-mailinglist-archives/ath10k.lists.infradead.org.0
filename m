Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C11835210B
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 05:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:References:
	In-Reply-To:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S8+wY35TdOz5WDKwwrMbPqCArTTG13pGeDJSk5uVmCU=; b=WFCyf5TwsuVopl
	cP5T4fLOebQXxSekTSfKJlP7K8ZTtfTdfTQ+CwT/RgIAfW23EvbseClu17ZQCpYyWYb4TJCMphe9r
	FaA7lXK9JgR6dc75lViiaLZilY63bfHXNUvWaSFOCFdDSPcoOhtpoh/23H+FoSeu6kA3JEM2Y3y+u
	/333B7JRMPluE9N8zD00aeqDQCVA+M1fUhdxeg3yTvl37h1NrX4lcMELnIw1Mo7tZMfMdWg+sxd38
	4SmO/kj9pINcb23Yax5aE16AKYHboHFwokCdw+R82JkB+gWhSAt3XiRxIZOx/tDMQxI+OHfsk7LKh
	oE5Tf6GcxKfe88q6u6rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfbzs-0006cR-5S; Tue, 25 Jun 2019 03:19:52 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfbzc-0006P3-JA
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 03:19:39 +0000
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5P36W1A107426
 for <ath10k@lists.infradead.org>; Mon, 24 Jun 2019 23:19:35 -0400
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2tbadfaa4c-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <ath10k@lists.infradead.org>; Mon, 24 Jun 2019 23:19:35 -0400
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <ath10k@lists.infradead.org> from <alastair@au1.ibm.com>;
 Tue, 25 Jun 2019 04:19:32 +0100
Received: from b06avi18626390.portsmouth.uk.ibm.com (9.149.26.192)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 25 Jun 2019 04:19:23 +0100
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x5P3JDJL17564136
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 03:19:13 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D54DA52059;
 Tue, 25 Jun 2019 03:19:22 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 406315204F;
 Tue, 25 Jun 2019 03:19:22 +0000 (GMT)
Received: from adsilva.ozlabs.ibm.com (haven.au.ibm.com [9.192.254.114])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ozlabs.au.ibm.com (Postfix) with ESMTPSA id 7DBB5A03B5;
 Tue, 25 Jun 2019 13:19:19 +1000 (AEST)
From: "Alastair D'Silva" <alastair@au1.ibm.com>
To: alastair@d-silva.org
Subject: [PATCH v4 6/7] lib/hexdump.c: Allow multiple groups to be separated
 by spaces
Date: Tue, 25 Jun 2019 13:17:25 +1000
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625031726.12173-1-alastair@au1.ibm.com>
References: <20190625031726.12173-1-alastair@au1.ibm.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19062503-0008-0000-0000-000002F6B5C0
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19062503-0009-0000-0000-00002263E426
Message-Id: <20190625031726.12173-7-alastair@au1.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-25_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=906 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906250024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_201936_735874_8F45A0AA 
X-CRM114-Status: GOOD (  24.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Similar to the previous patch, this patch separates groups by 2 spaces for
the hex fields, and 1 space for the ASCII field.

eg.
buf:00000000: 454d414e 43415053  4e495f45 00584544  NAMESPAC E_INDEX.
buf:00000010: 00000000 00000002  00000000 00000000  ........ ........

Signed-off-by: Alastair D'Silva <alastair@d-silva.org>
---
 include/linux/printk.h |  3 ++
 lib/hexdump.c          | 65 +++++++++++++++++++++++++++++++-----------
 2 files changed, 52 insertions(+), 16 deletions(-)

diff --git a/include/linux/printk.h b/include/linux/printk.h
index ae80d7af82ab..1d082291facf 100644
--- a/include/linux/printk.h
+++ b/include/linux/printk.h
@@ -488,6 +488,9 @@ enum {
 #define HEXDUMP_2_GRP_LINES		BIT(2)
 #define HEXDUMP_4_GRP_LINES		BIT(3)
 #define HEXDUMP_8_GRP_LINES		BIT(4)
+#define HEXDUMP_2_GRP_SPACES		BIT(5)
+#define HEXDUMP_4_GRP_SPACES		BIT(6)
+#define HEXDUMP_8_GRP_SPACES		BIT(7)
 
 extern int hex_dump_to_buffer_ext(const void *buf, size_t len, int rowsize,
 			      int groupsize, char *linebuf, size_t linebuflen,
diff --git a/lib/hexdump.c b/lib/hexdump.c
index 4dcf759fe048..e09e3cf8e595 100644
--- a/lib/hexdump.c
+++ b/lib/hexdump.c
@@ -91,9 +91,37 @@ static const char *group_separator(int group, u64 flags)
 	if ((flags & HEXDUMP_2_GRP_LINES) && !((group) % 2))
 		return "|";
 
+	if ((flags & HEXDUMP_8_GRP_SPACES) && !((group) % 8))
+		return "  ";
+
+	if ((flags & HEXDUMP_4_GRP_SPACES) && !((group) % 4))
+		return "  ";
+
+	if ((flags & HEXDUMP_2_GRP_SPACES) && !((group) % 2))
+		return "  ";
+
 	return " ";
 }
 
+static void separator_parameters(u64 flags, int groupsize, int *sep_chars,
+				 char *sep)
+{
+	if (flags & (HEXDUMP_2_GRP_LINES | HEXDUMP_2_GRP_SPACES))
+		*sep_chars = groupsize * 2;
+	if (flags & (HEXDUMP_4_GRP_LINES | HEXDUMP_4_GRP_SPACES))
+		*sep_chars = groupsize * 4;
+	if (flags & (HEXDUMP_8_GRP_LINES | HEXDUMP_8_GRP_SPACES))
+		*sep_chars = groupsize * 8;
+
+	if (flags & (HEXDUMP_2_GRP_LINES | HEXDUMP_4_GRP_LINES |
+					   HEXDUMP_8_GRP_LINES))
+		*sep = '|';
+
+	if (flags & (HEXDUMP_2_GRP_SPACES | HEXDUMP_4_GRP_SPACES |
+					   HEXDUMP_8_GRP_SPACES))
+		*sep = ' ';
+}
+
 /**
  * hex_dump_to_buffer - convert a blob of data to "hex ASCII" in memory
  * @buf: data blob to dump
@@ -107,6 +135,9 @@ static const char *group_separator(int group, u64 flags)
  *	HEXDUMP_2_GRP_LINES:		insert a '|' after every 2 groups
  *	HEXDUMP_4_GRP_LINES:		insert a '|' after every 4 groups
  *	HEXDUMP_8_GRP_LINES:		insert a '|' after every 8 groups
+ *	HEXDUMP_2_GRP_SPACES:		insert a ' ' after every 2 groups
+ *	HEXDUMP_4_GRP_SPACES:		insert a ' ' after every 4 groups
+ *	HEXDUMP_8_GRP_SPACES:		insert a ' ' after every 8 groups
  *
  * hex_dump_to_buffer() works on one "line" of output at a time, converting
  * <groupsize> bytes of input to hexadecimal (and optionally printable ASCII)
@@ -139,7 +170,8 @@ int hex_dump_to_buffer_ext(const void *buf, size_t len, int rowsize,
 	int j, lx = 0;
 	int ascii_column;
 	int ret;
-	int line_chars = 0;
+	int sep_chars = 0;
+	char sep = 0;
 
 	if (!is_power_of_2(groupsize) || groupsize > 8)
 		groupsize = 1;
@@ -153,8 +185,14 @@ int hex_dump_to_buffer_ext(const void *buf, size_t len, int rowsize,
 		len = rowsize;
 
 	ngroups = len / groupsize;
+
 	ascii_column = rowsize * 2 + rowsize / groupsize + 1;
 
+	// space separators use 2 spaces in the hex output
+	separator_parameters(flags, groupsize, &sep_chars, &sep);
+	if (sep == ' ')
+		ascii_column += rowsize / sep_chars;
+
 	if (!linebuflen)
 		goto overflow1;
 
@@ -222,24 +260,17 @@ int hex_dump_to_buffer_ext(const void *buf, size_t len, int rowsize,
 		linebuf[lx++] = ' ';
 	}
 
-	if (flags & HEXDUMP_2_GRP_LINES)
-		line_chars = groupsize * 2;
-	if (flags & HEXDUMP_4_GRP_LINES)
-		line_chars = groupsize * 4;
-	if (flags & HEXDUMP_8_GRP_LINES)
-		line_chars = groupsize * 8;
-
 	for (j = 0; j < len; j++) {
 		if (linebuflen < lx + 2)
 			goto overflow2;
 		ch = ptr[j];
 		linebuf[lx++] = (isascii(ch) && isprint(ch)) ? ch : '.';
 
-		if (line_chars && ((j + 1) < len) &&
-				((j + 1) % line_chars == 0)) {
+		if (sep_chars && ((j + 1) < len) &&
+				((j + 1) % sep_chars == 0)) {
 			if (linebuflen < lx + 2)
 				goto overflow2;
-			linebuf[lx++] = '|';
+			linebuf[lx++] = sep;
 		}
 	}
 nil:
@@ -248,9 +279,11 @@ int hex_dump_to_buffer_ext(const void *buf, size_t len, int rowsize,
 overflow2:
 	linebuf[lx++] = '\0';
 overflow1:
-	return (flags & HEXDUMP_ASCII) ? ascii_column + len +
-					(len - 1) / line_chars :
-					 (groupsize * 2 + 1) * ngroups - 1;
+	if (flags & HEXDUMP_ASCII)
+		return ascii_column + len + (len - 1) / sep_chars;
+
+	return groupsize * 2 * ngroups +
+		((sep == ' ') ? 2 : 1) * (ngroups - 1);
 }
 EXPORT_SYMBOL(hex_dump_to_buffer_ext);
 
@@ -345,9 +378,9 @@ void print_hex_dump_ext(const char *level, const char *prefix_str,
 	/*
 	 * Worst case line length:
 	 * 2 hex chars + space per byte in, 2 spaces, 1 char per byte in,
-	 * 1 char per N groups, NULL
+	 * 2 char per N groups, NULL
 	 */
-	linebuf_len = rowsize * 3 + 2 + rowsize + rowsize / groupsize + 1;
+	linebuf_len = rowsize * 3 + 2 + rowsize + 2 * rowsize / groupsize + 1;
 	linebuf = kzalloc(linebuf_len, GFP_KERNEL);
 	if (!linebuf) {
 		printk("%s%shexdump: Could not alloc %u bytes for buffer\n",
-- 
2.21.0


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
