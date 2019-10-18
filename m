Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BD9DBB3E
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 03:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0wHpIVna94MujdV4FXwDcXotqGy8Wkvv72eW26QoGY=; b=dse8QfZOYEpgOr
	YCnEFBRJFShJcbAIRVUFIEDVh68xE6qTVA2cyn1GNhIYaeZJFzdJh6XzQg/AfE2jDtMJbJnYuSY5Q
	Y2uLjt479L+j8wk8H5LcqNglblvpt+mTvw8vko1CS9fz8SGZajpPFOp6PbRxyuuBRRdG3VXVF3gfK
	qdBQhoTc3GEXyiF4wMYSpsNovj5elmO1v3+zjmH8UGFxC+ADw5KTwMESFxl7vDCcdFXlMztDx8uzb
	nXD6dMwfvVASe77cybrRoP7YqMWurVWE2T1+MiQaf0DCkKxim9/KjyNI87Ac0VBub22fINoZKq5lu
	/GmxTgP3Dl9mA5rlyI8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLGo1-0002ZX-JZ; Fri, 18 Oct 2019 01:11:49 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLGny-0002Z2-Bb
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 01:11:47 +0000
Received: by mail-lj1-x244.google.com with SMTP id y23so4430544lje.9
 for <ath10k@lists.infradead.org>; Thu, 17 Oct 2019 18:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QC1w77VZRCYH8hERen99ZGhUOT4e8Ag48k7m9duGNJo=;
 b=piwlDLGZJ2Cjg5TDHivlsZpECNNmqLdCMmpZe1A4OcvQGqGztVVdfZIoEsk2tzKBgG
 cqN1SN9tDlPEInQP+Wg+3bioBjX81z7HujES5bQqRNbJRlhpOAfYRmINYj2JZBy4BoZb
 lkB14g86Hlt2Egqoxtt6boWW2eC8CM2mM/t3dHyV2Mi4fxkKV8KZBS0qi6XN13Ao7KMQ
 NqXNHLBPSeGSfsGT1m7+lMWCnjKej/rZFZrBcR7TjHqvWhdhQIhsgssTGFlmp6E9Mms6
 9mMTeWdc8HUzKJDFeuQzaedaCXEOq8uyjevAz24XCkzhPN38yhCzDu7OCe3jGIx9GQU4
 DAzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QC1w77VZRCYH8hERen99ZGhUOT4e8Ag48k7m9duGNJo=;
 b=GEjxoDb5OKUnDeK776Ge2sivQ7Zvba6+nVpbAa5HiTBHEZHQhlSc+Sc45pL/SAPegM
 nLJ0xq70necGEPWoSA28/A+Xn7sbQL/9PkSKWLNTY2VN8kl+5Xd+U9uqc/43wQmXawsD
 mEwB11sLjM5UWxMz3awWfF2hITTcHtTLRFdVjIxBFjam04TQu58+fGSknkNYz127Vy9t
 OqeOph1UW0NJRkgIeAJ9V5rKsIh4oy1SwKZ5Tkta9x3vki5pydA9++6gb3HfcGooaofN
 vgjW8fBqbZm9nL0wS3pChhiYN3PGx/50LWtg2kyWjaMzVM9q0OyIjdE0EJtm1z2NzrRl
 IH9w==
X-Gm-Message-State: APjAAAWYl24WZc0KRcl2UbFpx2QetI9o2TnVpv5VA+Fd3pVt0p8Xr1Gg
 ljiDmiggaWq5iOrdqeUxIezPhsjjAqtPwYN4tWFpuA==
X-Google-Smtp-Source: APXvYqxckgV4ZGs3rGfnunRJYCJMzCOaIPPUPpsiIF3aa1tlLcfzaUqCsmN9gDIs18anyfHar+FxQrohUwR2xwC3gn0=
X-Received: by 2002:a05:651c:112e:: with SMTP id
 e14mr4200386ljo.193.1571361100416; 
 Thu, 17 Oct 2019 18:11:40 -0700 (PDT)
MIME-Version: 1.0
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115994190.2500430.14955682016008497593.stgit@toke.dk>
 <CA+iem5s=xbzZ5goaBO4tZWUKVQRaXb+SnB34NPCppej9mi8sAA@mail.gmail.com>
 <87o8yfg0zo.fsf@toke.dk> <751EA059-654B-4E06-A3D6-C727FE1FCE98@gmx.de>
 <87lftjfz51.fsf@toke.dk> <18FC6F1D-084C-44BD-87E7-C9F394D6FCD1@gmx.de>
