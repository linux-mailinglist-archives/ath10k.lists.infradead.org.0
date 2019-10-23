Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A883E1254
	for <lists+ath10k@lfdr.de>; Wed, 23 Oct 2019 08:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UmXomAehGaZMq6aAznHtB0CTiXArxRjceBJ2P1UPhvY=; b=LYMAHCV4d7GM4C
	q4gUcdEzmkCUZ7lGZlgKxgb42nQFRSynYObmwaeOwgEys0SNiFKA2tYYiTi7hFvPwaDsMFBZYOeWQ
	AhTiCuNUPHdsMQIqKeFgSs3fiH6HWKoqwdkJQFBqbbLOO57Kux/1Fgh2/wbO+b139E8mxXoJeZecN
	tc6JhtVwMnom8sD7Vl9T+QPElWAmtY2+o0q/LQc0b/nFSroCEyv334WaJheBi6zYxnWfvoOsEqGyl
	+pqc4DRi+j6EqKHhARWO/hzdidLaZR1qqUWgOfCEaqXuGK8lvskHIIbCaokBDnEom8l21IZ9qM+gW
	LDPy6h8qRr4lUbxLHREw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNALO-0005VO-VE; Wed, 23 Oct 2019 06:42:06 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNALL-0005Uc-Ce
 for ath10k@lists.infradead.org; Wed, 23 Oct 2019 06:42:04 +0000
Received: by mail-lj1-x243.google.com with SMTP id q64so19772947ljb.12
 for <ath10k@lists.infradead.org>; Tue, 22 Oct 2019 23:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xLzPgNOZ8X14gfCEvYWsxDF01OFUZfoQjcWDyuoGltc=;
 b=LJWHaiQc/q6Hg9z63NPV0MjMzWfOhKO0ey++fb4OkDyjZxD45pVUtUWBaO1/A2Qw2d
 RJd7oMRFkK9acDzP60fuBo6rXfXFDBhRQNsaSsYvkYETY+Y//R9nqZUBljNNONlm2JRJ
 fA/4lfnnSbauy8m0CvVAUs+97DA1Lf3yvlh2Ek0wox9gA1zBdoGbHsm6eJ5bUAmzQbNq
 +CZzAgGbM6Pffjp8WhndhgV/FPWBbAZP77u09c6zMgkfR77ity9Rx2DfjWwUpJsmAL1g
 TDWItxlH08H4EGtDcM+O35SFI3kDJZEl/vvqCBaLjWr7MkbwhQW3690smPgjvwVTpcrg
 pThA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xLzPgNOZ8X14gfCEvYWsxDF01OFUZfoQjcWDyuoGltc=;
 b=OKehSlgOJUImE/+DPHbZ8bC0fvde4fmB9WcfZ2JQ/T7nL3I+vNKZRSliC4OStwY2/l
 l0ktbGAvOAmWARuOhZVHHzVwp7lTiWY6C9MU7XiVyFPUxN4TkSUTokGoukUitcUefTP0
 GiPYN96eYdAjozdCAne/rOgaFU3ttfTujweYuJE8XZiKMsCAv5rQvjrG1QM5n9SuykpP
 FalK56BwFCsg7FfHxsap0c7WXBlsNS49lIiMcjxgj9qJCT+w1FUYZA/FTNVrtPK3qzrc
 eXkvCyLhAUHAhWF98alUOlk/0KoWnqBFprRpofKKECx/UWMWF7UyrIlMI7ep/U5jDeHu
 XOoQ==
X-Gm-Message-State: APjAAAUReow8F4Ok6Z46sQqLoS6m0SeaKVIqzlBqhHv0iv22FcKyLcDP
 8XWUF79ikQFuER4yLgEMBcoqEShNgMSni1lTaxKGwh9bPeAjBw==
X-Google-Smtp-Source: APXvYqwbYShriZrtOfH5CKHMRI9ZjT56L9KXRHcmYVKve8FvpLfX1msZDukO1Wkvr96pb24xb7V1qDQkpFKWU15F9BQ=
X-Received: by 2002:a2e:9759:: with SMTP id f25mr21512398ljj.173.1571812918369; 
 Tue, 22 Oct 2019 23:41:58 -0700 (PDT)
MIME-Version: 1.0
References: <157148503415.2989444.7391437309981941226.stgit@toke.dk>
 <157148503865.2989444.7118792679603045723.stgit@toke.dk>
 <CA+iem5sy16=xMZjJi1nKHrxP_xWHk-86G=ZLwtMMb04EOt5tQA@mail.gmail.com>
 <871rv5ovwr.fsf@toke.dk>
In-Reply-To: <871rv5ovwr.fsf@toke.dk>
From: Kan Yan <kyan@google.com>
Date: Tue, 22 Oct 2019 23:41:47 -0700
Message-ID: <CA+iem5tZ95Jd9htLEdAJMubuFeWeUibK9MhTnTHLWNucX6_cRg@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_234203_430750_6AD01615 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

