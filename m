Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DDED3783
	for <lists+ath10k@lfdr.de>; Fri, 11 Oct 2019 04:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JyODZSL/yqYnEfjNXS0AL5KEq5XAjeh1GbsUEiLjcmU=; b=BrNcT8oo/Cl5yq
	lv+9V42cs/HMAWuO+9DbaeL7Ih0QSh3mrNsUA/gYfIjmHE9A3duNlC02lkoYLOaozuYPqHvf9E29l
	Tt9jINrMslaIxoKwbXZZCF7GEQXxbkinNbluc34UnyNGm/9UCXwxCJlGm4YbeaBgimD5l6jVuX5wZ
	xP1Hk+RwG4TbddZ8Q+kaqqqktjEBLK/DbP2YMrKH6JjO2/z2kpso9c01KBKIPb/JP2FJ52zfFAGt3
	Groktr39ZwtfqC71xCA4ubFf4a339HNmffPv3SkGkLek8OtHIBE97XW5MExFMw4psu3RHQ5gKsiH6
	PfcUx6bnnyPQOYFfb+xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIkbj-0004PI-7j; Fri, 11 Oct 2019 02:24:43 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIkbR-0004AC-98
 for ath10k@lists.infradead.org; Fri, 11 Oct 2019 02:24:28 +0000
Received: by mail-lf1-x143.google.com with SMTP id u28so5861327lfc.5
 for <ath10k@lists.infradead.org>; Thu, 10 Oct 2019 19:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SjV9H9pvD4UfBezCzuurED84stJjiWTQaM9lntveN6U=;
 b=V6ox/LNAFOrwge/xclW0/5nANo7T6nEcuUMjdEM/Wgau0izWeJSEz/cbjVUyct1AqF
 m9yGbnSzbVeigxWS7Wqc+YbfVkvu7VDTqYdnfEsgvUN3PszcNp4basm8timUeftMeZrM
 nhchYgS3ekRXscC2Q3VJeUFXJIQgfsGsWJy2ow46sN7sHPnen44I5Zy6JReSTU/o3yw2
 /47Ij+shzt/H3NpmNXxYXQos/Cat7UcBvWyr3PtuTsgZhJxzlPjw1656FixZk89fR9GH
 Y7gKiTkmARsWZaCrGVIzD0Anlek2pZIrOf06UO5SsM6gs8J3zAMDB2q567Wnviy1K5sQ
 L6hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SjV9H9pvD4UfBezCzuurED84stJjiWTQaM9lntveN6U=;
 b=C+VULoQxuZAx2n14GSMJ90ls8DcA7Ns7rdsmhrjtJg9h/eoRl1uq/M/Rw+v2dsdlru
 bd8vfld5VlFVZnK5syd990r4n/kwvMHVgeTx5PfEwe1ZMdbi+RA9yv0mnf+Q68oewz0R
 e2oLlnuOClq95qBeEMoqVDmtIZAkBbo3bnncA+KoJjTCJwgJYcP1F46MTOV0ZUH0o3PC
 VtMm9KSCyu8cK+VY0tsElcsnpRkow/7VjkmX0EWY/6LD7Bw+EjTJdi3VVam1M+BwSzPF
 62ZJR5YMIPkmDGnM78yI7blW9LSp4Ecv30iZ/dUuZBeZLRebmmlF4rEDvFwupRu0bScO
 UkZA==
X-Gm-Message-State: APjAAAVOAX37VrJERlcyfaPcxROiypBLVR0tC7sOljlb6GOoHkxkPHCb
 +6j5nsA0WoufjQvsPN6uGB8jWxCRdmzn1Kny4QOrbA==
X-Google-Smtp-Source: APXvYqyF1c9G+UjSG+tfYXCeklU+q02bWAAhxHTvl4NcU9gFzaUgyRGvP8xq7x+9DITcQ+8s1L1Jq9IGvoMIxTOGGvw=
X-Received: by 2002:a19:7b08:: with SMTP id w8mr7371507lfc.95.1570760659240;
 Thu, 10 Oct 2019 19:24:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191010022502.141862-1-kyan@google.com>
 <20191010022502.141862-2-kyan@google.com>
 <a2cc0ebecfb055c8b667db57d0469fe69054a69c.camel@sipsolutions.net>
 <87ftk0jr70.fsf@toke.dk>
In-Reply-To: <87ftk0jr70.fsf@toke.dk>
From: Kan Yan <kyan@google.com>
Date: Thu, 10 Oct 2019 19:24:07 -0700
Message-ID: <CA+iem5u8p7pDZw-QvqU285p7F5AunN3Z4YyS=TjAd9xbKqegnQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] mac80211: Implement Airtime-based Queue Limit (AQL)
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_192425_334703_6E72A023 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: make-wifi-fast@lists.bufferbloat.net, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Yibo Zhao <yiboz@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

