Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6BEFDED0
	for <lists+ath10k@lfdr.de>; Fri, 15 Nov 2019 14:20:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fy/Ee+Z8FCZeuZD3j3PfrvbYRtrPi+2qQQCFSV+3LTo=; b=DC+pf5Byjgrt+4
	jtRdt0Byd5uM6zBJorR95cJWB+r80hzbSXEzcrOLnIqNxHCJ1XvpLZCYFLTq/qGSrCWAuG/x5xkpP
	HwqnIA/qgb/CtCom5eKKxbO+P/3u44GiPbPGvmf/C+MBNCory6198estb4qR9WI0WQD7RxHQIbKxQ
	CMb4PZ8PtVhvsLeiJN2kmBBIr0BwwQDJo07xxZaMlYPM5N4Fb8r82IRxGx85Yc6N4DLJO0e3X2DbQ
	ORSXTXxIwIqHgI76lc1Nd9s3DuLtwTmIwVXhiJgppOI0O+AQHBaT8BQFq6vg7w9cOS7FYvMA1zo+C
	hjzqo4lmGZt+6CdF1gKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVbWw-0000v0-DV; Fri, 15 Nov 2019 13:20:54 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVbWo-0000s1-4W
 for ath10k@lists.infradead.org; Fri, 15 Nov 2019 13:20:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573824045;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YXoS2W5BbZsp09HQfFBXWaQ8N7PlWsSs7THfUeKuQyo=;
 b=DVfZUxAcyeDuGSYWJLaUCzvXlLkLrAA7YIzngWYviunidQKg9oroBLDAknOMZ1p4qioXPT
 OHuce8++UNpf5wUq8MvLw9cjzWhQ38pV+xc7436kdvOGqf4RVAYZLBlWqFFDzMSWfxRyMU
 bZBLkgDOoGbcx1CMjlL5EXXYsmk7l54=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-277-OVGUoSS7PlG4IcMHUK5rMQ-1; Fri, 15 Nov 2019 08:20:42 -0500
Received: by mail-lj1-f197.google.com with SMTP id y17so1538830ljm.16
 for <ath10k@lists.infradead.org>; Fri, 15 Nov 2019 05:20:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=x+t/BOQM8F7dbfpj4lBhXe72lJwS1NOF599JEwP8bYk=;
 b=tyD2vz48N1jMq5sFmqEDH6o7AlBZdVd0PZN+htKeQluFnhioNtVa9MgFvLqBipD/mv
 6PWxqPUHJBwynh12TS1ppvtczAYc49DgasftguPJtf7mIRlpCdlxRSYVSAx1FPddk8/B
 vctXIrMY3aNtULIzzyd1pvyxEcD4WLA2FfGSQr9ewq9K8UlpXcktRyeDhXO/CpHoPQAg
 5eq8BzcO4oyvpa9EjpQAL4Bm7Z3YN1RvgIJUE28YXgaJjrLJSANsJ840EE1Qvhq++XUm
 AV3sK+A6QzsC00XPnvGFAGG2psZNiXc0tAVJEKd9S4yDNnNluqYEBPRbUipPsIsh6gYa
 CtyA==
X-Gm-Message-State: APjAAAV7QTcbxP7m3jJdxy4HcXg1vlKTq65QLUmLuA+pyJhGZn8sO8tS
 F/7j2m9U+etf18od5skYwyrUT+Ot62oIEpcz3BmEJcKoWQicahO2BRTqT/CYZ9N86UBDgwEkgax
 jixYwqg4kRHDR7He9PDPr6A==
X-Received: by 2002:ac2:430d:: with SMTP id l13mr9984251lfh.114.1573824040784; 
 Fri, 15 Nov 2019 05:20:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqwjtwhBuf6diGEEm4m0JGBfBPFikNScE7ZnAZecoaHzG4zmmeoECoLruj7w1iqNj4pJC9ozgA==
X-Received: by 2002:ac2:430d:: with SMTP id l13mr9984230lfh.114.1573824040606; 
 Fri, 15 Nov 2019 05:20:40 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id t17sm3977910ljc.88.2019.11.15.05.20.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 05:20:39 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id F14BB1818C6; Fri, 15 Nov 2019 14:20:37 +0100 (CET)