PiA+PiArICAgICAgICAgICAgICAgaWYgKGllZWU4MDIxMV9pc19kYXRhX3FvcyhoZHItPmZyYW1l
X2NvbnRyb2wpKSB7Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgcWMgPSBpZWVlODAyMTFf
Z2V0X3Fvc19jdGwoaGRyKTsKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICB0aWQgPSBxY1sw
XSAmIDB4ZjsKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICBhYyA9IGllZWU4MDIxMV9hY19m
cm9tX3RpZCh0aWQpOwo+ID4+ICsgICAgICAgICAgICAgICB9IGVsc2Ugewo+ID4+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGFjID0gSUVFRTgwMjExX0FDX0JFOwo+ID4+ICsgICAgICAgICAgICAg
ICB9Cj4gPgo+ID4gVGhlIHRpZC9hYyBpcyBpbmNvcnJlY3QgZWl0aGVyIGhlcmUgb3IgaW4gX19p
ZWVlODAyMTFfdHhfc3RhdHVzKCkgd2hlbgo+ID4gdGVzdGVkIHdpdGggYXRoMTBrLiBUaGUgYWMg
aXMgc2V0IHRvIEFDX0JFIHdpdGggdGVzdCBkb25lIHVzaW5nIEJLCj4gPiBjbGFzcyB0cmFmZmlj
LCBoZW5jZSB0aGUgcGVuZGluZyBhaXJ0aW1lIGdldCB1cGRhdGVkIGZvciB0aGUgd3JvbmcKPiA+
IHR4cS4KPgo+IEh1aCwgd2VsbCB0aGF0IHdvbid0IGRvLCBvYnZpb3VzbHkgOikKPgo+IEFueSBp
ZGVhIHdoeSBpdCBtaWdodCBiZSB3cm9uZz8KCnNvbWVob3cgIGllZWU4MDIxMV9pc19kYXRhX3Fv
cygpIHJldHVybnMgZmFsc2UuIEJlc2lkZXMsICBxb3NfY29udHJvbApmaWVsZCBkb2Vzbid0IHNl
ZW1zIHRvIGJlIHNldCBpbiBpZWVlODAyMTFfYnVpbGRfaGRyKCkuCgo+IEhtbSwgSSBndWVzcyB3
ZSBjb3VsZCBqdXN0IGdldCB0aGUgYWMgdXNpbmcgc2tiX2dldF9xdWV1ZV9tYXBwaW5nKCkuCj4g
SSdsbCBzZW5kIGFuIHVwZGF0ZSB3aXRoIHRoaXMgZml4ZWQgZm9yIHlvdSB0byB0cnkgOikKVGhh
bmtzIGZvciB0aGUgcXVpY2sgdXBkYXRlLiBJdCBpcyBnZXR0aW5nIG11Y2ggYmV0dGVyLCBidXQK
dW5mb3J0dW5hdGVseSB0aGUgcGVuZGluZyBhaXJ0aW1lIGFjY291bnRpbmcgc29tZXRpbWVzIGlz
IHN0aWxsIG5vdApjb3JyZWN0IGFuZCBjYXVzZSB0eHEgc3R1Y2sgb2NjYXNpb25hbGx5LgoKCgoK
Ck9uIFR1ZSwgT2N0IDIyLCAyMDE5IGF0IDQ6MzUgQU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu
IDx0b2tlQHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gS2FuIFlhbiA8a3lhbkBnb29nbGUuY29tPiB3
cml0ZXM6Cj4KPiA+PiArICAgICAgICAgICAgICAgaWYgKGllZWU4MDIxMV9pc19kYXRhX3Fvcyho
ZHItPmZyYW1lX2NvbnRyb2wpKSB7Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgcWMgPSBp
ZWVlODAyMTFfZ2V0X3Fvc19jdGwoaGRyKTsKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICB0
aWQgPSBxY1swXSAmIDB4ZjsKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICBhYyA9IGllZWU4
MDIxMV9hY19mcm9tX3RpZCh0aWQpOwo+ID4+ICsgICAgICAgICAgICAgICB9IGVsc2Ugewo+ID4+
ICsgICAgICAgICAgICAgICAgICAgICAgIGFjID0gSUVFRTgwMjExX0FDX0JFOwo+ID4+ICsgICAg
ICAgICAgICAgICB9Cj4gPgo+ID4gVGhlIHRpZC9hYyBpcyBpbmNvcnJlY3QgZWl0aGVyIGhlcmUg
b3IgaW4gX19pZWVlODAyMTFfdHhfc3RhdHVzKCkgd2hlbgo+ID4gdGVzdGVkIHdpdGggYXRoMTBr
LiBUaGUgYWMgaXMgc2V0IHRvIEFDX0JFIHdpdGggdGVzdCBkb25lIHVzaW5nIEJLCj4gPiBjbGFz
cyB0cmFmZmljLCAgaGVuY2UgdGhlIHBlbmRpbmcgYWlydGltZSBnZXQgdXBkYXRlZCBmb3IgdGhl
IHdyb25nCj4gPiB0eHEuCj4KPiBIbW0sIEkgZ3Vlc3Mgd2UgY291bGQganVzdCBnZXQgdGhlIGFj
IHVzaW5nIHNrYl9nZXRfcXVldWVfbWFwcGluZygpLgo+IEknbGwgc2VuZCBhbiB1cGRhdGUgd2l0
aCB0aGlzIGZpeGVkIGZvciB5b3UgdG8gdHJ5IDopCj4KPiAtVG9rZQo+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0
aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYXRoMTBrCg==
