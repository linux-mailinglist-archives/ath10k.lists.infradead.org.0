Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59160DC50F
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 14:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JGC643Z/F9Zxg3XY02fNpV/diey+T25kT4Hxvge3kX4=; b=ccANWLizVhHgE/
	xF7F4OhfGH3nFXRrfyv/CH4BeOwyA/gcwzuCHnzTmo8KrFXQYqBBBobe1+ZJH9hBqRfR1okia9Zx8
	bt5C1ZZyXzGD1/6NS1F0lDSFy+On94Dj+KPwKykfJgyKU7Gyn/XUE3sh4oOugb/9B2zQ/7yWbpVQb
	780avxznJDFHA6SkU7w1jjQ7M8EI8tyQZfOa5pkMgE/7VKgk8W1SMBY91DmPlxDM0hah+3xdNMo7S
	pdUWYH6PTZAcj3k4dyAEXslg2bIcUr3/vkUBpGycNt0y4qgVQZg2LzIas9cTX0uJMyB70KH5pxIxH
	hSVyMR+wSdFJbAATaWdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRTx-0007Cb-Gb; Fri, 18 Oct 2019 12:35:49 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRTu-0007Bx-0k
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 12:35:47 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iLRTp-0002Kb-8n; Fri, 18 Oct 2019 14:35:41 +0200
Message-ID: <4bc17c32337888a57a78a0e2c874abd462faef21.camel@sipsolutions.net>
Subject: Re: [PATCH v2 1/4] mac80211: Rearrange ieee80211_tx_info to make
 room for tx_time_est
From: Johannes Berg <johannes@sipsolutions.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>, Kan Yan
 <kyan@google.com>
Date: Fri, 18 Oct 2019 14:35:40 +0200
In-Reply-To: <87sgnqe4wg.fsf@toke.dk>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115993866.2500430.13989567853855880476.stgit@toke.dk>
 <CA+iem5t6xghBocck864nDX2snWQ5O+v6_M2Jc9aCdn_hE+mFCA@mail.gmail.com>
 <87sgnqe4wg.fsf@toke.dk>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_053546_060219_62CC2866 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDE5LTEwLTE4IGF0IDEyOjE1ICswMjAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gS2FuIFlhbiA8a3lhbkBnb29nbGUuY29tPiB3cml0ZXM6Cj4gCj4gPiBUaGUg