PiA+ICsvKiBUaGUgcGVyIFRYUSBmaXJtd2FyZSBxdWV1ZSBsaW1pdCBpbiBhaXJ0aW1lICovCj4K
PiBJIHdhcyBwcmV0dHkgc3VyZSBJIG1lbnRpb25lZCBpdCAqc29tZXdoZXJlKiwgYnV0IEkgdGhp
bmsganVzdCBjYWxsaW5nCj4gdGhpcyAiZGV2aWNlIiBvciBzb21ldGhpbmcgd291bGQgYmUgbW9y
ZSBnZW5lcmFsLiBJZiB5b3UgZG9uJ3QgbWluZCwgSQo+IGNhbiBlZGl0IHRoYXQgYWxzbyAodW5s
ZXNzIHlvdSBoYXZlIG90aGVyIHJlYXNvbnMgdG8gcmVzdWJtaXQ/KQoKZG9uZS4gSSB3aWxsIHVw
bG9hZCBhIG5ldyB2ZXJzaW9uIHRvIGZpeCBjb2Rpbmcgc3R5bGUgaXNzdWVzIGFjY29yZGluZwp0
byB5b3VyIGNvbW1lbnQuIFBsZWFzZSBkbyBoZWxwCnJldmlzZSBjb21tZW50IGFzIHlvdSBzZWUg
Zml0LgoKPiA+ICsgKiBpZWVlODAyMTFfdHhxX2FxbF9jaGVjayAtIGNoZWNrIGlmIGEgdHhxIGNh
biBzZW5kIGZyYW1lIHRvIGRldmljZQo+IEkgd29uZGVyIGlmIHRoaXMgcmVhbGx5IHNob3VsZCBl
dmVuIGJlIGhhdmUgImFxbCIgaW4gdGhlIG5hbWU/IEl0J3MgYWxzbwo+IGdvaW5nIHRvIHJldHVy
biBOVUxMIGlmIHRoZXJlJ3Mgbm90aGluZyBvbiB0aGUgVFhRLCBmb3IgZXhhbXBsZSwgcmlnaHQ/
CgpSZW5hbWVkIHRvICBpZWVlODAyMTFfdHhxX2FpcnRpbWVfY2hlY2soKQpUaGlzIGZ1bmN0aW9u
IGlzIG5vdCBmb3IgZmluZGluZyBuZXh0IGVsaWdpYmxlIHR4cSwgYnV0IHJldHVybiBhCmJvb2xl
YW4gdG8gaW5kaWNhdGUgaWYgYSBnaXZlbiB0eHEgY2FuIHNlbmQgbW9yZSBwYWNrZXRzIHRvIGRl
dmljZS4gSXQKaXMgYWxzbyBjYWxsZWQgZnJvbSBhdGgxMGs6CnN0YXRpYyBib29sIGF0aDEwa19t
YWNfdHhfY2FuX3B1c2goc3RydWN0IGllZWU4MDIxMV9odyAqaHcsCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc3RydWN0IGllZWU4MDIxMV90eHEgKnR4cSkKewogICAgICAgLi4u
CiAgICAgICAgaWYgKCFpZWVlODAyMTFfdHhxX2FpcnRpbWVfY2hlY2soaHcsIHR4cSkpCiAgICAg
ICAgICAgICAgICByZXR1cm4gZmFsc2U7Cgo+IGlmIChXQVJOX09OQ0UoLi4uLCAiLi4uIiwgLi4u
KSkKPiBzYXZlcyB5b3UgdGhlIGJyYWNlcyBhbmQgdGhlIGV4dHJhIGNvbmRpdGlvbgoKZG9uZS4K
Cj4gQnV0IHRoZW4gYWdhaW4sIHdlIGRvbid0IHJlYWxseSBjYXJlICp0aGF0KiBtdWNoIGFib3V0
IG92ZXJmbG93IG9yCj4gdW5kZXJmbG93IGluIHRoaXMgY29kZSBwYXRoIC0gaXQncyBub3QgZ29p
bmcgdG8gYmUgc2VjdXJpdHkgY3JpdGljYWwuCj4gQnV0IGl0IHNlZW1zIHRoYXQgeW91ciBjb2Rl
IHRoZXJlIGFjdHVhbGx5IGNhbiBjYXVzZSBVQj8gVGhhdCB3b3VsZCBiZQo+IG5pY2UgdG8gYXZv
aWQuCj4gQWN0dWFsbHksIHRoYXQgY29uZGl0aW9uIGNhbiBuZXZlciBiZSB0cnVlLCByaWdodD8g
V2FpdCwgb2ssIHRoaXMgb25lCj4gY2FuIGJlY2F1c2UgaW50ZWdlciBwcm9tb3Rpb24/CgogSSBk
b24ndCB0aGluayB0aGF0IGNvbmRpdGlvbiBjb3VsZCBoYXBwZW4uIFRoZSBXQVJOX09OQ0UoKSB3
YXMgYWRkZWQKcGVyIHlvdXIgZWFybGllciBjb21tZW50LiBUaGUgb2xkZXIgdmVyc2lvbiBkb24n
dCBoYXZlIHVuZGVyZmxvdyBjaGVjawphbmQgcmVzZXQgcGVuZGluZ19haXJ0aW1lIHBhcnQgYW5k
IEkgZGlkbid0IGZpbmQgYW55IGlzc3Vlcy4KCj4gRXhjZXB0IGFxbF90b3RhbF9wZW5kaW5nX2Fp
cnRpbWUgaXMgc3RpbGwgZGVmaW5lZCBhcyBzMzIgYW5kIHRoYXQgY2F1c2VzCj4gZGlmZmVyZW50
IGJlaGF2aW91cj8KPiBBbGwgdGhpcyBjb25mdXNlcyBtZSAuLi4gaXMgaXQgcG9zc2libGUgdG8g
d3JpdGUgdGhpcyBtb3JlIGNsZWFybHk/CgpJIHJldmlzZWQgaXQgdG8gc29tZXRoaW5nIHNpbWls
YXIgdG8gdGhlIG9yaWdpbmFsIHZlcnNpb24sIHdoaWNoCmllZWU4MDIxMV9zdGFfdXBkYXRlX3Bl
bmRpbmdfYWlydGltZSgpIHRha2VzIGV4dHJhIHBhcmFtZXRlciB0bwppbmRpY2F0ZSB3aGV0aGVy
IGl0IGlzIGZvciBhIHR4IGNvbXBsZXRpb24gZXZlbnQuCnZvaWQgaWVlZTgwMjExX3N0YV91cGRh
dGVfcGVuZGluZ19haXJ0aW1lKHN0cnVjdCBpZWVlODAyMTFfc3RhICpwdWJzdGEsIHU4IHRpZCwK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdTMyIHR4X2FpcnRpbWUs
IGJvb2wgdHhfY29tcGxldGVkKQpUaGlzIGhlbHAgZ2V0IHJpZCBvZiB0aGUgcHJvYmxlbSB0aGF0
IGFpcnRpbWUgbmVlZCBiZSBzaWduZWQuIEFsc28KYWRkZWQgdGhlIGlubGluZSBmdW5jdGlvbiBv
ZgppZWVlODAyMTFfc3RhX3JlZ2lzdGVyL3JlbGVhc2VfcGVuZGluZ19haXJ0aW1lKCkgYXMgeW91
IHN1Z2dlc3RlZC4KCgpPbiBUaHUsIE9jdCAxMCwgMjAxOSBhdCAxOjEyIFBNIFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPgo+IEpvaGFubmVzIEJlcmcg
PGpvaGFubmVzQHNpcHNvbHV0aW9ucy5uZXQ+IHdyaXRlczoKPgo+ID4gSGksCj4gPgo+ID4gQSBj
b3VwbGUgb2YgcG9pbnRzLi4uCj4gPgo+ID4gRmlyc3QsIEknZCBsaWtlIFRva2UgdG8gcmV2aWV3
ICYgYWNrIHRoaXMgaWYgcG9zc2libGUgOi0pCj4KPiBTdXJlLCBJJ2xsIGxvb2sgYXQgaXQuIEkn
bSBhd2F5IHRoZSByZXN0IG9mIHRoaXMgd2VlaywgYnV0IHNob3VsZAo+IGhvcGVmdWxseSBnZXQg
c29tZSBtb3JlIHRpbWUgbmV4dCB3ZWVrLiBJdCBtYXkgYmUgdGhhdCBpdCB3aWxsIHRha2UgdGhl
Cj4gZm9ybSBvZiBhbm90aGVyIHN1Ym1pc3Npb24gdGhhdCBpbnRlZ3JhdGVzIHRoaXMgd2l0aCB0
aGUgcHJldmlvdXMgcGF0Y2gKPiBJIHNlbnQgdGhhdCBwdXQgbW9yZSBvZiB0aGUgY2FsY3VsYXRp
b24gaW50byBtYWM4MDIxMSBpdHNlbGYuLi4KPgo+IC1Ub2tlCj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBr
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9hdGgxMGsK
