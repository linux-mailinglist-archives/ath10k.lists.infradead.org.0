Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB84DC73B
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 16:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnKs6Udalqls/8AvYn85q1H+kHZMYxe3Y7JtKIDkvC0=; b=RigmzxCPXt1fsN
	Q/RCtaAQ6J9Zaw77U0U35b+17YmckJTCsQaghPtsWLkx3/UT8U47x5YQpRjuFv6Es+ira52NoVwqy
	7mTPZ9KCcsV7FIT/lgRZVofjsOXnTu/ezMirCRlkDkwhw6FrEmBemBlog+zY+v531twu0XAXpVKUs
	KlGCaoX7GsV9/fk71daRvUWRQDRdzMi+Z3YOZ6eg0Yl9PfrHCFmRT61vTg7kVw5o2STkNoxukGUpc
	ofFo4e20hD3Aw0+vZYVYUWtjc5aDTfZ5T+HdCuoy9mWHzo8Gcwh/TBoIOSrd2lvj5QHwq3sTKe7VJ
	RgUF0fAk3q7Wf1qn22zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLT94-0000Ia-QH; Fri, 18 Oct 2019 14:22:22 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLT91-0000IE-Ui
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 14:22:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571408538;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CZJB5jgfqOkbA3pAcKVegphLG5lxMMLqppKUI+v+NT0=;
 b=Hif1k7pLT/Gx/6uJe+02IFcuD8dU10UkQf4Tq2vEJAIcAHnqB5ol0oYS4CqcJdCWYFgGYB
 k3owWmsGa7cl6S0CNP6qTwU191yNMjhkUXwDQGt5iQtVV+2+dGaKxR6nALtIF7r2wqSEAd
 A4xcSjkn8gXpmDfqpO8DeqcYlb78Rrw=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-120-xWopGxntMUuNmJe9x_WH-g-1; Fri, 18 Oct 2019 10:22:17 -0400
Received: by mail-lf1-f71.google.com with SMTP id m17so1314726lfl.11
 for <ath10k@lists.infradead.org>; Fri, 18 Oct 2019 07:22:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=WFSLNDo34e/hQ4mMaXqwSinumGcSHTA3VPI9PdShktc=;
 b=Ub+tc/Y/xsxcDO8dBh8lEa0jK6hmZooDFhnB5xUF8L3eI+wnYJFm0GwkzHmExE6yu4
 4dSwyV6cMwuySP4HpOVVr0rzMHwllnjO+nej/iC3Li12r1ofE5Fm9lwrFq78HwiRGjS2
 erk7fUW+W402opzB06S1RpF8PZz61qVHPgwxQ0DEbhNDCBqmFsIKdGXWVmpSUnkDMcWT
 yXXdX7aOfTscn+WiY6ZzuPKhQcesQku2KNOFGn/OH0GGL9gv2XH8lliC5SWR70ZEvB1T
 0yGaGdnCUEgFtTlWuOzOCD1u0I7aAqPb1NFjQtwZKplfWTlnh2592b4TGeTz9kQwQvJw
 wFdg==
X-Gm-Message-State: APjAAAX3e92x+G5KoO965vldq2X8byf3ASHsBczOsU8l6CJgNvWAAfmK
 VyXyEURedbokROWWJNhT6RNbwV96TzuNHpLqdvOYwERIUUkAiSFVKxxFSLjRQ0Wvl39JAHlmbMC
 UIYNn6Wrk7JdcTtT/TQBbVw==
X-Received: by 2002:a19:22c4:: with SMTP id i187mr5926908lfi.152.1571408535629; 
 Fri, 18 Oct 2019 07:22:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxqkwQ+FzoYv6pBFiWwEhgsIA1mrDfY6EuiAaZf0ZL91B2Z9tof0t8W9lR0jkYi1be643oQ1Q==
X-Received: by 2002:a19:22c4:: with SMTP id i187mr5926898lfi.152.1571408535451; 
 Fri, 18 Oct 2019 07:22:15 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id g3sm2667601lja.61.2019.10.18.07.22.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 07:22:14 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 0FF491804B6; Fri, 18 Oct 2019 16:22:14 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>, Kan Yan <kyan@google.com>
Subject: Re: [PATCH v2 1/4] mac80211: Rearrange ieee80211_tx_info to make room
 for tx_time_est
In-Reply-To: <e2c54294fa5ac7b48e6099b47385a5f4df0859ce.camel@sipsolutions.net>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115993866.2500430.13989567853855880476.stgit@toke.dk>
 <CA+iem5t6xghBocck864nDX2snWQ5O+v6_M2Jc9aCdn_hE+mFCA@mail.gmail.com>
 <87sgnqe4wg.fsf@toke.dk>
 <10b885b3238cede2d99c6134bebcc0c8ba6f6b10.camel@sipsolutions.net>
 <87imomdvsj.fsf@toke.dk>
 <9fc60b546b54b40357264d67536733251cf39ebe.camel@sipsolutions.net>
 <87d0eudufu.fsf@toke.dk>
 <e2c54294fa5ac7b48e6099b47385a5f4df0859ce.camel@sipsolutions.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 18 Oct 2019 16:22:14 +0200