InR4X3RpbWVfZXN0IiBmaWVsZCwgc2hhcmVkIGJ5IGNvbnRyb2wgYW5kIHN0YXR1cywgaXMgbm90
IGFibGUgdG8KPiA+IHN1cnZpdmUgdW50aWwgdGhlIHNrYiByZXR1cm5zIHRvIHRoZSBtYWM4MDIx
MSBsYXllciBpbiBzb21lCj4gPiBhcmNoaXRlY3R1cmVzLiBUaGUgc2FtZSBzcGFjZSBpcyBkZWZp
bmVkIGFzIGRyaXZlcl9kYXRhIGFuZCBzb21lCj4gPiB3aXJlbGVzcyBkcml2ZXJzIHVzZSBpdCBm
b3Igb3RoZXIgcHVycG9zZXMsIGFzIHRoZSBjYiBpbiB0aGUgc2tfYnVmZgo+ID4gaXMgZnJlZSB0
byBiZSB1c2VkIGJ5IGFueSBsYXllci4KPiA+IAo+ID4gSW4gdGhlIGNhc2Ugb2YgYXRoMTBrLCB0
aGUgdHhfdGltZV9lc3QgZ2V0IGNsb2JiZXJlZCBieQo+ID4gc3RydWN0IGF0aDEwa19za2JfY2Ig
ewo+ID4gICAgICAgICBkbWFfYWRkcl90IHBhZGRyOwo+ID4gICAgICAgICB1OCBmbGFnczsKPiA+
ICAgICAgICAgdTggZWlkOwo+ID4gICAgICAgICB1MTYgbXNkdV9pZDsKPiA+ICAgICAgICAgdTE2
IGFpcnRpbWVfZXN0Owo+ID4gICAgICAgICBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmOwo+ID4g
ICAgICAgICBzdHJ1Y3QgaWVlZTgwMjExX3R4cSAqdHhxOwo+ID4gfSBfX3BhY2tlZDsKPiAKPiBB
aCwgYnVnZ2VyLCBvZiBjb3Vyc2UgdGhlIGRyaXZlciB0aGF0IGFjdHVhbGx5IG5lZWRzIHRoaXMg
aXMgdXNpbmcgdGhlCj4gZnVsbCBkcml2ZXJfZGF0YSBzcGFjZSA6UAoKTG9va3MgbGlrZSB5b3Ug
Y291bGQgc2hyaW5rICp0aGlzKiBmYWlybHkgZWFzaWx5IHRob3VnaC4KCkUuZy4gbW9zdCBsaWtl
bHkgdmlmID09IHR4cS0+dmlmIHVubGVzcyB0eHE9PU5VTEwsIHNvIGl0J3MgZG93biB0byAyMgpi
eXRlcyBwbHVzIGEgYml0L2ZsYWcgZm9yIGtub3dpbmcgd2hldGhlciB0aGUgcG9pbnRlciBpcyBh
IHZpZiBkaXJlY3RseQooaWYgbm8gVFhRKSBvciBhIFRYUS4KCj4gPiBEbyB5b3UgdGhpbmsgc2hy
aW5rIGRyaXZlcl9kYXRhIGJ5IDIgYnl0ZXMgYW5kIHVzZSB0aGF0IHNwYWNlIGZvcgo+ID4gdHhf
dGltZV9lc3QgdG8gbWFrZSBpdCBwZXJzaXN0ZW50IGFjcm9zcyBtYWM4MDIxMSBhbmQgd2lyZWxl
c3MgZHJpdmVyCj4gPiBsYXllciBhbiBhY2NlcHRhYmxlIHNvbHV0aW9uPwo+IAo+IEhtbSwgdGhl
IGRyaXZlcl9kYXRhIGZpZWxkIGlzIGRlZmluZWQgYXMgYW4gYXJyYXkgb2YgcG9pbnRlcnMsIHNv
IHdlIGNhbgo+IG9ubHkgc2hyaW5rIGl0IGluIGluY3JlbWVudHMgb2Ygc2l6ZW9mKHZvaWQgKiku
IEkgdGhpbmsgaXQgbWF5IGJlCj4gZmVhc2libGUgdG8gc2hyaW5rIGl0IChhcyBpbiwgSSBkb24n
dCB0aGluayBhbnkgZHJpdmVycyBhcmUgYWN0dWFsbHkKPiB1c2luZyB0aGUgZnVsbCA0MCBieXRl
cyksCgpJdCBkb2Vzbid0IGhhdmUgdG8gYmUgZGVmaW5lZCBsaWtlIHRoYXQsIGp1c3Qgd2FzIG1v
c3QgY29udmVuaWVudCBhcwpkcmllcnMgd2VyZSB1c2luZyBwb2ludGVycyB0aGVyZS4KCj4gYnV0
IGRvaW5nIHRoaXMgaW4gYSB3YXkgdGhhdCB3aWxsIGdhaW4gdXMgYQo+IDItYnl0ZSBzcGFjZSB0
aGF0IGlzIGFsc28gdXNhYmxlIGluIHRoZSBjYXNlIGRyaXZlcl9kYXRhIGlzICpub3QqIHVzZWQK
PiAoaS5lLiwgaXQgbmVlZHMgYmUgYWJsZSB0byBhbGlnbiB3aXRoIGEgZmllbGQgaW4gLmNvbnRy
b2wgYW5kIC5zdGF0dXMgYXMKPiB3ZWxsKSB3b3VsZCByZXF1aXJlIHNvbWUgc2VyaW91cyBzdXJn
ZXJ5IG9mIHRoZSB3aG9sZSBpZWVlODAyMTFfdHhfaW5mby4uLgoKWWVhaCwgZ29vZCBwb2ludCwg
dGhpcyBkb2Vzbid0IGhlbHAgYXQgYWxsIC4uLgoKam9oYW5uZXMKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEw
a0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYXRoMTBrCg==
