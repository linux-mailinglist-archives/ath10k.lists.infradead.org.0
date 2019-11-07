Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E711F278D
	for <lists+ath10k@lfdr.de>; Thu,  7 Nov 2019 07:14:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v77AKkh0E7lRV9ctmy6A9CT3ypExuEG8sEM4Tl9lhRA=; b=qI1S4PxkZGt0qu
	6x2ngmKcjFMDjbxj/sFZnhPdt7egk09+w6BasO1F+Ma8Cr/WuSfCfWEoBeCwRJ3cFu4B/uYENPNec
	GJr7tcLipVsV1H68rJihzSJFqAZztqtURzjTPkK1Sepfodfz1PqWPzRf6hcZdldr6WOlPwbprlb8L
	rEKxPv0ZF9yoJsOpnMaTtN+sZObgjUh11mxypW1RNUaiLGdslhdcfwWo1SiGmXa+efOfHKGxtiKQM
	xU+l3dljsAjjYmu6fAqi06Ee+MahbCFq5nCW2n1CHC7acaDnBy3RE/khxdRNfF3GzpIxdacBXqp+W
	PfK7mc8srN97FWqhQ+8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSb47-0003Xv-SH; Thu, 07 Nov 2019 06:14:43 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSb43-0003XM-8W
 for ath10k@lists.infradead.org; Thu, 07 Nov 2019 06:14:40 +0000
Received: by mail-lj1-x244.google.com with SMTP id g3so843388ljl.11
 for <ath10k@lists.infradead.org>; Wed, 06 Nov 2019 22:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=G20uDCnZ3VggElG4QPQIueyfFp9elwSxdclEXe5q4wI=;
 b=Pfr4O/UFKdu1PstiJc5UkY5CxZVKh1mQyDEUnzFkBFC36EJnrfqe3p8x/jEhdnN6SD
 ovz0YB2wHd5vKFez+AL9kEqfC7CmhiWdQMUPI/675Aam8MGpaElHbf+bJQjuBmlkNIM/
 MECzG6CXNrhdeW5zfg7BH8XAcRGgbfVs2DJr0HhpldDVjyM64qAtH3oLCReaZEeyQ7Jz
 o052OkpraQz92DWJjimWTjtVqABhXgmduCv8trSbCbof6udAu1dCndCmkigiGbQboFPH
 R85rfBwd1rk9MOip3TRuyCciD2jVqa3mqyEZ1sOKnPHQGhE6DEy7Bym46JP5vdwFs1iP
 4EAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=G20uDCnZ3VggElG4QPQIueyfFp9elwSxdclEXe5q4wI=;
 b=AmAwLBrSYeM+4OFhv83qpiB51CctlCBf3emdRPHUf3QzCNPe2Q65I7XmRlGPj7MA6R
 natZvdDSFX0wy7hXWtB1UyQhpISquqebiGnoB9n2iwbjv4O8LwLle20PsBJ/igMR4rBn
 1QO8nybVAgSQuo7ppgG6gMQGwZQtfPf30AIsFwFAKpaqSLVypVAUpoTJQJsC4vGJn/cX
 U1fcj8z5cHlJIXF3sY871pC4bfNq7615o+bI/AHl4YgRH6JP80hIqpMiFC/i6cVr8mlV
 BbSqDD0GpjzZ9dt87pwE9tkUT2WvCuRP8vDjsa7GGLaXJauTv3TJiNEiO7ALF0vqwLo9
 GiuQ==
X-Gm-Message-State: APjAAAVZ+9ydjJheyif72jzx6L0ufr2Z0liqdpL0f8S61gn/FDxf6azf
 jiQQ7mmIaoUJ3rgs+hC7K/g8DdUKioRM6pcLH2SUXw==
X-Google-Smtp-Source: APXvYqysDCGa4md3DJKlaj1XmpADyCPv3/2tOdV7mFSIVBTUCjOtcAW5LEDFojFZhMnhdYazOBoH+jLACx6BhWt3znk=
X-Received: by 2002:a2e:9ad8:: with SMTP id p24mr961356ljj.114.1573107272596; 
 Wed, 06 Nov 2019 22:14:32 -0800 (PST)
