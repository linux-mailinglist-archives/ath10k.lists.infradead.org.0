Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D65DBB19
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 02:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+BhBMt0UPNNFEK1OMRK/a6ihTZGVu77SG+SEg0JE+0=; b=r/XugNoUm2SSkl
	aR5uGRKPKAWveGF3yDagKzxrDL3jEcAktnkpKKfpOwZO2L/6UI0ntay0uJ/ya+UFdGrFGw1uavvSB
	53niEWwUpkco7vJpAkcjG36cVBnAx7KpvnqW+b2yxfapy3yWmXVfvXBZyVjSMuaYggrGAVRkNHnDl
	Tj3vpjP37Lie/gUP34MH2ZV8eX+tFZLp0UsflmFHPFdlX15Vr5IiiOlfmoS2QDlRr+VgD60kA0ph0
	x+CS7JUAgxg2ptp2tVdS/HezSol3MhrF3D9QY/dw/vEZGxgskQyzV3wJ22aA2sdgJ2qD3nDphj+cI
	JXe+XR25BcuF0JXDmVKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLGU7-0004lf-21; Fri, 18 Oct 2019 00:51:15 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLGU2-0004kh-JC
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 00:51:12 +0000
Received: by mail-lj1-x242.google.com with SMTP id m7so4435283lji.2
 for <ath10k@lists.infradead.org>; Thu, 17 Oct 2019 17:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iSISwMWQRzg7gYQZDYIh1MYDmFm6gFbMUIzdn63eJwU=;
 b=QP0xqjF6DY67L/9suJLLGwl/AvrVD8IKr9fTiVwt6tmpTZjFVQslVcfmBezgjvnYfh
 WaggH29yb505zVIdoU7dqFPnFUm3CMbigyH7Zf56IdO+IfXEqKSkn5zHUl/EsMpzdHWB
 jMoSXXsZGJjuF8v044ZYVbKrWxdUKQCuC2zJcoEgf0GZE2Ia4MQK/gCE3ctqoXUClaBk
 mV5mRI260p8dDPGlvscJ52qBok/XTtWWIXjHktI1BiLRdpglWBfQxNdl4AQbezAhhqJv
 s9YZ02IKK0ZBYYzi1aCu2Gn5pCZtlaNF+bIP7B4jwJxWI5Tu5MQUXgQdYBUXUBRExceV
 7A0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iSISwMWQRzg7gYQZDYIh1MYDmFm6gFbMUIzdn63eJwU=;
 b=MOG0GSoIJl7KPs/t5iXkoBgWlN9IGtR8yAMxx7e/fhDP73zKqhlrn5LfkGX3VCmaMi
 AzL8FNQskZjlz1ETBhw3LHy7HrtndLlsuOKEkUVXAmZsNMs6Eg56O965CKQpmaePSgBL
 /4HAkqH2onmdy98ICbcIyr1axh22HIAqU3JMbrncUzea9/7PXThSNiibvFylG77CLOad
 zUJPSJERoxdl/qu39G9Z8MLXMdFOFni27egW1v2NdJdcETpxnNuKOH+3/xMUrUjVRUls
 N9F/i2dOaEUCJ5H5Q05F4v/DNo1tTtOhUO3ROIvR81ZufFdUfNgi8si3sslklfgYYKZ/
 y7cw==
X-Gm-Message-State: APjAAAU8Vf+4lCIfJLyU8wdMxbrb4iB2kYnx/BylqBYGCOHf4a+TVI+9
 p4C6/Ad1PGHTj2/pYr5TyuwmXF5Zpuu9yv4sQyWYZQ==
X-Google-Smtp-Source: APXvYqzqP1PdXmQ5SSn0pQfY8BIQUHJ9okt6UCdSg83dwdeJBSSDcNxdBhuSrwj5YhVGdR5gHUVemkb8GxA9+l7t2uU=
X-Received: by 2002:a2e:2b94:: with SMTP id r20mr4254273ljr.119.1571359865720; 
 Thu, 17 Oct 2019 17:51:05 -0700 (PDT)
MIME-Version: 1.0
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115993866.2500430.13989567853855880476.stgit@toke.dk>
In-Reply-To: <157115993866.2500430.13989567853855880476.stgit@toke.dk>
From: Kan Yan <kyan@google.com>
Date: Thu, 17 Oct 2019 17:50:54 -0700
Message-ID: <CA+iem5t6xghBocck864nDX2snWQ5O+v6_M2Jc9aCdn_hE+mFCA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] mac80211: Rearrange ieee80211_tx_info to make room
 for tx_time_est
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_175110_666970_6D19F167 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

