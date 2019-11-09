Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2F9F5CB0
	for <lists+ath10k@lfdr.de>; Sat,  9 Nov 2019 02:23:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdxKjVhf5z2tYkCp/TUOdVBIJ6xwvkTD4r0lkW2gJbA=; b=oC55e/e2ovShqC
	CHUJ2xssjjK2H4Za6+JzulmcFCpTKu8XxWX/hc44RZz3RwfgbR1uu7PT+HUy39ecdhcNH/akkFRVl
	Ja6nF0ubjlzQiZnttnWCS73cFrZQdMKGWpMPa1M5yperlqrQB6kvaezMSBmSWeZ2okaLtspWkdjJG
	PcuGtbGuwIrszHirSUZN1unntLzSks/8FftHOj6vFyaDA7G8VnqkOC3qD6yo+ch+THPgVQgbMtX5N
	FTlJA57Rw9nTbEuonRENqiDBCzvrDZ3DnDZMjG6SLG+YLw3S+vMV5IPZ6xJvfM/l8rvuOqytsBj3Z
	3tNLcfpjB58Ex23Aca0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTFSr-0005rd-HU; Sat, 09 Nov 2019 01:22:57 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTFSn-0005qt-QH
 for ath10k@lists.infradead.org; Sat, 09 Nov 2019 01:22:55 +0000
Received: by mail-lf1-x143.google.com with SMTP id o65so2161595lff.13
 for <ath10k@lists.infradead.org>; Fri, 08 Nov 2019 17:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wPXyqZBACPt2T8JabE4s0igf2vH/Qf9iXz5fOc/g31A=;
 b=KaCfKXPf9tclQGg3xbw0RP8zIY19/2N7+HspE9hY+ndU+h4disr4tT5Bf0aNZolhSQ
 /mkmKrGdP45uwLYAo7glcfUp5zsMVCkXcwzx3Jdqt10N4Cvw7tyFA8ogAB9j7MnlTSZb
 MyajoVYU6YLhXDNS38lDuVj2l6W0TCRRFvJfXmAJEiM+qMpcov7zMPMRQFRXof1Z3kHH
 FbI9yoL0lCtsztv2jCASaiyumAdWzv3p1LwNo3t+zbFfwyOqx/dzVdwWYJdANEnkQIba
 kj0Ga/10Bl9C62V8e9LwreSMqBg90IH55OGLfaxJYXPqvrNRvJl31RH4+pN+yV3jFFQo
 w+dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wPXyqZBACPt2T8JabE4s0igf2vH/Qf9iXz5fOc/g31A=;
 b=okjUsmmgWfOQe1kH/CRtHewMr4hlTr345DKKWUySxIiChTFUNkDt767L5ySdz4eSqq
 ehkdtJl7nEUvi70dJ+Wei52SX0YQVhf8m25vYjvTZ3cA9tIkViLEbG8NiAaIY2TfvzbX
 HKlhJpAYypTjSVvjiIcxl+DkDAS1UyXXi4lGo+NDiFGlhDzcGkNC81QTf1FA//kEOm+u
 9WZBNbQdNnj23i3evrdwKNqvVkivxCQLhRJ621caKq0GhdAyg+0LPmw8Rizem3pgeq3j
 qRW/11Kg11q8UuSRs9j1wk0UwT2mad/Gosk8FBZtxrQ11SkYRHxkHlVAG4CKubfsFZxS
 h1sw==
X-Gm-Message-State: APjAAAUmePnPlQ+Ix/o1Ye9IAYOZjCb8xxExSlgeAOUXvKkSTRZyPrb3
 i5B2pYSPjYOsDTQU5DqYpSXNqirzad/EyYiUfhpdvw==
X-Google-Smtp-Source: APXvYqzcFLo69QaprJxtW7QMFzk0LEtt8oG4AUIf8h9IGzZQ4qgLpbLfpusrfQ5D8khH8QL1egEqTvs1kOD48rXrM1Q=
X-Received: by 2002:a19:5010:: with SMTP id e16mr2851614lfb.49.1573262569148; 
 Fri, 08 Nov 2019 17:22:49 -0800 (PST)
MIME-Version: 1.0
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
 <157182474287.150713.12867638269538730397.stgit@toke.dk>
 <1a2eb096119c9029e67caf797564d6511c8803a7.camel@sipsolutions.net>
 <87a796fxgd.fsf@toke.dk>
 <f395a9a971ca1a0d0438fca10dfb160c421caa7a.camel@sipsolutions.net>
 <874kzefwt3.fsf@toke.dk>
 <300bf0146db6c0d5890699b3911d35174d28c9c0.camel@sipsolutions.net>
In-Reply-To: <300bf0146db6c0d5890699b3911d35174d28c9c0.camel@sipsolutions.net>
From: Kan Yan <kyan@google.com>
Date: Fri, 8 Nov 2019 17:22:38 -0800
Message-ID: <CA+iem5saT0ntxnSV1ZatFuRRcaBzivkQ_MU66ZdV1kfb1dC6Qg@mail.gmail.com>
Subject: Re: [PATCH v6 3/4] mac80211: Implement Airtime-based Queue Limit (AQL)
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_172253_881802_88CDB09A 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
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
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

