Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B82B60AB
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 11:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ftj1zIxdwiIc+SzY0tCH42yjHhdpuVkdwOYNskJKLZk=; b=Dx09LLCjd/8i3p
	E/0izsyLuaDFLeCv4hJtSfNeAB73iRyCZoAAq9p0SQC+/Bh27fpxoCaemWE7AXcXsftPabP537YMH
	bLB8qO+Ov9JaRLRu/1G17oYGDkhxCMsx5j9ZjICEmcn6YsmOmsnBHeG5ODF6hN6Ckm7ySlNCvU5G4
	4rqFOrdk5xQHHxiyobd2bc9ujDZD5TAdhc9FDO3tROucSQ/5pjlkWE8xyMXiEGKgbUF67CzqmbmcV
	kbqJVmqlvJrz0bkbcstjHT4NjufpfMNRv94Le5Uie0O894Njt1rLT1ZpLHaOGWPxPnrjuUlJUTbMH
	/sLbyB/y/M4smx516Sfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAWYn-0003LF-Dq; Wed, 18 Sep 2019 09:47:41 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWYc-0003F6-QE
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 09:47:32 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7E9E26141D; Wed, 18 Sep 2019 09:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568800050;
 bh=nOPG271MYmE9za6LywVupNiS5dg7aCWvsd/EPLsiDhQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=feWGhdyPcYxR4D5wq6WgoFy7V+l69hL8jxXs7kCJuHFTCEj+3V+7y+7Ge2emWSQ37
 P8Bnt8poVGzLYQq+fvPapUSlIRC4IfFviEt7QYxjIiSpoheURHyv5q+4R4xpbh9deG
 15E3jWskO8DNaBoTSkQsTXFvJQmPACUrkXS+z+6M=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C525E60767;
 Wed, 18 Sep 2019 09:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568800050;
 bh=nOPG271MYmE9za6LywVupNiS5dg7aCWvsd/EPLsiDhQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=feWGhdyPcYxR4D5wq6WgoFy7V+l69hL8jxXs7kCJuHFTCEj+3V+7y+7Ge2emWSQ37
 P8Bnt8poVGzLYQq+fvPapUSlIRC4IfFviEt7QYxjIiSpoheURHyv5q+4R4xpbh9deG
 15E3jWskO8DNaBoTSkQsTXFvJQmPACUrkXS+z+6M=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C525E60767
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: [PATCH V2 3/4] mac80211: fix low throughput in multi-clients situation
Date: Wed, 18 Sep 2019 17:47:12 +0800
Message-Id: <1568800033-17297-3-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568800033-17297-1-git-send-email-yiboz@codeaurora.org>
References: <1568800033-17297-1-git-send-email-yiboz@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_024730_904533_80E3912C 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Tm90IGxvbmcgYWZ0ZXIgdGhlIHN0YXJ0IG9mIG11bHRpLWNsaWVudHMgdGVzdCwgbm90IGEgc2lu
Z2xlIHN0YXRpb24gaXMKYW4gZWxpZ2libGUgY2FuZGlkYXRlIGZvciB0cmFuc21pc3Npb24gc2lu
Y2UgZ2xvYmFsIHZpcnR1YWwgdGltZShnX3Z0KSBpcwpzbWFsbGVyIHRoYW4gdGhlIHZpcnR1YWwg
YWlydGltZShzX3Z0KSBvZiBhbGwgdGhlIHN0YXRpb25zLiBBcyBhIHJlc3VsdCwKdGhlIFR4IGhh
cyBiZWVuIGJsb2NrZWQgYW5kIHRocm91Z2hwdXQgaXMgcXVpdGUgbG93LgoKVGhpcyBtYXkgbWFp
bmx5IGR1ZSB0byBzeW5jIG1lY2hhbmlzbSBhbmQgYWNjdW11bGF0aXZlIGRldmlhdGlvbiBmcm9t
IHRoZQpkZXZpc2lvbiBjYWxjdWxhdGlvbiBvZiBnX3Z0LgoKRm9yIGV4YW1wbGU6ClN1cHBvc2Ug
d2UgaGF2ZSA1MCBjbGllbnRzIGluIGZpcnN0IHJvdW5kLgpSb3VuZCAxOgpTVEEJd2VpZ2h0CVR4
X3RpbWVfcm91bmQgIHd0X3N1bQlzX3Z0CWdfdnQgIHZhbGlkX2Zvcl9uZXh0X1R4Ci4JLgkuCQkJ
LgkJLgouCS4JLgkJCS4JCS4KLgkuCS4JCQkuCQkuCgpBZnRlciB0aGlzIHJvdW5kLCBhbGwgdGhl
IHN0YXRpb25zIGFyZSBub3QgdmFsaWQgZm9yIG5leHQgdHJhbnNtaXNzaW9uIGR1ZQp0byBhY2N1
bXVsYXRpdmUgZGV2aWF0aW9uLgoKQW5kIGlmIHdlIGFkZCBhIG5ldyAjNTEsClJvdW5kIDI6ClNU
QQl3ZWlnaHQJVHhfdGltZV9yb3VuZAl3dF9zdW0gIHNfdnQJZ192dCAgdmFsaWRfZm9yX25leHRf
VHgKLgkuCS4JCQkuCQkuCi4JLgkuCQkJLgkJLgouCS4JLgkJCS4JCS4KClN5bmMgaXMgZG9uZSBi
eToKbWF4KGdfdnQgb2YgbGFzdCByb3VuZCAtIGdyYWNlIHBlcmlvZCwgc192dCkKYW5kIHNfdnQg
b2YgIzUxID0gbWF4KDIwMDAgLSA1MDAsIDApICsgMTAyNCA9IDI1MjQsIGFuZCBpdCBpcyBtb3Jl
IHRoYW4gdGhlCmZpbmFsIGdfdnQgb2YgdGhpcyByb3VuZC4KCkFmdGVyIHRoaXMgcm91bmQsIG5v
IG1vcmUgc3RhdGlvbiBpcyB2YWxpZCBmb3IgdHJhbnNtaXNzaW9uLgoKVGhlIHJlYWwgc2l0dWF0
aW9uIGNhbiBiZSBtb3JlIGNvbXBsaWNhdGUsIGFib3ZlIGlzIG9uZSBvZiB0aGUgZXh0cmVtZWx5
CmNhc2UuCgpUbyBhdm9pZCB0aGlzIHNpdHVhdGlvbiB0byBvY2N1ciwgdGhlIG5ldyBwcm9wb3Nh
bCBpczoKCi0gSW5jcmVhc2UgdGhlIGFpcnRpbWUgZ3JhY2UgcGVyaW9kIGEgbGl0dGxlIG1vcmUg
dG8gcmVkdWNlIHRoZQogIHVuZXhwZWN0ZWQgc3luYwoKLSBJZiBnbG9iYWwgdmlydHVhbCB0aW1l
IGlzIGxlc3MgdGhhbiB0aGUgdmlydHVhbCBhaXJ0aW1lIG9mIGFueSBzdGF0aW9uLAogIHN5bmMg
aXQgdG8gdGhlIGFpcnRpbWUgb2YgZmlyc3Qgc3RhdGlvbiBpbiB0aGUgcmVkLWJsYWNrIHRyZWUK
Ci0gUm91bmQgdGhlIGRpdmlzaW9uIHJlc3VsdAoKQ28tZGV2ZWxvcGVkLWJ5OiBUb2tlIEjDuGls
YW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KU2lnbmVkLW9mZi1ieTogWWlibyBaaGFv
IDx5aWJvekBjb2RlYXVyb3JhLm9yZz4KU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1Kw7hy
Z2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Ci0tLQogbmV0L21hYzgwMjExL3N0YV9pbmZvLmMgfCAg
MyArKy0KIG5ldC9tYWM4MDIxMS9zdGFfaW5mby5oIHwgIDIgKy0KIG5ldC9tYWM4MDIxMS90eC5j
ICAgICAgIHwgMTYgKysrKysrKysrKysrKysrLQogMyBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL25ldC9tYWM4MDIxMS9zdGFfaW5m
by5jIGIvbmV0L21hYzgwMjExL3N0YV9pbmZvLmMKaW5kZXggOWQwMWZkZC4uZmVhYzk3NSAxMDA2
NDQKLS0tIGEvbmV0L21hYzgwMjExL3N0YV9pbmZvLmMKKysrIGIvbmV0L21hYzgwMjExL3N0YV9p
bmZvLmMKQEAgLTE4NTIsNyArMTg1Miw4IEBAIHZvaWQgaWVlZTgwMjExX3N0YV9yZWdpc3Rlcl9h
aXJ0aW1lKHN0cnVjdCBpZWVlODAyMTFfc3RhICpwdWJzdGEsIHU4IHRpZCwKIAogCXdlaWdodF9z
dW0gPSBsb2NhbC0+YWlydGltZV93ZWlnaHRfc3VtW2FjXSA/OiBzdGEtPmFpcnRpbWVfd2VpZ2h0
OwogCi0JbG9jYWwtPmFpcnRpbWVfdl90W2FjXSArPSBhaXJ0aW1lIC8gd2VpZ2h0X3N1bTsKKwkv
KiBSb3VuZCB0aGUgY2FsY3VsYXRpb24gb2YgZ2xvYmFsIHZ0ICovCisJbG9jYWwtPmFpcnRpbWVf
dl90W2FjXSArPSAoYWlydGltZSArICh3ZWlnaHRfc3VtID4+IDEpKSAvIHdlaWdodF9zdW07CiAJ
c3RhLT5haXJ0aW1lW2FjXS52X3QgKz0gYWlydGltZSAvIHN0YS0+YWlydGltZV93ZWlnaHQ7CiAJ
aWVlZTgwMjExX3Jlc29ydF90eHEoJmxvY2FsLT5odywgdHhxKTsKIApkaWZmIC0tZ2l0IGEvbmV0
L21hYzgwMjExL3N0YV9pbmZvLmggYi9uZXQvbWFjODAyMTEvc3RhX2luZm8uaAppbmRleCA1YzFj
YWM5Li41MDU1Zjk0IDEwMDY0NAotLS0gYS9uZXQvbWFjODAyMTEvc3RhX2luZm8uaAorKysgYi9u
ZXQvbWFjODAyMTEvc3RhX2luZm8uaApAQCAtMTMwLDcgKzEzMCw3IEBAIGVudW0gaWVlZTgwMjEx
X2FnZ19zdG9wX3JlYXNvbiB7CiAvKiBEZWJ1Z2ZzIGZsYWdzIHRvIGVuYWJsZS9kaXNhYmxlIHVz
ZSBvZiBSWC9UWCBhaXJ0aW1lIGluIHNjaGVkdWxlciAqLwogI2RlZmluZSBBSVJUSU1FX1VTRV9U
WAkJQklUKDApCiAjZGVmaW5lIEFJUlRJTUVfVVNFX1JYCQlCSVQoMSkKLSNkZWZpbmUgQUlSVElN
RV9HUkFDRSA1MDAgLyogdXNlYyBvZiBncmFjZSBwZXJpb2QgYmVmb3JlIHJlc2V0ICovCisjZGVm
aW5lIEFJUlRJTUVfR1JBQ0UgMjAwMCAvKiB1c2VjIG9mIGdyYWNlIHBlcmlvZCBiZWZvcmUgcmVz
ZXQgKi8KIAogc3RydWN0IGFpcnRpbWVfaW5mbyB7CiAJdTY0IHJ4X2FpcnRpbWU7CmRpZmYgLS1n
aXQgYS9uZXQvbWFjODAyMTEvdHguYyBiL25ldC9tYWM4MDIxMS90eC5jCmluZGV4IDQyY2EwMTAu
LjYwY2Y1NjkgMTAwNjQ0Ci0tLSBhL25ldC9tYWM4MDIxMS90eC5jCisrKyBiL25ldC9tYWM4MDIx
MS90eC5jCkBAIC0zODY3LDE1ICszODY3LDI5IEBAIGJvb2wgaWVlZTgwMjExX3R4cV9tYXlfdHJh
bnNtaXQoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsCiAJCQkJc3RydWN0IGllZWU4MDIxMV90eHEg
KnR4cSkKIHsKIAlzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCA9IGh3X3RvX2xvY2FsKGh3
KTsKLQlzdHJ1Y3QgdHhxX2luZm8gKnR4cWkgPSB0b190eHFfaW5mbyh0eHEpOworCXN0cnVjdCB0
eHFfaW5mbyAqZmlyc3RfdHhxaSwgKnR4cWkgPSB0b190eHFfaW5mbyh0eHEpOworCXN0cnVjdCBy
Yl9ub2RlICpub2RlID0gTlVMTDsKIAlzdHJ1Y3Qgc3RhX2luZm8gKnN0YTsKIAl1OCBhYyA9IHR4
cS0+YWM7CisJZmlyc3RfdHhxaSA9IE5VTEw7CiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZsb2Nh
bC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7CiAKIAlpZiAoIXR4cWktPnR4cS5zdGEpCiAJCXJldHVy
biB0cnVlOwogCisJbm9kZSA9IHJiX2ZpcnN0X2NhY2hlZCgmbG9jYWwtPmFjdGl2ZV90eHFzW2Fj
XSk7CisJaWYgKG5vZGUpIHsKKwkJZmlyc3RfdHhxaSA9IGNvbnRhaW5lcl9vZihub2RlLCBzdHJ1
Y3QgdHhxX2luZm8sCisJCQkJCSAgc2NoZWR1bGVfb3JkZXIpOworCQlpZiAoZmlyc3RfdHhxaS0+
dHhxLnN0YSkgeworCQkJc3RhID0gY29udGFpbmVyX29mKGZpcnN0X3R4cWktPnR4cS5zdGEsCisJ
CQkJCSAgIHN0cnVjdCBzdGFfaW5mbywgc3RhKTsKKwkJCWlmIChsb2NhbC0+YWlydGltZV92X3Rb
YWNdIDwgc3RhLT5haXJ0aW1lW2FjXS52X3QpCisJCQkJbG9jYWwtPmFpcnRpbWVfdl90W2FjXSA9
IHN0YS0+YWlydGltZVthY10udl90OworCQl9CisJfQorCiAJc3RhID0gY29udGFpbmVyX29mKHR4
cWktPnR4cS5zdGEsIHN0cnVjdCBzdGFfaW5mbywgc3RhKTsKIAlyZXR1cm4gKHN0YS0+YWlydGlt
ZVthY10udl90IDw9IGxvY2FsLT5haXJ0aW1lX3ZfdFthY10pOwogfQotLSAKMS45LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGlu
ZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
