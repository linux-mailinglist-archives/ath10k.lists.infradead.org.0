Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E3BF4512
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 11:55:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCRzFz0tHwFbCQ4808w9qTkHZ4J56YyqKuWF7o1nJBk=; b=UUmh35i4yEXBDo
	Sq2GoVWJM+XxhVp+M/hG2usGiE49H2WLQdWKdQO3sB2AonTxZ3jOUIkHxrUNpN8xAcbseOcpo0Dy8
	nkzLEpECC1b/ujTVTACTfxE3TQQqQlZ0j5sjdyM5Gd2VGeZ9iGe00FALKcnpJZwTvu8+Upv1BnVG4
	R/avicXwSMp1SYcksE7ZTY+D6G9TDXSynB/Foa3oMSCkMJurixh5qd+Ots3EWgJTNzLoUzaiafwyX
	gls5amYupNvZT3lZ1vrANly3zwEyZLaXiqUrk+au/vuYdR1e9CWuhkIv/jFwbdaNsP6cuWAOKgbb8
	YJ2veTC+wgFvJMNoMxQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1ve-0004Zl-Oa; Fri, 08 Nov 2019 10:55:46 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1va-0004Z7-R3
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 10:55:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573210540;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bsPfNwlAkGOPfmWxI5u777tBP7n0JZnEAYYAZmhM14E=;
 b=NHV9K5Ztv0xnFig0glSuA//YhiyYpfDZvtH9EyD+zxcs7KR1Nq69x7AC1XvrhMnj+qA5oo
 MnfpKVYS8ICyut6WwgZUH+TxOcDMSTu8YANMr0ecwdD7TQkt8pN8H40mFFELoLetzFh/YN
 urwMGm+eyo7u0zlPQk9WjaRD0Vh7Wzw=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-147-Hcz9GJTZMASuKLsol_dm9Q-1; Fri, 08 Nov 2019 05:55:39 -0500
Received: by mail-lj1-f199.google.com with SMTP id r5so1173508ljj.7
 for <ath10k@lists.infradead.org>; Fri, 08 Nov 2019 02:55:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=YJrXGtCnMlroIEY2nnixcaaDlLt4fqJ7BPUU7uurxtY=;
 b=D+RUt8w4JYKIrmuJSboFYLhu+4kz9JqiG6Hi6t5+nvm6DCwplWD/0qHUq7BfdaKsiL
 yKpnePPtGJWUptSExoE4gjKN+8qZZbkuddUjJfqXLJjJTwp3UIvffNXbjK+YxDPdagZb
 pgtyWWVWKG3r2vuuI68HL1KnRQFd48y4K2HzweZaxd+uRs8/8OjM86bqmSFKI11BiqZW
 FAJlBr6vnrYL+m5xIdRRI0Cl8t58oeLlRuJaH+BKWnYLOT4ysxRuYFAh7HxhoAsrX5A3
 Tir1SpmsQd/1/j2Mgp1doPxt5gockJ5+2xglYiu1cm65B46bsMI75duEELRvOqLJtW16
 eXeg==
X-Gm-Message-State: APjAAAUfc9djUvuglN10AQQlVaPJsQXsCT2H88hUmUFOPMn83AcosB3C
 M+SVFnBavvzzS9u5M7IHYHVARMHSAuHHRk7b28StUKj52wb9AXPEEisRjOMV8R68vKs2JBQU5u9
 DQPIM92GCL3YwR9lKv93ieA==
X-Received: by 2002:a2e:998a:: with SMTP id w10mr6332840lji.66.1573210537774; 
 Fri, 08 Nov 2019 02:55:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqyEGKU7zYVEzHqvutjPdhb0Ch2cJ7Jo3JKjhWNBQYUJrGbfwFRDp8nlKlaaBjRUW80eWrShhw==
X-Received: by 2002:a2e:998a:: with SMTP id w10mr6332815lji.66.1573210537418; 
 Fri, 08 Nov 2019 02:55:37 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id v12sm2326039ljg.14.2019.11.08.02.55.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 02:55:36 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id D26D61818B5; Fri,  8 Nov 2019 11:55:35 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v6 2/4] mac80211: Import airtime calculation code from mt76