SXQgaXMgbW9zdCBsaWtlbHkganVzdCBpbnN1ZmZpY2llbnQgbG9ja2luZy4gYWN0aXZlX3R4cV9s
b2NrIGlzIHBlcgpBQywgY2FuJ3QgcHJvdGVjdCBsb2NhbC0+YXFsX3RvdGFsX3BlbmRpbmdfYWly
dGltZSBhZ2FpbnN0IHJhY2luZwpjb25kaXRpb25zOgp2b2lkIGllZWU4MDIxMV9zdGFfdXBkYXRl
X3BlbmRpbmdfYWlydGltZSguLi4pCnsKICAgICAgICBzcGluX2xvY2tfYmgoJmxvY2FsLT5hY3Rp
dmVfdHhxX2xvY2tbYWNdKTsKICAgICAgICAuLi4KICAgICAgICBsb2NhbC0+YXFsX3RvdGFsX3Bl
bmRpbmdfYWlydGltZSAtPSB0eF9haXJ0aW1lOwogICAgICAgIC4uLgogICAgICAgIHNwaW5fdW5s
b2NrX2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7Cn0KCkFmdGVyIGNoYW5naW5nIGl0
IHRvIGF0b21pY190LCBubyBtb3JlIGFxbF90b3RhbF9wZW5kaW5nX2FpcnRpbWUKdW5kZXJmbG93
IHNvIGZhciA6KS4gVXNpbmcgYXRvbWljIG9wZXJhdGlvbiBzaG91bGQgYWxzbyBoZWxwIHJlZHVj
ZQpDUFUgb3ZlcmhlYWQgZHVlIHRvIGxvY2sgY29udGVudGlvbiwgYXMKaWVlZTgwMjExX3N0YV91
cGRhdGVfcGVuZGluZ19haXJ0aW1lKCkgaXMgb2Z0ZW4gY2FsbGVkIGZyb20gdGhlIHR4CmNvbXBs
ZXRpb24gcm91dGluZSB0cmlnZ2VyZWQgYnkgaW50ZXJydXB0cywgb2Z0ZW4gaW4gYSBkaWZmZXJl
bnQgY29yZQp0aGFuIHdoZXJlIF9faWVlZTgwMjExX3NjaGVkdWxlX3R4cSgpIGlzIHJ1bm5pbmcu
CgpJIHdpbGwgcG9zdCBhIG5ldyB2ZXJzaW9uIGEgYml0IGxhdGVyIGlmIHRoZSB0ZXN0IGdvZXMg
d2VsbC4KClJlZ2FyZHMsCkthbgoKCk9uIEZyaSwgTm92IDgsIDIwMTkgYXQgMzoxNyBBTSBKb2hh
bm5lcyBCZXJnIDxqb2hhbm5lc0BzaXBzb2x1dGlvbnMubmV0PiB3cm90ZToKPgo+IE9uIEZyaSwg
MjAxOS0xMS0wOCBhdCAxMjoxMCArMDEwMCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3Rl
Ogo+Cj4gPiBSaWdodCwgYnVnZ2VyLiBJIHdhcyB0aGlua2luZyBtYXliZSB0aGVyZSdzIGEgY2Fz
ZSB3aGVyZSBza2JzIGNhbiBiZQo+ID4gY2xvbmVkIChhbmQgcmV0YWluIHRoZSB0eF90aW1lX2Vz
dCBmaWVsZCkgYW5kIHRoZW4gcmVsZWFzZWQgdHdpY2U/Cj4KPiBUaGV5IGNvdWxkIGJlIGNsb25l
ZCwgYnV0IEkgZG9uJ3Qgc2VlIGhvdyB0aGF0J2QgYmUgd2hpbGUgKmluc2lkZSogdGhlCj4gc3Rh
Y2sgYW5kIHRoZW4gdGhleSBnZXQgcmVwb3J0ZWQgdHdpY2UgLSB1bmxlc3MgdGhlIGRyaXZlciBk
aWQgc29tZXRoaW5nCj4gbGlrZSB0aGF0Pwo+Cj4gSSBtZWFuLCBUQ1Agc3VyZWx5IGRvZXMgdGhh
dCBmb3IgZXhhbXBsZSwgYnV0IGl0J3MgYmVmb3JlIHdlIGV2ZW4gZ2V0IHRvCj4gbWFjODAyMTEu
Cj4KPiA+IE9yCj4gPiBtYXliZSBzb21ld2hlcmUgdGhhdCBzdGVwcyBvbiB0aGUgc2tiLT5jYiBm
aWVsZCBpbiBzb21lIG90aGVyIHdheT8KPiA+IENvdWxkbid0IGZpbmQgYW55dGhpbmcgb2J2aW91
cyBvbiBhIGZpcnN0IHBlcnVzYWwgb2YgdGhlIFRYIHBhdGggY29kZSwKPiA+IGJ1dCBtYXliZSB5
b3UgY291bGQgdGhpbmsgb2Ygc29tZXRoaW5nPwo+Cj4gTm8sIHNvcnJ5LiBCdXQgSSBhbHNvIGRp
ZG4ndCBhY3R1YWxseSBsb29rIGF0IHRoZSBkcml2ZXIgYXQgYWxsLgo+Cj4gPiBPdGhlcndpc2Ug
SSBndWVzcyB3ZSdsbCBiZSBmb3JjZWQgdG8gZ28gYW5kIGRvIHNvbWUgYWN0dWFsLAo+ID4gb2xk
LWZhc2hpb25lZCBkZWJ1Z2dpbmcgOykKPgo+IDopCj4KPiBqb2hhbm5lcwo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0
CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