VGhlICJ0eF90aW1lX2VzdCIgZmllbGQsIHNoYXJlZCBieSBjb250cm9sIGFuZCBzdGF0dXMsIGlz
IG5vdCBhYmxlIHRvCnN1cnZpdmUgdW50aWwgdGhlIHNrYiByZXR1cm5zIHRvIHRoZSBtYWM4MDIx
MSBsYXllciBpbiBzb21lCmFyY2hpdGVjdHVyZXMuIFRoZSBzYW1lIHNwYWNlIGlzIGRlZmluZWQg
YXMgZHJpdmVyX2RhdGEgYW5kIHNvbWUKd2lyZWxlc3MgZHJpdmVycyB1c2UgaXQgZm9yIG90aGVy
IHB1cnBvc2VzLCBhcyB0aGUgY2IgaW4gdGhlIHNrX2J1ZmYKaXMgZnJlZSB0byBiZSB1c2VkIGJ5
IGFueSBsYXllci4KCkluIHRoZSBjYXNlIG9mIGF0aDEwaywgdGhlIHR4X3RpbWVfZXN0IGdldCBj
bG9iYmVyZWQgYnkKc3RydWN0IGF0aDEwa19za2JfY2IgewogICAgICAgIGRtYV9hZGRyX3QgcGFk
ZHI7CiAgICAgICAgdTggZmxhZ3M7CiAgICAgICAgdTggZWlkOwogICAgICAgIHUxNiBtc2R1X2lk
OwogICAgICAgIHUxNiBhaXJ0aW1lX2VzdDsKICAgICAgICBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAq
dmlmOwogICAgICAgIHN0cnVjdCBpZWVlODAyMTFfdHhxICp0eHE7Cn0gX19wYWNrZWQ7CgpEbyB5
b3UgdGhpbmsgc2hyaW5rIGRyaXZlcl9kYXRhIGJ5IDIgYnl0ZXMgYW5kIHVzZSB0aGF0IHNwYWNl
IGZvcgp0eF90aW1lX2VzdCB0byBtYWtlIGl0IHBlcnNpc3RlbnQgYWNyb3NzIG1hYzgwMjExIGFu
ZCB3aXJlbGVzcyBkcml2ZXIKbGF5ZXIgYW4gYWNjZXB0YWJsZSBzb2x1dGlvbj8KCkthbgoKCgoK
T24gVHVlLCBPY3QgMTUsIDIwMTkgYXQgMTA6MTkgQU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu
IDx0b2tlQHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vu
c2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4KPiBUbyBpbXBsZW1lbnQgYWlydGltZSBxdWV1ZSBsaW1p
dGluZywgd2UgbmVlZCB0byBrZWVwIGEgcnVubmluZyBhY2NvdW50IG9mCj4gdGhlIGVzdGltYXRl
ZCBhaXJ0aW1lIG9mIGFsbCBza2JzIHF1ZXVlZCBpbnRvIHRoZSBkZXZpY2UuIERvIHRvIHRoaXMK
PiBjb3JyZWN0bHksIHdlIG5lZWQgdG8gc3RvcmUgdGhlIGFpcnRpbWUgZXN0aW1hdGUgaW50byB0
aGUgc2tiIHNvIHdlIGNhbgo+IGRlY3JlYXNlIHRoZSBvdXRzdGFuZGluZyBiYWxhbmNlIHdoZW4g
dGhlIHNrYiBpcyBmcmVlZC4gVGhpcyBtZWFucyB0aGF0IHRoZQo+IHRpbWUgZXN0aW1hdGUgbXVz
dCBiZSBzdG9yZWQgc29tZXdoZXJlIHRoYXQgd2lsbCBzdXJ2aXZlIGZvciB0aGUgbGlmZXRpbWUK
PiBvZiB0aGUgc2tiLgo+Cj4gRm9ydHVuYXRlbHksIHdlIGhhZCBhIGNvdXBsZSBvZiBieXRlcyBs
ZWZ0IGluIHRoZSAnc3RhdHVzJyBmaWVsZCBpbiB0aGUKPiBpZWVlODAyMTFfdHhfaW5mbzsgYW5k
IHNpbmNlIHdlIG9ubHkgcGxhbiB0byBjYWxjdWxhdGUgdGhlIGFpcnRpbWUgZXN0aW1hdGUKPiBh
ZnRlciB0aGUgc2tiIGlzIGRlcXVldWVkIGZyb20gdGhlIEZRIHN0cnVjdHVyZSwgb24gdGhlIGNv
bnRyb2wgc2lkZSB3ZSBjYW4KPiBzaGFyZSB0aGUgc3BhY2Ugd2l0aCB0aGUgY29kZWwgZW5xdWV1
ZSB0aW1lLiBBbmQgYnkgcmVhcnJhbmdpbmcgdGhlIG9yZGVyCj4gb2YgZWxlbWVudHMgaXQgaXMg
cG9zc2libGUgdG8gaGF2ZSB0aGUgcG9zaXRpb24gb2YgdGhlIG5ldyB0eF90aW1lX2VzdCBsaW5l
Cj4gdXAgYmV0d2VlbiB0aGUgY29udHJvbCBhbmQgc3RhdHVzIHN0cnVjdHMsIHNvIHRoZSB2YWx1
ZSB3aWxsIHN1cnZpdmUgZnJvbQo+IHdoZW4gbWFjODAyMTEgaGFuZHMgdGhlIHBhY2tldCB0byB0
aGUgZHJpdmVyLCBhbmQgdW50aWwgdGhlIGRyaXZlciBlaXRoZXIKPiBmcmVlcyBpdCwgb3IgaGFu
ZHMgaXQgYmFjayB0aHJvdWdoIFRYIHN0YXR1cy4KPgo+IFNpZ25lZC1vZmYtYnk6IFRva2UgSMO4
aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgo+IC0tLQo+ICBpbmNsdWRlL25ldC9t
YWM4MDIxMS5oIHwgICAyNiArKysrKysrKysrKysrKysrKysrLS0tLS0tLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL25ldC9tYWM4MDIxMS5oIGIvaW5jbHVkZS9uZXQvbWFjODAyMTEuaAo+IGluZGV4IGQ2
OTA4MWMzODc4OC4uNDlmOGVhMGFmNWY4IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbmV0L21hYzgw
MjExLmgKPiArKysgYi9pbmNsdWRlL25ldC9tYWM4MDIxMS5oCj4gQEAgLTk3NSwyMCArOTc1LDIz
IEBAIGllZWU4MDIxMV9yYXRlX2dldF92aHRfbnNzKGNvbnN0IHN0cnVjdCBpZWVlODAyMTFfdHhf
cmF0ZSAqcmF0ZSkKPiAgICogQGNvbnRyb2wuc2hvcnRfcHJlYW1ibGU6IHVzZSBzaG9ydCBwcmVh
bWJsZSAoQ0NLIG9ubHkpCj4gICAqIEBjb250cm9sLnNraXBfdGFibGU6IHNraXAgZXh0ZXJuYWxs
eSBjb25maWd1cmVkIHJhdGUgdGFibGUKPiAgICogQGNvbnRyb2wuamlmZmllczogdGltZXN0YW1w
IGZvciBleHBpcnkgb24gcG93ZXJzYXZlIGNsaWVudHMKPiArICogQGNvbnRyb2wuZW5xdWV1ZV90
aW1lOiBlbnF1ZXVlIHRpbWUgKGZvciBpVFhRcykKPiArICogQGNvbnRyb2wudHhfdGltZV9lc3Q6
IGVzdGltYXRlZCBhaXJ0aW1lIHVzYWdlIChzaGFyZWQgd2l0aCBAc3RhdHVzKQo+ICsgKiBAY29u
dHJvbC5yZXNlcnZlZDogdW51c2VkIGZpZWxkIHRvIGVuc3VyZSBhbGlnbm1lbnQgb2YgZGF0YSBz
dHJ1Y3R1cmUKPiArICogQGNvbnRyb2wuZmxhZ3M6IGNvbnRyb2wgZmxhZ3MsIHNlZSAmZW51bSBt
YWM4MDIxMV90eF9jb250cm9sX2ZsYWdzCj4gICAqIEBjb250cm9sLnZpZjogdmlydHVhbCBpbnRl
cmZhY2UgKG1heSBiZSBOVUxMKQo+ICAgKiBAY29udHJvbC5od19rZXk6IGtleSB0byBlbmNyeXB0
IHdpdGggKG1heSBiZSBOVUxMKQo+IC0gKiBAY29udHJvbC5mbGFnczogY29udHJvbCBmbGFncywg
c2VlICZlbnVtIG1hYzgwMjExX3R4X2NvbnRyb2xfZmxhZ3MKPiAtICogQGNvbnRyb2wuZW5xdWV1
ZV90aW1lOiBlbnF1ZXVlIHRpbWUgKGZvciBpVFhRcykKPiAgICogQGRyaXZlcl9yYXRlczogYWxp
YXMgdG8gQGNvbnRyb2wucmF0ZXMgdG8gcmVzZXJ2ZSBzcGFjZQo+ICAgKiBAcGFkOiBwYWRkaW5n
Cj4gICAqIEByYXRlX2RyaXZlcl9kYXRhOiBkcml2ZXIgdXNlIGFyZWEgaWYgZHJpdmVyIG5lZWRz
IEBjb250cm9sLnJhdGVzCj4gICAqIEBzdGF0dXM6IHVuaW9uIHBhcnQgZm9yIHN0YXR1cyBkYXRh
Cj4gICAqIEBzdGF0dXMucmF0ZXM6IGF0dGVtcHRlZCByYXRlcwo+ICAgKiBAc3RhdHVzLmFja19z
aWduYWw6IEFDSyBzaWduYWwKPiArICogQHN0YXR1cy50eF90aW1lX2VzdDogZXN0aW1hdGVkIGFp
cnRpbWUgb2Ygc2tiIChzaGFyZWQgd2l0aCBAY29udHJvbCkKPiArICogQHN0YXR1cy50eF90aW1l
OiBhY3R1YWwgYWlydGltZSBjb25zdW1lZCBmb3IgdHJhbnNtaXNzaW9uCj4gICAqIEBzdGF0dXMu
YW1wZHVfYWNrX2xlbjogQU1QRFUgYWNrIGxlbmd0aAo+ICAgKiBAc3RhdHVzLmFtcGR1X2xlbjog
QU1QRFUgbGVuZ3RoCj4gICAqIEBzdGF0dXMuYW50ZW5uYTogKGxlZ2FjeSwga2VwdCBvbmx5IGZv
ciBpd2xlZ2FjeSkKPiAtICogQHN0YXR1cy50eF90aW1lOiBhaXJ0aW1lIGNvbnN1bWVkIGZvciB0
cmFuc21pc3Npb24KPiAgICogQHN0YXR1cy5pc192YWxpZF9hY2tfc2lnbmFsOiBBQ0sgc2lnbmFs
IGlzIHZhbGlkCj4gICAqIEBzdGF0dXMuc3RhdHVzX2RyaXZlcl9kYXRhOiBkcml2ZXIgdXNlIGFy
ZWEKPiAgICogQGFjazogdW5pb24gcGFydCBmb3IgcHVyZSBBQ0sgZGF0YQo+IEBAIC0xMDI2LDEx
ICsxMDI5LDE3IEBAIHN0cnVjdCBpZWVlODAyMTFfdHhfaW5mbyB7Cj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAvKiBvbmx5IG5lZWRlZCBiZWZvcmUgcmF0ZSBjb250cm9sICovCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIGppZmZpZXM7Cj4g
ICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgICAgICAgICAgICB1bmlv
biB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb2RlbF90aW1lX3QgZW5xdWV1
ZV90aW1lOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHsKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdTE2IHR4X3RpbWVfZXN0OyAvKiBz
aGFyZWQgd2l0aCBzdGF0dXMgKi8KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgdTE2IHJlc2VydmVkOyAvKiBwYWRkaW5nIGZvciBhbGlnbm1lbnQgKi8KPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsK
PiArICAgICAgICAgICAgICAgICAgICAgICB1MzIgZmxhZ3M7Cj4gICAgICAgICAgICAgICAgICAg
ICAgICAgLyogTkI6IHZpZiBjYW4gYmUgTlVMTCBmb3IgaW5qZWN0ZWQgZnJhbWVzICovCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGllZWU4MDIxMV92aWYgKnZpZjsKPiAgICAgICAg
ICAgICAgICAgICAgICAgICBzdHJ1Y3QgaWVlZTgwMjExX2tleV9jb25mICpod19rZXk7Cj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgdTMyIGZsYWdzOwo+IC0gICAgICAgICAgICAgICAgICAgICAg
IGNvZGVsX3RpbWVfdCBlbnF1ZXVlX3RpbWU7Cj4gICAgICAgICAgICAgICAgIH0gY29udHJvbDsK
PiAgICAgICAgICAgICAgICAgc3RydWN0IHsKPiAgICAgICAgICAgICAgICAgICAgICAgICB1NjQg
Y29va2llOwo+IEBAIC0xMDM4LDEyICsxMDQ3LDEzIEBAIHN0cnVjdCBpZWVlODAyMTFfdHhfaW5m
byB7Cj4gICAgICAgICAgICAgICAgIHN0cnVjdCB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IGllZWU4MDIxMV90eF9yYXRlIHJhdGVzW0lFRUU4MDIxMV9UWF9NQVhfUkFURVNdOwo+
ICAgICAgICAgICAgICAgICAgICAgICAgIHMzMiBhY2tfc2lnbmFsOwo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIHUxNiB0eF90aW1lX2VzdDsgLyogc2hhcmVkIHdpdGggY29udHJvbCAqLwo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIHUxNiB0eF90aW1lOwo+ICAgICAgICAgICAgICAgICAgICAg
ICAgIHU4IGFtcGR1X2Fja19sZW47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgdTggYW1wZHVf
bGVuOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIHU4IGFudGVubmE7Cj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgdTE2IHR4X3RpbWU7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgYm9vbCBp
c192YWxpZF9hY2tfc2lnbmFsOwo+IC0gICAgICAgICAgICAgICAgICAgICAgIHZvaWQgKnN0YXR1
c19kcml2ZXJfZGF0YVsxOSAvIHNpemVvZih2b2lkICopXTsKPiArICAgICAgICAgICAgICAgICAg
ICAgICB2b2lkICpzdGF0dXNfZHJpdmVyX2RhdGFbMTYgLyBzaXplb2Yodm9pZCAqKV07Cj4gICAg
ICAgICAgICAgICAgIH0gc3RhdHVzOwo+ICAgICAgICAgICAgICAgICBzdHJ1Y3Qgewo+ICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpZWVlODAyMTFfdHhfcmF0ZSBkcml2ZXJfcmF0ZXNb
Cj4gQEAgLTExMjYsNiArMTEzNiw4IEBAIGllZWU4MDIxMV90eF9pbmZvX2NsZWFyX3N0YXR1cyhz
dHJ1Y3QgaWVlZTgwMjExX3R4X2luZm8gKmluZm8pCj4gICAgICAgICAgICAgICAgICAgICAgb2Zm
c2V0b2Yoc3RydWN0IGllZWU4MDIxMV90eF9pbmZvLCBjb250cm9sLnJhdGVzKSk7Cj4gICAgICAg
ICBCVUlMRF9CVUdfT04ob2Zmc2V0b2Yoc3RydWN0IGllZWU4MDIxMV90eF9pbmZvLCBzdGF0dXMu
cmF0ZXMpICE9Cj4gICAgICAgICAgICAgICAgICAgICAgb2Zmc2V0b2Yoc3RydWN0IGllZWU4MDIx
MV90eF9pbmZvLCBkcml2ZXJfcmF0ZXMpKTsKPiArICAgICAgIEJVSUxEX0JVR19PTihvZmZzZXRv
ZihzdHJ1Y3QgaWVlZTgwMjExX3R4X2luZm8sIGNvbnRyb2wudHhfdGltZV9lc3QpICE9Cj4gKyAg
ICAgICAgICAgICAgICAgICAgb2Zmc2V0b2Yoc3RydWN0IGllZWU4MDIxMV90eF9pbmZvLCBzdGF0
dXMudHhfdGltZV9lc3QpKTsKPiAgICAgICAgIEJVSUxEX0JVR19PTihvZmZzZXRvZihzdHJ1Y3Qg
aWVlZTgwMjExX3R4X2luZm8sIHN0YXR1cy5yYXRlcykgIT0gOCk7Cj4gICAgICAgICAvKiBjbGVh
ciB0aGUgcmF0ZSBjb3VudHMgKi8KPiAgICAgICAgIGZvciAoaSA9IDA7IGkgPCBJRUVFODAyMTFf
VFhfTUFYX1JBVEVTOyBpKyspCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
