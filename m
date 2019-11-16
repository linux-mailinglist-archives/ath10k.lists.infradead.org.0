Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4226FEC29
	for <lists+ath10k@lfdr.de>; Sat, 16 Nov 2019 12:57:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QxkR5Qp5Q1mElZr0t+Izeeh3uZoPXYnTdhy27Zz7Ks=; b=jEqEZAyenmpzNQ
	YztBZNuxMwffbT4xVowTQDw5ofN9dh3ketzRmE2qOYYP4UVYI7iH9JBg9jKguD56ggWTUOjx47Mmj
	BAfKe+FWnbIa1GchhhXET1JttRdC117CsBVshJEx/B/b9Dv0fAWCxvzkDn5V072ScoUwoxi92a/29
	ZEL8ljipIlsE0lwicY+yrzuNt2v1YRgpwsfForgmLL0vscKRzVNLCBUlmDAzrqLR3GRTsTrCHkRew
	CAh41n9xbzGRO5al7ybIjROLPKt36Y0nlYCgBInn2O7I7hCC/eAzcRKm1mv48WKURdmrTwbDGgxGs
	ieuTYSqox5sh2HloFJxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVwhw-00072B-Qa; Sat, 16 Nov 2019 11:57:40 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVwhl-0006sQ-P6
 for ath10k@lists.infradead.org; Sat, 16 Nov 2019 11:57:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573905448;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ilLVPFyCpQyNKBk2EUG5/jj7bM3HS/7e/LF0ODvZAgk=;
 b=V1eQKYVbTSoa5V60bxKCf+nw+1Ts2HISWGzYyhhZKzpMc/LtVKaNUr6gGL8za16xUmzm4S
 pCKUDJ4p0WSV67l1ujhQIeZ5A3AxVhpu1IaQyEc4swcM0IZKYXndZBnJpEiVtxmH4hQ6/f
 NDYQMyGynGCXjU62oQTlgiXvDCdh2jM=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-80-9Mpuoz2aO7W8HRiqj3Usrw-1; Sat, 16 Nov 2019 06:57:25 -0500
Received: by mail-lf1-f69.google.com with SMTP id x14so3966834lfq.15
 for <ath10k@lists.infradead.org>; Sat, 16 Nov 2019 03:57:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=oxn6hk/e7p0C1hhW6DxtPJarksX3rwfaNgc1kLL7sWQ=;
 b=mv2zdlufk8guvouQzpjOS2m0kevfaxvKeMbvGXMHNpvyjdKRt+ShLMUyLmqkAHUkfy
 VtImW621MihBUrIV+0PaerwegoLWIbmk565ChKiEp2qT//ke1vH5hTPWEcKxL9hM0RmC
 htk5wjWzlvO0PsIGcnZ4XYixKAuFWhemIkXN6D+YMK7Q4DBpPFMj1e7/3aPfvWxn3w9s
 7tFg6Sj4+0YWx7A72ledLUgFnBETBohcme9O+0fctop14qvVUhs0ArXY+fejyd2J7X47
 A1nhBAOW0Sj8ycQwt4dJn8KkB5JnZC0f2wyymTEtvAwgxbe/hKElk7CPqzj+OTuX1dg7
 rJVQ==
X-Gm-Message-State: APjAAAX/OYOJkei+dc+Z/NZ7N4LJAO8akVHo9XGCg/mmSdZ+Fcv1X7K6
 xgcESI0PMC2ti5mZAC8SuRYBRtx9FF6cSqyZ/cnvX1tajRiEpGGuL3b7lgbUfCl61ydDxisfrqJ
 1UMUpokG1W+gqJNTgX3BLXQ==
X-Received: by 2002:a2e:9590:: with SMTP id w16mr13840393ljh.234.1573905443979; 
 Sat, 16 Nov 2019 03:57:23 -0800 (PST)
