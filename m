Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9B0BAE69
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 09:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yD2J3pz2cmenOuOnx+nH8d346Cq1XcytOwyW9E6zbF4=; b=hDwED3IIJVIjPI
	oNJBRuvlGIAoWxcbgR0tteiTP8C8ZZV3cnCGxExpvBzKspUras/ucrW4fLZyCqwt3yYpGfj4oO+YN
	RMI7xx/TzhKDB48TOS607bG2Lv2TIwn+exyhP+KGKNvhXpj/g0Zalfak3q0D/P2gYzbhyILcf6cs0
	jKg4uVClb1MNflTLHEp+57dBOA4XqGCWUFJzFzJDRQGJLFEBKXjz5qQClHrqkNdedmL2LLBgFMLTA
	ZkaZr2z0iuDIHDsYPDhuSiBMz+XmV/etEs2NaVf2xUajH0JVj/1Cgd2Et39zv897TGYooFCF5nDoO
	yvRzy/h1XzEp13pyIhWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCIeG-0004QW-KE; Mon, 23 Sep 2019 07:20:40 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIe8-0004Nb-RF
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 07:20:35 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 84AE5611FD; Mon, 23 Sep 2019 07:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569223232;
 bh=N1/FCPeJHzQuYeEVyXwjYaJ9UWHutZ+Js8Xa50mX66A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GZt/cLEMJSsohaOiPPPYkifIFXMJohzWTMhEzvE2kvyh5BCHDfPTCttCytiyLUC1b
 ovAJHaasBP70zLvQ9J+pgKwGDZ5k667V4sRxkBDgywXpIQNwuz2fB8VJqaz0c+gJIK
 Fmu38+RQwwYZ8QYMmv1Uram7UtLJp3Ge8B/EVqP8=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8AC116119D;
 Mon, 23 Sep 2019 07:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569223230;
 bh=N1/FCPeJHzQuYeEVyXwjYaJ9UWHutZ+Js8Xa50mX66A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MjTA0CP1la3Ebsg6qqMBCeYabu7XvtajiQH8kUSLEhemed8nHHs/ovk5ZmDthWylq
 e/zLbSIbAKX+emVY4gS/7Iegj1nF4TpLxPfwKWqeNeHF26aE/cF14TkOnfAutKFyei
 ZhioCJdOvGL3QCJ3CwE2t/Qp27sbOThKz5NjxN2k=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8AC116119D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=yiboz@codeaurora.org
From: Yibo Zhao <yiboz@codeaurora.org>
To: linux-wireless@vger.kernel.org
Subject: [PATCH V3 1/4] mac80211: Switch to a virtual time-based airtime
 scheduler
