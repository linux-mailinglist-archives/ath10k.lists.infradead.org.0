Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25124DA2BD
	for <lists+ath10k@lfdr.de>; Thu, 17 Oct 2019 02:34:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zuaK/UDi4BAgsX9wN3xXE1vZy5zKJtlB/yo5SZ4bMXk=; b=H4qA5TTOYeowSD
	MkufFGgrAbkpeqf6Jnb42S08U0mLxewBol5G49JzYhvVDpQugs1jcnkkNTQOAAhYdF20oGfg+zgmt
	AEMsnDTM0vS1PSUpioBBiiEH1Z5+n9niGEYCSmc8XdNpP+OaoxpTVoV4i8epDs27Tx0XdJCh5/3HS
	sjdyMbpqUdC6I7lKtucTwfbZBpbqzOhG6ReOLAR/RGPI9OEEjqqbhH0ehuUxCz/c4fzikeQ4nCofa
	icBKyBC/vtUH0FQ+C2uknqi9D4AITKjFPJHGLuSVSf8ioKj3YewQ3GPa9S0hVbO50SCLjCCno0PoL
	Du/zBncoB35VB84UYsug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKtjy-0004o3-0g; Thu, 17 Oct 2019 00:34:06 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKtju-0004nb-DZ
 for ath10k@lists.infradead.org; Thu, 17 Oct 2019 00:34:04 +0000
Received: by mail-lf1-x144.google.com with SMTP id w6so401516lfl.2
 for <ath10k@lists.infradead.org>; Wed, 16 Oct 2019 17:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=lhdmTahyTr9mpYPZPTU+eWGDK015qxZkpq+B1fY3Eaw=;
 b=jSYwoHuEyH/rMkNYINxtCdbgVMdlB0EmqtVi+LiOh9e5Sf3QhI8YiXmmK9vTF1T9l+
 7y76nsbFDMKjmqSVzgf1zCodJ6ewKaysPxSTxE6gzKMLOngWVxp3p9snwAhOOUGhE+CU
 SS5j7+KNOugQfRtsLoXFHmoChVh8olRDedIrm8IDKqGqJOifJ0NSfKFI3pAQC/nrRgyT
 0LA4T8ThKQDx1FIgxQefMfRwmzg80sJUzdPQeLVIYJmj1QbaFLDrmQ3ievbj/kU3mfAd
 IUZNRk6uiFE5z2xHtLslKWzo0MQ546U5VxOUKEHimAMkrXS4eaVofpFc9Up5D8+ehev2
 SGPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=lhdmTahyTr9mpYPZPTU+eWGDK015qxZkpq+B1fY3Eaw=;
 b=krOTBL0S2Oxa/yo2gs1YrIh2IvHImz1J5pNQSkrrq5AEyTybLo1O28MzwDD4nBcPZJ
 CJ6sW3O+vbv+TwNiAUdbWevkXvoFNnGJG0vSOH28BHsmcCMkJ+r3L97Pz24tr3J1zM+P
 w5FIUwPRdlKikQtWMHWYl+0wiPEsPV+GVObp7ajBZrpof4R7TPtpPXwvDYXb4EZS3WxD
 xdaGsrhMH5i1BHc7kZ1RKSvehlZhteb6yaILXHakG0BnqOSfAsOgUODzhIugb2D9IG+M
 P19Qtbij5/PctysXP+T/9Ex38p+yQ3YcnUYqgbXdjNSK3+jnYRxVxF6EO7j1xdvXPLJY
 fePQ==
X-Gm-Message-State: APjAAAVe5Lp467FFt3IBT0XOI4fWG8SgqzD8c2r3xpsIHxrw+OX6vLvl
 1zfvIEzAZAClasAgfIU7El9fIOadRtTSWCQoq+9VH8BK+TavUw==
X-Google-Smtp-Source: APXvYqxFJA6YhjLa9HJl0r0MT7p4BJuEERXHwbvwB4KvMwKw02WAPvCLR2U07Tnsg9ODjX9Dc7eRqdsP2xayt6SeY6o=
X-Received: by 2002:a19:7b08:: with SMTP id w8mr288466lfc.95.1571272434435;
 Wed, 16 Oct 2019 17:33:54 -0700 (PDT)