X-Google-Smtp-Source: APXvYqyP22WR0NlepWHXAp3bvMncxdf9rNBg9M37I4i1Hsk5sTldlqTbJHbyJANcRzpTzmN521ic1w==
X-Received: by 2002:a2e:9590:: with SMTP id w16mr13840380ljh.234.1573905443776; 
 Sat, 16 Nov 2019 03:57:23 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id 12sm5430059lju.55.2019.11.16.03.57.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Nov 2019 03:57:22 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 5DFF6181918; Sat, 16 Nov 2019 12:57:21 +0100 (CET)
Subject: [PATCH v10 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Sat, 16 Nov 2019 12:57:21 +0100
Message-ID: <157390544128.662247.18090629768427352084.stgit@toke.dk>
In-Reply-To: <157390543688.662247.3735146484299260207.stgit@toke.dk>
References: <157390543688.662247.3735146484299260207.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: 9Mpuoz2aO7W8HRiqj3Usrw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_035729_909264_19A23510 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
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

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CgpUaGUgcHJl
dmlvdXMgY29tbWl0IGFkZGVkIHRoZSBhYmlsaXR5IHRvIHRocm90dGxlIHN0YXRpb25zIHdoZW4g
dGhleSBxdWV1ZQp0b28gbXVjaCBhaXJ0aW1lIGluIHRoZSBoYXJkd2FyZS4gVGhpcyBjb21taXQg
ZW5hYmxlcyB0aGUgZnVuY3Rpb25hbGl0eSBieQpjYWxjdWxhdGluZyB0aGUgZXhwZWN0ZWQgYWly
dGltZSB1c2FnZSBvZiBlYWNoIHBhY2tldCB0aGF0IGlzIGRlcXVldWVkIGZyb20KdGhlIFRYUXMg
aW4gbWFjODAyMTEsIGFuZCBhY2NvdW50aW5nIHRoYXQgYXMgcGVuZGluZyBhaXJ0aW1lLgoKVGhl
IGVzdGltYXRlZCBhaXJ0aW1lIGZvciBlYWNoIHNrYiBpcyBzdG9yZWQgaW4gdGhlIHR4X2luZm8s
IHNvIHdlIGNhbgpzdWJ0cmFjdCB0aGUgc2FtZSBhbW91bnQgZnJvbSB0aGUgcnVubmluZyB0b3Rh
bCB3aGVuIHRoZSBza2IgaXMgZnJlZWQgb3IKcmVjeWNsZWQuIFRoZSB0aHJvdHRsaW5nIG1lY2hh
bmlzbSByZWxpZXMgb24gdGhpcyBhY2NvdW50aW5nIHRvIGJlCmFjY3VyYXRlIChpLmUuLCB0aGF0
IHdlIGFyZSBub3QgZnJlZWluZyBza2JzIHdpdGhvdXQgc3VidHJhY3RpbmcgYW55CmFpcnRpbWUg
dGhleSB3ZXJlIGFjY291bnRlZCBmb3IpLCBzbyB3ZSBwdXQgdGhlIHN1YnRyYWN0aW9uIGludG8K
aWVlZTgwMjExX3JlcG9ydF91c2VkX3NrYigpLiBBcyBhbiBvcHRpbWlzYXRpb24sIHdlIGFsc28g
c3VidHJhY3QgdGhlCmFpcnRpbWUgb24gcmVndWxhciBUWCBjb21wbGV0aW9uLCB6ZXJvaW5nIG91
dCB0aGUgdmFsdWUgc3RvcmVkIGluIHRoZQpwYWNrZXQgYWZ0ZXJ3YXJkcywgdG8gYXZvaWQgaGF2
aW5nIHRvIGRvIGFuIGV4cGVuc2l2ZSBsb29rdXAgb2YgdGhlIHN0YXRpb24KZnJvbSB0aGUgcGFj
a2V0IGRhdGEgb24gZXZlcnkgcGFja2V0LgoKVGhpcyBwYXRjaCBkb2VzICpub3QqIGluY2x1ZGUg
YW55IG1lY2hhbmlzbSB0byB3YWtlIGEgdGhyb3R0bGVkIFRYUSBhZ2FpbiwKb24gdGhlIGFzc3Vt
cHRpb24gdGhhdCB0aGlzIHdpbGwgaGFwcGVuIGFueXdheSBhcyBhIHNpZGUgZWZmZWN0IG9mIHdo
YXRldmVyCmZyZWVkIHRoZSBza2IgKG1vc3QgY29tbW9ubHkgYSBUWCBjb21wbGV0aW9uKS4KClNp
Z25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgot
LS0KIGluY2x1ZGUvbmV0L21hYzgwMjExLmggfCAgIDE2ICsrKysrKysrKysrKysrKysKIG5ldC9t
YWM4MDIxMS9zdGF0dXMuYyAgfCAgIDI2ICsrKysrKysrKysrKysrKysrKysrKysrKysrCiBuZXQv
bWFjODAyMTEvdHguYyAgICAgIHwgICAxOCArKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hh
bmdlZCwgNjAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbmV0L21hYzgwMjEx
LmggYi9pbmNsdWRlL25ldC9tYWM4MDIxMS5oCmluZGV4IGJhM2YzM2NjNDFlYS4uYWExNDU4MDhl
NTdhIDEwMDY0NAotLS0gYS9pbmNsdWRlL25ldC9tYWM4MDIxMS5oCisrKyBiL2luY2x1ZGUvbmV0
L21hYzgwMjExLmgKQEAgLTEwNjAsNiArMTA2MCwyMiBAQCBzdHJ1Y3QgaWVlZTgwMjExX3R4X2lu
Zm8gewogCX07CiB9OwogCitzdGF0aWMgaW5saW5lIHUxNgoraWVlZTgwMjExX2luZm9fc2V0X3R4
X3RpbWVfZXN0KHN0cnVjdCBpZWVlODAyMTFfdHhfaW5mbyAqaW5mbywgdTE2IHR4X3RpbWVfZXN0
KQoreworCS8qIFdlIG9ubHkgaGF2ZSAxMCBiaXRzIGluIHR4X3RpbWVfZXN0LCBzbyBzdG9yZSBh
aXJ0aW1lCisJICogaW4gaW5jcmVtZW50cyBvZiA0dXMgYW5kIGNsYW1wIHRoZSBtYXhpbXVtIHRv
IDIqKjEyLTEKKwkgKi8KKwlpbmZvLT50eF90aW1lX2VzdCA9IG1pbl90KHUxNiwgdHhfdGltZV9l
c3QsIDQwOTUpID4+IDI7CisJcmV0dXJuIGluZm8tPnR4X3RpbWVfZXN0IDw8IDI7Cit9CisKK3N0
YXRpYyBpbmxpbmUgdTE2CitpZWVlODAyMTFfaW5mb19nZXRfdHhfdGltZV9lc3Qoc3RydWN0IGll
ZWU4MDIxMV90eF9pbmZvICppbmZvKQoreworCXJldHVybiBpbmZvLT50eF90aW1lX2VzdCA8PCAy
OworfQorCiAvKioKICAqIHN0cnVjdCBpZWVlODAyMTFfdHhfc3RhdHVzIC0gZXh0ZW5kZWQgdHgg
c3RhdHVzIGluZm8gZm9yIHJhdGUgY29udHJvbAogICoKZGlmZiAtLWdpdCBhL25ldC9tYWM4MDIx
MS9zdGF0dXMuYyBiL25ldC9tYWM4MDIxMS9zdGF0dXMuYwppbmRleCAwZTUxZGVmMzViOGEuLjM5
ZGE4MmIzNWJlOSAxMDA2NDQKLS0tIGEvbmV0L21hYzgwMjExL3N0YXR1cy5jCisrKyBiL25ldC9t
YWM4MDIxMS9zdGF0dXMuYwpAQCAtNjcwLDEyICs2NzAsMjYgQEAgc3RhdGljIHZvaWQgaWVlZTgw
MjExX3JlcG9ydF91c2VkX3NrYihzdHJ1Y3QgaWVlZTgwMjExX2xvY2FsICpsb2NhbCwKIAkJCQkg
ICAgICBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBib29sIGRyb3BwZWQpCiB7CiAJc3RydWN0IGllZWU4
MDIxMV90eF9pbmZvICppbmZvID0gSUVFRTgwMjExX1NLQl9DQihza2IpOworCXUxNiB0eF90aW1l
X2VzdCA9IGllZWU4MDIxMV9pbmZvX2dldF90eF90aW1lX2VzdChpbmZvKTsKIAlzdHJ1Y3QgaWVl
ZTgwMjExX2hkciAqaGRyID0gKHZvaWQgKilza2ItPmRhdGE7CiAJYm9vbCBhY2tlZCA9IGluZm8t
PmZsYWdzICYgSUVFRTgwMjExX1RYX1NUQVRfQUNLOwogCiAJaWYgKGRyb3BwZWQpCiAJCWFja2Vk
ID0gZmFsc2U7CiAKKwlpZiAodHhfdGltZV9lc3QpIHsKKwkJc3RydWN0IHN0YV9pbmZvICpzdGE7
CisKKwkJcmN1X3JlYWRfbG9jaygpOworCisJCXN0YSA9IHN0YV9pbmZvX2dldF9ieV9hZGRycyhs
b2NhbCwgaGRyLT5hZGRyMSwgaGRyLT5hZGRyMik7CisJCWllZWU4MDIxMV9zdGFfdXBkYXRlX3Bl
bmRpbmdfYWlydGltZShsb2NhbCwgc3RhLAorCQkJCQkJICAgICBza2JfZ2V0X3F1ZXVlX21hcHBp
bmcoc2tiKSwKKwkJCQkJCSAgICAgdHhfdGltZV9lc3QsCisJCQkJCQkgICAgIHRydWUpOworCQly
Y3VfcmVhZF91bmxvY2soKTsKKwl9CisKIAlpZiAoaW5mby0+ZmxhZ3MgJiBJRUVFODAyMTFfVFhf
SU5URkxfTUxNRV9DT05OX1RYKSB7CiAJCXN0cnVjdCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNk
YXRhOwogCkBAIC04NzcsNiArODkxLDcgQEAgc3RhdGljIHZvaWQgX19pZWVlODAyMTFfdHhfc3Rh
dHVzKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAogCXN0cnVjdCBpZWVlODAyMTFfYmFyICpiYXI7
CiAJaW50IHNoaWZ0ID0gMDsKIAlpbnQgdGlkID0gSUVFRTgwMjExX05VTV9USURTOworCXUxNiB0
eF90aW1lX2VzdDsKIAogCXJhdGVzX2lkeCA9IGllZWU4MDIxMV90eF9nZXRfcmF0ZXMoaHcsIGlu
Zm8sICZyZXRyeV9jb3VudCk7CiAKQEAgLTk4Niw2ICsxMDAxLDE3IEBAIHN0YXRpYyB2b2lkIF9f
aWVlZTgwMjExX3R4X3N0YXR1cyhzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKIAkJCWllZWU4MDIx
MV9zdGFfcmVnaXN0ZXJfYWlydGltZSgmc3RhLT5zdGEsIHRpZCwKIAkJCQkJCSAgICAgICBpbmZv
LT5zdGF0dXMudHhfdGltZSwgMCk7CiAKKwkJaWYgKCh0eF90aW1lX2VzdCA9IGllZWU4MDIxMV9p
bmZvX2dldF90eF90aW1lX2VzdChpbmZvKSkgPiAwKSB7CisJCQkvKiBEbyB0aGlzIGhlcmUgdG8g
YXZvaWQgdGhlIGV4cGVuc2l2ZSBsb29rdXAgb2YgdGhlIHN0YQorCQkJICogaW4gaWVlZTgwMjEx
X3JlcG9ydF91c2VkX3NrYigpLgorCQkJICovCisJCQlpZWVlODAyMTFfc3RhX3VwZGF0ZV9wZW5k
aW5nX2FpcnRpbWUobG9jYWwsIHN0YSwKKwkJCQkJCQkgICAgIHNrYl9nZXRfcXVldWVfbWFwcGlu
Zyhza2IpLAorCQkJCQkJCSAgICAgdHhfdGltZV9lc3QsCisJCQkJCQkJICAgICB0cnVlKTsKKwkJ
CWllZWU4MDIxMV9pbmZvX3NldF90eF90aW1lX2VzdChpbmZvLCAwKTsKKwkJfQorCiAJCWlmIChp
ZWVlODAyMTFfaHdfY2hlY2soJmxvY2FsLT5odywgUkVQT1JUU19UWF9BQ0tfU1RBVFVTKSkgewog
CQkJaWYgKGluZm8tPmZsYWdzICYgSUVFRTgwMjExX1RYX1NUQVRfQUNLKSB7CiAJCQkJaWYgKHN0
YS0+c3RhdHVzX3N0YXRzLmxvc3RfcGFja2V0cykKZGlmZiAtLWdpdCBhL25ldC9tYWM4MDIxMS90
eC5jIGIvbmV0L21hYzgwMjExL3R4LmMKaW5kZXggYWFmYzY3YjU2MmViLi4yZmI2NTcxNDUzZTcg
MTAwNjQ0Ci0tLSBhL25ldC9tYWM4MDIxMS90eC5jCisrKyBiL25ldC9tYWM4MDIxMS90eC5jCkBA
IC0zNTUxLDYgKzM1NTEsOSBAQCBzdHJ1Y3Qgc2tfYnVmZiAqaWVlZTgwMjExX3R4X2RlcXVldWUo
c3RydWN0IGllZWU4MDIxMV9odyAqaHcsCiAKIAlXQVJOX09OX09OQ0Uoc29mdGlycV9jb3VudCgp
ID09IDApOwogCisJaWYgKCFpZWVlODAyMTFfdHhxX2FpcnRpbWVfY2hlY2soaHcsIHR4cSkpCisJ
CXJldHVybiBOVUxMOworCiBiZWdpbjoKIAlzcGluX2xvY2tfYmgoJmZxLT5sb2NrKTsKIApAQCAt
MzY2MSw2ICszNjY0LDIxIEBAIHN0cnVjdCBza19idWZmICppZWVlODAyMTFfdHhfZGVxdWV1ZShz
dHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKIAl9CiAKIAlJRUVFODAyMTFfU0tCX0NCKHNrYiktPmNv
bnRyb2wudmlmID0gdmlmOworCisJaWYgKGxvY2FsLT5haXJ0aW1lX2ZsYWdzICYgQUlSVElNRV9V
U0VfQVFMKSB7CisJCXUzMiBhaXJ0aW1lOworCisJCWFpcnRpbWUgPSBpZWVlODAyMTFfY2FsY19l
eHBlY3RlZF90eF9haXJ0aW1lKGh3LCB2aWYsIHR4cS0+c3RhLAorCQkJCQkJCSAgICAgc2tiLT5s
ZW4pOworCQlpZiAoYWlydGltZSkgeworCQkJYWlydGltZSA9IGllZWU4MDIxMV9pbmZvX3NldF90
eF90aW1lX2VzdChpbmZvLCBhaXJ0aW1lKTsKKwkJCWllZWU4MDIxMV9zdGFfdXBkYXRlX3BlbmRp
bmdfYWlydGltZShsb2NhbCwgdHguc3RhLAorCQkJCQkJCSAgICAgdHhxLT5hYywKKwkJCQkJCQkg
ICAgIGFpcnRpbWUsCisJCQkJCQkJICAgICBmYWxzZSk7CisJCX0KKwl9CisKIAlyZXR1cm4gc2ti
OwogCiBvdXQ6CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