MIME-Version: 1.0
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
In-Reply-To: <157182473951.150713.7978051149956899705.stgit@toke.dk>
From: Kan Yan <kyan@google.com>
Date: Wed, 6 Nov 2019 22:14:20 -0800
Message-ID: <CA+iem5s6jDNR+yA21UB_zJiZeVxix_QaO6RYw6sN69j2859zFw@mail.gmail.com>
Subject: Re: [PATCH v6 0/4] Add Airtime Queue Limits (AQL) to mac80211
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_221439_305478_EBE1FF77 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
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
Cc: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

UGF0Y2hzZXQgdjYgd29ya3MgZm9yIG1lIHdpdGggYXRoMTBrIGRyaXZlci4gIEFRTCBkb2VzIGl0
cyBqb2IgYXMKZXhwZWN0ZWQgYW5kIHRlc3RzIHNob3cgdmVyeSBzaWduaWZpY2FudCByZWR1Y3Rp
b24gaW4gbGF0ZW5jeSBpbgpjb25nZXN0ZWQgZW52aXJvbm1lbnQuIFRoZSB0eHEgc3R1Y2sgaXNz
dWUgaW4gcGF0Y2hzZXQgdjQgZ290IGZpeGVkLgoKSG93ZXZlciwgdGhlIGRldmljZSdzIHRvdGFs
IHBlbmRpbmcgYWlydGltZSBjb3VudCBzdGlsbCB1bmRlcmZsb3dzCnNvbWV0aW1lcy4gRXZlbiB0
aG91Z2ggaXQgZG9lc24ndCBjYXVzZSBhcHBhcmVudCBzaWRlIGVmZmVjdCwgdGhlcmUgaXMKc29t
ZSBpc3N1ZSB3aXRoIHRoZSBwZW5kaW5nIGFpcnRpbWUgdXBkYXRlIGFuZCBuZWVkcyBmdXJ0aGVy
CmRlYnVnZ2luZy4KClJlZ2FyZHMsCkthbgoKCk9uIFdlZCwgT2N0IDIzLCAyMDE5IGF0IDI6NTkg
QU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4g
VGhpcyBzZXJpZXMgaXMgYSBmaXJzdCBhdHRlbXB0IGF0IHBvcnRpbmcgdGhlIEFpcnRpbWUgUXVl
dWUgTGltaXRzIGNvbmNlcHQgZnJvbQo+IHRoZSBvdXQtb2YtdHJlZSBhdGgxMGsgaW1wbGVtZW50
YXRpb25bMF0gdG8gbWFjODAyMTEuIFRoaXMgdmVyc2lvbiB0YWtlcyBLYW4ncwo+IHBhdGNoIHRv
IGRvIHRoZSB0aHJvdHRsaW5nIGluIG1hYzgwMjExLCBhbmQgcmVwbGFjZXMgdGhlIGRyaXZlciBB
UEkgd2l0aCB0aGUKPiBtZWNoYW5pc20gZnJvbSB0aGUgcHJldmlvdXMgdmVyc2lvbiBvZiBteSBz
ZXJpZXMsIHdoaWNoIGluc3RlYWQgY2FsY3VsYXRlZCB0aGUKPiBleHBlY3RlZCBhaXJ0aW1lIGF0
IGRlcXVldWUgdGltZSBpbnNpZGUgbWFjODAyMTEsIHN0b3JpbmcgaXQgaW4gdGhlIFNLQiBjYgo+
IGZpZWxkLgo+Cj4gVGhpcyBzZXJpZXMgYWxzbyBpbXBvcnRzIEZlbGl4JyBhaXJ0aW1lIGNhbGN1
bGF0aW9uIGNvZGUgZnJvbSBtdDc2IGludG8KPiBtYWM4MDIxMSwgYWRqdXN0aW5nIHRoZSBBUEkg
c28gaXQgY2FuIGJlIHVzZWQgZnJvbSBUWCBkZXF1ZXVlLCBieSBleHRyYWN0aW5nIHRoZQo+IGxh
dGVzdCBUWCByYXRlIGZyb20gdGhlIHR4X3N0YXRzIHN0cnVjdHVyZSBrZXB0IGZvciBlYWNoIHN0
YXRpb24uCj4KPiBBcyBiZWZvcmUsIEkndmUgb25seSBjb21waWxlIHRlc3RlZCB0aGlzIChsYWNr
aW5nIHRoZSBwcm9wZXIgaGFyZHdhcmUgdG8gZG8gbW9yZQo+IHRlc3RpbmcpLiBTbyBJJ20gaG9w
aW5nIHNvbWVvbmUgd2l0aCBhIHByb3BlciB0ZXN0aW5nIHNldHVwIGNhbiB0YWtlIHRoZSB3aG9s
ZQo+IHRoaW5nIGZvciBhIHNwaW4uLi4gOikKPgo+IFRoZSBzZXJpZXMgaXMgYWxzbyBhdmFpbGFi
bGUgaW4gbXkgZ2l0IHJlcG8gaGVyZToKPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20v
bGludXgva2VybmVsL2dpdC90b2tlL2xpbnV4LmdpdC9sb2cvP2g9bWFjODAyMTEtYXFsLTA2Cj4K
PiBDaGFuZ2Vsb2c6Cj4KPiB2NjoKPiAgIC0gRml4IHN0YSBsb29rdXAgaW4gaWVlZTgwMjExX3Jl
cG9ydF91c2VkX3NrYigpLgo+ICAgLSBNb3ZlIGNhbGwgdG8gaWVlZTgwMjExX3N0YV91cGRhdGVf
cGVuZGluZ19haXJ0aW1lKCkgdG8gYSBiaXQgbGF0ZXIgaW4KPiAgICAgX19pZWVlODAyMTFfdHhf
c3RhdHVzKCkKPiB2NToKPiAgIC0gQWRkIG1pc3NpbmcgZXhwb3J0IG9mIGllZWU4MDIxMV9jYWxj
X3J4X2FpcnRpbWUoKSBhbmQgbWFrZQo+ICAgICBpZWVlODAyMTFfY2FsY190eF9haXJ0aW1lX3Jh
dGUoKSBzdGF0aWMgKGtidWlsZGJvdCkuCj4gICAtIFVzZSBza2JfZ2V0X3F1ZXVlX21hcHBpbmco
KSB0byBnZXQgdGhlIEFDIGZyb20gdGhlIHNrYi4KPiAgIC0gVGFrZSBiYXNpYyByYXRlIGNvbmZp
Z3VyYXRpb24gZm9yIHRoZSBCU1MgaW50byBhY2NvdW50IHdoZW4gY2FsY3VsYXRpbmcKPiAgICAg
bXVsdGljYXN0IHJhdGUuCj4gdjQ6Cj4gICAtIEZpeCBjYWxjdWxhdGlvbiB0aGF0IGNsYW1wcyB0
aGUgbWF4aW11bSBhaXJ0aW1lIHRvIGZpdCBpbnRvIDEwIGJpdHMKPiAgIC0gSW5jb3Jwb3JhdGUg
UmljaCBCcm93bidzIG5pdHMgZm9yIHRoZSBjb21taXQgbWVzc2FnZSBpbiBLYW4ncyBwYXRjaAo+
ICAgLSBBZGQgZmV3ZXIgbG9jYWwgdmFyaWFibGVzIHRvIGllZWU4MDIxMV90eF9kZXF1ZXVlKCkK
PiB2MzoKPiAgIC0gTW92ZSB0aGUgdHhfdGltZV9lc3QgZmllbGQgc28gaXQncyBzaGFyZWQgd2l0
aCBhY2tfZnJhbWVfaWQsIGFuZCB1c2UgdW5pdHMKPiAgICAgb2YgNHVzIGZvciB0aGUgdmFsdWUg
c3RvcmVkIGluIGl0Lgo+ICAgLSBNb3ZlIHRoZSBhZGRpdGlvbiBvZiB0aGUgRXRoZXJuZXQgaGVh
ZGVyIHNpemUgaW50byBpZWVlODAyMTFfY2FsY19leHBlY3RlZF90eF9haXJ0aW1lKCkKPiB2MjoK
PiAgIC0gSW50ZWdyYXRlIEthbidzIGFwcHJvYWNoIHRvIGFpcnRpbWUgdGhyb3R0bGluZy4KPiAg
IC0gSG9wZWZ1bGx5IGZpeCB0aGUgY2Igc3RydWN0IGFsaWdubWVudCBvbiBiaWctZW5kaWFuIGFy
Y2hpdGVjdHVyZXMuCj4KPiAtLS0KPgo+IEthbiBZYW4gKDEpOgo+ICAgICAgIG1hYzgwMjExOiBJ
bXBsZW1lbnQgQWlydGltZS1iYXNlZCBRdWV1ZSBMaW1pdCAoQVFMKQo+Cj4gVG9rZSBIw7hpbGFu
ZC1Kw7hyZ2Vuc2VuICgzKToKPiAgICAgICBtYWM4MDIxMTogU2hyaW5rIHRoZSBzaXplIG9mIGFj
a19mcmFtZV9pZCB0byBtYWtlIHJvb20gZm9yIHR4X3RpbWVfZXN0Cj4gICAgICAgbWFjODAyMTE6
IEltcG9ydCBhaXJ0aW1lIGNhbGN1bGF0aW9uIGNvZGUgZnJvbSBtdDc2Cj4gICAgICAgbWFjODAy
MTE6IFVzZSBBaXJ0aW1lLWJhc2VkIFF1ZXVlIExpbWl0cyAoQVFMKSBvbiBwYWNrZXQgZGVxdWV1
ZQo+Cj4KPiAgaW5jbHVkZS9uZXQvY2ZnODAyMTEuaCAgICAgfCAgICA3ICsKPiAgaW5jbHVkZS9u
ZXQvbWFjODAyMTEuaCAgICAgfCAgIDQ1ICsrKysrCj4gIG5ldC9tYWM4MDIxMS9NYWtlZmlsZSAg
ICAgIHwgICAgMwo+ICBuZXQvbWFjODAyMTEvYWlydGltZS5jICAgICB8ICAzOTAgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgbmV0L21hYzgwMjExL2NmZy5j
ICAgICAgICAgfCAgICAyCj4gIG5ldC9tYWM4MDIxMS9kZWJ1Z2ZzLmMgICAgIHwgICA3OCArKysr
KysrKysKPiAgbmV0L21hYzgwMjExL2RlYnVnZnNfc3RhLmMgfCAgIDQzICsrKystCj4gIG5ldC9t
YWM4MDIxMS9pZWVlODAyMTFfaS5oIHwgICAgOCArCj4gIG5ldC9tYWM4MDIxMS9tYWluLmMgICAg
ICAgIHwgICAgOSArCj4gIG5ldC9tYWM4MDIxMS9zdGFfaW5mby5jICAgIHwgICAzMiArKysrCj4g
IG5ldC9tYWM4MDIxMS9zdGFfaW5mby5oICAgIHwgICAgOCArCj4gIG5ldC9tYWM4MDIxMS9zdGF0
dXMuYyAgICAgIHwgICAzMyArKysrCj4gIG5ldC9tYWM4MDIxMS90eC5jICAgICAgICAgIHwgICA2
OSArKysrKysrLQo+ICAxMyBmaWxlcyBjaGFuZ2VkLCA3MDkgaW5zZXJ0aW9ucygrKSwgMTggZGVs
ZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBuZXQvbWFjODAyMTEvYWlydGltZS5jCj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBt
YWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
