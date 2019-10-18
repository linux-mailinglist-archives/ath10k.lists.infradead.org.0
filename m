Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E3CDC790
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 16:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQdT8cgDrJ+mSoig6WvTcUcdNHTaKgDg/U+GIcLqX4M=; b=rMpeZUjfVrem9a
	YD2im9rWMo8zqdk/D8+k6hHU2SlgD/YNFNbf0a36IJ3uCTrpXde7CzV6T8Uf2LKQnha2Ur7yVrz6g
	pqvHAwqMkzWRn0B/nulQFj+ll0H6/wn008YSFCSKE9j3u0I9vR6mIPGG7Q4fN6jctfr7zLvaYH2Ze
	WKY2BqkqQlvV4n/IdAHx7qLo8GDMrqZsNxV7mRrE5HKe2flXZhF3HMKvPq0zU4XBPZkx+ivsd4+Ot
	qnaCz+ZuasfNVoGSgWxNcHd/zR0hvHkE2MYoHF4ud3L0Onk27xddbYFwSccy3QzfUQbiCKTftKF/x
	yfBajBJySD5wt/EaAKqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLTQq-00006A-Cy; Fri, 18 Oct 2019 14:40:44 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLTQe-0008LQ-TC
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 14:40:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571409630;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lqBYAyfvGqVBfvQQyb/0J8hd/48vyEbBcTT/es8g2a8=;
 b=jFSOqBdeeUyrapoZYGsbTVp11SJVvfBO8VNUYHi0z8AsGXOH6lnHRVag7veTte8IuRFhj2
 sTTkySeSGH/174pwPIGqHmAjI9HNO01V5xEZzC906uQ05lbQaR8ZooZUxZPahCTRpnDjxc
 05o3KNOMz790eJ21+KUQpHRKQrW1PCI=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-317-zFgLEVqpNdCVh19RoGq5wg-1; Fri, 18 Oct 2019 10:40:28 -0400
Received: by mail-lj1-f199.google.com with SMTP id l15so1124710lje.17
 for <ath10k@lists.infradead.org>; Fri, 18 Oct 2019 07:40:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=B/zTxrtPVbDPMk1jNIRjvApKrsIv0Uj3+z7s63i2jdw=;
 b=EJ2YdOgEG0t8IpHVrZ+MJpZNgt2u1Jzc+5akCe+j5nyngmgo4FEQmzs4OnD4O9loGZ
 usAMm0jNXYGf1cbOjdJ+BVoK4uFfOdi1GcUgMY4UzhGawwQEt9W5N7KpIkxOVD5YtlTo
 xxVE4BWyRMA2BNPGBBSqSOsV90oyhDpkn1mWNJVbTPYbYbkD+kH+q2jSLiIWSXvDecVz
 ThzJpmiWV66pWrpRDOK3A3eM2A+UAh10UfOVQTTuLzSYCSgT0AsTi6FGd68d6Ss+1hGF
 lr8jN4pmQcdkobQm8fZaMRP749247irtcjcOewU3zjSq46bE1m0nJkCkG9jutCuMoZuO
 L76A==
X-Gm-Message-State: APjAAAUP5xMMa7fXlfO28eFL4xIZfCkadulXyzBaj92CNDEnyp2d1nRN
 t2uns7xGdQvSNoA/LIGmKHHpPBP4Yo++tZZ9JhuIgiRBD32ewTxFrW1sxQxUTWe3gNA+8zk1wkw
 ul0bXnyegKLAy/vOf6NZFZA==
X-Received: by 2002:a2e:5dd5:: with SMTP id v82mr6545678lje.54.1571409627128; 
 Fri, 18 Oct 2019 07:40:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxolQE2snCfRFv7NPp6VkDcPkPnM67ptbRrwbO/RDkqMvooRv8yklzlnAGDuCtp1Rd02Oj9BA==
X-Received: by 2002:a2e:5dd5:: with SMTP id v82mr6545664lje.54.1571409626863; 
 Fri, 18 Oct 2019 07:40:26 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id d25sm2572501lfj.15.2019.10.18.07.40.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 07:40:26 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 6A8AC1804B6; Fri, 18 Oct 2019 16:40:25 +0200 (CEST)
