Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BCBDD12C
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 23:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X56T7uwRKx797o2wrXsxinNdbsXsrA2bYavG98aSZ/U=; b=o8JAGStdGmk2o2
	78Y51Bs1ourHmEfiIT2Ismj9pZlLg5L5z+RooRspFV0r9RobEI8VxecAksQtzqCWGEJlp/pyfp5au
	BhdrQ9VdVTVItGb1MqD9SeRLKXnCZt6D6hpXMqPRQ7B/rpbAqoQkXnyOms8pU+8Dti3iIGqDtbuXc
	ki41d/kWPZgFXaG+WRCvBwu3/NRn7uqlhm3CynpGuR+lWQ4Zdr4oiXR0gIhLLe15OTO8al5f3ruYa
	Tpu9QGFxA22vH8n02uT0ahe6qeGG+c+97+yxHQrKd4OmwG8+nzr4qIVXfKJBJ+wIs76c5LLkt2IV/
	tvdnJEW0Cx3TNi83OPjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLZlD-0005kl-WD; Fri, 18 Oct 2019 21:26:12 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLZlA-0005kD-Kd
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 21:26:10 +0000
Received: by mail-lf1-x144.google.com with SMTP id v8so5143918lfa.12
 for <ath10k@lists.infradead.org>; Fri, 18 Oct 2019 14:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+Up8Gwyf2iZnRutPZhnyYKV6yPtTDybg21nimSnweeU=;
 b=DO5sbPJ3KT5w7eZ8ZFGjS6kfqG5LY9WT8IS4j5JitX0ihljkLwZSmPqegQujlCweo/
 fGd3MSFRvrFRkKfGp2Eb8KKsNVHFwYzUGAsfkix5a+ZEYaEaexTf3EjGK3dPYGcp2jlU
 YSfTJDBLFL5HlAWxbBg/0cMID3ogTM2lqstSBz17Y1WKzSV5594cUo4LaxC9MVddcTzo
 0GGZTFH0FN974RQO1CABlhl39JmjXWvabQJWRWQNf2dDxxJRUbK2SD8ELa8YWuQ23Et/
 kGx4uUm15nDgjkz4otNP3yUM0VVNMpDlMm22ijGADdFvR7nLajYNUUrWLAtX27CB6s3u
 eTPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+Up8Gwyf2iZnRutPZhnyYKV6yPtTDybg21nimSnweeU=;
 b=crcSqtcCr5pDeVtktTYzTGgbvL2K1OJBzFSGbuHaQjFEsqDnUo8deYy7DAhAu2SArR
 kIq4ktM4QzbL5BRIf+9qZHQ76a+5ZifRWwzq925db0Urrz8tzufOA4+0OMD6NuT+dxA+
 r456WuOkrc29/S0z6UIOUqQD3XrRefR02fBCyzmm3NW4imGS673euEPYAV+he9difULF
 ioMd4Q8VA5JGVyD81hYtd9avPDIFmKFWiPHTPdAX+00wdved6kIQTDz2RJD6tVRhNOiB
 H/SdiggRP6T10hAE36IXXUi/FSfmwuUAdSOtV1N1D0KuS7pCe0lO+WBDURbIpC3j0zej
 IBVw==
X-Gm-Message-State: APjAAAWdewI/BlTw+V9vI7Lqh9eiHM1VGJ8r9dWUQeQfS3PVtZuvPBxP
 U+2aYjXxXc93dK7taMZY31/VdEuzxz0Fpa7aLaaRyg==
X-Google-Smtp-Source: APXvYqyTnANwrAfiEJAtZi6lCBu2WZC15AbYHqhBi0/lAQnLeSMRlARVOHYFbr9G2RecV9d00MH3gdMP9+vXbh1O0ik=
X-Received: by 2002:ac2:5610:: with SMTP id v16mr7187855lfd.93.1571433965266; 
 Fri, 18 Oct 2019 14:26:05 -0700 (PDT)
MIME-Version: 1.0
References: <157140962094.2866668.3383184317264069493.stgit@toke.dk>
 <157140962534.2866668.1182822483250825739.stgit@toke.dk>
