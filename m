Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F23DC78E
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 16:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mLn/FK9BFbD+tdCtIitVYE+RzDaP264vnYoA5mscHYI=; b=kEnmIUCbMtTvZv
	ijsUrI0Ve7/uJqTOD2Oa84KzMvCUXzAb09+5JrHLzMko76GDM2cEIDwflGr6XreBZJhABh1JLTX5J
	WYe5WX29p3PRmh0E70eAb/CekrN5tQVPRqTDIWOxL5mP24ka2fKVgwzJXaeP77NjIsyaFxEaKsBlc
	YuPd2m+WMPxDaTarb4PSrbAJoaRa+ghSLmjq0w5CFLgloF1wMEcc3FQ0CYw0rVwLAUHtysmGYbVG+
	vKTiMZZ0BK4wI1rqxHBuF6WPvo3eQzibCxwEPM5sLA0a5h4XAczZbYKgOt2DaFIrk6PTsDFfqV7zt
	V7HgjUOY8VuhheSXmnGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLTQi-0008N4-KA; Fri, 18 Oct 2019 14:40:36 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLTQc-0008Kh-2y
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 14:40:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571409628;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4jQ/tW2DJnux5IJz+rjWj2biWuzQKo2eWZ9vfDg1dJM=;
 b=bnUv6hjIKVEVKbWXo5JzzJNjkCVoFzIrj4LdrB1AdQjK2R+pfXa/Ax3tdwp4aI/4rbBNOv
 IL/uGxBAJjcONgjBl8QyO4A+bT4zg8g5DZGFDE4+AI5MuACJWKKtAqovhAZEiaeC/ETzd/
 OMiOq0n0gnRDomng94J3JhJV/Kkjbf0=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-ukYW5mpUPt6m6kBn3JXUEQ-1; Fri, 18 Oct 2019 10:40:24 -0400
Received: by mail-lf1-f71.google.com with SMTP id q3so1318952lfo.8
 for <ath10k@lists.infradead.org>; Fri, 18 Oct 2019 07:40:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=e7FaDhgC1zTkjFC0jsJQQgggehot9KAb85p12pfkR44=;
 b=tcu3+22DvjuMSJhXRb/wnUxSV5AG2gnkYuOyh0e5neoISFHrcjbTcG7D0t2upOO38s
 G9TslyS28Q92b+vlbSrtYbS65jMv1Evx6cUNeaTq31TYt30cCrXPFUoEJD7sfGkqx9MY
 h/svSrTV5/Kk+j1H3rRYoqahntuYXp7SplCDN8Zgbz+oQ4nyyqzllXe9ea8k9Rd7oORp
 1eX3TPlSoaE0rpIu4ToWMU5lSDTATZW3ooMzeNCmdu8TMURIEPZuA0QVk/y6EX5lhiJB
 vjKAZa0miDEBl3jFslmc6p3EbUJZGmqRwtqPtrit81o2geBpB4/czEnwm6h951KaoxLC
 djaw==
X-Gm-Message-State: APjAAAXiVj0Z9UWIHgVWKVqDX+fpwgceNe66+dzM9dStwhhThDzGR7hL
 8a8Su1mLQo2WYAJUKdm1XhjmzB1WPRKbyvHWaJlpSPkCg0YD/qrBUwQBTj/g0eGrRlxCqVejE6p
 FW1bOtgSQgll20XHsspGzCQ==
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr5868993lfm.15.1571409623105;
 Fri, 18 Oct 2019 07:40:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy1oW0Pilzv/j0cmg+z4cw3p8bFy2vRDcI9r/1HPABPVkHKj9AY00UN3Q8sVxFdt9bvMFmBOQ==
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr5868984lfm.15.1571409622930;
 Fri, 18 Oct 2019 07:40:22 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id u26sm2688629lfd.19.2019.10.18.07.40.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 07:40:21 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 0EDCF1804B6; Fri, 18 Oct 2019 16:40:21 +0200 (CEST)
Subject: [PATCH v3 0/4] Add Airtime Queue Limits (AQL) to mac80211
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Fri, 18 Oct 2019 16:40:21 +0200
Message-ID: <157140962094.2866668.3383184317264069493.stgit@toke.dk>
User-Agent: StGit/0.20
MIME-Version: 1.0
X-MC-Unique: ukYW5mpUPt6m6kBn3JXUEQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_074030_203986_8F6E4F82 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
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