Message-ID: <87a79ydtgp.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: xWopGxntMUuNmJe9x_WH-g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_072220_061251_D80F44BC 
X-CRM114-Status: GOOD (  13.46  )
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
Cc: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sm9oYW5uZXMgQmVyZyA8am9oYW5uZXNAc2lwc29sdXRpb25zLm5ldD4gd3JpdGVzOgoKPiBPbiBG
cmksIDIwMTktMTAtMTggYXQgMTY6MDEgKzAyMDAsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3
cm90ZToKPgo+PiBSaWdodC4gV2VsbCBpbiB0aGF0IGNhc2UsIGxldCdzIHRyeSBpdC4gQXMgbG9u
ZyBhcyB3ZSBmYWlsIGluIGEKPj4gcmVhc29uYWJsZSB3YXksIHdlIGNhbiBqdXN0IHNlZSBpZiB3
ZSBydW4gaW50byBhbnl0aGluZyB0aGF0IGJyZWFrcz8gSQo+PiBndWVzcyBpbiB0aGlzIGNhc2Ug
dGhhdCBtZWFucyByZWplY3RpbmcgcmVxdWVzdHMgZnJvbSB1c2Vyc3BhY2UgaWYgd2UKPj4gcnVu
IG91dCBvZiBJRHMgcmF0aGVyIHRoYW4gc2lsZW50bHkgd3JhcHBpbmcgYW5kIHJldHVybmluZyB3
cm9uZyBkYXRhIDopCj4KPiBXZSBjYW4ndCByZWplY3QgZHVlIHRvIGhvdyB0aGlzIHdvcmtzLCBi
dXQgaWYgdGhlIGlkcl9hbGxvYygpIGZhaWxzIHRoZW4KPiB3ZSdsbCBqdXN0IG5vdCBnaXZlIGEg
c3RhdHVzIGJhY2sgdG8gdXNlcnNwYWNlIGxhdGVyLgoKT0ssIEkgZ3Vlc3Mgc29tZW9uZSB3aWxs
IG5vdGljZSBpZiB0aGF0IHN1ZGRlbmx5IHN0YXJ0cyBoYXBwZW5pbmcgYWxsCnRoZSB0aW1lIDsp
Cgo+PiA+ID4gV2UgY291bGQgYWxzbyBzcGxpdCA1LzExLiBUaGF0IHdvdWxkIHN1cHBvcnQgdXAg
dG8gMzIgQUNLIElEcywgYW5kIHdlCj4+ID4gPiBjYW4ganVzdCB0cnVuY2F0ZSB0aGUgYWlydGlt
ZSBhdCAyMDQ4IHVzLCB3aGljaCBpcyBub3QgYSBiaWcgZGVhbCBJJ2QKPj4gPiA+IHNheS4KPj4g
PiAKPj4gPiBXZSBjYW4gYWxzbyBwbGF5IHdpdGggdGhlIHVuaXRzIG9mIHRoZSBhaXJ0aW1lLCBl
LmcuIG1ha2luZyB0aGF0IGEKPj4gPiBtdWx0aXBsZSBvZiAyIG9yIDQgdXM/IFNlZW1zIHVubGlr
ZWx5IHRvIG1hdHRlciBtdWNoPwo+PiAKPj4gU3VyZSwgdGhhdCdzIGEgZ29vZCBwb2ludCEgSW5j
cmVtZW50cyBvZiA0dXMgbWVhbnMgd2UgY2FuIGZpdCA0bXMgaXMgMTAKPj4gYml0cywgbGVhdmlu
ZyBwbGVudHkgb2Ygc3BhY2UgZm9yIEFDSyBJRHMgKGhvcGVmdWxseSkuCj4+IAo+PiBJJ2xsIHJl
d29yayB0aGUgc2VyaWVzIHRvIHVzZSB0aGF0IGluc3RlYWQgOikKPgo+IE9LLgo+Cj4gVGhlcmUg
YXJlIHR3byBwbGFjZXMgdGhhdCBjYWxsIGlkcl9hbGxvYygpIHdpdGggYSBoYXJkY29kZWQgbGlt
aXQgb2YKPiAweDEwMDAwLCB5b3UnbGwgaGF2ZSB0byBmaXggdGhvc2UgdG8gaGF2ZSB0aGUgcmln
aHQgbGltaXQgYWNjb3JkaW5nIHRvCj4gdGhlIGJpdHMgeW91IGxlYXZlIGZvciB0aGUgQUNLIGlk
LgoKWXVwLCBmb3VuZCB0aG9zZS4gV2lsbCBzZW5kIGEgbmV3IHZlcnNpb24gb2YgdGhlIHNlcmll
cyBpbiBhIGJpdC4KCi1Ub2tlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
