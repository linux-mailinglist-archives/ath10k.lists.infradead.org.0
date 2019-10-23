Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E9BE1FA7
	for <lists+ath10k@lfdr.de>; Wed, 23 Oct 2019 17:43:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKGR9+iheKFF+0IRK/l+1/m6BSegYiJAnDkZJvxlepg=; b=MQMwOrXOLZpe/t
	Xrw8p8S1M0xAkjPezD0a71BFpQlyCbhr4hC/eu4Bmwd+Yc+RITBYmBAkW4IKKmJBb3XHCD7Npb0jW
	gizJ9z4YcqwHxclKWQj48nie26/4Q+MZFyANUpdWrSdi3Dp/zDds56/dLdjMVbIfK8BqxgFpOvf1Y
	5rD3awc/E47rxZ3/dgBPUmcXnV84kSz6qsF8aVF2aUncWiYp4+R/UA5tZ5yycnS0sEBeRci4eH1dh
	gFdfdcTOf2Gst4d8p4PrTjaLPdp6bIfo45mA1mHh9SqykJ0JBKscJ/N3ZzmQcuhJAmuzcmDQbEPjh
	494GPhVKxyAxwvbtj6Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNIn9-0002yv-Fy; Wed, 23 Oct 2019 15:43:19 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNIn6-0002yZ-PG
 for ath10k@lists.infradead.org; Wed, 23 Oct 2019 15:43:18 +0000
Received: by mail-lj1-x241.google.com with SMTP id q78so6506243lje.5
 for <ath10k@lists.infradead.org>; Wed, 23 Oct 2019 08:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Wf7cqgLpHpMCfHDTso2mEEg6iVGE1A3AlSMCK0EZOvI=;
 b=MeL78PzzFc4GWTGjttUER3eajJiHAfiXzG8G1Xek8riNLS0Akb3EyaIF8kCjplCBvC
 e8PdIOrGlpPr64UiYnljhSyeNwzpyq1+SmkBqsKNqfnIjx/7/WUm7V18gqSZfq6qXpjy
 HSSFn0i5dZw0hwcdKmrjoc8j36P/bg/LP5qNws123c15xYetsbls2kJVLs9fGDiHpzTp
 NTAbYCE9/adTig9wIUFJSciEu5YjcNmNc29oi5wz79zXLWWwMOEF2YCmKSle0etLBDjV
 RPybKBRkcQRNKCdFp6+vsH/DZ/Jg6//ynFzwearQSIDF3fO2sX+/o3KRHWOwcJvzxVXH
 952A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Wf7cqgLpHpMCfHDTso2mEEg6iVGE1A3AlSMCK0EZOvI=;
 b=dMyBqSwEmJC9DzHon6Jqd8MGqk1c6HLuvHqONYDetFh9GvberCa0x38rEtO9Gaw4eY
 dDcQU6uqpbV+9zdXYaV3kl+LgHKYEZkCd2qDbVnDkAMcG5DN1KwOFz/ZwpvaiSYurXHm
 FHCdulYZEWCMOAPztNQUnqkhJcrzoByrgVivCPYaFXAIMXaArpxrCjEVQb85oFfmM/C1
 dzsEMazLn8KGjATZKJS0Yi+LsCOuy/M4dUlEq33N/oSMBDfLa8DWv5tvCMbtwA9FR81d
 SUCITbSEu8521TBRDsEA28pLrKQreSu/JZFvu+m9ED4tzYqQgVEJAZWjOMSw0fWAg+HY
 JOWw==
X-Gm-Message-State: APjAAAXG/TLxJYuMtlfnd6ts8wuLs3Lyptzsel1ai1frS1dSl1vTkFYF
 XqysqMtLu3ZVmkw9WN9rCNA9w1BrTLf2E5CNf4vWxg==
X-Google-Smtp-Source: APXvYqx3Qvv4PHdZrvwXrE+LY1lvoApw+SX5kuGkePq0Hg3y9W9edqODxW4WERwR4EtQWzHdvirS2CmRTMj3y2hm1yI=
X-Received: by 2002:a05:651c:326:: with SMTP id
 b6mr7678893ljp.119.1571845394424; 
 Wed, 23 Oct 2019 08:43:14 -0700 (PDT)