VGhpcyBzZXJpZXMgaXMgYSBmaXJzdCBhdHRlbXB0IGF0IHBvcnRpbmcgdGhlIEFpcnRpbWUgUXVl
dWUgTGltaXRzIGNvbmNlcHQgZnJvbQp0aGUgb3V0LW9mLXRyZWUgYXRoMTBrIGltcGxlbWVudGF0
aW9uWzBdIHRvIG1hYzgwMjExLiBUaGlzIHZlcnNpb24gdGFrZXMgS2FuJ3MKcGF0Y2ggdG8gZG8g
dGhlIHRocm90dGxpbmcgaW4gbWFjODAyMTEsIGFuZCByZXBsYWNlcyB0aGUgZHJpdmVyIEFQSSB3
aXRoIHRoZQptZWNoYW5pc20gZnJvbSB0aGUgcHJldmlvdXMgdmVyc2lvbiBvZiBteSBzZXJpZXMs
IHdoaWNoIGluc3RlYWQgY2FsY3VsYXRlZCB0aGUKZXhwZWN0ZWQgYWlydGltZSBhdCBkZXF1ZXVl
IHRpbWUgaW5zaWRlIG1hYzgwMjExLCBzdG9yaW5nIGl0IGluIHRoZSBTS0IgY2IKZmllbGQuCgpU
aGlzIHNlcmllcyBhbHNvIGltcG9ydHMgRmVsaXgnIGFpcnRpbWUgY2FsY3VsYXRpb24gY29kZSBm
cm9tIG10NzYgaW50bwptYWM4MDIxMSwgYWRqdXN0aW5nIHRoZSBBUEkgc28gaXQgY2FuIGJlIHVz
ZWQgZnJvbSBUWCBkZXF1ZXVlLCBieSBleHRyYWN0aW5nIHRoZQpsYXRlc3QgVFggcmF0ZSBmcm9t
IHRoZSB0eF9zdGF0cyBzdHJ1Y3R1cmUga2VwdCBmb3IgZWFjaCBzdGF0aW9uLgoKQXMgYmVmb3Jl
LCBJJ3ZlIG9ubHkgY29tcGlsZSB0ZXN0ZWQgdGhpcyAobGFja2luZyB0aGUgcHJvcGVyIGhhcmR3
YXJlIHRvIGRvIG1vcmUKdGVzdGluZykuIFNvIEknbSBob3Bpbmcgc29tZW9uZSB3aXRoIGEgcHJv
cGVyIHRlc3Rpbmcgc2V0dXAgY2FuIHRha2UgdGhlIHdob2xlCnRoaW5nIGZvciBhIHNwaW4uLi4g
OikKClRoZSBzZXJpZXMgaXMgYWxzbyBhdmFpbGFibGUgaW4gbXkgZ2l0IHJlcG8gaGVyZToKaHR0
cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9rZS9saW51eC5n
aXQvbG9nLz9oPW1hYzgwMjExLWFxbC0wMgoKQ2hhbmdlbG9nOgoKdjM6CiAgLSBNb3ZlIHRoZSB0
eF90aW1lX2VzdCBmaWVsZCBzbyBpdCdzIHNoYXJlZCB3aXRoIGFja19mcmFtZV9pZCwgYW5kIHVz
ZSB1bml0cwogICAgb2YgNHVzIGZvciB0aGUgdmFsdWUgc3RvcmVkIGluIGl0LgogIC0gTW92ZSB0
aGUgYWRkaXRpb24gb2YgdGhlIEV0aGVybmV0IGhlYWRlciBzaXplIGludG8gaWVlZTgwMjExX2Nh
bGNfZXhwZWN0ZWRfdHhfYWlydGltZSgpCnYyOgogIC0gSW50ZWdyYXRlIEthbidzIGFwcHJvYWNo
IHRvIGFpcnRpbWUgdGhyb3R0bGluZy4KICAtIEhvcGVmdWxseSBmaXggdGhlIGNiIHN0cnVjdCBh
bGlnbm1lbnQgb24gYmlnLWVuZGlhbiBhcmNoaXRlY3R1cmVzLgoKLS0tCgpLYW4gWWFuICgxKToK
ICAgICAgbWFjODAyMTE6IEltcGxlbWVudCBBaXJ0aW1lLWJhc2VkIFF1ZXVlIExpbWl0IChBUUwp
CgpUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gKDMpOgogICAgICBtYWM4MDIxMTogU2hyaW5rIHRo
ZSBzaXplIG9mIGFja19mcmFtZV9pZCB0byBtYWtlIHJvb20gZm9yIHR4X3RpbWVfZXN0CiAgICAg
IG1hYzgwMjExOiBJbXBvcnQgYWlydGltZSBjYWxjdWxhdGlvbiBjb2RlIGZyb20gbXQ3NgogICAg
ICBtYWM4MDIxMTogVXNlIEFpcnRpbWUtYmFzZWQgUXVldWUgTGltaXRzIChBUUwpIG9uIHBhY2tl
dCBkZXF1ZXVlCgoKIGluY2x1ZGUvbmV0L2NmZzgwMjExLmggICAgIHwgICAgNyArCiBpbmNsdWRl
L25ldC9tYWM4MDIxMS5oICAgICB8ICAgMzAgKysrLQogbmV0L21hYzgwMjExL01ha2VmaWxlICAg
ICAgfCAgICAzIAogbmV0L21hYzgwMjExL2FpcnRpbWUuYyAgICAgfCAgMzc3ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBuZXQvbWFjODAyMTEvY2ZnLmMgICAg
ICAgICB8ICAgIDIgCiBuZXQvbWFjODAyMTEvZGVidWdmcy5jICAgICB8ICAgNzggKysrKysrKysr
CiBuZXQvbWFjODAyMTEvZGVidWdmc19zdGEuYyB8ICAgNDMgKysrKy0KIG5ldC9tYWM4MDIxMS9p
ZWVlODAyMTFfaS5oIHwgICAgOCArCiBuZXQvbWFjODAyMTEvbWFpbi5jICAgICAgICB8ICAgIDkg
KwogbmV0L21hYzgwMjExL3N0YV9pbmZvLmMgICAgfCAgIDMyICsrKysKIG5ldC9tYWM4MDIxMS9z
dGFfaW5mby5oICAgIHwgICAgOCArCiBuZXQvbWFjODAyMTEvc3RhdHVzLmMgICAgICB8ICAgMzgg
KysrKwogbmV0L21hYzgwMjExL3R4LmMgICAgICAgICAgfCAgIDY3ICsrKysrKystCiAxMyBmaWxl
cyBjaGFuZ2VkLCA2ODQgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgbmV0L21hYzgwMjExL2FpcnRpbWUuYwoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9hdGgxMGsK