Subject: [PATCH v3 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 18 Oct 2019 16:40:25 +0200
Message-ID: <157140962534.2866668.1182822483250825739.stgit@toke.dk>
In-Reply-To: <157140962094.2866668.3383184317264069493.stgit@toke.dk>
References: <157140962094.2866668.3383184317264069493.stgit@toke.dk>
User-Agent: StGit/0.20
MIME-Version: 1.0
X-MC-Unique: zFgLEVqpNdCVh19RoGq5wg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_074033_065117_573A145A 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
aW5nIHRvIGRvIGFuIGV4cGVuc2l2ZSBsb29rdXAgb2YgdGhlCnN0YXRpb24gZnJvbSB0aGUgcGFj
a2V0IGRhdGEgb24gZXZlcnkgcGFja2V0LgoKVGhpcyBwYXRjaCBkb2VzICpub3QqIGluY2x1ZGUg
YW55IG1lY2hhbmlzbSB0byB3YWtlIGEgdGhyb3R0bGVkIFRYUSBhZ2FpbiwKb24gdGhlIGFzc3Vt
cHRpb24gdGhhdCB0aGlzIHdpbGwgaGFwcGVuIGFueXdheSBhcyBhIHNpZGUgZWZmZWN0IG9mIHdo
YXRldmVyCmZyZWVkIHRoZSBza2IgKG1vc3QgY29tbW9ubHkgYSBUWCBjb21wbGV0aW9uKS4KClNp
Z25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgot
LS0KIG5ldC9tYWM4MDIxMS9zdGF0dXMuYyB8ICAgMzggKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKIG5ldC9tYWM4MDIxMS90eC5jICAgICB8ICAgMTkgKysrKysrKysrKysr
KysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
bmV0L21hYzgwMjExL3N0YXR1cy5jIGIvbmV0L21hYzgwMjExL3N0YXR1cy5jCmluZGV4IGFiOGJh
NTgzNWNhMC4uOTA1YjRhZmQ0NTdkIDEwMDY0NAotLS0gYS9uZXQvbWFjODAyMTEvc3RhdHVzLmMK
KysrIGIvbmV0L21hYzgwMjExL3N0YXR1cy5jCkBAIC02NzYsNiArNjc2LDMzIEBAIHN0YXRpYyB2
b2lkIGllZWU4MDIxMV9yZXBvcnRfdXNlZF9za2Ioc3RydWN0IGllZWU4MDIxMV9sb2NhbCAqbG9j
YWwsCiAJaWYgKGRyb3BwZWQpCiAJCWFja2VkID0gZmFsc2U7CiAKKwlpZiAoaW5mby0+dHhfdGlt
ZV9lc3QpIHsKKwkJc3RydWN0IGllZWU4MDIxMV9zdWJfaWZfZGF0YSAqc2RhdGE7CisJCXN0cnVj
dCBzdGFfaW5mbyAqc3RhID0gTlVMTDsKKwkJdTggKnFjLCBhYzsKKwkJaW50IHRpZDsKKworCQly
Y3VfcmVhZF9sb2NrKCk7CisKKwkJc2RhdGEgPSBpZWVlODAyMTFfc2RhdGFfZnJvbV9za2IobG9j
YWwsIHNrYik7CisJCWlmIChzZGF0YSkKKwkJCXN0YSA9IHN0YV9pbmZvX2dldF9ic3Moc2RhdGEs
IHNrYl9tYWNfaGVhZGVyKHNrYikpOworCisJCWlmIChpZWVlODAyMTFfaXNfZGF0YV9xb3MoaGRy
LT5mcmFtZV9jb250cm9sKSkgeworCQkJcWMgPSBpZWVlODAyMTFfZ2V0X3Fvc19jdGwoaGRyKTsK
KwkJCXRpZCA9IHFjWzBdICYgMHhmOworCQkJYWMgPSBpZWVlODAyMTFfYWNfZnJvbV90aWQodGlk
KTsKKwkJfSBlbHNlIHsKKwkJCWFjID0gSUVFRTgwMjExX0FDX0JFOworCQl9CisKKwkJaWVlZTgw
MjExX3N0YV91cGRhdGVfcGVuZGluZ19haXJ0aW1lKGxvY2FsLCBzdGEsIGFjLAorCQkJCQkJICAg
ICBpbmZvLT50eF90aW1lX2VzdCA8PCAyLAorCQkJCQkJICAgICB0cnVlKTsKKwkJcmN1X3JlYWRf
dW5sb2NrKCk7CisKKwl9CisKIAlpZiAoaW5mby0+ZmxhZ3MgJiBJRUVFODAyMTFfVFhfSU5URkxf
TUxNRV9DT05OX1RYKSB7CiAJCXN0cnVjdCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNkYXRhOwog
CkBAIC05MzAsNiArOTU3LDE3IEBAIHN0YXRpYyB2b2lkIF9faWVlZTgwMjExX3R4X3N0YXR1cyhz
dHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKIAkJCXRpZCA9IHFjWzBdICYgMHhmOwogCQl9CiAKKwkJ
aWYgKGluZm8tPnR4X3RpbWVfZXN0KSB7CisJCQkvKiBEbyB0aGlzIGhlcmUgdG8gYXZvaWQgdGhl
IGV4cGVuc2l2ZSBsb29rdXAgb2YgdGhlIHN0YQorCQkJICogaW4gaWVlZTgwMjExX3JlcG9ydF91
c2VkX3NrYigpLgorCQkJICovCisJCQlpZWVlODAyMTFfc3RhX3VwZGF0ZV9wZW5kaW5nX2FpcnRp
bWUobG9jYWwsIHN0YSwKKwkJCQkJCQkgICAgIGllZWU4MDIxMV9hY19mcm9tX3RpZCh0aWQpLAor
CQkJCQkJCSAgICAgaW5mby0+dHhfdGltZV9lc3QgPDwgMiwKKwkJCQkJCQkgICAgIHRydWUpOwor
CQkJaW5mby0+dHhfdGltZV9lc3QgPSAwOworCQl9CisKIAkJaWYgKCFhY2tlZCAmJiBpZWVlODAy
MTFfaXNfYmFja19yZXEoZmMpKSB7CiAJCQl1MTYgY29udHJvbDsKIApkaWZmIC0tZ2l0IGEvbmV0
L21hYzgwMjExL3R4LmMgYi9uZXQvbWFjODAyMTEvdHguYwppbmRleCAxMjY1M2Q4NzNiOGMuLmJk
ODI4NGYwNDM2MSAxMDA2NDQKLS0tIGEvbmV0L21hYzgwMjExL3R4LmMKKysrIGIvbmV0L21hYzgw
MjExL3R4LmMKQEAgLTM1MzksOSArMzUzOSwxNCBAQCBzdHJ1Y3Qgc2tfYnVmZiAqaWVlZTgwMjEx
X3R4X2RlcXVldWUoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsCiAJc3RydWN0IGllZWU4MDIxMV90
eF9kYXRhIHR4OwogCWllZWU4MDIxMV90eF9yZXN1bHQgcjsKIAlzdHJ1Y3QgaWVlZTgwMjExX3Zp
ZiAqdmlmID0gdHhxLT52aWY7CisJdTggYWMgPSB0eHEtPmFjOworCXUzMiBhaXJ0aW1lOwogCiAJ
V0FSTl9PTl9PTkNFKHNvZnRpcnFfY291bnQoKSA9PSAwKTsKIAorCWlmICghaWVlZTgwMjExX3R4
cV9haXJ0aW1lX2NoZWNrKGh3LCB0eHEpKQorCQlyZXR1cm4gTlVMTDsKKwogYmVnaW46CiAJc3Bp
bl9sb2NrX2JoKCZmcS0+bG9jayk7CiAKQEAgLTM2NTIsNiArMzY1NywyMCBAQCBzdHJ1Y3Qgc2tf
YnVmZiAqaWVlZTgwMjExX3R4X2RlcXVldWUoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsCiAJfQog
CiAJSUVFRTgwMjExX1NLQl9DQihza2IpLT5jb250cm9sLnZpZiA9IHZpZjsKKworCWlmIChsb2Nh
bC0+YWlydGltZV9mbGFncyAmIEFJUlRJTUVfVVNFX0FRTCkgeworCQlhaXJ0aW1lID0gaWVlZTgw
MjExX2NhbGNfZXhwZWN0ZWRfdHhfYWlydGltZShodywgdmlmLCB0eHEtPnN0YSwKKwkJCQkJCQkg
ICAgIHNrYi0+bGVuKTsKKwkJaWYgKGFpcnRpbWUpIHsKKwkJCS8qIFdlIG9ubHkgaGF2ZSAxMCBi
aXRzIGluIHR4X3RpbWVfZXN0LCBzbyBzdG9yZSBhaXJ0aW1lCisJCQkgKiBpbiBpbmNyZW1lbnRz
IG9mIDQgdXMgYW5kIGNsYW1wIHRoYXQgdG8gMioqMTAuCisJCQkgKi8KKwkJCWluZm8tPnR4X3Rp
bWVfZXN0ID0gbWluX3QodTMyLCBhaXJ0aW1lID4+IDIsIDEgPDwgMTApOworCQkJaWVlZTgwMjEx
X3N0YV91cGRhdGVfcGVuZGluZ19haXJ0aW1lKGxvY2FsLCB0eC5zdGEsIGFjLAorCQkJCQkJCSAg
ICAgYWlydGltZSwgZmFsc2UpOworCQl9CisJfQorCiAJcmV0dXJuIHNrYjsKIAogb3V0OgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWls
aW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