In-Reply-To: <42266e95f45d5772e04c9c016bd6179ea14ffefa.camel@sipsolutions.net>
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
 <157182474174.150713.17459330922820192258.stgit@toke.dk>
 <42266e95f45d5772e04c9c016bd6179ea14ffefa.camel@sipsolutions.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 08 Nov 2019 11:55:35 +0100
Message-ID: <87d0e2fxi0.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: Hcz9GJTZMASuKLsol_dm9Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_025542_956525_AA5E8572 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kan Yan <kyan@google.com>, Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sm9oYW5uZXMgQmVyZyA8am9oYW5uZXNAc2lwc29sdXRpb25zLm5ldD4gd3JpdGVzOgoKPiBPbiBX
ZWQsIDIwMTktMTAtMjMgYXQgMTE6NTkgKzAyMDAsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3
cm90ZToKPj4gRnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+
Cj4+IAo+PiBGZWxpeCByZWNlbnRseSBhZGRlZCBjb2RlIHRvIGNhbGN1bGF0ZSBhaXJ0aW1lIG9m
IHBhY2tldHMgdG8gdGhlIG10NzYKPj4gZHJpdmVyLiBJbXBvcnQgdGhpcyBpbnRvIG1hYzgwMjEx
IHNvIHdlIGNhbiB1c2UgaXQgZm9yIGFpcnRpbWUgcXVldWUgbGltaXQKPj4gY2FsY3VsYXRpb25z
IGxhdGVyLgo+PiAKPj4gVGhlIGFpcnRpbWUuYyBmaWxlIGlzIGNvcGllZCB2ZXJiYXRpbSBmcm9t
IHRoZSBtdDc2IGRyaXZlciwgYW5kIGFkanVzdGVkIHRvCj4+IHVzZSBtYWM4MDIxMSBkYXRhIHN0
cnVjdHVyZXMgaW5zdGVhZCAod2hpY2ggaXMgZmFpcmx5IHN0cmFpZ2h0IGZvcndhcmQpLgo+PiBU
aGUgcGVyLXJhdGUgVFggcmF0ZSBjYWxjdWxhdGlvbiBpcyBzcGxpdCBvdXQgdG8gaXRzIG93bgo+
PiBmdW5jdGlvbiAoaWVlZTgwMjExX2NhbGNfdHhfYWlydGltZV9yYXRlKCkpIHNvIGl0IGNhbiBi
ZSB1c2VkIGRpcmVjdGx5IGZvcgo+PiB0aGUgQVFMIGNhbGN1bGF0aW9ucyBhZGRlZCBpbiBhIHN1
YnNlcXVlbnQgcGF0Y2guCj4KPiBBbnkgd2F5IGl0IGNvdWxkIGJlIGV4cG9zZWQgYnkgbWFjODAy
MTEgYmFjayB0byB0aGUgZHJpdmVycywgcGVyaGFwcywgdG8KPiBzaGFyZSBpdD8KCkRpZG4ndCBJ
IGFscmVhZHkgZXhwb3J0IHNvbWUgb2YgdGhlIGZ1bmN0aW9ucz8gTXkgaW50ZW50aW9uIHdhcyB0
byBkbwp0aGF0LCBjZXJ0YWlubHksIGFuZCB0byBwYXRjaCBtdDc2IHRvIHN3aXRjaCB0byB1c2lu
ZyB0aGVtIG9uY2UgdGhlCnRyZWVzIGhhdmUgY29udmVyZ2VkLi4uCgo+PiBUaGUgb25seSB0aGlu
ZyB0aGF0IGl0IHdhcyBub3QgcG9zc2libGUgdG8gcG9ydCBkaXJlY3RseSB3YXMgdGhlIGJpdCB0
aGF0Cj4+IHJlYWQgdGhlIGludGVybmFsIGRyaXZlciBmbGFncyBvZiBzdHJ1Y3QgaWVlZTgwMjEx
X3JhdGUgdG8gZGV0ZXJtaW5lCj4+IHdoZXRoZXIgYSByYXRlIGlzIHVzaW5nIENDSyBvciBPRkRN
IGVuY29kaW5nLiBJbnN0ZWFkLCBqdXN0IGxvb2sgYXQgdGhlCj4+IHJhdGUgaW5kZXgsIHNpbmNl
IGF0IGxlYXN0IG10NzYgYW5kIGF0aDEwayBib3RoIHNlZW0gdG8gaGF2ZSB0aGUgc2FtZQo+PiBu
dW1iZXIgb2YgQ0NLIHJhdGVzICg0KSBpbiB0aGVpciB0YWJsZXMuCj4KPiBUaGlzIGlzIGhpZ2hs
eSBxdWVzdGlvbmFibGUgLi4uCj4KPj4gKwlzd2l0Y2ggKHN0YXR1cy0+ZW5jb2RpbmcpIHsKPj4g
KwljYXNlIFJYX0VOQ19MRUdBQ1k6Cj4+ICsJCWlmIChXQVJOX09OX09OQ0Uoc3RhdHVzLT5iYW5k
ID4gTkw4MDIxMV9CQU5EXzVHSFopKQo+PiArCQkJcmV0dXJuIDA7Cj4+ICsKPj4gKwkJc2JhbmQg
PSBody0+d2lwaHktPmJhbmRzW3N0YXR1cy0+YmFuZF07Cj4+ICsJCWlmICghc2JhbmQgfHwgc3Rh
dHVzLT5yYXRlX2lkeCA+IHNiYW5kLT5uX2JpdHJhdGVzKQo+PiArCQkJcmV0dXJuIDA7Cj4+ICsK
Pj4gKwkJcmF0ZSA9ICZzYmFuZC0+Yml0cmF0ZXNbc3RhdHVzLT5yYXRlX2lkeF07Cj4+ICsJCWNj
ayA9IChzdGF0dXMtPnJhdGVfaWR4IDwgQ0NLX05VTV9SQVRFUyk7CgpIZWgsIHllYWggdGhpcyBk
aWQgZmVlbCBsaWtlIGEgaGFjayB0byBtZSBhcyB3ZWxsIDspCgo+IFdoeSBub3QKPgo+IAljY2sg
PSByYXRlLT5mbGFncyAmIElFRUU4MDIxMV9SQVRFX01BTkRBVE9SWV9COwo+Cj4gSSBtZWFuIC4u
IHdlIGtub3cgdGhhdCBJRUVFODAyMTFfUkFURV9NQU5EQVRPUllfQiByYXRlcyBhcmUgZXhhY3Rs
eSB0aGUKPiBDQ0sgcmF0ZXMsIGFuZCB0aGF0J3Mgbm90IHJlYWxseSBnb2luZyB0byBjaGFuZ2U/
Cj4KPiBBbHRlcm5hdGl2ZWx5LCB3ZSBjb3VsZCBkbwo+Cj4gCWNjayA9IHNiYW5kLT5iYW5kID09
IE5MODAyMTFfQkFORF8yR0haICYmCj4gCSAgICAgICEocmF0ZS0+ZmxhZ3MgJiBJRUVFODAyMTFf
UkFURV9FUlBfRyk7Cj4KPiBvciBldmVuCj4KPiAJY2NrID0gcmF0ZS0+Yml0cmF0ZSA9PSAxMCB8
fCByYXRlLT5iaXRyYXRlID09IDIwIHx8Cj4gCSAgICAgIHJhdGUtPmJpdHJhdGUgPT0gNTUgfHwg
cmF0ZS0+Yml0cmF0ZSA9PSAxMTA7CgpJIGFtIGZpbmUgd2l0aCBlaXRoZXIgb2YgdGhvc2U7IEkg
anVzdCB3YXNuJ3Qgc3VyZSB3aGF0IGFzc3VtcHRpb25zIEkKY291bGQgYWN0dWFsbHkgbWFrZSBo
ZXJlLiBJIGd1ZXNzIEknbGwganVzdCBwaWNrIG9uZSA6KQoKPj4gKwlkZWZhdWx0Ogo+PiArCQlX
QVJOX09OX09OQ0UoMSk7Cj4KPiBZb3UgY2FuJ3QgZG8gdGhhdCBpbiBtYWM4MDIxMSBlaXRoZXIu
IFRoYXQgbWlnaHQgYmUgZmluZSBmb3IgbXQ3NiwgYnV0Cj4gbWFjODAyMTEgYWxyZWFkeSBzdXBw
b3J0cyBIRS4KCkdvb2QgcG9pbnQsIHdpbGwgZml4LgoKLVRva2UKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEw
a0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYXRoMTBrCg==
