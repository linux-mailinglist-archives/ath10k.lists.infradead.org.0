Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A54C911DE85
	for <lists+ath10k@lfdr.de>; Fri, 13 Dec 2019 08:19:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWn2fE8syN+cyEOtT92pdLLfr/g67G2VAOIdjAtzF5o=; b=HsaliCJ7bfcxqj
	iWIY78vNWROCNAJNz/r9OipI2DBPEtO1KaXhI/Nf1sy8cOPx7LeZ0gI2JPvOEzQ/r8AcMHP8wGJwX
	B2J2/PI4na5efzz1v2VupmMGiTdDETD6dGYpE8VPzZIlu9qKFo1mm33KH7fUIihSfvIxLihFyGKH4
	wjGplyLyO780Hrfq3IVn0fZOIQzXGuHCk5TDRlabdLwx8rCBBveoK0uI0YMGP7CvtA/rqk60i7DVR
	SGZIDP47Fjc9RiHaRUB7Othq8t3sJxA1ZzZ1SfyseIXzZMe7nBMagyUErJTJIXCavT2HpN2ojjiwb
	V5WvWADG5HHRo8aw9dMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffET-0002bc-Qc; Fri, 13 Dec 2019 07:19:25 +0000
Received: from m228-4.mailgun.net ([159.135.228.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffEM-0002YL-1y
 for ath10k@lists.infradead.org; Fri, 13 Dec 2019 07:19:20 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576221557; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: References: In-Reply-To: Message-Id: Date: Subject: Cc:
 To: From: Sender; bh=g8waSKlKjg6lHTRkOcQkpZURa0Z2Cgf8vxMzu+EHZlI=;
 b=Mz3teFvUFUNdsPtox/YK36C6eYko4wbu8W2lRX2bwmirFX6j1MBRqDPVKhXW8JXVgZz0G68N
 9afm9QB2CKoXX2hrfe6k6gl7Himt3Ik55thW5TKmX3qWOHJPu/Kde2pO2lsR1XCwguNL+kDD
 1LlS2PKeEWQhAgrTSkjeNg03r/M=
X-Mailgun-Sending-Ip: 159.135.228.4
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5df33b74.7f08bad394c8-smtp-out-n02;
 Fri, 13 Dec 2019 07:19:16 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A7F4CC433A2; Fri, 13 Dec 2019 07:19:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from ybzhao-HP-Z230-SFF-Workstation.ap.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: yiboz)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3C79AC433CB;
 Fri, 13 Dec 2019 07:19:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3C79AC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: linux-wireless@vger.kernel.org
Subject: [PATCH 1/4] mac80211: Switch to a virtual time-based airtime scheduler
Date: Fri, 13 Dec 2019 15:19:50 +0800
Message-Id: <1576221593-1086-2-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
References: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_231918_205869_E36A292E 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.135.228.4 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CgpUaGlzIHN3
aXRjaGVzIHRoZSBhaXJ0aW1lIHNjaGVkdWxlciBpbiBtYWM4MDIxMSB0byB1c2UgYSB2aXJ0dWFs
IHRpbWUtYmFzZWQKc2NoZWR1bGVyIGluc3RlYWQgb2YgdGhlIHJvdW5kLXJvYmluIHNjaGVkdWxl
ciB1c2VkIGJlZm9yZS4gVGhpcyBoYXMgYQpjb3VwbGUgb2YgYWR2YW50YWdlczoKCi0gTm8gbmVl
ZCB0byBzeW5jIHVwIHRoZSByb3VuZC1yb2JpbiBzY2hlZHVsZXIgaW4gZmlybXdhcmUvaGFyZHdh
cmUgd2l0aAogIHRoZSByb3VuZC1yb2JpbiBhaXJ0aW1lIHNjaGVkdWxlci4KCi0gSWYgc2V2ZXJh
bCBzdGF0aW9ucyBhcmUgZWxpZ2libGUgZm9yIHRyYW5zbWlzc2lvbiB3ZSBjYW4gc2NoZWR1bGUg
Ym90aCBvZgogIHRoZW07IG5vIG5lZWQgdG8gaGFyZC1ibG9jayB0aGUgc2NoZWR1bGluZyByb3Rh
dGlvbiB1bnRpbCB0aGUgaGVhZCBvZiB0aGUKICBxdWV1ZSBoYXMgdXNlZCB1cCBpdHMgcXVhbnR1
bS4KCi0gVGhlIGNoZWNrIG9mIHdoZXRoZXIgYSBzdGF0aW9uIGlzIGVsaWdpYmxlIGZvciB0cmFu
c21pc3Npb24gYmVjb21lcwogIHNpbXBsZXIgKGluIGllZWU4MDIxMV90eHFfbWF5X3RyYW5zbWl0
KCkpLgoKVGhlIGRyYXdiYWNrIGlzIHRoYXQgc2NoZWR1bGluZyBiZWNvbWVzIHNsaWdodGx5IG1v
cmUgZXhwZW5zaXZlLCBhcyB3ZSBuZWVkCnRvIG1haW50YWluIGFuIHJidHJlZSBvZiBUWFFzIHNv
cnRlZCBieSB2aXJ0dWFsIHRpbWUuIFRoaXMgbWVhbnMgdGhhdAppZWVlODAyMTFfcmVnaXN0ZXJf
YWlydGltZSgpIGJlY29tZXMgTyhsb2dOKSBpbiB0aGUgbnVtYmVyIG9mIGN1cnJlbnRseQpzY2hl
ZHVsZWQgVFhRcy4gSG93ZXZlciwgaG9wZWZ1bGx5IHRoaXMgbnVtYmVyIHJhcmVseSBncm93cyB0
b28gYmlnIChpdCdzCm9ubHkgVFhRcyBjdXJyZW50bHkgYmFja2xvZ2dlZCwgbm90IGFsbCBhc3Nv
Y2lhdGVkIHN0YXRpb25zKSwgc28gaXQKc2hvdWxkbid0IGJlIHRvbyBiaWcgb2YgYW4gaXNzdWUu
CgpTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNv
bT4KLS0tCiBuZXQvbWFjODAyMTEvZGVidWdmcy5jICAgICB8ICA0OCArKysrKysrKystCiBuZXQv
bWFjODAyMTEvZGVidWdmc19zdGEuYyB8ICAxNiArKy0tCiBuZXQvbWFjODAyMTEvaWVlZTgwMjEx
X2kuaCB8ICAxNCArKy0KIG5ldC9tYWM4MDIxMS9tYWluLmMgICAgICAgIHwgICAyICstCiBuZXQv
bWFjODAyMTEvc3RhX2luZm8uYyAgICB8ICAxOSArKystCiBuZXQvbWFjODAyMTEvc3RhX2luZm8u
aCAgICB8ICAgMyArLQogbmV0L21hYzgwMjExL3R4LmMgICAgICAgICAgfCAyMTcgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tCiA3IGZpbGVzIGNoYW5nZWQsIDIy
MyBpbnNlcnRpb25zKCspLCA5NiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9uZXQvbWFjODAy
MTEvZGVidWdmcy5jIGIvbmV0L21hYzgwMjExL2RlYnVnZnMuYwppbmRleCAyZDQzYmMxLi40ODQ3
MTY4IDEwMDY0NAotLS0gYS9uZXQvbWFjODAyMTEvZGVidWdmcy5jCisrKyBiL25ldC9tYWM4MDIx
MS9kZWJ1Z2ZzLmMKQEAgLTE1MCw2ICsxNTAsNDYgQEAgc3RhdGljIHNzaXplX3QgYXFtX3dyaXRl
KHN0cnVjdCBmaWxlICpmaWxlLAogCS5sbHNlZWsgPSBkZWZhdWx0X2xsc2VlaywKIH07CiAKK3N0
YXRpYyBzc2l6ZV90IGFpcnRpbWVfcmVhZChzdHJ1Y3QgZmlsZSAqZmlsZSwKKwkJCSAgICBjaGFy
IF9fdXNlciAqdXNlcl9idWYsCisJCQkgICAgc2l6ZV90IGNvdW50LAorCQkJICAgIGxvZmZfdCAq
cHBvcykKK3sKKwlzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCA9IGZpbGUtPnByaXZhdGVf
ZGF0YTsKKwljaGFyIGJ1ZlsyMDBdOworCXU2NCB2X3RbSUVFRTgwMjExX05VTV9BQ1NdOworCXU2
NCB3dFtJRUVFODAyMTFfTlVNX0FDU107CisJaW50IGxlbiA9IDAsIGFjOworCisJZm9yIChhYyA9
IDA7IGFjIDwgSUVFRTgwMjExX05VTV9BQ1M7IGFjKyspIHsKKwkJc3Bpbl9sb2NrX2JoKCZsb2Nh
bC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7CisJCXZfdFthY10gPSBsb2NhbC0+YWlydGltZV92X3Rb
YWNdOworCQl3dFthY10gPSBsb2NhbC0+YWlydGltZV93ZWlnaHRfc3VtW2FjXTsKKwkJc3Bpbl91
bmxvY2tfYmgoJmxvY2FsLT5hY3RpdmVfdHhxX2xvY2tbYWNdKTsKKwl9CisJbGVuID0gc2NucHJp
bnRmKGJ1Ziwgc2l6ZW9mKGJ1ZiksCisJCQkiXHRWTyAgICAgICAgIFZJICAgICAgICAgQkUgICAg
ICAgICBCS1xuIgorCQkJIlZpcnQtdFx0JS0xMGxsdSAlLTEwbGx1ICUtMTBsbHUgJS0xMGxsdVxu
IgorCQkJIldlaWdodFx0JS0xMGxsdSAlLTEwbGx1ICUtMTBsbHUgJS0xMGxsdVxuIiwKKwkJCXZf
dFswXSwKKwkJCXZfdFsxXSwKKwkJCXZfdFsyXSwKKwkJCXZfdFszXSwKKwkJCXd0WzBdLAorCQkJ
d3RbMV0sCisJCQl3dFsyXSwKKwkJCXd0WzNdKTsKKworCXJldHVybiBzaW1wbGVfcmVhZF9mcm9t
X2J1ZmZlcih1c2VyX2J1ZiwgY291bnQsIHBwb3MsCisJCQkJICAgICAgIGJ1ZiwgbGVuKTsKK30K
Kworc3RhdGljIGNvbnN0IHN0cnVjdCBmaWxlX29wZXJhdGlvbnMgYWlydGltZV9vcHMgPSB7CisJ
LnJlYWQgPSBhaXJ0aW1lX3JlYWQsCisJLm9wZW4gPSBzaW1wbGVfb3BlbiwKKwkubGxzZWVrID0g
ZGVmYXVsdF9sbHNlZWssCit9OworCiAjaWZkZWYgQ09ORklHX1BNCiBzdGF0aWMgc3NpemVfdCBy
ZXNldF93cml0ZShzdHJ1Y3QgZmlsZSAqZmlsZSwgY29uc3QgY2hhciBfX3VzZXIgKnVzZXJfYnVm
LAogCQkJICAgc2l6ZV90IGNvdW50LCBsb2ZmX3QgKnBwb3MpCkBAIC0zODYsOCArNDI2LDEyIEBA
IHZvaWQgZGVidWdmc19od19hZGQoc3RydWN0IGllZWU4MDIxMV9sb2NhbCAqbG9jYWwpCiAJaWYg
KGxvY2FsLT5vcHMtPndha2VfdHhfcXVldWUpCiAJCURFQlVHRlNfQUREX01PREUoYXFtLCAwNjAw
KTsKIAotCWRlYnVnZnNfY3JlYXRlX3UxNigiYWlydGltZV9mbGFncyIsIDA2MDAsCi0JCQkgICBw
aHlkLCAmbG9jYWwtPmFpcnRpbWVfZmxhZ3MpOworCWlmICh3aXBoeV9leHRfZmVhdHVyZV9pc3Nl
dChsb2NhbC0+aHcud2lwaHksCisJCQkJICAgIE5MODAyMTFfRVhUX0ZFQVRVUkVfQUlSVElNRV9G
QUlSTkVTUykpIHsKKwkJREVCVUdGU19BRERfTU9ERShhaXJ0aW1lLCAwNjAwKTsKKwkJZGVidWdm
c19jcmVhdGVfdTE2KCJhaXJ0aW1lX2ZsYWdzIiwgMDYwMCwKKwkJCQkgICBwaHlkLCAmbG9jYWwt
PmFpcnRpbWVfZmxhZ3MpOworCX0KIAogCXN0YXRzZCA9IGRlYnVnZnNfY3JlYXRlX2Rpcigic3Rh
dGlzdGljcyIsIHBoeWQpOwogCmRpZmYgLS1naXQgYS9uZXQvbWFjODAyMTEvZGVidWdmc19zdGEu
YyBiL25ldC9tYWM4MDIxMS9kZWJ1Z2ZzX3N0YS5jCmluZGV4IDNhYTYxOGQuLjgwMDI4ZGEgMTAw
NjQ0Ci0tLSBhL25ldC9tYWM4MDIxMS9kZWJ1Z2ZzX3N0YS5jCisrKyBiL25ldC9tYWM4MDIxMS9k
ZWJ1Z2ZzX3N0YS5jCkBAIC0yMDMsNyArMjAzLDcgQEAgc3RhdGljIHNzaXplX3Qgc3RhX2FpcnRp
bWVfcmVhZChzdHJ1Y3QgZmlsZSAqZmlsZSwgY2hhciBfX3VzZXIgKnVzZXJidWYsCiAJc2l6ZV90
IGJ1ZnN6ID0gMjAwOwogCWNoYXIgKmJ1ZiA9IGt6YWxsb2MoYnVmc3osIEdGUF9LRVJORUwpLCAq
cCA9IGJ1ZjsKIAl1NjQgcnhfYWlydGltZSA9IDAsIHR4X2FpcnRpbWUgPSAwOwotCXM2NCBkZWZp
Y2l0W0lFRUU4MDIxMV9OVU1fQUNTXTsKKwl1NjQgdl90W0lFRUU4MDIxMV9OVU1fQUNTXTsKIAlz
c2l6ZV90IHJ2OwogCWludCBhYzsKIApAQCAtMjE0LDIwICsyMTQsMjAgQEAgc3RhdGljIHNzaXpl
X3Qgc3RhX2FpcnRpbWVfcmVhZChzdHJ1Y3QgZmlsZSAqZmlsZSwgY2hhciBfX3VzZXIgKnVzZXJi
dWYsCiAJCXNwaW5fbG9ja19iaCgmbG9jYWwtPmFjdGl2ZV90eHFfbG9ja1thY10pOwogCQlyeF9h
aXJ0aW1lICs9IHN0YS0+YWlydGltZVthY10ucnhfYWlydGltZTsKIAkJdHhfYWlydGltZSArPSBz
dGEtPmFpcnRpbWVbYWNdLnR4X2FpcnRpbWU7Ci0JCWRlZmljaXRbYWNdID0gc3RhLT5haXJ0aW1l
W2FjXS5kZWZpY2l0OworCQl2X3RbYWNdID0gc3RhLT5haXJ0aW1lW2FjXS52X3Q7CiAJCXNwaW5f
dW5sb2NrX2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7CiAJfQogCiAJcCArPSBzY25w
cmludGYocCwgYnVmc3ogKyBidWYgLSBwLAogCQkiUlg6ICVsbHUgdXNcblRYOiAlbGx1IHVzXG5X
ZWlnaHQ6ICV1XG4iCi0JCSJEZWZpY2l0OiBWTzogJWxsZCB1cyBWSTogJWxsZCB1cyBCRTogJWxs
ZCB1cyBCSzogJWxsZCB1c1xuIiwKKwkJIlZpcnQtVDogVk86ICVsbGQgdXMgVkk6ICVsbGQgdXMg
QkU6ICVsbGQgdXMgQks6ICVsbGQgdXNcbiIsCiAJCXJ4X2FpcnRpbWUsCiAJCXR4X2FpcnRpbWUs
CiAJCXN0YS0+YWlydGltZV93ZWlnaHQsCi0JCWRlZmljaXRbMF0sCi0JCWRlZmljaXRbMV0sCi0J
CWRlZmljaXRbMl0sCi0JCWRlZmljaXRbM10pOworCQl2X3RbMF0sCisJCXZfdFsxXSwKKwkJdl90
WzJdLAorCQl2X3RbM10pOwogCiAJcnYgPSBzaW1wbGVfcmVhZF9mcm9tX2J1ZmZlcih1c2VyYnVm
LCBjb3VudCwgcHBvcywgYnVmLCBwIC0gYnVmKTsKIAlrZnJlZShidWYpOwpAQCAtMjQ1LDcgKzI0
NSw3IEBAIHN0YXRpYyBzc2l6ZV90IHN0YV9haXJ0aW1lX3dyaXRlKHN0cnVjdCBmaWxlICpmaWxl
LCBjb25zdCBjaGFyIF9fdXNlciAqdXNlcmJ1ZiwKIAkJc3Bpbl9sb2NrX2JoKCZsb2NhbC0+YWN0
aXZlX3R4cV9sb2NrW2FjXSk7CiAJCXN0YS0+YWlydGltZVthY10ucnhfYWlydGltZSA9IDA7CiAJ
CXN0YS0+YWlydGltZVthY10udHhfYWlydGltZSA9IDA7Ci0JCXN0YS0+YWlydGltZVthY10uZGVm
aWNpdCA9IHN0YS0+YWlydGltZV93ZWlnaHQ7CisJCXN0YS0+YWlydGltZVthY10udl90ID0gMDsK
IAkJc3Bpbl91bmxvY2tfYmgoJmxvY2FsLT5hY3RpdmVfdHhxX2xvY2tbYWNdKTsKIAl9CiAKZGlm
ZiAtLWdpdCBhL25ldC9tYWM4MDIxMS9pZWVlODAyMTFfaS5oIGIvbmV0L21hYzgwMjExL2llZWU4
MDIxMV9pLmgKaW5kZXggZTE3MGY5OC4uYTQ1NTZmOSAxMDA2NDQKLS0tIGEvbmV0L21hYzgwMjEx
L2llZWU4MDIxMV9pLmgKKysrIGIvbmV0L21hYzgwMjExL2llZWU4MDIxMV9pLmgKQEAgLTg0Niw4
ICs4NDYsNyBAQCBzdHJ1Y3QgdHhxX2luZm8gewogCXN0cnVjdCBjb2RlbF92YXJzIGRlZl9jdmFy
czsKIAlzdHJ1Y3QgY29kZWxfc3RhdHMgY3N0YXRzOwogCXN0cnVjdCBza19idWZmX2hlYWQgZnJh
Z3M7Ci0Jc3RydWN0IGxpc3RfaGVhZCBzY2hlZHVsZV9vcmRlcjsKLQl1MTYgc2NoZWR1bGVfcm91
bmQ7CisJc3RydWN0IHJiX25vZGUgc2NoZWR1bGVfb3JkZXI7CiAJdW5zaWduZWQgbG9uZyBmbGFn
czsKIAogCS8qIGtlZXAgbGFzdCEgKi8KQEAgLTExNDEsOCArMTE0MCwxMCBAQCBzdHJ1Y3QgaWVl
ZTgwMjExX2xvY2FsIHsKIAogCS8qIHByb3RlY3RzIGFjdGl2ZV90eHFzIGFuZCB0eHFpLT5zY2hl
ZHVsZV9vcmRlciAqLwogCXNwaW5sb2NrX3QgYWN0aXZlX3R4cV9sb2NrW0lFRUU4MDIxMV9OVU1f
QUNTXTsKLQlzdHJ1Y3QgbGlzdF9oZWFkIGFjdGl2ZV90eHFzW0lFRUU4MDIxMV9OVU1fQUNTXTsK
LQl1MTYgc2NoZWR1bGVfcm91bmRbSUVFRTgwMjExX05VTV9BQ1NdOworCXN0cnVjdCByYl9yb290
X2NhY2hlZCBhY3RpdmVfdHhxc1tJRUVFODAyMTFfTlVNX0FDU107CisJc3RydWN0IHJiX25vZGUg
KnNjaGVkdWxlX3Bvc1tJRUVFODAyMTFfTlVNX0FDU107CisJdTY0IGFpcnRpbWVfdl90W0lFRUU4
MDIxMV9OVU1fQUNTXTsKKwl1NjQgYWlydGltZV93ZWlnaHRfc3VtW0lFRUU4MDIxMV9OVU1fQUNT
XTsKIAogCXUxNiBhaXJ0aW1lX2ZsYWdzOwogCkBAIC0xNzc5LDYgKzE3ODAsMTEgQEAgaW50IGll
ZWU4MDIxMV90eF9jb250cm9sX3BvcnQoc3RydWN0IHdpcGh5ICp3aXBoeSwgc3RydWN0IG5ldF9k
ZXZpY2UgKmRldiwKIAkJCSAgICAgIGNvbnN0IHU4ICpidWYsIHNpemVfdCBsZW4sCiAJCQkgICAg
ICBjb25zdCB1OCAqZGVzdCwgX19iZTE2IHByb3RvLCBib29sIHVuZW5jcnlwdGVkKTsKIAordm9p
ZCBpZWVlODAyMTFfcmVzb3J0X3R4cShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKKwkJCSAgc3Ry
dWN0IGllZWU4MDIxMV90eHEgKnR4cSk7Cit2b2lkIGllZWU4MDIxMV91bnNjaGVkdWxlX3R4cShz
dHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKKwkJCSAgICAgIHN0cnVjdCBpZWVlODAyMTFfdHhxICp0
eHEpOworCiAvKiBIVCAqLwogdm9pZCBpZWVlODAyMTFfYXBwbHlfaHRjYXBfb3ZlcnJpZGVzKHN0
cnVjdCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNkYXRhLAogCQkJCSAgICAgc3RydWN0IGllZWU4
MDIxMV9zdGFfaHRfY2FwICpodF9jYXApOwpkaWZmIC0tZ2l0IGEvbmV0L21hYzgwMjExL21haW4u
YyBiL25ldC9tYWM4MDIxMS9tYWluLmMKaW5kZXggNTA1NWFlYi4uZTlmZmE4ZSAxMDA2NDQKLS0t
IGEvbmV0L21hYzgwMjExL21haW4uYworKysgYi9uZXQvbWFjODAyMTEvbWFpbi5jCkBAIC02NjYs
NyArNjY2LDcgQEAgc3RydWN0IGllZWU4MDIxMV9odyAqaWVlZTgwMjExX2FsbG9jX2h3X25tKHNp
emVfdCBwcml2X2RhdGFfbGVuLAogCXNwaW5fbG9ja19pbml0KCZsb2NhbC0+cXVldWVfc3RvcF9y
ZWFzb25fbG9jayk7CiAKIAlmb3IgKGkgPSAwOyBpIDwgSUVFRTgwMjExX05VTV9BQ1M7IGkrKykg
ewotCQlJTklUX0xJU1RfSEVBRCgmbG9jYWwtPmFjdGl2ZV90eHFzW2ldKTsKKwkJbG9jYWwtPmFj
dGl2ZV90eHFzW2ldID0gUkJfUk9PVF9DQUNIRUQ7CiAJCXNwaW5fbG9ja19pbml0KCZsb2NhbC0+
YWN0aXZlX3R4cV9sb2NrW2ldKTsKIAl9CiAJbG9jYWwtPmFpcnRpbWVfZmxhZ3MgPSBBSVJUSU1F
X1VTRV9UWCB8IEFJUlRJTUVfVVNFX1JYOwpkaWZmIC0tZ2l0IGEvbmV0L21hYzgwMjExL3N0YV9p
bmZvLmMgYi9uZXQvbWFjODAyMTEvc3RhX2luZm8uYwppbmRleCAxMWYwNTg5Li45ZDAxZmRkIDEw
MDY0NAotLS0gYS9uZXQvbWFjODAyMTEvc3RhX2luZm8uYworKysgYi9uZXQvbWFjODAyMTEvc3Rh
X2luZm8uYwpAQCAtMzg5LDcgKzM4OSw2IEBAIHN0cnVjdCBzdGFfaW5mbyAqc3RhX2luZm9fYWxs
b2Moc3RydWN0IGllZWU4MDIxMV9zdWJfaWZfZGF0YSAqc2RhdGEsCiAJZm9yIChpID0gMDsgaSA8
IElFRUU4MDIxMV9OVU1fQUNTOyBpKyspIHsKIAkJc2tiX3F1ZXVlX2hlYWRfaW5pdCgmc3RhLT5w
c190eF9idWZbaV0pOwogCQlza2JfcXVldWVfaGVhZF9pbml0KCZzdGEtPnR4X2ZpbHRlcmVkW2ld
KTsKLQkJc3RhLT5haXJ0aW1lW2ldLmRlZmljaXQgPSBzdGEtPmFpcnRpbWVfd2VpZ2h0OwogCX0K
IAogCWZvciAoaSA9IDA7IGkgPCBJRUVFODAyMTFfTlVNX1RJRFM7IGkrKykKQEAgLTE4MzEsMTgg
KzE4MzAsMzIgQEAgdm9pZCBpZWVlODAyMTFfc3RhX3JlZ2lzdGVyX2FpcnRpbWUoc3RydWN0IGll
ZWU4MDIxMV9zdGEgKnB1YnN0YSwgdTggdGlkLAogewogCXN0cnVjdCBzdGFfaW5mbyAqc3RhID0g
Y29udGFpbmVyX29mKHB1YnN0YSwgc3RydWN0IHN0YV9pbmZvLCBzdGEpOwogCXN0cnVjdCBpZWVl
ODAyMTFfbG9jYWwgKmxvY2FsID0gc3RhLT5zZGF0YS0+bG9jYWw7CisJc3RydWN0IGllZWU4MDIx
MV90eHEgKnR4cSA9IHN0YS0+c3RhLnR4cVt0aWRdOwogCXU4IGFjID0gaWVlZTgwMjExX2FjX2Zy
b21fdGlkKHRpZCk7Ci0JdTMyIGFpcnRpbWUgPSAwOworCXU2NCBhaXJ0aW1lID0gMCwgd2VpZ2h0
X3N1bTsKKworCWlmICghdHhxKQorCQlyZXR1cm47CiAKIAlpZiAoc3RhLT5sb2NhbC0+YWlydGlt
ZV9mbGFncyAmIEFJUlRJTUVfVVNFX1RYKQogCQlhaXJ0aW1lICs9IHR4X2FpcnRpbWU7CiAJaWYg
KHN0YS0+bG9jYWwtPmFpcnRpbWVfZmxhZ3MgJiBBSVJUSU1FX1VTRV9SWCkKIAkJYWlydGltZSAr
PSByeF9haXJ0aW1lOwogCisJLyogV2VpZ2h0cyBzY2FsZSBzbyB0aGUgdW5pdCB3ZWlnaHQgaXMg
MjU2ICovCisJYWlydGltZSA8PD0gODsKKwogCXNwaW5fbG9ja19iaCgmbG9jYWwtPmFjdGl2ZV90
eHFfbG9ja1thY10pOworCiAJc3RhLT5haXJ0aW1lW2FjXS50eF9haXJ0aW1lICs9IHR4X2FpcnRp
bWU7CiAJc3RhLT5haXJ0aW1lW2FjXS5yeF9haXJ0aW1lICs9IHJ4X2FpcnRpbWU7Ci0Jc3RhLT5h
aXJ0aW1lW2FjXS5kZWZpY2l0IC09IGFpcnRpbWU7CisKKwl3ZWlnaHRfc3VtID0gbG9jYWwtPmFp
cnRpbWVfd2VpZ2h0X3N1bVthY10gPzogc3RhLT5haXJ0aW1lX3dlaWdodDsKKworCWxvY2FsLT5h
aXJ0aW1lX3ZfdFthY10gKz0gYWlydGltZSAvIHdlaWdodF9zdW07CisJc3RhLT5haXJ0aW1lW2Fj
XS52X3QgKz0gYWlydGltZSAvIHN0YS0+YWlydGltZV93ZWlnaHQ7CisJaWVlZTgwMjExX3Jlc29y
dF90eHEoJmxvY2FsLT5odywgdHhxKTsKKwogCXNwaW5fdW5sb2NrX2JoKCZsb2NhbC0+YWN0aXZl
X3R4cV9sb2NrW2FjXSk7CiB9CiBFWFBPUlRfU1lNQk9MKGllZWU4MDIxMV9zdGFfcmVnaXN0ZXJf
YWlydGltZSk7CmRpZmYgLS1naXQgYS9uZXQvbWFjODAyMTEvc3RhX2luZm8uaCBiL25ldC9tYWM4
MDIxMS9zdGFfaW5mby5oCmluZGV4IDcxZjdlNDkuLjVjMWNhYzkgMTAwNjQ0Ci0tLSBhL25ldC9t
YWM4MDIxMS9zdGFfaW5mby5oCisrKyBiL25ldC9tYWM4MDIxMS9zdGFfaW5mby5oCkBAIC0xMzAs
MTEgKzEzMCwxMiBAQCBlbnVtIGllZWU4MDIxMV9hZ2dfc3RvcF9yZWFzb24gewogLyogRGVidWdm
cyBmbGFncyB0byBlbmFibGUvZGlzYWJsZSB1c2Ugb2YgUlgvVFggYWlydGltZSBpbiBzY2hlZHVs
ZXIgKi8KICNkZWZpbmUgQUlSVElNRV9VU0VfVFgJCUJJVCgwKQogI2RlZmluZSBBSVJUSU1FX1VT
RV9SWAkJQklUKDEpCisjZGVmaW5lIEFJUlRJTUVfR1JBQ0UgMjAwMCAvKiB1c2VjIG9mIGdyYWNl
IHBlcmlvZCBiZWZvcmUgcmVzZXQgKi8KIAogc3RydWN0IGFpcnRpbWVfaW5mbyB7CiAJdTY0IHJ4
X2FpcnRpbWU7CiAJdTY0IHR4X2FpcnRpbWU7Ci0JczY0IGRlZmljaXQ7CisJdTY0IHZfdDsKIH07
CiAKIHN0cnVjdCBzdGFfaW5mbzsKZGlmZiAtLWdpdCBhL25ldC9tYWM4MDIxMS90eC5jIGIvbmV0
L21hYzgwMjExL3R4LmMKaW5kZXggNjFjN2VhOS4uZDAwYmFhYSAxMDA2NDQKLS0tIGEvbmV0L21h
YzgwMjExL3R4LmMKKysrIGIvbmV0L21hYzgwMjExL3R4LmMKQEAgLTE0NDksNyArMTQ0OSw3IEBA
IHZvaWQgaWVlZTgwMjExX3R4cV9pbml0KHN0cnVjdCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNk
YXRhLAogCWNvZGVsX3ZhcnNfaW5pdCgmdHhxaS0+ZGVmX2N2YXJzKTsKIAljb2RlbF9zdGF0c19p
bml0KCZ0eHFpLT5jc3RhdHMpOwogCV9fc2tiX3F1ZXVlX2hlYWRfaW5pdCgmdHhxaS0+ZnJhZ3Mp
OwotCUlOSVRfTElTVF9IRUFEKCZ0eHFpLT5zY2hlZHVsZV9vcmRlcik7CisJUkJfQ0xFQVJfTk9E
RSgmdHhxaS0+c2NoZWR1bGVfb3JkZXIpOwogCiAJdHhxaS0+dHhxLnZpZiA9ICZzZGF0YS0+dmlm
OwogCkBAIC0xNDkzLDkgKzE0OTMsNyBAQCB2b2lkIGllZWU4MDIxMV90eHFfcHVyZ2Uoc3RydWN0
IGllZWU4MDIxMV9sb2NhbCAqbG9jYWwsCiAJaWVlZTgwMjExX3B1cmdlX3R4X3F1ZXVlKCZsb2Nh
bC0+aHcsICZ0eHFpLT5mcmFncyk7CiAJc3Bpbl91bmxvY2tfYmgoJmZxLT5sb2NrKTsKIAotCXNw
aW5fbG9ja19iaCgmbG9jYWwtPmFjdGl2ZV90eHFfbG9ja1t0eHFpLT50eHEuYWNdKTsKLQlsaXN0
X2RlbF9pbml0KCZ0eHFpLT5zY2hlZHVsZV9vcmRlcik7Ci0Jc3Bpbl91bmxvY2tfYmgoJmxvY2Fs
LT5hY3RpdmVfdHhxX2xvY2tbdHhxaS0+dHhxLmFjXSk7CisJaWVlZTgwMjExX3Vuc2NoZWR1bGVf
dHhxKCZsb2NhbC0+aHcsICZ0eHFpLT50eHEpOwogfQogCiB2b2lkIGllZWU4MDIxMV90eHFfc2V0
X3BhcmFtcyhzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCkKQEAgLTM2NDAsMTI2ICszNjM4
LDE5MSBAQCBzdHJ1Y3Qgc2tfYnVmZiAqaWVlZTgwMjExX3R4X2RlcXVldWUoc3RydWN0IGllZWU4
MDIxMV9odyAqaHcsCiBzdHJ1Y3QgaWVlZTgwMjExX3R4cSAqaWVlZTgwMjExX25leHRfdHhxKHN0
cnVjdCBpZWVlODAyMTFfaHcgKmh3LCB1OCBhYykKIHsKIAlzdHJ1Y3QgaWVlZTgwMjExX2xvY2Fs
ICpsb2NhbCA9IGh3X3RvX2xvY2FsKGh3KTsKKwlzdHJ1Y3QgcmJfbm9kZSAqbm9kZSA9IGxvY2Fs
LT5zY2hlZHVsZV9wb3NbYWNdOwogCXN0cnVjdCB0eHFfaW5mbyAqdHhxaSA9IE5VTEw7CisJYm9v
bCBmaXJzdCA9IGZhbHNlOwogCiAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmbG9jYWwtPmFjdGl2ZV90
eHFfbG9ja1thY10pOwogCi0gYmVnaW46Ci0JdHhxaSA9IGxpc3RfZmlyc3RfZW50cnlfb3JfbnVs
bCgmbG9jYWwtPmFjdGl2ZV90eHFzW2FjXSwKLQkJCQkJc3RydWN0IHR4cV9pbmZvLAotCQkJCQlz
Y2hlZHVsZV9vcmRlcik7Ci0JaWYgKCF0eHFpKQorCWlmICghbm9kZSkgeworCQlub2RlID0gcmJf
Zmlyc3RfY2FjaGVkKCZsb2NhbC0+YWN0aXZlX3R4cXNbYWNdKTsKKwkJZmlyc3QgPSB0cnVlOwor
CX0gZWxzZSB7CisJCW5vZGUgPSByYl9uZXh0KG5vZGUpOworCX0KKworCWlmICghbm9kZSkKIAkJ
cmV0dXJuIE5VTEw7CiAKKwl0eHFpID0gY29udGFpbmVyX29mKG5vZGUsIHN0cnVjdCB0eHFfaW5m
bywgc2NoZWR1bGVfb3JkZXIpOworCiAJaWYgKHR4cWktPnR4cS5zdGEpIHsKIAkJc3RydWN0IHN0
YV9pbmZvICpzdGEgPSBjb250YWluZXJfb2YodHhxaS0+dHhxLnN0YSwKIAkJCQkJCXN0cnVjdCBz
dGFfaW5mbywgc3RhKTsKIAotCQlpZiAoc3RhLT5haXJ0aW1lW3R4cWktPnR4cS5hY10uZGVmaWNp
dCA8IDApIHsKLQkJCXN0YS0+YWlydGltZVt0eHFpLT50eHEuYWNdLmRlZmljaXQgKz0KLQkJCQlz
dGEtPmFpcnRpbWVfd2VpZ2h0OwotCQkJbGlzdF9tb3ZlX3RhaWwoJnR4cWktPnNjaGVkdWxlX29y
ZGVyLAotCQkJCSAgICAgICAmbG9jYWwtPmFjdGl2ZV90eHFzW3R4cWktPnR4cS5hY10pOwotCQkJ
Z290byBiZWdpbjsKKwkJaWYgKHN0YS0+YWlydGltZVthY10udl90ID4gbG9jYWwtPmFpcnRpbWVf
dl90W2FjXSkgeworCQkJaWYgKGZpcnN0KQorCQkJCWxvY2FsLT5haXJ0aW1lX3ZfdFthY10gPSBz
dGEtPmFpcnRpbWVbYWNdLnZfdDsKKwkJCWVsc2UKKwkJCQlyZXR1cm4gTlVMTDsKIAkJfQogCX0K
IAogCi0JaWYgKHR4cWktPnNjaGVkdWxlX3JvdW5kID09IGxvY2FsLT5zY2hlZHVsZV9yb3VuZFth
Y10pCi0JCXJldHVybiBOVUxMOwotCi0JbGlzdF9kZWxfaW5pdCgmdHhxaS0+c2NoZWR1bGVfb3Jk
ZXIpOwotCXR4cWktPnNjaGVkdWxlX3JvdW5kID0gbG9jYWwtPnNjaGVkdWxlX3JvdW5kW2FjXTsK
Kwlsb2NhbC0+c2NoZWR1bGVfcG9zW2FjXSA9IG5vZGU7CiAJcmV0dXJuICZ0eHFpLT50eHE7CiB9
CiBFWFBPUlRfU1lNQk9MKGllZWU4MDIxMV9uZXh0X3R4cSk7CiAKLXZvaWQgaWVlZTgwMjExX3Jl
dHVybl90eHEoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsCitzdGF0aWMgdm9pZCBfX2llZWU4MDIx
MV9pbnNlcnRfdHhxKHN0cnVjdCByYl9yb290X2NhY2hlZCAqcm9vdCwKKwkJCQkgICBzdHJ1Y3Qg
dHhxX2luZm8gKnR4cWksIHU4IGFjKQoreworCXN0cnVjdCByYl9ub2RlICoqbmV3ID0gJnJvb3Qt
PnJiX3Jvb3QucmJfbm9kZTsKKwlzdHJ1Y3QgcmJfbm9kZSAqcGFyZW50ID0gTlVMTDsKKwlzdHJ1
Y3QgdHhxX2luZm8gKl9fdHhxaTsKKwlib29sIGxlZnRtb3N0ID0gdHJ1ZTsKKworCXdoaWxlICgq
bmV3KSB7CisJCXBhcmVudCA9ICpuZXc7CisJCV9fdHhxaSA9IHJiX2VudHJ5KHBhcmVudCwgc3Ry
dWN0IHR4cV9pbmZvLCBzY2hlZHVsZV9vcmRlcik7CisKKwkJaWYgKCF0eHFpLT50eHEuc3RhKSB7
CisJCQkvKiBuZXcgdHhxaSBoYXMgbm8gc3RhIC0gaW5zZXJ0IHRvIHRoZSBsZWZ0ICovCisJCQlu
ZXcgPSAmcGFyZW50LT5yYl9sZWZ0OworCQl9IGVsc2UgaWYgKCFfX3R4cWktPnR4cS5zdGEpIHsK
KwkJCS8qIGV4aXN0aW5nIHR4cWkgaGFzIG5vIHN0YSAtIGluc2VydCB0byB0aGUgcmlnaHQgKi8K
KwkJCW5ldyA9ICZwYXJlbnQtPnJiX3JpZ2h0OworCQkJbGVmdG1vc3QgPSBmYWxzZTsKKwkJfSBl
bHNlIHsKKwkJCXN0cnVjdCBzdGFfaW5mbyAqb2xkX3N0YSA9IGNvbnRhaW5lcl9vZihfX3R4cWkt
PnR4cS5zdGEsCisJCQkJCQkJCXN0cnVjdCBzdGFfaW5mbywKKwkJCQkJCQkJc3RhKTsKKwkJCXN0
cnVjdCBzdGFfaW5mbyAqbmV3X3N0YSA9IGNvbnRhaW5lcl9vZih0eHFpLT50eHEuc3RhLAorCQkJ
CQkJCQlzdHJ1Y3Qgc3RhX2luZm8sCisJCQkJCQkJCXN0YSk7CisKKwkJCWlmIChuZXdfc3RhLT5h
aXJ0aW1lW2FjXS52X3QgPD0gb2xkX3N0YS0+YWlydGltZVthY10udl90KSB7CisJCQkJbmV3ID0g
JnBhcmVudC0+cmJfbGVmdDsKKwkJCX0gZWxzZSB7CisJCQkJbmV3ID0gJnBhcmVudC0+cmJfcmln
aHQ7CisJCQkJbGVmdG1vc3QgPSBmYWxzZTsKKwkJCX0KKwkJfQorCX0KKworCXJiX2xpbmtfbm9k
ZSgmdHhxaS0+c2NoZWR1bGVfb3JkZXIsIHBhcmVudCwgbmV3KTsKKwlyYl9pbnNlcnRfY29sb3Jf
Y2FjaGVkKCZ0eHFpLT5zY2hlZHVsZV9vcmRlciwgcm9vdCwgbGVmdG1vc3QpOworfQorCit2b2lk
IGllZWU4MDIxMV9zY2hlZHVsZV90eHEoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsCisJCQkgICAg
c3RydWN0IGllZWU4MDIxMV90eHEgKnR4cSkKKwlfX2FjcXVpcmVzKHR4cV9sb2NrKSBfX3JlbGVh
c2VzKHR4cV9sb2NrKQoreworCXN0cnVjdCBpZWVlODAyMTFfbG9jYWwgKmxvY2FsID0gaHdfdG9f
bG9jYWwoaHcpOworCXN0cnVjdCB0eHFfaW5mbyAqdHhxaSA9IHRvX3R4cV9pbmZvKHR4cSk7CisJ
dTggYWMgPSB0eHEtPmFjOworCisJc3Bpbl9sb2NrX2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2Nr
W2FjXSk7CisKKwlpZiAoIVJCX0VNUFRZX05PREUoJnR4cWktPnNjaGVkdWxlX29yZGVyKSkKKwkJ
Z290byBvdXQ7CisKKwlpZiAodHhxLT5zdGEpIHsKKwkJc3RydWN0IHN0YV9pbmZvICpzdGEgPSBj
b250YWluZXJfb2YodHhxLT5zdGEsCisJCQkJCQkgICAgc3RydWN0IHN0YV9pbmZvLCBzdGEpOwor
CisJCWxvY2FsLT5haXJ0aW1lX3dlaWdodF9zdW1bYWNdICs9IHN0YS0+YWlydGltZV93ZWlnaHQ7
CisJCWlmIChsb2NhbC0+YWlydGltZV92X3RbYWNdID4gQUlSVElNRV9HUkFDRSkKKwkJCXN0YS0+
YWlydGltZVthY10udl90ID0gbWF4KGxvY2FsLT5haXJ0aW1lX3ZfdFthY10gLSBBSVJUSU1FX0dS
QUNFLAorCQkJCQkJICAgc3RhLT5haXJ0aW1lW2FjXS52X3QpOworCX0KKworCV9faWVlZTgwMjEx
X2luc2VydF90eHEoJmxvY2FsLT5hY3RpdmVfdHhxc1thY10sIHR4cWksIGFjKTsKKworIG91dDoK
KwlzcGluX3VubG9ja19iaCgmbG9jYWwtPmFjdGl2ZV90eHFfbG9ja1thY10pOworfQorRVhQT1JU
X1NZTUJPTChpZWVlODAyMTFfc2NoZWR1bGVfdHhxKTsKKwordm9pZCBpZWVlODAyMTFfcmVzb3J0
X3R4cShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKIAkJCSAgc3RydWN0IGllZWU4MDIxMV90eHEg
KnR4cSkKIHsKIAlzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCA9IGh3X3RvX2xvY2FsKGh3
KTsKIAlzdHJ1Y3QgdHhxX2luZm8gKnR4cWkgPSB0b190eHFfaW5mbyh0eHEpOworCXU4IGFjID0g
dHhxLT5hYzsKKworCWlmICghUkJfRU1QVFlfTk9ERSgmdHhxaS0+c2NoZWR1bGVfb3JkZXIpKSB7
CisJCXJiX2VyYXNlX2NhY2hlZCgmdHhxaS0+c2NoZWR1bGVfb3JkZXIsCisJCQkJJmxvY2FsLT5h
Y3RpdmVfdHhxc1thY10pOworCQlSQl9DTEVBUl9OT0RFKCZ0eHFpLT5zY2hlZHVsZV9vcmRlcik7
CisJCV9faWVlZTgwMjExX2luc2VydF90eHEoJmxvY2FsLT5hY3RpdmVfdHhxc1thY10sIHR4cWks
IGFjKTsKKwl9Cit9CisKK3N0YXRpYyB2b2lkIF9faWVlZTgwMjExX3Vuc2NoZWR1bGVfdHhxKHN0
cnVjdCBpZWVlODAyMTFfaHcgKmh3LAorCQkJCSAgICAgICBzdHJ1Y3QgaWVlZTgwMjExX3R4cSAq
dHhxKQoreworCXN0cnVjdCBpZWVlODAyMTFfbG9jYWwgKmxvY2FsID0gaHdfdG9fbG9jYWwoaHcp
OworCXN0cnVjdCB0eHFfaW5mbyAqdHhxaSA9IHRvX3R4cV9pbmZvKHR4cSk7CisJdTggYWMgPSB0
eHEtPmFjOwogCiAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmbG9jYWwtPmFjdGl2ZV90eHFfbG9ja1t0
eHEtPmFjXSk7CiAKLQlpZiAobGlzdF9lbXB0eSgmdHhxaS0+c2NoZWR1bGVfb3JkZXIpICYmCi0J
ICAgICghc2tiX3F1ZXVlX2VtcHR5KCZ0eHFpLT5mcmFncykgfHwgdHhxaS0+dGluLmJhY2tsb2df
cGFja2V0cykpIHsKLQkJLyogSWYgYWlydGltZSBhY2NvdW50aW5nIGlzIGFjdGl2ZSwgYWx3YXlz
IGVucXVldWUgU1RBcyBhdCB0aGUKLQkJICogaGVhZCBvZiB0aGUgbGlzdCB0byBlbnN1cmUgdGhh
dCB0aGV5IG9ubHkgZ2V0IG1vdmVkIHRvIHRoZQotCQkgKiBiYWNrIGJ5IHRoZSBhaXJ0aW1lIERS
UiBzY2hlZHVsZXIgb25jZSB0aGV5IGhhdmUgYSBuZWdhdGl2ZQotCQkgKiBkZWZpY2l0LiBBIHN0
YXRpb24gdGhhdCBhbHJlYWR5IGhhcyBhIG5lZ2F0aXZlIGRlZmljaXQgd2lsbAotCQkgKiBnZXQg
aW1tZWRpYXRlbHkgbW92ZWQgdG8gdGhlIGJhY2sgb2YgdGhlIGxpc3Qgb24gdGhlIG5leHQKLQkJ
ICogY2FsbCB0byBpZWVlODAyMTFfbmV4dF90eHEoKS4KLQkJICovCi0JCWlmICh0eHFpLT50eHEu
c3RhICYmCi0JCSAgICB3aXBoeV9leHRfZmVhdHVyZV9pc3NldChsb2NhbC0+aHcud2lwaHksCi0J
CQkJCSAgICBOTDgwMjExX0VYVF9GRUFUVVJFX0FJUlRJTUVfRkFJUk5FU1MpKQotCQkJbGlzdF9h
ZGQoJnR4cWktPnNjaGVkdWxlX29yZGVyLAotCQkJCSAmbG9jYWwtPmFjdGl2ZV90eHFzW3R4cS0+
YWNdKTsKLQkJZWxzZQotCQkJbGlzdF9hZGRfdGFpbCgmdHhxaS0+c2NoZWR1bGVfb3JkZXIsCi0J
CQkJICAgICAgJmxvY2FsLT5hY3RpdmVfdHhxc1t0eHEtPmFjXSk7CisJaWYgKFJCX0VNUFRZX05P
REUoJnR4cWktPnNjaGVkdWxlX29yZGVyKSkKKwkJcmV0dXJuOworCisJaWYgKHR4cS0+c3RhKSB7
CisJCXN0cnVjdCBzdGFfaW5mbyAqc3RhID0gY29udGFpbmVyX29mKHR4cS0+c3RhLAorCQkJCQkJ
ICAgIHN0cnVjdCBzdGFfaW5mbywgc3RhKTsKKworCQlsb2NhbC0+YWlydGltZV93ZWlnaHRfc3Vt
W2FjXSAtPSBzdGEtPmFpcnRpbWVfd2VpZ2h0OwogCX0KKworCXJiX2VyYXNlX2NhY2hlZCgmdHhx
aS0+c2NoZWR1bGVfb3JkZXIsCisJCQkmbG9jYWwtPmFjdGl2ZV90eHFzW3R4cS0+YWNdKTsKKwlS
Ql9DTEVBUl9OT0RFKCZ0eHFpLT5zY2hlZHVsZV9vcmRlcik7CiB9Ci1FWFBPUlRfU1lNQk9MKGll
ZWU4MDIxMV9yZXR1cm5fdHhxKTsKIAotdm9pZCBpZWVlODAyMTFfc2NoZWR1bGVfdHhxKHN0cnVj
dCBpZWVlODAyMTFfaHcgKmh3LAotCQkJICAgIHN0cnVjdCBpZWVlODAyMTFfdHhxICp0eHEpCit2
b2lkIGllZWU4MDIxMV91bnNjaGVkdWxlX3R4cShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKKwkJ
CSAgICAgIHN0cnVjdCBpZWVlODAyMTFfdHhxICp0eHEpCiAJX19hY3F1aXJlcyh0eHFfbG9jaykg
X19yZWxlYXNlcyh0eHFfbG9jaykKIHsKIAlzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCA9
IGh3X3RvX2xvY2FsKGh3KTsKIAogCXNwaW5fbG9ja19iaCgmbG9jYWwtPmFjdGl2ZV90eHFfbG9j
a1t0eHEtPmFjXSk7Ci0JaWVlZTgwMjExX3JldHVybl90eHEoaHcsIHR4cSk7CisJX19pZWVlODAy
MTFfdW5zY2hlZHVsZV90eHEoaHcsIHR4cSk7CiAJc3Bpbl91bmxvY2tfYmgoJmxvY2FsLT5hY3Rp
dmVfdHhxX2xvY2tbdHhxLT5hY10pOwogfQotRVhQT1JUX1NZTUJPTChpZWVlODAyMTFfc2NoZWR1
bGVfdHhxKTsKKwordm9pZCBpZWVlODAyMTFfcmV0dXJuX3R4cShzdHJ1Y3QgaWVlZTgwMjExX2h3
ICpodywKKwkJCSAgc3RydWN0IGllZWU4MDIxMV90eHEgKnR4cSkKK3sKKwlzdHJ1Y3QgaWVlZTgw
MjExX2xvY2FsICpsb2NhbCA9IGh3X3RvX2xvY2FsKGh3KTsKKwlzdHJ1Y3QgdHhxX2luZm8gKnR4
cWkgPSB0b190eHFfaW5mbyh0eHEpOworCisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmbG9jYWwtPmFj
dGl2ZV90eHFfbG9ja1t0eHEtPmFjXSk7CisKKwlpZiAoIVJCX0VNUFRZX05PREUoJnR4cWktPnNj
aGVkdWxlX29yZGVyKSAmJgorCSAgICAoc2tiX3F1ZXVlX2VtcHR5KCZ0eHFpLT5mcmFncykgJiYg
IXR4cWktPnRpbi5iYWNrbG9nX3BhY2tldHMpKQorCQlfX2llZWU4MDIxMV91bnNjaGVkdWxlX3R4
cShodywgdHhxKTsKK30KK0VYUE9SVF9TWU1CT0woaWVlZTgwMjExX3JldHVybl90eHEpOwogCiBi
b29sIGllZWU4MDIxMV90eHFfbWF5X3RyYW5zbWl0KHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAog
CQkJCXN0cnVjdCBpZWVlODAyMTFfdHhxICp0eHEpCiB7CiAJc3RydWN0IGllZWU4MDIxMV9sb2Nh
bCAqbG9jYWwgPSBod190b19sb2NhbChodyk7Ci0Jc3RydWN0IHR4cV9pbmZvICppdGVyLCAqdG1w
LCAqdHhxaSA9IHRvX3R4cV9pbmZvKHR4cSk7CisJc3RydWN0IHR4cV9pbmZvICp0eHFpID0gdG9f
dHhxX2luZm8odHhxKTsKIAlzdHJ1Y3Qgc3RhX2luZm8gKnN0YTsKIAl1OCBhYyA9IHR4cS0+YWM7
CiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7CiAK
IAlpZiAoIXR4cWktPnR4cS5zdGEpCi0JCWdvdG8gb3V0OwotCi0JaWYgKGxpc3RfZW1wdHkoJnR4
cWktPnNjaGVkdWxlX29yZGVyKSkKLQkJZ290byBvdXQ7Ci0KLQlsaXN0X2Zvcl9lYWNoX2VudHJ5
X3NhZmUoaXRlciwgdG1wLCAmbG9jYWwtPmFjdGl2ZV90eHFzW2FjXSwKLQkJCQkgc2NoZWR1bGVf
b3JkZXIpIHsKLQkJaWYgKGl0ZXIgPT0gdHhxaSkKLQkJCWJyZWFrOwotCi0JCWlmICghaXRlci0+
dHhxLnN0YSkgewotCQkJbGlzdF9tb3ZlX3RhaWwoJml0ZXItPnNjaGVkdWxlX29yZGVyLAotCQkJ
CSAgICAgICAmbG9jYWwtPmFjdGl2ZV90eHFzW2FjXSk7Ci0JCQljb250aW51ZTsKLQkJfQotCQlz
dGEgPSBjb250YWluZXJfb2YoaXRlci0+dHhxLnN0YSwgc3RydWN0IHN0YV9pbmZvLCBzdGEpOwot
CQlpZiAoc3RhLT5haXJ0aW1lW2FjXS5kZWZpY2l0IDwgMCkKLQkJCXN0YS0+YWlydGltZVthY10u
ZGVmaWNpdCArPSBzdGEtPmFpcnRpbWVfd2VpZ2h0OwotCQlsaXN0X21vdmVfdGFpbCgmaXRlci0+
c2NoZWR1bGVfb3JkZXIsICZsb2NhbC0+YWN0aXZlX3R4cXNbYWNdKTsKLQl9CisJCXJldHVybiB0
cnVlOwogCiAJc3RhID0gY29udGFpbmVyX29mKHR4cWktPnR4cS5zdGEsIHN0cnVjdCBzdGFfaW5m
bywgc3RhKTsKLQlpZiAoc3RhLT5haXJ0aW1lW2FjXS5kZWZpY2l0ID49IDApCi0JCWdvdG8gb3V0
OwotCi0Jc3RhLT5haXJ0aW1lW2FjXS5kZWZpY2l0ICs9IHN0YS0+YWlydGltZV93ZWlnaHQ7Ci0J
bGlzdF9tb3ZlX3RhaWwoJnR4cWktPnNjaGVkdWxlX29yZGVyLCAmbG9jYWwtPmFjdGl2ZV90eHFz
W2FjXSk7Ci0KLQlyZXR1cm4gZmFsc2U7Ci1vdXQ6Ci0JaWYgKCFsaXN0X2VtcHR5KCZ0eHFpLT5z
Y2hlZHVsZV9vcmRlcikpCi0JCWxpc3RfZGVsX2luaXQoJnR4cWktPnNjaGVkdWxlX29yZGVyKTsK
LQotCXJldHVybiB0cnVlOworCXJldHVybiAoc3RhLT5haXJ0aW1lW2FjXS52X3QgPD0gbG9jYWwt
PmFpcnRpbWVfdl90W2FjXSk7CiB9CiBFWFBPUlRfU1lNQk9MKGllZWU4MDIxMV90eHFfbWF5X3Ry
YW5zbWl0KTsKIApAQCAtMzc2OSw3ICszODMyLDYgQEAgdm9pZCBpZWVlODAyMTFfdHhxX3NjaGVk
dWxlX3N0YXJ0KHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCB1OCBhYykKIAlzdHJ1Y3QgaWVlZTgw
MjExX2xvY2FsICpsb2NhbCA9IGh3X3RvX2xvY2FsKGh3KTsKIAogCXNwaW5fbG9ja19iaCgmbG9j
YWwtPmFjdGl2ZV90eHFfbG9ja1thY10pOwotCWxvY2FsLT5zY2hlZHVsZV9yb3VuZFthY10rKzsK
IH0KIEVYUE9SVF9TWU1CT0woaWVlZTgwMjExX3R4cV9zY2hlZHVsZV9zdGFydCk7CiAKQEAgLTM3
NzgsNiArMzg0MCw3IEBAIHZvaWQgaWVlZTgwMjExX3R4cV9zY2hlZHVsZV9lbmQoc3RydWN0IGll
ZWU4MDIxMV9odyAqaHcsIHU4IGFjKQogewogCXN0cnVjdCBpZWVlODAyMTFfbG9jYWwgKmxvY2Fs
ID0gaHdfdG9fbG9jYWwoaHcpOwogCisJbG9jYWwtPnNjaGVkdWxlX3Bvc1thY10gPSBOVUxMOwog
CXNwaW5fdW5sb2NrX2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7CiB9CiBFWFBPUlRf
U1lNQk9MKGllZWU4MDIxMV90eHFfc2NoZWR1bGVfZW5kKTsKLS0gCjEuOS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0
CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