Date: Mon, 23 Sep 2019 15:19:58 +0800
Message-Id: <1569223201-1490-2-git-send-email-yiboz@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_002033_152444_1CB53245 
X-CRM114-Status: GOOD (  19.50  )
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
RV9SWAkJQklUKDEpCisjZGVmaW5lIEFJUlRJTUVfR1JBQ0UgNTAwIC8qIHVzZWMgb2YgZ3JhY2Ug
cGVyaW9kIGJlZm9yZSByZXNldCAqLwogCiBzdHJ1Y3QgYWlydGltZV9pbmZvIHsKIAl1NjQgcnhf
YWlydGltZTsKIAl1NjQgdHhfYWlydGltZTsKLQlzNjQgZGVmaWNpdDsKKwl1NjQgdl90OwogfTsK
IAogc3RydWN0IHN0YV9pbmZvOwpkaWZmIC0tZ2l0IGEvbmV0L21hYzgwMjExL3R4LmMgYi9uZXQv
bWFjODAyMTEvdHguYwppbmRleCA2MWM3ZWE5Li5kMDBiYWFhIDEwMDY0NAotLS0gYS9uZXQvbWFj
ODAyMTEvdHguYworKysgYi9uZXQvbWFjODAyMTEvdHguYwpAQCAtMTQ0OSw3ICsxNDQ5LDcgQEAg
dm9pZCBpZWVlODAyMTFfdHhxX2luaXQoc3RydWN0IGllZWU4MDIxMV9zdWJfaWZfZGF0YSAqc2Rh
dGEsCiAJY29kZWxfdmFyc19pbml0KCZ0eHFpLT5kZWZfY3ZhcnMpOwogCWNvZGVsX3N0YXRzX2lu
aXQoJnR4cWktPmNzdGF0cyk7CiAJX19za2JfcXVldWVfaGVhZF9pbml0KCZ0eHFpLT5mcmFncyk7
Ci0JSU5JVF9MSVNUX0hFQUQoJnR4cWktPnNjaGVkdWxlX29yZGVyKTsKKwlSQl9DTEVBUl9OT0RF
KCZ0eHFpLT5zY2hlZHVsZV9vcmRlcik7CiAKIAl0eHFpLT50eHEudmlmID0gJnNkYXRhLT52aWY7
CiAKQEAgLTE0OTMsOSArMTQ5Myw3IEBAIHZvaWQgaWVlZTgwMjExX3R4cV9wdXJnZShzdHJ1Y3Qg
aWVlZTgwMjExX2xvY2FsICpsb2NhbCwKIAlpZWVlODAyMTFfcHVyZ2VfdHhfcXVldWUoJmxvY2Fs
LT5odywgJnR4cWktPmZyYWdzKTsKIAlzcGluX3VubG9ja19iaCgmZnEtPmxvY2spOwogCi0Jc3Bp
bl9sb2NrX2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW3R4cWktPnR4cS5hY10pOwotCWxpc3Rf
ZGVsX2luaXQoJnR4cWktPnNjaGVkdWxlX29yZGVyKTsKLQlzcGluX3VubG9ja19iaCgmbG9jYWwt
PmFjdGl2ZV90eHFfbG9ja1t0eHFpLT50eHEuYWNdKTsKKwlpZWVlODAyMTFfdW5zY2hlZHVsZV90
eHEoJmxvY2FsLT5odywgJnR4cWktPnR4cSk7CiB9CiAKIHZvaWQgaWVlZTgwMjExX3R4cV9zZXRf
cGFyYW1zKHN0cnVjdCBpZWVlODAyMTFfbG9jYWwgKmxvY2FsKQpAQCAtMzY0MCwxMjYgKzM2Mzgs
MTkxIEBAIHN0cnVjdCBza19idWZmICppZWVlODAyMTFfdHhfZGVxdWV1ZShzdHJ1Y3QgaWVlZTgw
MjExX2h3ICpodywKIHN0cnVjdCBpZWVlODAyMTFfdHhxICppZWVlODAyMTFfbmV4dF90eHEoc3Ry
dWN0IGllZWU4MDIxMV9odyAqaHcsIHU4IGFjKQogewogCXN0cnVjdCBpZWVlODAyMTFfbG9jYWwg
KmxvY2FsID0gaHdfdG9fbG9jYWwoaHcpOworCXN0cnVjdCByYl9ub2RlICpub2RlID0gbG9jYWwt
PnNjaGVkdWxlX3Bvc1thY107CiAJc3RydWN0IHR4cV9pbmZvICp0eHFpID0gTlVMTDsKKwlib29s
IGZpcnN0ID0gZmFsc2U7CiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZsb2NhbC0+YWN0aXZlX3R4
cV9sb2NrW2FjXSk7CiAKLSBiZWdpbjoKLQl0eHFpID0gbGlzdF9maXJzdF9lbnRyeV9vcl9udWxs
KCZsb2NhbC0+YWN0aXZlX3R4cXNbYWNdLAotCQkJCQlzdHJ1Y3QgdHhxX2luZm8sCi0JCQkJCXNj
aGVkdWxlX29yZGVyKTsKLQlpZiAoIXR4cWkpCisJaWYgKCFub2RlKSB7CisJCW5vZGUgPSByYl9m
aXJzdF9jYWNoZWQoJmxvY2FsLT5hY3RpdmVfdHhxc1thY10pOworCQlmaXJzdCA9IHRydWU7CisJ
fSBlbHNlIHsKKwkJbm9kZSA9IHJiX25leHQobm9kZSk7CisJfQorCisJaWYgKCFub2RlKQogCQly
ZXR1cm4gTlVMTDsKIAorCXR4cWkgPSBjb250YWluZXJfb2Yobm9kZSwgc3RydWN0IHR4cV9pbmZv
LCBzY2hlZHVsZV9vcmRlcik7CisKIAlpZiAodHhxaS0+dHhxLnN0YSkgewogCQlzdHJ1Y3Qgc3Rh
X2luZm8gKnN0YSA9IGNvbnRhaW5lcl9vZih0eHFpLT50eHEuc3RhLAogCQkJCQkJc3RydWN0IHN0
YV9pbmZvLCBzdGEpOwogCi0JCWlmIChzdGEtPmFpcnRpbWVbdHhxaS0+dHhxLmFjXS5kZWZpY2l0
IDwgMCkgewotCQkJc3RhLT5haXJ0aW1lW3R4cWktPnR4cS5hY10uZGVmaWNpdCArPQotCQkJCXN0
YS0+YWlydGltZV93ZWlnaHQ7Ci0JCQlsaXN0X21vdmVfdGFpbCgmdHhxaS0+c2NoZWR1bGVfb3Jk
ZXIsCi0JCQkJICAgICAgICZsb2NhbC0+YWN0aXZlX3R4cXNbdHhxaS0+dHhxLmFjXSk7Ci0JCQln
b3RvIGJlZ2luOworCQlpZiAoc3RhLT5haXJ0aW1lW2FjXS52X3QgPiBsb2NhbC0+YWlydGltZV92
X3RbYWNdKSB7CisJCQlpZiAoZmlyc3QpCisJCQkJbG9jYWwtPmFpcnRpbWVfdl90W2FjXSA9IHN0
YS0+YWlydGltZVthY10udl90OworCQkJZWxzZQorCQkJCXJldHVybiBOVUxMOwogCQl9CiAJfQog
CiAKLQlpZiAodHhxaS0+c2NoZWR1bGVfcm91bmQgPT0gbG9jYWwtPnNjaGVkdWxlX3JvdW5kW2Fj
XSkKLQkJcmV0dXJuIE5VTEw7Ci0KLQlsaXN0X2RlbF9pbml0KCZ0eHFpLT5zY2hlZHVsZV9vcmRl
cik7Ci0JdHhxaS0+c2NoZWR1bGVfcm91bmQgPSBsb2NhbC0+c2NoZWR1bGVfcm91bmRbYWNdOwor
CWxvY2FsLT5zY2hlZHVsZV9wb3NbYWNdID0gbm9kZTsKIAlyZXR1cm4gJnR4cWktPnR4cTsKIH0K
IEVYUE9SVF9TWU1CT0woaWVlZTgwMjExX25leHRfdHhxKTsKIAotdm9pZCBpZWVlODAyMTFfcmV0
dXJuX3R4cShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKK3N0YXRpYyB2b2lkIF9faWVlZTgwMjEx
X2luc2VydF90eHEoc3RydWN0IHJiX3Jvb3RfY2FjaGVkICpyb290LAorCQkJCSAgIHN0cnVjdCB0
eHFfaW5mbyAqdHhxaSwgdTggYWMpCit7CisJc3RydWN0IHJiX25vZGUgKipuZXcgPSAmcm9vdC0+
cmJfcm9vdC5yYl9ub2RlOworCXN0cnVjdCByYl9ub2RlICpwYXJlbnQgPSBOVUxMOworCXN0cnVj
dCB0eHFfaW5mbyAqX190eHFpOworCWJvb2wgbGVmdG1vc3QgPSB0cnVlOworCisJd2hpbGUgKCpu
ZXcpIHsKKwkJcGFyZW50ID0gKm5ldzsKKwkJX190eHFpID0gcmJfZW50cnkocGFyZW50LCBzdHJ1
Y3QgdHhxX2luZm8sIHNjaGVkdWxlX29yZGVyKTsKKworCQlpZiAoIXR4cWktPnR4cS5zdGEpIHsK
KwkJCS8qIG5ldyB0eHFpIGhhcyBubyBzdGEgLSBpbnNlcnQgdG8gdGhlIGxlZnQgKi8KKwkJCW5l
dyA9ICZwYXJlbnQtPnJiX2xlZnQ7CisJCX0gZWxzZSBpZiAoIV9fdHhxaS0+dHhxLnN0YSkgewor
CQkJLyogZXhpc3RpbmcgdHhxaSBoYXMgbm8gc3RhIC0gaW5zZXJ0IHRvIHRoZSByaWdodCAqLwor
CQkJbmV3ID0gJnBhcmVudC0+cmJfcmlnaHQ7CisJCQlsZWZ0bW9zdCA9IGZhbHNlOworCQl9IGVs
c2UgeworCQkJc3RydWN0IHN0YV9pbmZvICpvbGRfc3RhID0gY29udGFpbmVyX29mKF9fdHhxaS0+
dHhxLnN0YSwKKwkJCQkJCQkJc3RydWN0IHN0YV9pbmZvLAorCQkJCQkJCQlzdGEpOworCQkJc3Ry
dWN0IHN0YV9pbmZvICpuZXdfc3RhID0gY29udGFpbmVyX29mKHR4cWktPnR4cS5zdGEsCisJCQkJ
CQkJCXN0cnVjdCBzdGFfaW5mbywKKwkJCQkJCQkJc3RhKTsKKworCQkJaWYgKG5ld19zdGEtPmFp
cnRpbWVbYWNdLnZfdCA8PSBvbGRfc3RhLT5haXJ0aW1lW2FjXS52X3QpIHsKKwkJCQluZXcgPSAm
cGFyZW50LT5yYl9sZWZ0OworCQkJfSBlbHNlIHsKKwkJCQluZXcgPSAmcGFyZW50LT5yYl9yaWdo
dDsKKwkJCQlsZWZ0bW9zdCA9IGZhbHNlOworCQkJfQorCQl9CisJfQorCisJcmJfbGlua19ub2Rl
KCZ0eHFpLT5zY2hlZHVsZV9vcmRlciwgcGFyZW50LCBuZXcpOworCXJiX2luc2VydF9jb2xvcl9j
YWNoZWQoJnR4cWktPnNjaGVkdWxlX29yZGVyLCByb290LCBsZWZ0bW9zdCk7Cit9CisKK3ZvaWQg
aWVlZTgwMjExX3NjaGVkdWxlX3R4cShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKKwkJCSAgICBz
dHJ1Y3QgaWVlZTgwMjExX3R4cSAqdHhxKQorCV9fYWNxdWlyZXModHhxX2xvY2spIF9fcmVsZWFz
ZXModHhxX2xvY2spCit7CisJc3RydWN0IGllZWU4MDIxMV9sb2NhbCAqbG9jYWwgPSBod190b19s
b2NhbChodyk7CisJc3RydWN0IHR4cV9pbmZvICp0eHFpID0gdG9fdHhxX2luZm8odHhxKTsKKwl1
OCBhYyA9IHR4cS0+YWM7CisKKwlzcGluX2xvY2tfYmgoJmxvY2FsLT5hY3RpdmVfdHhxX2xvY2tb
YWNdKTsKKworCWlmICghUkJfRU1QVFlfTk9ERSgmdHhxaS0+c2NoZWR1bGVfb3JkZXIpKQorCQln
b3RvIG91dDsKKworCWlmICh0eHEtPnN0YSkgeworCQlzdHJ1Y3Qgc3RhX2luZm8gKnN0YSA9IGNv
bnRhaW5lcl9vZih0eHEtPnN0YSwKKwkJCQkJCSAgICBzdHJ1Y3Qgc3RhX2luZm8sIHN0YSk7CisK
KwkJbG9jYWwtPmFpcnRpbWVfd2VpZ2h0X3N1bVthY10gKz0gc3RhLT5haXJ0aW1lX3dlaWdodDsK
KwkJaWYgKGxvY2FsLT5haXJ0aW1lX3ZfdFthY10gPiBBSVJUSU1FX0dSQUNFKQorCQkJc3RhLT5h
aXJ0aW1lW2FjXS52X3QgPSBtYXgobG9jYWwtPmFpcnRpbWVfdl90W2FjXSAtIEFJUlRJTUVfR1JB
Q0UsCisJCQkJCQkgICBzdGEtPmFpcnRpbWVbYWNdLnZfdCk7CisJfQorCisJX19pZWVlODAyMTFf
aW5zZXJ0X3R4cSgmbG9jYWwtPmFjdGl2ZV90eHFzW2FjXSwgdHhxaSwgYWMpOworCisgb3V0Ogor
CXNwaW5fdW5sb2NrX2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7Cit9CitFWFBPUlRf
U1lNQk9MKGllZWU4MDIxMV9zY2hlZHVsZV90eHEpOworCit2b2lkIGllZWU4MDIxMV9yZXNvcnRf
dHhxKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAogCQkJICBzdHJ1Y3QgaWVlZTgwMjExX3R4cSAq
dHhxKQogewogCXN0cnVjdCBpZWVlODAyMTFfbG9jYWwgKmxvY2FsID0gaHdfdG9fbG9jYWwoaHcp
OwogCXN0cnVjdCB0eHFfaW5mbyAqdHhxaSA9IHRvX3R4cV9pbmZvKHR4cSk7CisJdTggYWMgPSB0
eHEtPmFjOworCisJaWYgKCFSQl9FTVBUWV9OT0RFKCZ0eHFpLT5zY2hlZHVsZV9vcmRlcikpIHsK
KwkJcmJfZXJhc2VfY2FjaGVkKCZ0eHFpLT5zY2hlZHVsZV9vcmRlciwKKwkJCQkmbG9jYWwtPmFj
dGl2ZV90eHFzW2FjXSk7CisJCVJCX0NMRUFSX05PREUoJnR4cWktPnNjaGVkdWxlX29yZGVyKTsK
KwkJX19pZWVlODAyMTFfaW5zZXJ0X3R4cSgmbG9jYWwtPmFjdGl2ZV90eHFzW2FjXSwgdHhxaSwg
YWMpOworCX0KK30KKworc3RhdGljIHZvaWQgX19pZWVlODAyMTFfdW5zY2hlZHVsZV90eHEoc3Ry
dWN0IGllZWU4MDIxMV9odyAqaHcsCisJCQkJICAgICAgIHN0cnVjdCBpZWVlODAyMTFfdHhxICp0
eHEpCit7CisJc3RydWN0IGllZWU4MDIxMV9sb2NhbCAqbG9jYWwgPSBod190b19sb2NhbChodyk7
CisJc3RydWN0IHR4cV9pbmZvICp0eHFpID0gdG9fdHhxX2luZm8odHhxKTsKKwl1OCBhYyA9IHR4
cS0+YWM7CiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW3R4
cS0+YWNdKTsKIAotCWlmIChsaXN0X2VtcHR5KCZ0eHFpLT5zY2hlZHVsZV9vcmRlcikgJiYKLQkg
ICAgKCFza2JfcXVldWVfZW1wdHkoJnR4cWktPmZyYWdzKSB8fCB0eHFpLT50aW4uYmFja2xvZ19w
YWNrZXRzKSkgewotCQkvKiBJZiBhaXJ0aW1lIGFjY291bnRpbmcgaXMgYWN0aXZlLCBhbHdheXMg
ZW5xdWV1ZSBTVEFzIGF0IHRoZQotCQkgKiBoZWFkIG9mIHRoZSBsaXN0IHRvIGVuc3VyZSB0aGF0
IHRoZXkgb25seSBnZXQgbW92ZWQgdG8gdGhlCi0JCSAqIGJhY2sgYnkgdGhlIGFpcnRpbWUgRFJS
IHNjaGVkdWxlciBvbmNlIHRoZXkgaGF2ZSBhIG5lZ2F0aXZlCi0JCSAqIGRlZmljaXQuIEEgc3Rh
dGlvbiB0aGF0IGFscmVhZHkgaGFzIGEgbmVnYXRpdmUgZGVmaWNpdCB3aWxsCi0JCSAqIGdldCBp
bW1lZGlhdGVseSBtb3ZlZCB0byB0aGUgYmFjayBvZiB0aGUgbGlzdCBvbiB0aGUgbmV4dAotCQkg
KiBjYWxsIHRvIGllZWU4MDIxMV9uZXh0X3R4cSgpLgotCQkgKi8KLQkJaWYgKHR4cWktPnR4cS5z
dGEgJiYKLQkJICAgIHdpcGh5X2V4dF9mZWF0dXJlX2lzc2V0KGxvY2FsLT5ody53aXBoeSwKLQkJ
CQkJICAgIE5MODAyMTFfRVhUX0ZFQVRVUkVfQUlSVElNRV9GQUlSTkVTUykpCi0JCQlsaXN0X2Fk
ZCgmdHhxaS0+c2NoZWR1bGVfb3JkZXIsCi0JCQkJICZsb2NhbC0+YWN0aXZlX3R4cXNbdHhxLT5h
Y10pOwotCQllbHNlCi0JCQlsaXN0X2FkZF90YWlsKCZ0eHFpLT5zY2hlZHVsZV9vcmRlciwKLQkJ
CQkgICAgICAmbG9jYWwtPmFjdGl2ZV90eHFzW3R4cS0+YWNdKTsKKwlpZiAoUkJfRU1QVFlfTk9E
RSgmdHhxaS0+c2NoZWR1bGVfb3JkZXIpKQorCQlyZXR1cm47CisKKwlpZiAodHhxLT5zdGEpIHsK
KwkJc3RydWN0IHN0YV9pbmZvICpzdGEgPSBjb250YWluZXJfb2YodHhxLT5zdGEsCisJCQkJCQkg
ICAgc3RydWN0IHN0YV9pbmZvLCBzdGEpOworCisJCWxvY2FsLT5haXJ0aW1lX3dlaWdodF9zdW1b
YWNdIC09IHN0YS0+YWlydGltZV93ZWlnaHQ7CiAJfQorCisJcmJfZXJhc2VfY2FjaGVkKCZ0eHFp
LT5zY2hlZHVsZV9vcmRlciwKKwkJCSZsb2NhbC0+YWN0aXZlX3R4cXNbdHhxLT5hY10pOworCVJC
X0NMRUFSX05PREUoJnR4cWktPnNjaGVkdWxlX29yZGVyKTsKIH0KLUVYUE9SVF9TWU1CT0woaWVl
ZTgwMjExX3JldHVybl90eHEpOwogCi12b2lkIGllZWU4MDIxMV9zY2hlZHVsZV90eHEoc3RydWN0
IGllZWU4MDIxMV9odyAqaHcsCi0JCQkgICAgc3RydWN0IGllZWU4MDIxMV90eHEgKnR4cSkKK3Zv
aWQgaWVlZTgwMjExX3Vuc2NoZWR1bGVfdHhxKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAorCQkJ
ICAgICAgc3RydWN0IGllZWU4MDIxMV90eHEgKnR4cSkKIAlfX2FjcXVpcmVzKHR4cV9sb2NrKSBf
X3JlbGVhc2VzKHR4cV9sb2NrKQogewogCXN0cnVjdCBpZWVlODAyMTFfbG9jYWwgKmxvY2FsID0g
aHdfdG9fbG9jYWwoaHcpOwogCiAJc3Bpbl9sb2NrX2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2Nr
W3R4cS0+YWNdKTsKLQlpZWVlODAyMTFfcmV0dXJuX3R4cShodywgdHhxKTsKKwlfX2llZWU4MDIx
MV91bnNjaGVkdWxlX3R4cShodywgdHhxKTsKIAlzcGluX3VubG9ja19iaCgmbG9jYWwtPmFjdGl2
ZV90eHFfbG9ja1t0eHEtPmFjXSk7CiB9Ci1FWFBPUlRfU1lNQk9MKGllZWU4MDIxMV9zY2hlZHVs
ZV90eHEpOworCit2b2lkIGllZWU4MDIxMV9yZXR1cm5fdHhxKHN0cnVjdCBpZWVlODAyMTFfaHcg
Kmh3LAorCQkJICBzdHJ1Y3QgaWVlZTgwMjExX3R4cSAqdHhxKQoreworCXN0cnVjdCBpZWVlODAy
MTFfbG9jYWwgKmxvY2FsID0gaHdfdG9fbG9jYWwoaHcpOworCXN0cnVjdCB0eHFfaW5mbyAqdHhx
aSA9IHRvX3R4cV9pbmZvKHR4cSk7CisKKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZsb2NhbC0+YWN0
aXZlX3R4cV9sb2NrW3R4cS0+YWNdKTsKKworCWlmICghUkJfRU1QVFlfTk9ERSgmdHhxaS0+c2No
ZWR1bGVfb3JkZXIpICYmCisJICAgIChza2JfcXVldWVfZW1wdHkoJnR4cWktPmZyYWdzKSAmJiAh
dHhxaS0+dGluLmJhY2tsb2dfcGFja2V0cykpCisJCV9faWVlZTgwMjExX3Vuc2NoZWR1bGVfdHhx
KGh3LCB0eHEpOworfQorRVhQT1JUX1NZTUJPTChpZWVlODAyMTFfcmV0dXJuX3R4cSk7CiAKIGJv
b2wgaWVlZTgwMjExX3R4cV9tYXlfdHJhbnNtaXQoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsCiAJ
CQkJc3RydWN0IGllZWU4MDIxMV90eHEgKnR4cSkKIHsKIAlzdHJ1Y3QgaWVlZTgwMjExX2xvY2Fs
ICpsb2NhbCA9IGh3X3RvX2xvY2FsKGh3KTsKLQlzdHJ1Y3QgdHhxX2luZm8gKml0ZXIsICp0bXAs
ICp0eHFpID0gdG9fdHhxX2luZm8odHhxKTsKKwlzdHJ1Y3QgdHhxX2luZm8gKnR4cWkgPSB0b190
eHFfaW5mbyh0eHEpOwogCXN0cnVjdCBzdGFfaW5mbyAqc3RhOwogCXU4IGFjID0gdHhxLT5hYzsK
IAogCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmxvY2FsLT5hY3RpdmVfdHhxX2xvY2tbYWNdKTsKIAog
CWlmICghdHhxaS0+dHhxLnN0YSkKLQkJZ290byBvdXQ7Ci0KLQlpZiAobGlzdF9lbXB0eSgmdHhx
aS0+c2NoZWR1bGVfb3JkZXIpKQotCQlnb3RvIG91dDsKLQotCWxpc3RfZm9yX2VhY2hfZW50cnlf
c2FmZShpdGVyLCB0bXAsICZsb2NhbC0+YWN0aXZlX3R4cXNbYWNdLAotCQkJCSBzY2hlZHVsZV9v
cmRlcikgewotCQlpZiAoaXRlciA9PSB0eHFpKQotCQkJYnJlYWs7Ci0KLQkJaWYgKCFpdGVyLT50
eHEuc3RhKSB7Ci0JCQlsaXN0X21vdmVfdGFpbCgmaXRlci0+c2NoZWR1bGVfb3JkZXIsCi0JCQkJ
ICAgICAgICZsb2NhbC0+YWN0aXZlX3R4cXNbYWNdKTsKLQkJCWNvbnRpbnVlOwotCQl9Ci0JCXN0
YSA9IGNvbnRhaW5lcl9vZihpdGVyLT50eHEuc3RhLCBzdHJ1Y3Qgc3RhX2luZm8sIHN0YSk7Ci0J
CWlmIChzdGEtPmFpcnRpbWVbYWNdLmRlZmljaXQgPCAwKQotCQkJc3RhLT5haXJ0aW1lW2FjXS5k
ZWZpY2l0ICs9IHN0YS0+YWlydGltZV93ZWlnaHQ7Ci0JCWxpc3RfbW92ZV90YWlsKCZpdGVyLT5z
Y2hlZHVsZV9vcmRlciwgJmxvY2FsLT5hY3RpdmVfdHhxc1thY10pOwotCX0KKwkJcmV0dXJuIHRy
dWU7CiAKIAlzdGEgPSBjb250YWluZXJfb2YodHhxaS0+dHhxLnN0YSwgc3RydWN0IHN0YV9pbmZv
LCBzdGEpOwotCWlmIChzdGEtPmFpcnRpbWVbYWNdLmRlZmljaXQgPj0gMCkKLQkJZ290byBvdXQ7
Ci0KLQlzdGEtPmFpcnRpbWVbYWNdLmRlZmljaXQgKz0gc3RhLT5haXJ0aW1lX3dlaWdodDsKLQls
aXN0X21vdmVfdGFpbCgmdHhxaS0+c2NoZWR1bGVfb3JkZXIsICZsb2NhbC0+YWN0aXZlX3R4cXNb
YWNdKTsKLQotCXJldHVybiBmYWxzZTsKLW91dDoKLQlpZiAoIWxpc3RfZW1wdHkoJnR4cWktPnNj
aGVkdWxlX29yZGVyKSkKLQkJbGlzdF9kZWxfaW5pdCgmdHhxaS0+c2NoZWR1bGVfb3JkZXIpOwot
Ci0JcmV0dXJuIHRydWU7CisJcmV0dXJuIChzdGEtPmFpcnRpbWVbYWNdLnZfdCA8PSBsb2NhbC0+
YWlydGltZV92X3RbYWNdKTsKIH0KIEVYUE9SVF9TWU1CT0woaWVlZTgwMjExX3R4cV9tYXlfdHJh
bnNtaXQpOwogCkBAIC0zNzY5LDcgKzM4MzIsNiBAQCB2b2lkIGllZWU4MDIxMV90eHFfc2NoZWR1
bGVfc3RhcnQoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsIHU4IGFjKQogCXN0cnVjdCBpZWVlODAy
MTFfbG9jYWwgKmxvY2FsID0gaHdfdG9fbG9jYWwoaHcpOwogCiAJc3Bpbl9sb2NrX2JoKCZsb2Nh
bC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7Ci0JbG9jYWwtPnNjaGVkdWxlX3JvdW5kW2FjXSsrOwog
fQogRVhQT1JUX1NZTUJPTChpZWVlODAyMTFfdHhxX3NjaGVkdWxlX3N0YXJ0KTsKIApAQCAtMzc3
OCw2ICszODQwLDcgQEAgdm9pZCBpZWVlODAyMTFfdHhxX3NjaGVkdWxlX2VuZChzdHJ1Y3QgaWVl
ZTgwMjExX2h3ICpodywgdTggYWMpCiB7CiAJc3RydWN0IGllZWU4MDIxMV9sb2NhbCAqbG9jYWwg
PSBod190b19sb2NhbChodyk7CiAKKwlsb2NhbC0+c2NoZWR1bGVfcG9zW2FjXSA9IE5VTEw7CiAJ
c3Bpbl91bmxvY2tfYmgoJmxvY2FsLT5hY3RpdmVfdHhxX2xvY2tbYWNdKTsKIH0KIEVYUE9SVF9T
WU1CT0woaWVlZTgwMjExX3R4cV9zY2hlZHVsZV9lbmQpOwotLSAKMS45LjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0
CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