MIME-Version: 1.0
References: <157148503415.2989444.7391437309981941226.stgit@toke.dk>
 <157148503865.2989444.7118792679603045723.stgit@toke.dk>
 <CA+iem5sy16=xMZjJi1nKHrxP_xWHk-86G=ZLwtMMb04EOt5tQA@mail.gmail.com>
 <871rv5ovwr.fsf@toke.dk>
 <CA+iem5tZ95Jd9htLEdAJMubuFeWeUibK9MhTnTHLWNucX6_cRg@mail.gmail.com>
 <87tv7znact.fsf@toke.dk> <87lftbn60t.fsf@toke.dk>
In-Reply-To: <87lftbn60t.fsf@toke.dk>
From: Kan Yan <kyan@google.com>
Date: Wed, 23 Oct 2019 08:43:03 -0700
Message-ID: <CA+iem5tbSFyY0pS5Ufb8Ch=y3UGR_iuX_8ao9=2iS05-MozQwA@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_084316_847538_88E5B215 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

PiBBaGEhIFR1cm5zIG91dCBJIHdhcyBkb2luZyB0aGUgc3RhIGxvb2t1cCBjb21wbGV0ZWx5IHdy
b25nIGluCj4gaWVlZTgwMjExX3JlcG9ydF91c2VkX3NrYigpOyBzbyBhbnl0aGluZyBmcmFtZXMg
dGhhdCB3ZXJlIGRyb3BwZWQgYW5kCj4gd2VudCB0aHJvdWdoIHRoZXJlIHdvdWxkIG5vdCBnZXQg
aXRzIGFpcnRpbWUgc3VidHJhY3RlZCBjb3JyZWN0bHkuIFdpbGwKPiBzZW5kIGEgdjYgd2l0aCBh
IGZpeCA6KQoKQXdlc29tZSwgdGhhbmtzISBUaGF0IGxvb2tzIHZlcnkgcHJvbWlzaW5nLiAgVGhl
IHN5bXB0b20gSSBzZWUgd2l0aApwcmV2aW91cyBwYXRjaCBpcyB0aGUgaW50ZXJmYWNlJ3MgcGVu
ZGluZyBhaXJ0aW1lIGNvdW50IGxvb2tzIGZpbmUsCmJ1dCB0aGUgc3RhdGlvbidzIGFpcnRpbWUg
Z2V0IHdyb25nLCBlaXRoZXIgZHVlIHRvIGFpcnRpbWUgaXMgY3JlZGl0ZWQKdG8gdGhlIHdyb25n
IHN0YXRpb24gb3Igd3JvbmcgQUMuCgpPbiBXZWQsIE9jdCAyMywgMjAxOSBhdCAyOjUyIEFNIFRv
a2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPgo+IFRva2Ug
SMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPiB3cml0ZXM6Cj4KPiA+IEthbiBZ
YW4gPGt5YW5AZ29vZ2xlLmNvbT4gd3JpdGVzOgo+ID4KPiA+Pj4gPj4gKyAgICAgICAgICAgICAg
IGlmIChpZWVlODAyMTFfaXNfZGF0YV9xb3MoaGRyLT5mcmFtZV9jb250cm9sKSkgewo+ID4+PiA+
PiArICAgICAgICAgICAgICAgICAgICAgICBxYyA9IGllZWU4MDIxMV9nZXRfcW9zX2N0bChoZHIp
Owo+ID4+PiA+PiArICAgICAgICAgICAgICAgICAgICAgICB0aWQgPSBxY1swXSAmIDB4ZjsKPiA+
Pj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgYWMgPSBpZWVlODAyMTFfYWNfZnJvbV90aWQo
dGlkKTsKPiA+Pj4gPj4gKyAgICAgICAgICAgICAgIH0gZWxzZSB7Cj4gPj4+ID4+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGFjID0gSUVFRTgwMjExX0FDX0JFOwo+ID4+PiA+PiArICAgICAgICAg
ICAgICAgfQo+ID4+PiA+Cj4gPj4+ID4gVGhlIHRpZC9hYyBpcyBpbmNvcnJlY3QgZWl0aGVyIGhl
cmUgb3IgaW4gX19pZWVlODAyMTFfdHhfc3RhdHVzKCkgd2hlbgo+ID4+PiA+IHRlc3RlZCB3aXRo
IGF0aDEway4gVGhlIGFjIGlzIHNldCB0byBBQ19CRSB3aXRoIHRlc3QgZG9uZSB1c2luZyBCSwo+
ID4+PiA+IGNsYXNzIHRyYWZmaWMsIGhlbmNlIHRoZSBwZW5kaW5nIGFpcnRpbWUgZ2V0IHVwZGF0
ZWQgZm9yIHRoZSB3cm9uZwo+ID4+PiA+IHR4cS4KPiA+Pj4KPiA+Pj4gSHVoLCB3ZWxsIHRoYXQg
d29uJ3QgZG8sIG9idmlvdXNseSA6KQo+ID4+Pgo+ID4+PiBBbnkgaWRlYSB3aHkgaXQgbWlnaHQg
YmUgd3Jvbmc/Cj4gPj4KPiA+PiBzb21laG93ICBpZWVlODAyMTFfaXNfZGF0YV9xb3MoKSByZXR1
cm5zIGZhbHNlLiBCZXNpZGVzLCAgcW9zX2NvbnRyb2wKPiA+PiBmaWVsZCBkb2Vzbid0IHNlZW1z
IHRvIGJlIHNldCBpbiBpZWVlODAyMTFfYnVpbGRfaGRyKCkuCj4gPj4KPiA+Pj4gSG1tLCBJIGd1
ZXNzIHdlIGNvdWxkIGp1c3QgZ2V0IHRoZSBhYyB1c2luZyBza2JfZ2V0X3F1ZXVlX21hcHBpbmco
KS4KPiA+Pj4gSSdsbCBzZW5kIGFuIHVwZGF0ZSB3aXRoIHRoaXMgZml4ZWQgZm9yIHlvdSB0byB0
cnkgOikKPiA+PiBUaGFua3MgZm9yIHRoZSBxdWljayB1cGRhdGUuIEl0IGlzIGdldHRpbmcgbXVj
aCBiZXR0ZXIsIGJ1dAo+ID4+IHVuZm9ydHVuYXRlbHkgdGhlIHBlbmRpbmcgYWlydGltZSBhY2Nv
dW50aW5nIHNvbWV0aW1lcyBpcyBzdGlsbCBub3QKPiA+PiBjb3JyZWN0IGFuZCBjYXVzZSB0eHEg
c3R1Y2sgb2NjYXNpb25hbGx5Lgo+ID4KPiA+IE9LLCBzbyB0aGF0IGhhcyB0byBtZWFuIHRoYXQg
dGhlcmUgYXJlIHBhY2tldHMgZ2V0dGluZyBkcm9wcGVkIHNvbWV3aGVyZQo+ID4gd2l0aG91dCBn
b2luZyB0aHJvdWdoIGllZWU4MDIxMV9yZXBvcnRfdXNlZF9za2IoKS4gQXNzdW1pbmcgeW91J3Jl
IG5vdAo+ID4gaGl0dGluZyB0aGUgdW5kZXJmbG93IHdhcm5pbmdzLCBqdXN0IHNlZWluZyB0aGUg
Y291bnRlciBub3QgZ2V0IGJhY2sKPiA+IGRvd24gdG8gemVybz8KPiA+Cj4gPiBDb3VsZCB5b3Ug
c2VlIGlmIHlvdSBjYW4gZmluZCBvdXQgaWYgYXRoMTBrIGRvZXMgdGhhdCBhbnl3aGVyZT8gSSds
bCBnbwo+ID4gaHVudGluZyBpbiBtYWM4MDIxMS4KPiA+Cj4gPiBMb29raW5nIGZvciBjYWxscyB0
byBrZnJlZV9za2IoKSBvciBrZnJlZV9za2JfbGlzdCgpIHNob3VsZCBob3BlZnVsbHkKPiA+IHR1
cm4gdXAgc29tZXRoaW5nLi4uCj4KPiBBaGEhIFR1cm5zIG91dCBJIHdhcyBkb2luZyB0aGUgc3Rh
IGxvb2t1cCBjb21wbGV0ZWx5IHdyb25nIGluCj4gaWVlZTgwMjExX3JlcG9ydF91c2VkX3NrYigp
OyBzbyBhbnl0aGluZyBmcmFtZXMgdGhhdCB3ZXJlIGRyb3BwZWQgYW5kCj4gd2VudCB0aHJvdWdo
IHRoZXJlIHdvdWxkIG5vdCBnZXQgaXRzIGFpcnRpbWUgc3VidHJhY3RlZCBjb3JyZWN0bHkuIFdp
bGwKPiBzZW5kIGEgdjYgd2l0aCBhIGZpeCA6KQo+Cj4gLVRva2UKPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgx
MGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2F0aDEwawo=
