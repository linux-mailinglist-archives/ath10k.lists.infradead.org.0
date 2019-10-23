Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDEDE16A8
	for <lists+ath10k@lfdr.de>; Wed, 23 Oct 2019 11:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrc0fd9o5rzBs3bcFEJ+jMJT992x/thrpCQoHb98jsc=; b=h296D5UJvnYwLO
	eE2LWMkAbAi3OQl/wVQyUKtPKrqubFzZYlo6hI4Ur/zeROjrIirxcl1RwdXgILeKBYjvaftVpFCW6
	hp0+N7j2uOdObO9lpEeIQfy+K8oVb2ngJbBz0csuiNpkwnoA8VGwsA/20h/yOUvR1StVLh68eOUzQ
	VtffMJHIAq3LuvWJdzV9CcOtp9V6uUK0y9eC/PDkPvLOeMZV67iOqLnCvI0nxMyXlL9mJR5se4BgJ
	tFjq2Pe6/nNmCMVD+eJI9Pndn3dKOkNHdtpyiCtEbLCEt7VRilR+VziYSKwWDn3k6JC4vy7GkUp/K
	OuSRpzAQQ6an365tAhLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNDJT-0007v7-Ud; Wed, 23 Oct 2019 09:52:19 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNDJM-0007lC-GU
 for ath10k@lists.infradead.org; Wed, 23 Oct 2019 09:52:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571824330;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/5Gd+sGRTLO/YyPTwPaFlOWjYLG6/P4AaU01cq86LiI=;
 b=YzTzeTCmGG5pRDL4mhW0PXTyji+Ch2DgsoGSTdX5bUbdQCPxrifdpLslYcAYnfF8Jq/tOI
 FAmBf5pcBmEOADr7F+4DTNhsVNsqmYZIxj+QjxpZ0aI+ImIwsSkstvfOUbTRaQ+1I7D8qt
 0ZWM+WSQMJCmCj748s4FwoFL+zxfcEU=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-v64ej-yuOc-IaO9IIIHilw-1; Wed, 23 Oct 2019 05:52:06 -0400
Received: by mail-lf1-f71.google.com with SMTP id c13so4000682lfk.23
 for <ath10k@lists.infradead.org>; Wed, 23 Oct 2019 02:52:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=hFVDZODcV1pnEtDDIb8UrMv3iIHS2UTtEmv96KMbc7k=;
 b=X/j2ExGmpVfIwo2RFDymPeUW4CwfDJcreFB3MoL3jibZcW3V2PhOEHk3Iqz1dqprU9
 l4SevO5NChDarslHpak02UkltdSdSBDsi59O6BaWZFPbA3R4p38mlMJS2ui8+7LDRsQA
 fjKOOzhEusr+TmwUvHEm1SmRGEmBp9bKh0IxAT2o6xOW8IGIdWJ608z8UPHP46+ZAT4O
 eHg8dJUZWelCGUNeEa1kONSZl0UE8Hk0+ZbR3hsmjXc/eEEQq5zemhNqabFG9FEQUlJV
 c6tWNicL65W6xlwdZusWfxT4w+v2nqwy4flm1RDVg1tJ6dH808e3qGC+8aMdvE3l5SL/
 JmHQ==
X-Gm-Message-State: APjAAAWWnBNwX8aPV0xm16X/qKkyh0BdLQ+x69GlalLAZT2cJ9x+WF1K
 3IDIby9DgwUZNb+9eKkCXJDVY/O05Wqh6rEmD6VcqUJVlUAVdQYzHjUn0U0QiXF7KgzrjIIwH4Z
 plVrii4BXmLsjFYac+55kfA==
X-Received: by 2002:a2e:9107:: with SMTP id m7mr6003961ljg.113.1571824324909; 
 Wed, 23 Oct 2019 02:52:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwfTq6OyuPRjrUqdJ+q6pELeZDh85Gk4HQhTKpMvjbXzGrJtsr2TVw1Ipp+RRdcPFqc3KuU/w==
X-Received: by 2002:a2e:9107:: with SMTP id m7mr6003952ljg.113.1571824324735; 
 Wed, 23 Oct 2019 02:52:04 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id u24sm5939167ljl.64.2019.10.23.02.52.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 02:52:03 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id C05CD1804B1; Wed, 23 Oct 2019 11:52:02 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v4 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
In-Reply-To: <87tv7znact.fsf@toke.dk>
References: <157148503415.2989444.7391437309981941226.stgit@toke.dk>
 <157148503865.2989444.7118792679603045723.stgit@toke.dk>
 <CA+iem5sy16=xMZjJi1nKHrxP_xWHk-86G=ZLwtMMb04EOt5tQA@mail.gmail.com>
 <871rv5ovwr.fsf@toke.dk>
 <CA+iem5tZ95Jd9htLEdAJMubuFeWeUibK9MhTnTHLWNucX6_cRg@mail.gmail.com>
 <87tv7znact.fsf@toke.dk>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 23 Oct 2019 11:52:02 +0200