In-Reply-To: <157140962534.2866668.1182822483250825739.stgit@toke.dk>
From: Kan Yan <kyan@google.com>
Date: Fri, 18 Oct 2019 14:25:53 -0700
Message-ID: <CA+iem5sCTsPe4PW=0j20NoAratvdCvB0ss7zO3wMWLcirXsLgg@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_142608_703731_E51D0DF1 
X-CRM114-Status: GOOD (  24.23  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

PiArICAgICAgIGlmIChsb2NhbC0+YWlydGltZV9mbGFncyAmIEFJUlRJTUVfVVNFX0FRTCkgewo+
ICsgICAgICAgICAgICAgICBhaXJ0aW1lID0gaWVlZTgwMjExX2NhbGNfZXhwZWN0ZWRfdHhfYWly
dGltZShodywgdmlmLCB0eHEtPnN0YSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2tiLT5sZW4pOwo+ICsgICAgICAgICAgICAg
ICBpZiAoYWlydGltZSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIC8qIFdlIG9ubHkgaGF2
ZSAxMCBiaXRzIGluIHR4X3RpbWVfZXN0LCBzbyBzdG9yZSBhaXJ0aW1lCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICogaW4gaW5jcmVtZW50cyBvZiA0IHVzIGFuZCBjbGFtcCB0aGF0IHRvIDIq
KjEwLgo+ICsgICAgICAgICAgICAgICAgICAgICAgICAqLwo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGluZm8tPnR4X3RpbWVfZXN0ID0gbWluX3QodTMyLCBhaXJ0aW1lID4+IDIsIDEgPDwgMTAp
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIGllZWU4MDIxMV9zdGFfdXBkYXRlX3BlbmRpbmdf
YWlydGltZShsb2NhbCwgdHguc3RhLCBhYywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYWlydGltZSwgZmFsc2UpOwo+ICsgICAg
ICAgICAgICAgICB9Cj4gKyAgICAgICB9Cj4gKwoKSXQgc2hvdWxkIGJlOgogICAgICAgICAgICAg
ICAgICAgICAgICAgaWVlZTgwMjExX3N0YV91cGRhdGVfcGVuZGluZ19haXJ0aW1lKGxvY2FsLCB0
eC5zdGEsIGFjLAoKaW5mby0+dHhfdGltZV9lc3QgPDwgMiwgZmFsc2UpOwoKVGhlIGFpcnRpbWUg
cm91bmRlZCB0byA0dXMgKGluZm8tPnR4X3RpbWVfZXN0IDw8IDIpLCBpbnN0ZWFkIG9mIHRoZQpv
cmlnaW5hbCBhaXJ0aW1lIHNob3VsZCBiZSB1c2VkIHdoZW4gcmVnaXN0ZXJpbmcgdGhlIHBlbmRp
bmcgYWlydGltZSwKdG8ga2VlcCBpdCBjb25zaXN0ZW50IHdpdGggYWlydGltZSBzdWJ0cmFjdGVk
IHdoZW4gdGhlIHNrYiBpcyBmcmVlZC4KCgpPbiBGcmksIE9jdCAxOCwgMjAxOSBhdCA3OjQwIEFN
IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPgo+IEZy
b206IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgo+Cj4gVGhlIHBy
ZXZpb3VzIGNvbW1pdCBhZGRlZCB0aGUgYWJpbGl0eSB0byB0aHJvdHRsZSBzdGF0aW9ucyB3aGVu
IHRoZXkgcXVldWUKPiB0b28gbXVjaCBhaXJ0aW1lIGluIHRoZSBoYXJkd2FyZS4gVGhpcyBjb21t
aXQgZW5hYmxlcyB0aGUgZnVuY3Rpb25hbGl0eSBieQo+IGNhbGN1bGF0aW5nIHRoZSBleHBlY3Rl
ZCBhaXJ0aW1lIHVzYWdlIG9mIGVhY2ggcGFja2V0IHRoYXQgaXMgZGVxdWV1ZWQgZnJvbQo+IHRo
ZSBUWFFzIGluIG1hYzgwMjExLCBhbmQgYWNjb3VudGluZyB0aGF0IGFzIHBlbmRpbmcgYWlydGlt
ZS4KPgo+IFRoZSBlc3RpbWF0ZWQgYWlydGltZSBmb3IgZWFjaCBza2IgaXMgc3RvcmVkIGluIHRo
ZSB0eF9pbmZvLCBzbyB3ZSBjYW4KPiBzdWJ0cmFjdCB0aGUgc2FtZSBhbW91bnQgZnJvbSB0aGUg
cnVubmluZyB0b3RhbCB3aGVuIHRoZSBza2IgaXMgZnJlZWQgb3IKPiByZWN5Y2xlZC4gVGhlIHRo
cm90dGxpbmcgbWVjaGFuaXNtIHJlbGllcyBvbiB0aGlzIGFjY291bnRpbmcgdG8gYmUKPiBhY2N1
cmF0ZSAoaS5lLiwgdGhhdCB3ZSBhcmUgbm90IGZyZWVpbmcgc2ticyB3aXRob3V0IHN1YnRyYWN0
aW5nIGFueQo+IGFpcnRpbWUgdGhleSB3ZXJlIGFjY291bnRlZCBmb3IpLCBzbyB3ZSBwdXQgdGhl
IHN1YnRyYWN0aW9uIGludG8KPiBpZWVlODAyMTFfcmVwb3J0X3VzZWRfc2tiKCkuIEFzIGFuIG9w
dGltaXNhdGlvbiwgd2UgYWxzbyBzdWJ0cmFjdCB0aGUKPiBhaXJ0aW1lIG9uIHJlZ3VsYXIgVFgg
Y29tcGxldGlvbiwgemVyb2luZyBvdXQgdGhlIHZhbHVlIHN0b3JlZCBpbiB0aGUKPiBwYWNrZXQg
YWZ0ZXJ3YXJkcywgdG8gYXZvaWQgaGF2aW5nIHRvIGRvIGFuIGV4cGVuc2l2ZSBsb29rdXAgb2Yg
dGhlCj4gc3RhdGlvbiBmcm9tIHRoZSBwYWNrZXQgZGF0YSBvbiBldmVyeSBwYWNrZXQuCj4KPiBU
aGlzIHBhdGNoIGRvZXMgKm5vdCogaW5jbHVkZSBhbnkgbWVjaGFuaXNtIHRvIHdha2UgYSB0aHJv
dHRsZWQgVFhRIGFnYWluLAo+IG9uIHRoZSBhc3N1bXB0aW9uIHRoYXQgdGhpcyB3aWxsIGhhcHBl
biBhbnl3YXkgYXMgYSBzaWRlIGVmZmVjdCBvZiB3aGF0ZXZlcgo+IGZyZWVkIHRoZSBza2IgKG1v
c3QgY29tbW9ubHkgYSBUWCBjb21wbGV0aW9uKS4KPgo+IFNpZ25lZC1vZmYtYnk6IFRva2UgSMO4
aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPgo+IC0tLQo+ICBuZXQvbWFjODAyMTEv
c3RhdHVzLmMgfCAgIDM4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4g
IG5ldC9tYWM4MDIxMS90eC5jICAgICB8ICAgMTkgKysrKysrKysrKysrKysrKysrKwo+ICAyIGZp
bGVzIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9uZXQvbWFjODAy
MTEvc3RhdHVzLmMgYi9uZXQvbWFjODAyMTEvc3RhdHVzLmMKPiBpbmRleCBhYjhiYTU4MzVjYTAu
LjkwNWI0YWZkNDU3ZCAxMDA2NDQKPiAtLS0gYS9uZXQvbWFjODAyMTEvc3RhdHVzLmMKPiArKysg
Yi9uZXQvbWFjODAyMTEvc3RhdHVzLmMKPiBAQCAtNjc2LDYgKzY3NiwzMyBAQCBzdGF0aWMgdm9p
ZCBpZWVlODAyMTFfcmVwb3J0X3VzZWRfc2tiKHN0cnVjdCBpZWVlODAyMTFfbG9jYWwgKmxvY2Fs
LAo+ICAgICAgICAgaWYgKGRyb3BwZWQpCj4gICAgICAgICAgICAgICAgIGFja2VkID0gZmFsc2U7
Cj4KPiArICAgICAgIGlmIChpbmZvLT50eF90aW1lX2VzdCkgewo+ICsgICAgICAgICAgICAgICBz
dHJ1Y3QgaWVlZTgwMjExX3N1Yl9pZl9kYXRhICpzZGF0YTsKPiArICAgICAgICAgICAgICAgc3Ry
dWN0IHN0YV9pbmZvICpzdGEgPSBOVUxMOwo+ICsgICAgICAgICAgICAgICB1OCAqcWMsIGFjOwo+
ICsgICAgICAgICAgICAgICBpbnQgdGlkOwo+ICsKPiArICAgICAgICAgICAgICAgcmN1X3JlYWRf
bG9jaygpOwo+ICsKPiArICAgICAgICAgICAgICAgc2RhdGEgPSBpZWVlODAyMTFfc2RhdGFfZnJv
bV9za2IobG9jYWwsIHNrYik7Cj4gKyAgICAgICAgICAgICAgIGlmIChzZGF0YSkKPiArICAgICAg
ICAgICAgICAgICAgICAgICBzdGEgPSBzdGFfaW5mb19nZXRfYnNzKHNkYXRhLCBza2JfbWFjX2hl
YWRlcihza2IpKTsKPiArCj4gKyAgICAgICAgICAgICAgIGlmIChpZWVlODAyMTFfaXNfZGF0YV9x
b3MoaGRyLT5mcmFtZV9jb250cm9sKSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIHFjID0g
aWVlZTgwMjExX2dldF9xb3NfY3RsKGhkcik7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgdGlk
ID0gcWNbMF0gJiAweGY7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgYWMgPSBpZWVlODAyMTFf
YWNfZnJvbV90aWQodGlkKTsKPiArICAgICAgICAgICAgICAgfSBlbHNlIHsKPiArICAgICAgICAg
ICAgICAgICAgICAgICBhYyA9IElFRUU4MDIxMV9BQ19CRTsKPiArICAgICAgICAgICAgICAgfQo+
ICsKPiArICAgICAgICAgICAgICAgaWVlZTgwMjExX3N0YV91cGRhdGVfcGVuZGluZ19haXJ0aW1l
KGxvY2FsLCBzdGEsIGFjLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgaW5mby0+dHhfdGltZV9lc3QgPDwgMiwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRydWUpOwo+ICsgICAgICAgICAg
ICAgICByY3VfcmVhZF91bmxvY2soKTsKPiArCj4gKyAgICAgICB9Cj4gKwo+ICAgICAgICAgaWYg
KGluZm8tPmZsYWdzICYgSUVFRTgwMjExX1RYX0lOVEZMX01MTUVfQ09OTl9UWCkgewo+ICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgaWVlZTgwMjExX3N1Yl9pZl9kYXRhICpzZGF0YTsKPgo+IEBAIC05
MzAsNiArOTU3LDE3IEBAIHN0YXRpYyB2b2lkIF9faWVlZTgwMjExX3R4X3N0YXR1cyhzdHJ1Y3Qg
aWVlZTgwMjExX2h3ICpodywKPiAgICAgICAgICAgICAgICAgICAgICAgICB0aWQgPSBxY1swXSAm
IDB4ZjsKPiAgICAgICAgICAgICAgICAgfQo+Cj4gKyAgICAgICAgICAgICAgIGlmIChpbmZvLT50
eF90aW1lX2VzdCkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIC8qIERvIHRoaXMgaGVyZSB0
byBhdm9pZCB0aGUgZXhwZW5zaXZlIGxvb2t1cCBvZiB0aGUgc3RhCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICogaW4gaWVlZTgwMjExX3JlcG9ydF91c2VkX3NrYigpLgo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAqLwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGllZWU4MDIxMV9zdGFf
dXBkYXRlX3BlbmRpbmdfYWlydGltZShsb2NhbCwgc3RhLAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZWVlODAyMTFfYWNfZnJv
bV90aWQodGlkKSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgaW5mby0+dHhfdGltZV9lc3QgPDwgMiwKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdHJ1ZSk7Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgaW5mby0+dHhfdGltZV9lc3QgPSAwOwo+ICsgICAgICAg
ICAgICAgICB9Cj4gKwo+ICAgICAgICAgICAgICAgICBpZiAoIWFja2VkICYmIGllZWU4MDIxMV9p
c19iYWNrX3JlcShmYykpIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICB1MTYgY29udHJvbDsK
Pgo+IGRpZmYgLS1naXQgYS9uZXQvbWFjODAyMTEvdHguYyBiL25ldC9tYWM4MDIxMS90eC5jCj4g
aW5kZXggMTI2NTNkODczYjhjLi5iZDgyODRmMDQzNjEgMTAwNjQ0Cj4gLS0tIGEvbmV0L21hYzgw
MjExL3R4LmMKPiArKysgYi9uZXQvbWFjODAyMTEvdHguYwo+IEBAIC0zNTM5LDkgKzM1MzksMTQg
QEAgc3RydWN0IHNrX2J1ZmYgKmllZWU4MDIxMV90eF9kZXF1ZXVlKHN0cnVjdCBpZWVlODAyMTFf
aHcgKmh3LAo+ICAgICAgICAgc3RydWN0IGllZWU4MDIxMV90eF9kYXRhIHR4Owo+ICAgICAgICAg
aWVlZTgwMjExX3R4X3Jlc3VsdCByOwo+ICAgICAgICAgc3RydWN0IGllZWU4MDIxMV92aWYgKnZp
ZiA9IHR4cS0+dmlmOwo+ICsgICAgICAgdTggYWMgPSB0eHEtPmFjOwo+ICsgICAgICAgdTMyIGFp
cnRpbWU7Cj4KPiAgICAgICAgIFdBUk5fT05fT05DRShzb2Z0aXJxX2NvdW50KCkgPT0gMCk7Cj4K
PiArICAgICAgIGlmICghaWVlZTgwMjExX3R4cV9haXJ0aW1lX2NoZWNrKGh3LCB0eHEpKQo+ICsg
ICAgICAgICAgICAgICByZXR1cm4gTlVMTDsKPiArCj4gIGJlZ2luOgo+ICAgICAgICAgc3Bpbl9s
b2NrX2JoKCZmcS0+bG9jayk7Cj4KPiBAQCAtMzY1Miw2ICszNjU3LDIwIEBAIHN0cnVjdCBza19i
dWZmICppZWVlODAyMTFfdHhfZGVxdWV1ZShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKPiAgICAg
ICAgIH0KPgo+ICAgICAgICAgSUVFRTgwMjExX1NLQl9DQihza2IpLT5jb250cm9sLnZpZiA9IHZp
ZjsKPiArCj4gKyAgICAgICBpZiAobG9jYWwtPmFpcnRpbWVfZmxhZ3MgJiBBSVJUSU1FX1VTRV9B
UUwpIHsKPiArICAgICAgICAgICAgICAgYWlydGltZSA9IGllZWU4MDIxMV9jYWxjX2V4cGVjdGVk
X3R4X2FpcnRpbWUoaHcsIHZpZiwgdHhxLT5zdGEsCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNrYi0+bGVuKTsKPiArICAgICAg
ICAgICAgICAgaWYgKGFpcnRpbWUpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICAvKiBXZSBv
bmx5IGhhdmUgMTAgYml0cyBpbiB0eF90aW1lX2VzdCwgc28gc3RvcmUgYWlydGltZQo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAqIGluIGluY3JlbWVudHMgb2YgNCB1cyBhbmQgY2xhbXAgdGhh
dCB0byAyKioxMC4KPiArICAgICAgICAgICAgICAgICAgICAgICAgKi8KPiArICAgICAgICAgICAg
ICAgICAgICAgICBpbmZvLT50eF90aW1lX2VzdCA9IG1pbl90KHUzMiwgYWlydGltZSA+PiAyLCAx
IDw8IDEwKTsKPiArICAgICAgICAgICAgICAgICAgICAgICBpZWVlODAyMTFfc3RhX3VwZGF0ZV9w
ZW5kaW5nX2FpcnRpbWUobG9jYWwsIHR4LnN0YSwgYWMsCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFpcnRpbWUsIGZhbHNlKTsK
PiArICAgICAgICAgICAgICAgfQo+ICsgICAgICAgfQo+ICsKPiAgICAgICAgIHJldHVybiBza2I7
Cj4KPiAgb3V0Ogo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