Subject: [PATCH v9 1/4] mac80211: Add new sta_info getter by sta/vif addrs
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 15 Nov 2019 14:20:37 +0100
Message-ID: <157382403786.580235.15008951293054113025.stgit@toke.dk>
In-Reply-To: <157382403672.580235.12525941420808058808.stgit@toke.dk>
References: <157382403672.580235.12525941420808058808.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: OVGUoSS7PlG4IcMHUK5rMQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_052046_254292_C4C447BB 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kan Yan <kyan@google.com>, Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CgpJbiBpZWVl
ODAyMTFfdHhfc3RhdHVzKCkgd2UgZG9uJ3QgaGF2ZSBhbiBzZGF0YSBzdHJ1Y3Qgd2hlbiBsb29r
aW5nIHVwIHRoZQpkZXN0aW5hdGlvbiBzdGEuIEluc3RlYWQsIHdlIGp1c3QgZG8gYSBsb29rdXAg
YnkgdGhlIHZpZiBhZGRyIHRoYXQgaXMgdGhlCnNvdXJjZSBvZiB0aGUgcGFja2V0IGJlaW5nIGNv
bXBsZXRlZC4gRmFjdG9yIHRoaXMgb3V0IGludG8gYSBuZXcgc3RhX2luZm8KZ2V0dGVyIGhlbHBl
ciwgc2luY2Ugd2UgbmVlZCB0byB1c2UgaXQgZm9yIGFjY291bnRpbmcgQVFMIGFzIHdlbGwuCgpT
aWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4K
LS0tCiBuZXQvbWFjODAyMTEvc3RhX2luZm8uYyB8ICAgMjAgKysrKysrKysrKysrKysrKysrKysK
IG5ldC9tYWM4MDIxMS9zdGFfaW5mby5oIHwgICAgMyArKysKIG5ldC9tYWM4MDIxMS9zdGF0dXMu
YyAgIHwgICAxMCArKy0tLS0tLS0tCiAzIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyks
IDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbmV0L21hYzgwMjExL3N0YV9pbmZvLmMgYi9u
ZXQvbWFjODAyMTEvc3RhX2luZm8uYwppbmRleCBiZDExZmVmMjEzOWYuLjQ2NWQ4M2IxMzU4MiAx
MDA2NDQKLS0tIGEvbmV0L21hYzgwMjExL3N0YV9pbmZvLmMKKysrIGIvbmV0L21hYzgwMjExL3N0
YV9pbmZvLmMKQEAgLTIxMCw2ICsyMTAsMjYgQEAgc3RydWN0IHN0YV9pbmZvICpzdGFfaW5mb19n
ZXRfYnNzKHN0cnVjdCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNkYXRhLAogCXJldHVybiBOVUxM
OwogfQogCitzdHJ1Y3Qgc3RhX2luZm8gKnN0YV9pbmZvX2dldF9ieV9hZGRycyhzdHJ1Y3QgaWVl
ZTgwMjExX2xvY2FsICpsb2NhbCwKKwkJCQkgICAgICAgY29uc3QgdTggKnN0YV9hZGRyLCBjb25z
dCB1OCAqdmlmX2FkZHIpCit7CisJc3RydWN0IHJobGlzdF9oZWFkICp0bXA7CisJc3RydWN0IHN0
YV9pbmZvICpzdGE7CisKKwlyY3VfcmVhZF9sb2NrKCk7CisJZm9yX2VhY2hfc3RhX2luZm8obG9j
YWwsIHN0YV9hZGRyLCBzdGEsIHRtcCkgeworCQlpZiAoZXRoZXJfYWRkcl9lcXVhbCh2aWZfYWRk
ciwgc3RhLT5zZGF0YS0+dmlmLmFkZHIpKSB7CisJCQlyY3VfcmVhZF91bmxvY2soKTsKKwkJCS8q
IHRoaXMgaXMgc2FmZSBhcyB0aGUgY2FsbGVyIG11c3QgYWxyZWFkeSBob2xkCisJCQkgKiBhbm90
aGVyIHJjdSByZWFkIHNlY3Rpb24gb3IgdGhlIG11dGV4CisJCQkgKi8KKwkJCXJldHVybiBzdGE7
CisJCX0KKwl9CisJcmN1X3JlYWRfdW5sb2NrKCk7CisJcmV0dXJuIE5VTEw7Cit9CisKIHN0cnVj
dCBzdGFfaW5mbyAqc3RhX2luZm9fZ2V0X2J5X2lkeChzdHJ1Y3QgaWVlZTgwMjExX3N1Yl9pZl9k
YXRhICpzZGF0YSwKIAkJCQkgICAgIGludCBpZHgpCiB7CmRpZmYgLS1naXQgYS9uZXQvbWFjODAy
MTEvc3RhX2luZm8uaCBiL25ldC9tYWM4MDIxMS9zdGFfaW5mby5oCmluZGV4IDM2OWMyZGRkY2U1
Mi4uODBlNzY1NjkxNDRlIDEwMDY0NAotLS0gYS9uZXQvbWFjODAyMTEvc3RhX2luZm8uaAorKysg
Yi9uZXQvbWFjODAyMTEvc3RhX2luZm8uaApAQCAtNzI1LDYgKzcyNSw5IEBAIHN0cnVjdCBzdGFf
aW5mbyAqc3RhX2luZm9fZ2V0KHN0cnVjdCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNkYXRhLAog
c3RydWN0IHN0YV9pbmZvICpzdGFfaW5mb19nZXRfYnNzKHN0cnVjdCBpZWVlODAyMTFfc3ViX2lm
X2RhdGEgKnNkYXRhLAogCQkJCSAgY29uc3QgdTggKmFkZHIpOwogCitzdHJ1Y3Qgc3RhX2luZm8g
KnN0YV9pbmZvX2dldF9ieV9hZGRycyhzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCwKKwkJ
CQkgICAgICAgY29uc3QgdTggKnN0YV9hZGRyLCBjb25zdCB1OCAqdmlmX2FkZHIpOworCiAjZGVm
aW5lIGZvcl9lYWNoX3N0YV9pbmZvKGxvY2FsLCBfYWRkciwgX3N0YSwgX3RtcCkJCQlcCiAJcmhs
X2Zvcl9lYWNoX2VudHJ5X3JjdShfc3RhLCBfdG1wLAkJCQlcCiAJCQkgICAgICAgc3RhX2luZm9f
aGFzaF9sb29rdXAobG9jYWwsIF9hZGRyKSwgaGFzaF9ub2RlKQpkaWZmIC0tZ2l0IGEvbmV0L21h
YzgwMjExL3N0YXR1cy5jIGIvbmV0L21hYzgwMjExL3N0YXR1cy5jCmluZGV4IGFiOGJhNTgzNWNh
MC4uMGU1MWRlZjM1YjhhIDEwMDY0NAotLS0gYS9uZXQvbWFjODAyMTEvc3RhdHVzLmMKKysrIGIv
bmV0L21hYzgwMjExL3N0YXR1cy5jCkBAIC0xMDczLDE5ICsxMDczLDEzIEBAIHZvaWQgaWVlZTgw
MjExX3R4X3N0YXR1cyhzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywgc3RydWN0IHNrX2J1ZmYgKnNr
YikKIAkJLnNrYiA9IHNrYiwKIAkJLmluZm8gPSBJRUVFODAyMTFfU0tCX0NCKHNrYiksCiAJfTsK
LQlzdHJ1Y3QgcmhsaXN0X2hlYWQgKnRtcDsKIAlzdHJ1Y3Qgc3RhX2luZm8gKnN0YTsKIAogCXJj
dV9yZWFkX2xvY2soKTsKIAotCWZvcl9lYWNoX3N0YV9pbmZvKGxvY2FsLCBoZHItPmFkZHIxLCBz
dGEsIHRtcCkgewotCQkvKiBza2lwIHdyb25nIHZpcnR1YWwgaW50ZXJmYWNlICovCi0JCWlmICgh
ZXRoZXJfYWRkcl9lcXVhbChoZHItPmFkZHIyLCBzdGEtPnNkYXRhLT52aWYuYWRkcikpCi0JCQlj
b250aW51ZTsKLQorCXN0YSA9IHN0YV9pbmZvX2dldF9ieV9hZGRycyhsb2NhbCwgaGRyLT5hZGRy
MSwgaGRyLT5hZGRyMik7CisJaWYgKHN0YSkKIAkJc3RhdHVzLnN0YSA9ICZzdGEtPnN0YTsKLQkJ
YnJlYWs7Ci0JfQogCiAJX19pZWVlODAyMTFfdHhfc3RhdHVzKGh3LCAmc3RhdHVzKTsKIAlyY3Vf
cmVhZF91bmxvY2soKTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
