Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4BCB3B08
	for <lists+ath10k@lfdr.de>; Mon, 16 Sep 2019 15:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0/9Ma5C7072daEhowi5UbNdgQUiyaQ7NOO63lKdeNw=; b=BfBsrE0RZaUb1S
	xuqrmYUxRI5979ZnkSLdCnfRu24THBvXHtodP+9tWtAEP6FOxiVT4xG8vJCHXI+V0UxIE8lHgbbL6
	fS0tm8n+c5ER8Pacs41ajQepeoyoEG4AuljvMzOGf/1FkSkQEiNLRKaBmxmS6MOvzT1HCamyzpDUV
	42bvF1MEcPzXtkq0+2fAvm3oJytSwZv77ILauVQhnbl7i2HrZLXv+g90JNQor9ZJ/LXc19oXqmKd7
	h11fODLN4iUQB1dWO1ivso+3KyQv60Mk3U7FDD8RtJ/rU67PmLmMssdsRgeYSFOVxV28tyAuPFusx
	P/Yi8qarVF+v6UjAGejA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qmA-0004Yh-7O; Mon, 16 Sep 2019 13:10:42 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qm3-0004Wk-2Y
 for ath10k@lists.infradead.org; Mon, 16 Sep 2019 13:10:36 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id AFE1F611FD; Mon, 16 Sep 2019 13:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568639434;
 bh=5ZC6jmwiMy7decVcU1F89bZb8lrRdZ+ifQlFcir8cq8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eRSc9AkUFFNKdZbxqnI6DWI0DdnM7iYGtLcjPkPnnG65I9DwjAk8mZAdRH5a195Wg
 VnXHMxVy4+Ihr+UerynjaQ8xIkkzZ7QYhlrrUun4JoaQeuAl/hM47rLpO1a97zCttc
 BA/5hvknP86RXOnfakR5Aspm9l34PxOjSDltPttA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from ybzhao-HP-Z230-SFF-Workstation.ap.qualcomm.com (unknown
 [180.166.53.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: yiboz@codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EDDF5611FA;
 Mon, 16 Sep 2019 13:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568639433;
 bh=5ZC6jmwiMy7decVcU1F89bZb8lrRdZ+ifQlFcir8cq8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pN7h8XF8UrO7qWE3gKv16d9m80IWGVDqxwMmg/BEL+YyLEpD99X/bLmU/a6O+uCcT
 pJ3m0EY1bxAThNrxcuiBC6rwNrl77mG4bF7+JUsg1Yned5KyrrARMhbFKNfHyTJVwD
 s0YflXUnBaPt7W23A+cDz7RdEqqnmdTTg8f/oWjc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EDDF5611FA
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH 3/4] mac80211: fix low throughput in push pull mode
Date: Mon, 16 Sep 2019 21:09:47 +0800
Message-Id: <1568639388-27291-3-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_061035_181874_86B158EF 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yibo Zhao <yiboz@codeaurora.org>,
 =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

SWYgc3RhdGlvbiBpcyBpbmVsaWdpYmxlIGZvciB0cmFuc21pc3Npb24gaW4gaWVlZTgwMjExX3R4
cV9tYXlfdHJhbnNtaXQoKSwKbm8gcGFja2V0IHdpbGwgYmUgZGVsaXZlcmVkIHRvIEZXLiBEdXJp
bmcgdGhlIHRlc3RzIGluIHB1c2gtcHVsbCBtb2RlIHdpdGgKbWFueSBjbGllbnRzLCBhZnRlciBz
ZXZlcmFsIHNlY29uZHMsIG5vdCBhIHNpbmdsZSBzdGF0aW9uIGlzIGFuIGVsaWdpYmxlCmNhbmRp
ZGF0ZSBmb3IgdHJhbnNtaXNzaW9uIHNpbmNlIGdsb2JhbCB0aW1lIGlzIHNtYWxsZXIgdGhhbiBh
bGwgdGhlCnN0YXRpb24ncyB2aXJ0dWFsIGFpcnRpbWUuIEFzIGEgY29uc2VxdWVuY2UsIHRoZSBU
eCBoYXMgYmVlbiBibG9ja2VkIGFuZAp0aHJvdWdocHV0IGlzIHF1aXRlIGxvdy4KClRvIGF2b2lk
IHRoaXMgc2l0dWF0aW9uIHRvIG9jY3VyIGluIHB1c2gtcHVsbCBtb2RlLCB0aGUgbmV3IHByb3Bv
c2FsIGlzOgoKLSBJbmNyZWFzZSB0aGUgYWlydGltZSBncmFjZSBwZXJpb2QgYSBsaXR0bGUgbW9y
ZSB0byByZWR1Y2UgdGhlCiAgdW5leHBlY3RlZCBzeW5jCgotIElmIGdsb2JhbCB2aXJ0dWFsIHRp
bWUgaXMgbGVzcyB0aGFuIHRoZSB2aXJ0dWFsIGFpcnRpbWUgb2YgYW55IHN0YXRpb24sCiAgc3lu
YyBpdCB0byB0aGUgYWlydGltZSBvZiBmaXJzdCBzdGF0aW9uIGluIHRoZSByZWQtYmxhY2sgdHJl
ZQoKLSBSb3VuZCB0aGUgZGl2aXNpb24gcmVzdWx0IHNpbmNlIHRoZSBwcm9jZXNzIG9mIGdsb2Jh
bCB2aXJ0dWFsIHRpbWUKICBpbnZvbHZlcyB0aGUgZGl2aXNpb24gY2FsY3VsYXRpb24KCkNvLWRl
dmVsb3BlZC1ieTogWWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4KU2lnbmVkLW9mZi1i
eTogWWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4KU2lnbmVkLW9mZi1ieTogVG9rZSBI
w7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+Ci0tLQogbmV0L21hYzgwMjExL3N0YV9p
bmZvLmMgfCAgMyArKy0KIG5ldC9tYWM4MDIxMS9zdGFfaW5mby5oIHwgIDIgKy0KIG5ldC9tYWM4
MDIxMS90eC5jICAgICAgIHwgMTYgKysrKysrKysrKysrKysrLQogMyBmaWxlcyBjaGFuZ2VkLCAx
OCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL25ldC9tYWM4MDIx
MS9zdGFfaW5mby5jIGIvbmV0L21hYzgwMjExL3N0YV9pbmZvLmMKaW5kZXggOWQwMWZkZC4uZmVh
Yzk3NSAxMDA2NDQKLS0tIGEvbmV0L21hYzgwMjExL3N0YV9pbmZvLmMKKysrIGIvbmV0L21hYzgw
MjExL3N0YV9pbmZvLmMKQEAgLTE4NTIsNyArMTg1Miw4IEBAIHZvaWQgaWVlZTgwMjExX3N0YV9y
ZWdpc3Rlcl9haXJ0aW1lKHN0cnVjdCBpZWVlODAyMTFfc3RhICpwdWJzdGEsIHU4IHRpZCwKIAog
CXdlaWdodF9zdW0gPSBsb2NhbC0+YWlydGltZV93ZWlnaHRfc3VtW2FjXSA/OiBzdGEtPmFpcnRp
bWVfd2VpZ2h0OwogCi0JbG9jYWwtPmFpcnRpbWVfdl90W2FjXSArPSBhaXJ0aW1lIC8gd2VpZ2h0
X3N1bTsKKwkvKiBSb3VuZCB0aGUgY2FsY3VsYXRpb24gb2YgZ2xvYmFsIHZ0ICovCisJbG9jYWwt
PmFpcnRpbWVfdl90W2FjXSArPSAoYWlydGltZSArICh3ZWlnaHRfc3VtID4+IDEpKSAvIHdlaWdo
dF9zdW07CiAJc3RhLT5haXJ0aW1lW2FjXS52X3QgKz0gYWlydGltZSAvIHN0YS0+YWlydGltZV93
ZWlnaHQ7CiAJaWVlZTgwMjExX3Jlc29ydF90eHEoJmxvY2FsLT5odywgdHhxKTsKIApkaWZmIC0t
Z2l0IGEvbmV0L21hYzgwMjExL3N0YV9pbmZvLmggYi9uZXQvbWFjODAyMTEvc3RhX2luZm8uaApp
bmRleCA1YzFjYWM5Li41MDU1Zjk0IDEwMDY0NAotLS0gYS9uZXQvbWFjODAyMTEvc3RhX2luZm8u
aAorKysgYi9uZXQvbWFjODAyMTEvc3RhX2luZm8uaApAQCAtMTMwLDcgKzEzMCw3IEBAIGVudW0g
aWVlZTgwMjExX2FnZ19zdG9wX3JlYXNvbiB7CiAvKiBEZWJ1Z2ZzIGZsYWdzIHRvIGVuYWJsZS9k
aXNhYmxlIHVzZSBvZiBSWC9UWCBhaXJ0aW1lIGluIHNjaGVkdWxlciAqLwogI2RlZmluZSBBSVJU
SU1FX1VTRV9UWAkJQklUKDApCiAjZGVmaW5lIEFJUlRJTUVfVVNFX1JYCQlCSVQoMSkKLSNkZWZp
bmUgQUlSVElNRV9HUkFDRSA1MDAgLyogdXNlYyBvZiBncmFjZSBwZXJpb2QgYmVmb3JlIHJlc2V0
ICovCisjZGVmaW5lIEFJUlRJTUVfR1JBQ0UgMjAwMCAvKiB1c2VjIG9mIGdyYWNlIHBlcmlvZCBi
ZWZvcmUgcmVzZXQgKi8KIAogc3RydWN0IGFpcnRpbWVfaW5mbyB7CiAJdTY0IHJ4X2FpcnRpbWU7
CmRpZmYgLS1naXQgYS9uZXQvbWFjODAyMTEvdHguYyBiL25ldC9tYWM4MDIxMS90eC5jCmluZGV4
IDQyY2EwMTAuLjYwY2Y1NjkgMTAwNjQ0Ci0tLSBhL25ldC9tYWM4MDIxMS90eC5jCisrKyBiL25l
dC9tYWM4MDIxMS90eC5jCkBAIC0zODY3LDE1ICszODY3LDI5IEBAIGJvb2wgaWVlZTgwMjExX3R4
cV9tYXlfdHJhbnNtaXQoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsCiAJCQkJc3RydWN0IGllZWU4
MDIxMV90eHEgKnR4cSkKIHsKIAlzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCA9IGh3X3Rv
X2xvY2FsKGh3KTsKLQlzdHJ1Y3QgdHhxX2luZm8gKnR4cWkgPSB0b190eHFfaW5mbyh0eHEpOwor
CXN0cnVjdCB0eHFfaW5mbyAqZmlyc3RfdHhxaSwgKnR4cWkgPSB0b190eHFfaW5mbyh0eHEpOwor
CXN0cnVjdCByYl9ub2RlICpub2RlID0gTlVMTDsKIAlzdHJ1Y3Qgc3RhX2luZm8gKnN0YTsKIAl1
OCBhYyA9IHR4cS0+YWM7CisJZmlyc3RfdHhxaSA9IE5VTEw7CiAKIAlsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7CiAKIAlpZiAoIXR4cWktPnR4cS5zdGEp
CiAJCXJldHVybiB0cnVlOwogCisJbm9kZSA9IHJiX2ZpcnN0X2NhY2hlZCgmbG9jYWwtPmFjdGl2
ZV90eHFzW2FjXSk7CisJaWYgKG5vZGUpIHsKKwkJZmlyc3RfdHhxaSA9IGNvbnRhaW5lcl9vZihu
b2RlLCBzdHJ1Y3QgdHhxX2luZm8sCisJCQkJCSAgc2NoZWR1bGVfb3JkZXIpOworCQlpZiAoZmly
c3RfdHhxaS0+dHhxLnN0YSkgeworCQkJc3RhID0gY29udGFpbmVyX29mKGZpcnN0X3R4cWktPnR4
cS5zdGEsCisJCQkJCSAgIHN0cnVjdCBzdGFfaW5mbywgc3RhKTsKKwkJCWlmIChsb2NhbC0+YWly
dGltZV92X3RbYWNdIDwgc3RhLT5haXJ0aW1lW2FjXS52X3QpCisJCQkJbG9jYWwtPmFpcnRpbWVf
dl90W2FjXSA9IHN0YS0+YWlydGltZVthY10udl90OworCQl9CisJfQorCiAJc3RhID0gY29udGFp
bmVyX29mKHR4cWktPnR4cS5zdGEsIHN0cnVjdCBzdGFfaW5mbywgc3RhKTsKIAlyZXR1cm4gKHN0
YS0+YWlydGltZVthY10udl90IDw9IGxvY2FsLT5haXJ0aW1lX3ZfdFthY10pOwogfQotLSAKMS45
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgx
MGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