Message-ID: <87lftbn60t.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: v64ej-yuOc-IaO9IIIHilw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_025212_645653_EC68CFD0 
X-CRM114-Status: GOOD (  11.26  )
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

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyaXRlczoKCj4gS2Fu
IFlhbiA8a3lhbkBnb29nbGUuY29tPiB3cml0ZXM6Cj4KPj4+ID4+ICsgICAgICAgICAgICAgICBp
ZiAoaWVlZTgwMjExX2lzX2RhdGFfcW9zKGhkci0+ZnJhbWVfY29udHJvbCkpIHsKPj4+ID4+ICsg
ICAgICAgICAgICAgICAgICAgICAgIHFjID0gaWVlZTgwMjExX2dldF9xb3NfY3RsKGhkcik7Cj4+
PiA+PiArICAgICAgICAgICAgICAgICAgICAgICB0aWQgPSBxY1swXSAmIDB4ZjsKPj4+ID4+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGFjID0gaWVlZTgwMjExX2FjX2Zyb21fdGlkKHRpZCk7Cj4+
PiA+PiArICAgICAgICAgICAgICAgfSBlbHNlIHsKPj4+ID4+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGFjID0gSUVFRTgwMjExX0FDX0JFOwo+Pj4gPj4gKyAgICAgICAgICAgICAgIH0KPj4+ID4K
Pj4+ID4gVGhlIHRpZC9hYyBpcyBpbmNvcnJlY3QgZWl0aGVyIGhlcmUgb3IgaW4gX19pZWVlODAy
MTFfdHhfc3RhdHVzKCkgd2hlbgo+Pj4gPiB0ZXN0ZWQgd2l0aCBhdGgxMGsuIFRoZSBhYyBpcyBz
ZXQgdG8gQUNfQkUgd2l0aCB0ZXN0IGRvbmUgdXNpbmcgQksKPj4+ID4gY2xhc3MgdHJhZmZpYywg
aGVuY2UgdGhlIHBlbmRpbmcgYWlydGltZSBnZXQgdXBkYXRlZCBmb3IgdGhlIHdyb25nCj4+PiA+
IHR4cS4KPj4+Cj4+PiBIdWgsIHdlbGwgdGhhdCB3b24ndCBkbywgb2J2aW91c2x5IDopCj4+Pgo+
Pj4gQW55IGlkZWEgd2h5IGl0IG1pZ2h0IGJlIHdyb25nPwo+Pgo+PiBzb21laG93ICBpZWVlODAy
MTFfaXNfZGF0YV9xb3MoKSByZXR1cm5zIGZhbHNlLiBCZXNpZGVzLCAgcW9zX2NvbnRyb2wKPj4g
ZmllbGQgZG9lc24ndCBzZWVtcyB0byBiZSBzZXQgaW4gaWVlZTgwMjExX2J1aWxkX2hkcigpLgo+
Pgo+Pj4gSG1tLCBJIGd1ZXNzIHdlIGNvdWxkIGp1c3QgZ2V0IHRoZSBhYyB1c2luZyBza2JfZ2V0
X3F1ZXVlX21hcHBpbmcoKS4KPj4+IEknbGwgc2VuZCBhbiB1cGRhdGUgd2l0aCB0aGlzIGZpeGVk
IGZvciB5b3UgdG8gdHJ5IDopCj4+IFRoYW5rcyBmb3IgdGhlIHF1aWNrIHVwZGF0ZS4gSXQgaXMg
Z2V0dGluZyBtdWNoIGJldHRlciwgYnV0Cj4+IHVuZm9ydHVuYXRlbHkgdGhlIHBlbmRpbmcgYWly
dGltZSBhY2NvdW50aW5nIHNvbWV0aW1lcyBpcyBzdGlsbCBub3QKPj4gY29ycmVjdCBhbmQgY2F1
c2UgdHhxIHN0dWNrIG9jY2FzaW9uYWxseS4KPgo+IE9LLCBzbyB0aGF0IGhhcyB0byBtZWFuIHRo
YXQgdGhlcmUgYXJlIHBhY2tldHMgZ2V0dGluZyBkcm9wcGVkIHNvbWV3aGVyZQo+IHdpdGhvdXQg
Z29pbmcgdGhyb3VnaCBpZWVlODAyMTFfcmVwb3J0X3VzZWRfc2tiKCkuIEFzc3VtaW5nIHlvdSdy
ZSBub3QKPiBoaXR0aW5nIHRoZSB1bmRlcmZsb3cgd2FybmluZ3MsIGp1c3Qgc2VlaW5nIHRoZSBj
b3VudGVyIG5vdCBnZXQgYmFjawo+IGRvd24gdG8gemVybz8KPgo+IENvdWxkIHlvdSBzZWUgaWYg
eW91IGNhbiBmaW5kIG91dCBpZiBhdGgxMGsgZG9lcyB0aGF0IGFueXdoZXJlPyBJJ2xsIGdvCj4g
aHVudGluZyBpbiBtYWM4MDIxMS4KPgo+IExvb2tpbmcgZm9yIGNhbGxzIHRvIGtmcmVlX3NrYigp
IG9yIGtmcmVlX3NrYl9saXN0KCkgc2hvdWxkIGhvcGVmdWxseQo+IHR1cm4gdXAgc29tZXRoaW5n
Li4uCgpBaGEhIFR1cm5zIG91dCBJIHdhcyBkb2luZyB0aGUgc3RhIGxvb2t1cCBjb21wbGV0ZWx5
IHdyb25nIGluCmllZWU4MDIxMV9yZXBvcnRfdXNlZF9za2IoKTsgc28gYW55dGhpbmcgZnJhbWVz
IHRoYXQgd2VyZSBkcm9wcGVkIGFuZAp3ZW50IHRocm91Z2ggdGhlcmUgd291bGQgbm90IGdldCBp
dHMgYWlydGltZSBzdWJ0cmFjdGVkIGNvcnJlY3RseS4gV2lsbApzZW5kIGEgdjYgd2l0aCBhIGZp
eCA6KQoKLVRva2UKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