In-Reply-To: <18FC6F1D-084C-44BD-87E7-C9F394D6FCD1@gmx.de>
From: Kan Yan <kyan@google.com>
Date: Thu, 17 Oct 2019 18:11:29 -0700
Message-ID: <CA+iem5v-K0pA9WLfDNxBKVjufgH=2MeuGmV0aDJysLT8jdawAQ@mail.gmail.com>
Subject: Re: [Make-wifi-fast] [PATCH v2 4/4] mac80211: Use Airtime-based Queue
 Limits (AQL) on packet dequeue
To: Sebastian Moeller <moeller0@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_181146_424137_6A9C3FA2 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

SSBkb24ndCB0aGluayBpdCBpcyBoYXJkIHRvIHRha2UgY2FyZSBvZiBleHRyYSBoZWFkZXIgc2l6
ZSBmb3IgZnJhbWVzCndpdGggVkxBTiB0YWdzLCBidXQgdGhlIHF1ZXN0aW9uIGlzIGhvdyBmYXIg
YXJlIHdlIHdpbGxpbmcgdG8gZ28gZG93bgp0aGlzIHJhYmJpdCBob2xlLiBUaGVyZSBhcmUgb3Ro
ZXIgZmFjdG9ycyBsaWtlIHJldHJpZXMgYW5kIGFnZ3JlZ2F0aW9uCnRoYXQgYXJlIGRpZmZpY3Vs
dCB0byBiZSB0YWtlbiBpbnRvIGFjY291bnQuIEhvd2V2ZXIsIEkgZG91YnQgdGhhdAptYXR0ZXJz
LCBhIGJhbGxwYXJrIGVzdGltYXRlIG9mIGFpcnRpbWUgaXMgc3VmZmljaWVudCBmb3IgdGhlIHB1
cnBvc2UKb2YgaW1wbGVtZW50aW5nIGEgcXVldWUgbGltaXQuCgpPbiBUaHUsIE9jdCAxNywgMjAx
OSBhdCAzOjI1IEFNIFNlYmFzdGlhbiBNb2VsbGVyIDxtb2VsbGVyMEBnbXguZGU+IHdyb3RlOgo+
Cj4gV2hhdCBhYm91dCBWTEFOIHRhZ3M/Cj4KPiBCZXN0IFJlZ2FyZHMKPiAgICAgICAgIFNlYmFz
dGlhbgo+Cj4gPiBPbiBPY3QgMTcsIDIwMTksIGF0IDEyOjI0LCBUb2tlIEjDuGlsYW5kLUrDuHJn
ZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPgo+ID4gU2ViYXN0aWFuIE1vZWxsZXIg
PG1vZWxsZXIwQGdteC5kZT4gd3JpdGVzOgo+ID4KPiA+Pj4gT24gT2N0IDE3LCAyMDE5LCBhdCAx
MTo0NCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyb3RlOgo+
ID4+Pgo+ID4+PiBLYW4gWWFuIDxreWFuQGdvb2dsZS5jb20+IHdyaXRlczoKPiA+Pj4KPiA+Pj4+
IEhpIFRva2UsCj4gPj4+Pgo+ID4+Pj4gVGhhbmtzIGZvciBnZXR0aW5nIHRoaXMgZG9uZSEgSSB3
aWxsIGdpdmUgaXQgYSB0cnkgaW4gdGhlIG5leHQgZmV3Cj4gPj4+PiBkYXlzLiAgQSBmZXcgY29t
bWVudHM6Cj4gPj4+Pgo+ID4+Pj4+IFRoZSBlc3RpbWF0ZWQgYWlydGltZSBmb3IgZWFjaCBza2Ig
aXMgc3RvcmVkIGluIHRoZSB0eF9pbmZvLCBzbyB3ZSBjYW4KPiA+Pj4+PiBzdWJ0cmFjdCB0aGUg
c2FtZSBhbW91bnQgZnJvbSB0aGUgcnVubmluZyB0b3RhbCB3aGVuIHRoZSBza2IgaXMgZnJlZWQg
b3IKPiA+Pj4+PiByZWN5Y2xlZC4KPiA+Pj4+Cj4gPj4+PiBMb29rcyBsaWtlIGF0aDEwayBkcml2
ZXIgemVybyBvdXQgdGhlIGluZm8tPnN0YXR1cyBiZWZvcmUgY2FsbGluZwo+ID4+Pj4gaWVlZTgw
MjExX3R4X3N0YXR1cyguLi4pOgo+ID4+Pj4gaW50IGF0aDEwa190eHJ4X3R4X3VucmVmKHN0cnVj
dCBhdGgxMGtfaHR0ICpodHQsCj4gPj4+PiAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0
cnVjdCBodHRfdHhfZG9uZSAqdHhfZG9uZSkKPiA+Pj4+IHsKPiA+Pj4+IC4uLgo+ID4+Pj4gICAg
ICAgaW5mbyA9IElFRUU4MDIxMV9TS0JfQ0IobXNkdSk7Cj4gPj4+PiAgICAgICBtZW1zZXQoJmlu
Zm8tPnN0YXR1cywgMCwgc2l6ZW9mKGluZm8tPnN0YXR1cykpOwo+ID4+Pj4gLi4uCj4gPj4+PiAg
ICAgICBpZWVlODAyMTFfdHhfc3RhdHVzKGh0dC0+YXItPmh3LCBtc2R1KTsKPiA+Pj4+IH0KPiA+
Pj4KPiA+Pj4gQWgsIGJ1Z2dlcjsgSSB3YXMgYWZyYWlkIHdlJ2QgcnVuIGludG8gdGhpcy4gQSBx
dWljayBncmVwIGluZGljYXRlcyB0aGF0Cj4gPj4+IGl0J3Mgb25seSBhdGgxMGsgYW5kIGl3bCB0
aGF0IGRvIHRoaXMsIHRob3VnaCwgc28gaXQncyBwcm9iYWJseQo+ID4+PiBtYW5hZ2VhYmxlIHRv
IGp1c3QgZml4IHRoaXMuIEkgdGhpbmsgdGhlIHNpbXBsZXN0IHNvbHV0aW9uIGlzIGp1c3QgdG8K
PiA+Pj4gcmVzdG9yZSB0aGUgZmllbGQgYWZ0ZXIgY2xlYXJpbmcsIG5vPwo+ID4+Pgo+ID4+Pj4g
V2UgbmVlZCBlaXRoZXIgcmVzdG9yZSB0aGUgaW5mby0+c3RhdHVzLnR4X3RpbWVfZXN0IG9yIGNh
bGxpbmcKPiA+Pj4+IGllZWU4MDIxMV9zdGFfdXBkYXRlX3BlbmRpbmdfYWlydGltZSgpIGluIGF0
aDEwayBiZWZvcmUgdHhfdGltZV9lc3QKPiA+Pj4+IGdldCBlcmFzZWQuCj4gPj4+Pgo+ID4+Pj4+
ICsgICAgICAgaWYgKGxvY2FsLT5haXJ0aW1lX2ZsYWdzICYgQUlSVElNRV9VU0VfQVFMKSB7Cj4g
Pj4+Pj4gKyAgICAgICAgICAgICAgIGFpcnRpbWUgPSBpZWVlODAyMTFfY2FsY19leHBlY3RlZF90
eF9haXJ0aW1lKGh3LCB2aWYsIHR4cS0+c3RhLAo+ID4+Pj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBza2ItPmxlbiArIDM4KTsK
PiA+Pj4+Cj4gPj4+PiBJIHRoaW5rIGl0IGlzIGJldHRlciB0byBwdXQgdGhlICIrICAzOCIgdGhh
dCB0YWtlcyBjYXJlIG9mIHRoZSBoZWFkZXIKPiA+Pj4+IG92ZXJoZWFkIGluc2lkZSBpZWVlODAy
MTFfY2FsY19leHBlY3RlZF90eF9haXJ0aW1lKCkuCj4gPj4+Cj4gPj4+IEhtbSwgbm8gc3Ryb25n
IG9waW5pb24gYWJvdXQgdGhpczsgYnV0IHllYWgsIHNpbmNlIHdlIGhhdmUgYSBkZWRpY2F0ZWQK
PiA+Pj4gZnVuY3Rpb24gZm9yIHRoaXMgdXNlIEkgZ3Vlc3MgdGhlcmUncyBubyBoYXJtIGluIGFk
ZGluZyBpdCB0aGVyZSA6KQo+ID4+Pgo+ID4+Cj4gPj4gU2lsbHkgcXVlc3Rpb24sIGlzIHRoaXMg
T3ZlcmhlYWQgZ3VhcmFudGVlZCB0byBiZSAzOCBCeXRlcyBmb3IgYWxsCj4gPj4gZXRlcm5pdHk/
IE90aGVyd2lzZSBhIHZhcmlhYmxlIG9yIGEgcHJlcHJvY2Vzc29yIGNvbnN0YW50IG1pZ2h0IGJl
Cj4gPj4gbW9yZSBmdXR1cmUgcHJvb2Y/Cj4gPgo+ID4gV2VsbCwgeWVhaCwgYXMgbG9uZyBhcyB3
ZSdyZSBzZW5kaW5nIEV0aGVybmV0IHBhY2tldHMuIFdoaWNoIGlzIGtpbmRhCj4gPiBiYWtlZCBp
bnRvIHRoZSBXaUZpIHN0YW5kYXJkIDopCj4gPgo+ID4gLVRva2UKPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgx
MGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2F0aDEwawo=