MIME-Version: 1.0
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115994190.2500430.14955682016008497593.stgit@toke.dk>
In-Reply-To: <157115994190.2500430.14955682016008497593.stgit@toke.dk>
From: Kan Yan <kyan@google.com>
Date: Wed, 16 Oct 2019 17:33:43 -0700
Message-ID: <CA+iem5s=xbzZ5goaBO4tZWUKVQRaXb+SnB34NPCppej9mi8sAA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_173402_483923_AF40BDCA 
X-CRM114-Status: GOOD (  24.07  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

SGkgVG9rZSwKClRoYW5rcyBmb3IgZ2V0dGluZyB0aGlzIGRvbmUhIEkgd2lsbCBnaXZlIGl0IGEg
dHJ5IGluIHRoZSBuZXh0IGZldwpkYXlzLiAgQSBmZXcgY29tbWVudHM6Cgo+IFRoZSBlc3RpbWF0
ZWQgYWlydGltZSBmb3IgZWFjaCBza2IgaXMgc3RvcmVkIGluIHRoZSB0eF9pbmZvLCBzbyB3ZSBj
YW4KPiBzdWJ0cmFjdCB0aGUgc2FtZSBhbW91bnQgZnJvbSB0aGUgcnVubmluZyB0b3RhbCB3aGVu
IHRoZSBza2IgaXMgZnJlZWQgb3IKPiByZWN5Y2xlZC4KCkxvb2tzIGxpa2UgYXRoMTBrIGRyaXZl
ciB6ZXJvIG91dCB0aGUgaW5mby0+c3RhdHVzIGJlZm9yZSBjYWxsaW5nCmllZWU4MDIxMV90eF9z
dGF0dXMoLi4uKToKaW50IGF0aDEwa190eHJ4X3R4X3VucmVmKHN0cnVjdCBhdGgxMGtfaHR0ICpo
dHQsCiAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgaHR0X3R4X2RvbmUgKnR4
X2RvbmUpCnsKIC4uLgogICAgICAgIGluZm8gPSBJRUVFODAyMTFfU0tCX0NCKG1zZHUpOwogICAg
ICAgIG1lbXNldCgmaW5mby0+c3RhdHVzLCAwLCBzaXplb2YoaW5mby0+c3RhdHVzKSk7Ci4uLgog
ICAgICAgIGllZWU4MDIxMV90eF9zdGF0dXMoaHR0LT5hci0+aHcsIG1zZHUpOwp9CgpXZSBuZWVk
IGVpdGhlciByZXN0b3JlIHRoZSBpbmZvLT5zdGF0dXMudHhfdGltZV9lc3Qgb3IgY2FsbGluZwpp
ZWVlODAyMTFfc3RhX3VwZGF0ZV9wZW5kaW5nX2FpcnRpbWUoKSBpbiBhdGgxMGsgYmVmb3JlIHR4
X3RpbWVfZXN0CmdldCBlcmFzZWQuCgo+ICsgICAgICAgaWYgKGxvY2FsLT5haXJ0aW1lX2ZsYWdz
ICYgQUlSVElNRV9VU0VfQVFMKSB7Cj4gKyAgICAgICAgICAgICAgIGFpcnRpbWUgPSBpZWVlODAy
MTFfY2FsY19leHBlY3RlZF90eF9haXJ0aW1lKGh3LCB2aWYsIHR4cS0+c3RhLAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBza2It
PmxlbiArIDM4KTsKCkkgdGhpbmsgaXQgaXMgYmV0dGVyIHRvIHB1dCB0aGUgIisgIDM4IiB0aGF0
IHRha2VzIGNhcmUgb2YgdGhlIGhlYWRlcgpvdmVyaGVhZCBpbnNpZGUgaWVlZTgwMjExX2NhbGNf
ZXhwZWN0ZWRfdHhfYWlydGltZSgpLgoKS2FuCgoKT24gVHVlLCBPY3QgMTUsIDIwMTkgYXQgMTA6
MTkgQU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyb3RlOgo+
Cj4gRnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4KPiBU
aGUgcHJldmlvdXMgY29tbWl0IGFkZGVkIHRoZSBhYmlsaXR5IHRvIHRocm90dGxlIHN0YXRpb25z
IHdoZW4gdGhleSBxdWV1ZQo+IHRvbyBtdWNoIGFpcnRpbWUgaW4gdGhlIGhhcmR3YXJlLiBUaGlz
IGNvbW1pdCBlbmFibGVzIHRoZSBmdW5jdGlvbmFsaXR5IGJ5Cj4gY2FsY3VsYXRpbmcgdGhlIGV4
cGVjdGVkIGFpcnRpbWUgdXNhZ2Ugb2YgZWFjaCBwYWNrZXQgdGhhdCBpcyBkZXF1ZXVlZCBmcm9t
Cj4gdGhlIFRYUXMgaW4gbWFjODAyMTEsIGFuZCBhY2NvdW50aW5nIHRoYXQgYXMgcGVuZGluZyBh
aXJ0aW1lLgo+Cj4gVGhlIGVzdGltYXRlZCBhaXJ0aW1lIGZvciBlYWNoIHNrYiBpcyBzdG9yZWQg
aW4gdGhlIHR4X2luZm8sIHNvIHdlIGNhbgo+IHN1YnRyYWN0IHRoZSBzYW1lIGFtb3VudCBmcm9t
IHRoZSBydW5uaW5nIHRvdGFsIHdoZW4gdGhlIHNrYiBpcyBmcmVlZCBvcgo+IHJlY3ljbGVkLiBU
aGUgdGhyb3R0bGluZyBtZWNoYW5pc20gcmVsaWVzIG9uIHRoaXMgYWNjb3VudGluZyB0byBiZQo+
IGFjY3VyYXRlIChpLmUuLCB0aGF0IHdlIGFyZSBub3QgZnJlZWluZyBza2JzIHdpdGhvdXQgc3Vi
dHJhY3RpbmcgYW55Cj4gYWlydGltZSB0aGV5IHdlcmUgYWNjb3VudGVkIGZvciksIHNvIHdlIHB1
dCB0aGUgc3VidHJhY3Rpb24gaW50bwo+IGllZWU4MDIxMV9yZXBvcnRfdXNlZF9za2IoKS4gQXMg
YW4gb3B0aW1pc2F0aW9uLCB3ZSBhbHNvIHN1YnRyYWN0IHRoZQo+IGFpcnRpbWUgb24gcmVndWxh
ciBUWCBjb21wbGV0aW9uLCB6ZXJvaW5nIG91dCB0aGUgdmFsdWUgc3RvcmVkIGluIHRoZQo+IHBh
Y2tldCBhZnRlcndhcmRzLCB0byBhdm9pZCBoYXZpbmcgdG8gZG8gYW4gZXhwZW5zaXZlIGxvb2t1
cCBvZiB0aGUKPiBzdGF0aW9uIGZyb20gdGhlIHBhY2tldCBkYXRhIG9uIGV2ZXJ5IHBhY2tldC4K
Pgo+IFRoaXMgcGF0Y2ggZG9lcyAqbm90KiBpbmNsdWRlIGFueSBtZWNoYW5pc20gdG8gd2FrZSBh
IHRocm90dGxlZCBUWFEgYWdhaW4sCj4gb24gdGhlIGFzc3VtcHRpb24gdGhhdCB0aGlzIHdpbGwg
aGFwcGVuIGFueXdheSBhcyBhIHNpZGUgZWZmZWN0IG9mIHdoYXRldmVyCj4gZnJlZWQgdGhlIHNr
YiAobW9zdCBjb21tb25seSBhIFRYIGNvbXBsZXRpb24pLgo+Cj4gU2lnbmVkLW9mZi1ieTogVG9r
ZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+Cj4gLS0tCj4gIG5ldC9tYWM4
MDIxMS9zdGF0dXMuYyB8ICAgMzggKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysKPiAgbmV0L21hYzgwMjExL3R4LmMgICAgIHwgICAxNiArKysrKysrKysrKysrKysrCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgNTQgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL25ldC9tYWM4
MDIxMS9zdGF0dXMuYyBiL25ldC9tYWM4MDIxMS9zdGF0dXMuYwo+IGluZGV4IGFiOGJhNTgzNWNh
MC4uY2U5OTBhMWU5MDQzIDEwMDY0NAo+IC0tLSBhL25ldC9tYWM4MDIxMS9zdGF0dXMuYwo+ICsr
KyBiL25ldC9tYWM4MDIxMS9zdGF0dXMuYwo+IEBAIC02NzYsNiArNjc2LDMzIEBAIHN0YXRpYyB2
b2lkIGllZWU4MDIxMV9yZXBvcnRfdXNlZF9za2Ioc3RydWN0IGllZWU4MDIxMV9sb2NhbCAqbG9j
YWwsCj4gICAgICAgICBpZiAoZHJvcHBlZCkKPiAgICAgICAgICAgICAgICAgYWNrZWQgPSBmYWxz
ZTsKPgo+ICsgICAgICAgaWYgKGluZm8tPnN0YXR1cy50eF90aW1lX2VzdCkgewo+ICsgICAgICAg
ICAgICAgICBzdHJ1Y3QgaWVlZTgwMjExX3N1Yl9pZl9kYXRhICpzZGF0YTsKPiArICAgICAgICAg
ICAgICAgc3RydWN0IHN0YV9pbmZvICpzdGEgPSBOVUxMOwo+ICsgICAgICAgICAgICAgICB1OCAq
cWMsIGFjOwo+ICsgICAgICAgICAgICAgICBpbnQgdGlkOwo+ICsKPiArICAgICAgICAgICAgICAg
cmN1X3JlYWRfbG9jaygpOwo+ICsKPiArICAgICAgICAgICAgICAgc2RhdGEgPSBpZWVlODAyMTFf
c2RhdGFfZnJvbV9za2IobG9jYWwsIHNrYik7Cj4gKyAgICAgICAgICAgICAgIGlmIChzZGF0YSkK
PiArICAgICAgICAgICAgICAgICAgICAgICBzdGEgPSBzdGFfaW5mb19nZXRfYnNzKHNkYXRhLCBz
a2JfbWFjX2hlYWRlcihza2IpKTsKPiArCj4gKyAgICAgICAgICAgICAgIGlmIChpZWVlODAyMTFf
aXNfZGF0YV9xb3MoaGRyLT5mcmFtZV9jb250cm9sKSkgewo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIHFjID0gaWVlZTgwMjExX2dldF9xb3NfY3RsKGhkcik7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgdGlkID0gcWNbMF0gJiAweGY7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgYWMgPSBp
ZWVlODAyMTFfYWNfZnJvbV90aWQodGlkKTsKPiArICAgICAgICAgICAgICAgfSBlbHNlIHsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICBhYyA9IElFRUU4MDIxMV9BQ19CRTsKPiArICAgICAgICAg
ICAgICAgfQo+ICsKPiArICAgICAgICAgICAgICAgaWVlZTgwMjExX3N0YV91cGRhdGVfcGVuZGlu
Z19haXJ0aW1lKGxvY2FsLCBzdGEsIGFjLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgaW5mby0+c3RhdHVzLnR4X3RpbWVfZXN0LAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdHJ1ZSk7Cj4g
KyAgICAgICAgICAgICAgIHJjdV9yZWFkX3VubG9jaygpOwo+ICsKPiArICAgICAgIH0KPiArCj4g
ICAgICAgICBpZiAoaW5mby0+ZmxhZ3MgJiBJRUVFODAyMTFfVFhfSU5URkxfTUxNRV9DT05OX1RY
KSB7Cj4gICAgICAgICAgICAgICAgIHN0cnVjdCBpZWVlODAyMTFfc3ViX2lmX2RhdGEgKnNkYXRh
Owo+Cj4gQEAgLTkzMCw2ICs5NTcsMTcgQEAgc3RhdGljIHZvaWQgX19pZWVlODAyMTFfdHhfc3Rh
dHVzKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAo+ICAgICAgICAgICAgICAgICAgICAgICAgIHRp
ZCA9IHFjWzBdICYgMHhmOwo+ICAgICAgICAgICAgICAgICB9Cj4KPiArICAgICAgICAgICAgICAg
aWYgKGluZm8tPnN0YXR1cy50eF90aW1lX2VzdCkgewo+ICsgICAgICAgICAgICAgICAgICAgICAg
IC8qIERvIHRoaXMgaGVyZSB0byBhdm9pZCB0aGUgZXhwZW5zaXZlIGxvb2t1cCBvZiB0aGUgc3Rh
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICogaW4gaWVlZTgwMjExX3JlcG9ydF91c2VkX3Nr
YigpLgo+ICsgICAgICAgICAgICAgICAgICAgICAgICAqLwo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGllZWU4MDIxMV9zdGFfdXBkYXRlX3BlbmRpbmdfYWlydGltZShsb2NhbCwgc3RhLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBpZWVlODAyMTFfYWNfZnJvbV90aWQodGlkKSwKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW5mby0+c3RhdHVzLnR4X3RpbWVf
ZXN0LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB0cnVlKTsKPiArICAgICAgICAgICAgICAgICAgICAgICBpbmZvLT5zdGF0dXMu
dHhfdGltZV9lc3QgPSAwOwo+ICsgICAgICAgICAgICAgICB9Cj4gKwo+ICAgICAgICAgICAgICAg
ICBpZiAoIWFja2VkICYmIGllZWU4MDIxMV9pc19iYWNrX3JlcShmYykpIHsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICB1MTYgY29udHJvbDsKPgo+IGRpZmYgLS1naXQgYS9uZXQvbWFjODAyMTEv
dHguYyBiL25ldC9tYWM4MDIxMS90eC5jCj4gaW5kZXggNDA1ZjYyMmIzZmUwLi5iNmI0NzE3MWIz
NDAgMTAwNjQ0Cj4gLS0tIGEvbmV0L21hYzgwMjExL3R4LmMKPiArKysgYi9uZXQvbWFjODAyMTEv
dHguYwo+IEBAIC0zNTM5LDkgKzM1MzksMTQgQEAgc3RydWN0IHNrX2J1ZmYgKmllZWU4MDIxMV90
eF9kZXF1ZXVlKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAo+ICAgICAgICAgc3RydWN0IGllZWU4
MDIxMV90eF9kYXRhIHR4Owo+ICAgICAgICAgaWVlZTgwMjExX3R4X3Jlc3VsdCByOwo+ICAgICAg
ICAgc3RydWN0IGllZWU4MDIxMV92aWYgKnZpZiA9IHR4cS0+dmlmOwo+ICsgICAgICAgdTggYWMg
PSB0eHEtPmFjOwo+ICsgICAgICAgdTMyIGFpcnRpbWU7Cj4KPiAgICAgICAgIFdBUk5fT05fT05D
RShzb2Z0aXJxX2NvdW50KCkgPT0gMCk7Cj4KPiArICAgICAgIGlmICghaWVlZTgwMjExX3R4cV9h
aXJ0aW1lX2NoZWNrKGh3LCB0eHEpKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gTlVMTDsKPiAr
Cj4gIGJlZ2luOgo+ICAgICAgICAgc3Bpbl9sb2NrX2JoKCZmcS0+bG9jayk7Cj4KPiBAQCAtMzY1
Miw2ICszNjU3LDE3IEBAIHN0cnVjdCBza19idWZmICppZWVlODAyMTFfdHhfZGVxdWV1ZShzdHJ1
Y3QgaWVlZTgwMjExX2h3ICpodywKPiAgICAgICAgIH0KPgo+ICAgICAgICAgSUVFRTgwMjExX1NL
Ql9DQihza2IpLT5jb250cm9sLnZpZiA9IHZpZjsKPiArCj4gKyAgICAgICBpZiAobG9jYWwtPmFp
cnRpbWVfZmxhZ3MgJiBBSVJUSU1FX1VTRV9BUUwpIHsKPiArICAgICAgICAgICAgICAgYWlydGlt
ZSA9IGllZWU4MDIxMV9jYWxjX2V4cGVjdGVkX3R4X2FpcnRpbWUoaHcsIHZpZiwgdHhxLT5zdGEs
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHNrYi0+bGVuICsgMzgpOwo+ICsgICAgICAgICAgICAgICBpZiAoYWlydGltZSkgewo+
ICsgICAgICAgICAgICAgICAgICAgICAgIGluZm8tPmNvbnRyb2wudHhfdGltZV9lc3QgPSBhaXJ0
aW1lOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGllZWU4MDIxMV9zdGFfdXBkYXRlX3BlbmRp
bmdfYWlydGltZShsb2NhbCwgdHguc3RhLCBhYywKPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYWlydGltZSwgZmFsc2UpOwo+ICsg
ICAgICAgICAgICAgICB9Cj4gKyAgICAgICB9Cj4gKwo+ICAgICAgICAgcmV0dXJuIHNrYjsKPgo+
ICBvdXQ6Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
