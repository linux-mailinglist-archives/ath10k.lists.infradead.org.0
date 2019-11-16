Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F08B0FEC27
	for <lists+ath10k@lfdr.de>; Sat, 16 Nov 2019 12:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fy/Ee+Z8FCZeuZD3j3PfrvbYRtrPi+2qQQCFSV+3LTo=; b=TWsmqdrna+j+e6
	fPYSf86QKNQW7mt7yD7vVkFdksEL/GcEqKZWvXCovQvtJLrYRx6K5J7KA/KCSmc/u8yf8IDWuJ5Mt
	ucmgqMZcUGqvspEGXpghn7Pav7seob3Zs2hCCR/iiQrCEa23a0hCsX5WwURNasx39rXwlnhGdDNVd
	5Y90ebYmVwhd14lYe+55JSE1KrbuWRyTVFmDp0AhzNwPTOp+7XxM/axHWh5ZQo+rVsab7Pp4cLkTk
	hUoO5mVNg/FiUe2LUIrQGJAkcptP7R2T9TqU5ryyMG1vfZWid9IXo+uRtTBQqsIY5ZryWzh2cvhGT
	we5uAsNunynd1YNrnoiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVwho-0006s4-5I; Sat, 16 Nov 2019 11:57:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVwhg-0006ot-Ur
 for ath10k@lists.infradead.org; Sat, 16 Nov 2019 11:57:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573905444;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YXoS2W5BbZsp09HQfFBXWaQ8N7PlWsSs7THfUeKuQyo=;
 b=gQ2fhqLdaB/5nfGphtVLDMUeuKCz0PBM2BYBZalfz4Jwwvh0t3l1wFlUDmJg1wfcvgTc2S
 B8iyigvoFXuXULqzkNAOfozLXQjH7JvCksiBooDwd6g6AdlEAqU+2cGFIx4gbwSDT1v1lp
 GydnCl+pAC6Cwqb7jNTMt6epQP1swcc=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-304-7yni84wHNfWYvlkj43BPhw-1; Sat, 16 Nov 2019 06:57:22 -0500
Received: by mail-lf1-f69.google.com with SMTP id y188so3970630lfc.6
 for <ath10k@lists.infradead.org>; Sat, 16 Nov 2019 03:57:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=x+t/BOQM8F7dbfpj4lBhXe72lJwS1NOF599JEwP8bYk=;
 b=LEuCmsvwezWHjK89hKhqMuVIm+N/TUFPZhzKhYzMJjq1tkd/lEjoMhkNOggBqP3aWp
 bcnZURW8ajaPRTv1W83H8nSVeAh7KvDDNdXVgq29xy4V3ilbNXnaAS+I2HrdRodcIwRp
 dLKU1lUH6dSQdRes3JbR20X37/9q5PtWWjhcbIi48/Fbh1QEPokrrx8usOtM+irODV8l
 PRqxUzqlAx49SmqTayGxhlUcBGWPZcF0YXmfLSSvLTKRf+dUyG3nrmjI12+GbxNa+5VO
 JoCRnkzLqMtVefZcIS2OrNB09JX6jgyzK6Jth5YRFcJgKHjnCARdDHZZ5GdoNB+d4nsH
 RNIw==
X-Gm-Message-State: APjAAAWiH86fpJPNEX8TqcxnJoA9OyKnBq9WwEgJTXz2ZE5ehitwGI49
 0lo4v0P6C3eWPie7HYFWRdGO0/kAMld4LccUo0ldDKhisF1QbdGNTi5dMEWfLsddSp7Ykfe3WpP
 k6VNk49VriC7wCyzZ0WhlaA==
X-Received: by 2002:a2e:9156:: with SMTP id q22mr10462789ljg.166.1573905440930; 
 Sat, 16 Nov 2019 03:57:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqz0L+POcRH+ZCGceuYnd9tkUS+fm0ri2a2QHKWHz6GQdx5Ehz43kLACA3daj8P4f0JD6MpnUA==
X-Received: by 2002:a2e:9156:: with SMTP id q22mr10462771ljg.166.1573905440761; 
 Sat, 16 Nov 2019 03:57:20 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id s28sm6071884lfp.92.2019.11.16.03.57.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Nov 2019 03:57:18 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 1483C181911; Sat, 16 Nov 2019 12:57:18 +0100 (CET)
Subject: [PATCH v10 1/4] mac80211: Add new sta_info getter by sta/vif addrs
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Sat, 16 Nov 2019 12:57:18 +0100
Message-ID: <157390543799.662247.14225450732789555896.stgit@toke.dk>
In-Reply-To: <157390543688.662247.3735146484299260207.stgit@toke.dk>
References: <157390543688.662247.3735146484299260207.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: 7yni84wHNfWYvlkj43BPhw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_035725_063082_C0607627 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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
