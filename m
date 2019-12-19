Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEA012691B
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 19:32:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6cdRtmotxSVJgMwm6pyQQfx6JlFO+IS3moupm+D+grw=; b=KEBxTZTBw4w7MG
	9Ol+VZkZsUEFByYUrsn095K5iOlmu5Dt/ptrK+MSY6T5XQm+bCC0sYFyOPrptpemX1Ny8ZyN7DgkN
	ngNR8/nZL3PprfRJPD+XH+5MZgE48NBx1v6M57IGc1TXiNEnr4pjoX+ddN/4IfTVaomPaUwT7ScYK
	3v+PEYkF1H18aucE1MKH9NBftrzRs/5xkbZPsen5lk3NtwUBA+aq1p6Y7xju0HbOJ+C+6H+bI/fbt
	jjS93fzXbPcz0FkkworDp9l5H2Dp09WS/LQERP2hAJ8GqKr5lyFp+9SMfanSaOjx7MXES66HnbS2s
	7rbd0trwC5qSwz66d0yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0b5-0005wy-BL; Thu, 19 Dec 2019 18:32:27 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0b1-0005wG-1s
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 18:32:24 +0000
Received: by mail-qt1-x841.google.com with SMTP id k40so5860932qtk.8
 for <ath10k@lists.infradead.org>; Thu, 19 Dec 2019 10:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=G6Vp8WB7zFaMYDsDqjMxasHiaE3hIOW0+ggjUmP96JA=;
 b=IvZmQM+1xx5wRKtwGsH7GokWQ0Q246Nv5kRgefExpPEf0EQpq/5uBmh0vTpjiLnH9a
 bX4Oo7FLSv0AY+AZkMDdHolJe53QzpAZBCMtwOdVi6QFAmnKK3qBYH9QtQOUpjGJL3vp
 BDSg1g5jge56DobIY7tn1w6Rb28kIAzN9WFuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=G6Vp8WB7zFaMYDsDqjMxasHiaE3hIOW0+ggjUmP96JA=;
 b=Oqw/qEBrQpWyVKJGfmGroaJB07+VK9bbUmP3+7L/GqB4KYqDeZtS51nWdyM9ASzyIj
 VHgVhqBjL2X9Wk2wXoRAM61cfTYw4oeTJ5TSZwQI5bLOT4eSujUty3mFSyU9psseITtF
 /6hlYi71RAipCatBu7vV5Z23Lbgg5wgPQrqAoc6ZRHLVqDaDN5HVXr0CiHvI46W9ZM45
 gZupkjE8n58ZD+igsJnkwMTYmUiarlKco/zAiM6lrljR4VBiRS0fDDsEQCnDKIk5/PnO
 yRG1Qq1+/W46ni47I8xR7wrc/8y4V+C8R4K9mSf17ThwoWHiPoex8iIaGdM6dmx3gbtU
 ZSUw==
X-Gm-Message-State: APjAAAV0Ub8i36fsjPDYPqDGRSpGSR8tEcptTB1NkB4Xc+B1k2MlipPq
 9fzUHEeX8wbQXWPng0hcKpQZkmdmcAY=
X-Google-Smtp-Source: APXvYqxmSMiQAdwSaLHuKQFG0SYjZn3Y+PvuV7QiVRVRJ3Kk4kA0ykmg/pT2OiRb3MA357ff6St2dg==
X-Received: by 2002:ac8:328a:: with SMTP id z10mr3621265qta.355.1576780340008; 
 Thu, 19 Dec 2019 10:32:20 -0800 (PST)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com.
 [209.85.160.180])
 by smtp.gmail.com with ESMTPSA id 206sm1941830qkf.132.2019.12.19.10.32.18
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 10:32:18 -0800 (PST)
Received: by mail-qt1-f180.google.com with SMTP id e12so5889162qto.2
 for <ath10k@lists.infradead.org>; Thu, 19 Dec 2019 10:32:18 -0800 (PST)
X-Received: by 2002:ac8:2b29:: with SMTP id 38mr8236384qtu.238.1576780338156; 
 Thu, 19 Dec 2019 10:32:18 -0800 (PST)
MIME-Version: 1.0
References: <1576684108-30177-1-git-send-email-kvalo@codeaurora.org>
 <1576684108-30177-2-git-send-email-kvalo@codeaurora.org>
 <1576748692.7758.17.camel@realtek.com>
 <20191219154828.GA12287@w1.fi>
In-Reply-To: <20191219154828.GA12287@w1.fi>
From: Brian Norris <briannorris@chromium.org>
Date: Thu, 19 Dec 2019 10:32:06 -0800
X-Gmail-Original-Message-ID: <CA+ASDXMTYLGbEkBPHSqtyitMEvY5o_MjU0s+NoWdnN_ORy1gDw@mail.gmail.com>
Message-ID: <CA+ASDXMTYLGbEkBPHSqtyitMEvY5o_MjU0s+NoWdnN_ORy1gDw@mail.gmail.com>
Subject: Re: [PATCH 1/2] nl80211: vendor-cmd: qca: add dynamic SAR power limits
To: Jouni Malinen <j@w1.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_103223_123781_96F44E0C 
X-CRM114-Status: GOOD (  27.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Pkshih <pkshih@realtek.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "kvalo@codeaurora.org" <kvalo@codeaurora.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gVGh1LCBEZWMgMTksIDIwMTkgYXQgNzo0OCBBTSBKb3VuaSBNYWxpbmVuIDxqQHcxLmZpPiB3
cm90ZToKPiBPbiBUaHUsIERlYyAxOSwgMjAxOSBhdCAwOTo0NDo1MkFNICswMDAwLCBQa3NoaWgg
d3JvdGU6Cj4gPiBPbiBXZWQsIDIwMTktMTItMTggYXQgMTc6NDggKzAyMDAsIEthbGxlIFZhbG8g
d3JvdGU6Cj4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvbmw4MDIxMS12bmQtcWNhLmgg
Yi9pbmNsdWRlL3VhcGkvbmw4MDIxMS12bmQtcWNhLmgKPiA+ID4gKyAqIE5PVEU6IFRoZSBhdXRo
b3JpdGF0aXZlIHBsYWNlIGZvciBkZWZpbml0aW9uIG9mIFFDQV9OTDgwMjExX1ZFTkRPUl9JRCwK
PiA+ID4gKyAqIHZlbmRvciBzdWJjbWQgZGVmaW5pdGlvbnMgcHJlZml4ZWQgd2l0aCBRQ0FfTkw4
MDIxMV9WRU5ET1JfU1VCQ01ELCBhbmQKPiA+ID4gKyAqIHFjYV93bGFuX3ZlbmRvcl9hdHRyIGlz
IG9wZW4gc291cmNlIGZpbGUgc3JjL2NvbW1vbi9xY2EtdmVuZG9yLmggaW4KPiA+ID4gKyAqIGdp
dDovL3cxLmZpL3Nydi9naXQvaG9zdGFwLmdpdDsgdGhlIHZhbHVlcyBoZXJlIGFyZSBqdXN0IGEg
Y29weSBvZiB0aGF0CgpCeSB0aGUgd2F5LCBJIHdvbmRlciAtLSB3aHkgaGF2ZSB0aGlzIHN0YXRl
bWVudD8gVGhhdCdzIG5vdCBob3cgSQpyZWNhbGwgYW55IG90aGVyIHBpZWNlIG9mIGtlcm5lbCBk
ZXZlbG9wbWVudCBldmVyIHdvcmtpbmc7IHVwc3RyZWFtCkxpbnV4IGRlZmluZXMgdGhlIHVwc3Ry
ZWFtIExpbnV4IEFQSSwgbm90IHNvbWUgYXJiaXRyYXJ5IHVzZXIgc3BhY2UKcHJvamVjdC4gVGhp
cyBzdGF0ZW1lbnQgY291bGQgYmUgdXNlZnVsIGZvciBzYXlpbmcsICJkb24ndCBzdG9tcCBvbgp0
aG9zZSBjb21tYW5kIG51bWJlcnMgcGxlYXNlLCIgYnV0IHRoZSByZXNwb25zZSBzaG91bGQgcHJv
YmFibHkgYmUgdG8KZ28gb3V0IGFuZCBkZWZpbmUgYSB0b3RhbGx5IG5ldyB2ZW5kb3IgSUQgb3Ig
c29tZXRoaW5nLiAoU2VlIGJlbG93LikKCj4gPiA+ICsgKiBAUUNBX1dMQU5fVkVORE9SX0FUVFJf
U0FSX0xJTUlUU19TUEVDX0JBTkQ6IE9wdGlvbmFsICh1MzIpIHZhbHVlIHRvCj4gPiA+ICsgKiBp
bmRpY2F0ZSBmb3Igd2hpY2ggYmFuZCB0aGlzIHNwZWNpZmljYXRpb24gYXBwbGllcy4gVmFsaWQK
PiA+ID4gKyAqIHZhbHVlcyBhcmUgZW51bWVyYXRlZCBpbiBlbnVtICVubDgwMjExX2JhbmQgKGFs
dGhvdWdoIG5vdCBhbGwKPiA+ID4gKyAqIGJhbmRzIG1heSBiZSBzdXBwb3J0ZWQgYnkgYSBnaXZl
biBkZXZpY2UpLiBJZiB0aGUgYXR0cmlidXRlIGlzCj4gPgo+ID4gQ2FuIHdlIGRlZmluZSBzZXBh
cmF0ZWQgZW51bSB0byBhZGRyZXNzIGZvdXIgNUcgc3ViLWJhbmRzLCBsaWtlcwo+ID4KPiA+IGVu
dW0gbmw4MDIxMV9zYXJfYmFuZCB7Cj4gPiAgICAgICBOTDgwMjExX1NBUl9CQU5EXzJHLAo+ID4g
ICAgICAgTkw4MDIxMV9TQVJfQkFORF81R19CQU5EMSwKPiA+ICAgICAgIE5MODAyMTFfU0FSX0JB
TkRfNUdfQkFORDIsCj4gPiAgICAgICBOTDgwMjExX1NBUl9CQU5EXzVHX0JBTkQzLAo+ID4gICAg
ICAgTkw4MDIxMV9TQVJfQkFORF81R19CQU5ENCwKPiA+IH07Cj4KPiBQbGVhc2Ugbm90ZSB0aGF0
IHRoZSB2ZW5kb3Igc3ViY21kIGFuZCBhdHRyaWJ1dGVzIHVzZWQgaGVyZSBhcmUgYWxyZWFkeQo+
IGRlcGxveWVkIGFuZCBpbiB1c2UgYXMgYSBrZXJuZWwgaW50ZXJmYWNlLiBBcyBzdWNoLCB0aGUg
ZXhpc3RpbmcKPiBhdHRyaWJ1dGVzIGNhbm5vdCByZWFsbHkgYmUgbW9kaWZpZWQ7IGlmIGFueXRo
aW5nIGVsc2Ugd291bGQgYmUgbmVlZGVkLAo+IHRoYXQgd291bGQgbmVlZCB0byBiZSBkZWZpbmVk
IGFzIGEgbmV3IGF0dHJpYnV0ZSBhbmQvb3IgY29tbWFuZC4KCkNsYXJpZmljYXRpb246IHlvdSdy
ZSB0YWxraW5nIGFib3V0IG91dC1vZi10cmVlIGRyaXZlcnMsIHdoaWNoIHJlYWxseQpoYXZlIG5v
IHJlbGV2YW5jZSBpbiB1cHN0cmVhbSBkaXNjdXNzaW9uLCBleGNlcHQgcG9zc2libHkgYXMgZXhh
bXBsZXMuCkkgZG9uJ3QgdGhpbmsgaXQncyBldmVyIGJlZW4gYSB2YWxpZCBhcHByb2FjaCB0byBk
aWN0YXRlIHVwc3RyZWFtCmtlcm5lbCBkZXNpZ24gYmFzZWQgc2ltcGx5IG9uICJ3aGF0ICR2ZW5k
b3IgYWxyZWFkeSBpbXBsZW1lbnRlZCBmb3IKQW5kcm9pZC4iCgpNYXliZSBpdCdzIGEgYmV0dGVy
IGlkZWEgdG8ganVzdCB1c2UgZGlmZmVyZW50IGNvbW1hbmQgbnVtYmVycyAob3IKdmVuZG9yIElE
PykgaGVyZSwgdG8gYXZvaWQgc3RvbXBpbmcgb24gZWFjaCBvdGhlcnMnIGltcGxlbWVudGF0aW9u
CmNob2ljZXMuIE90aGVyd2lzZSwgaXQgc291bmRzIGxpa2Ugb3VyIG9ubHkgY2hvaWNlIGhlcmUg
aXMgdG8gY29weQp5b3VyIEFuZHJvaWQgZHJpdmVyIHZlcmJhdGltLCBvciBnZXQgbG9zdC4KCj4g
PiBJIHRoaW5rIHRoaXMgdmVuZG9yIGNvbW1hbmQgY2FuIGJlIGEgZ2VuZXJpYyBubDgwMjExIGNv
bW1hbmQsIGJlY2F1c2UKPiA+IHdlIG5lZWQgU0FSCj4gPiBwb3dlciBsaW1pdCBhcyB3ZWxsLgo+
Cj4gVGhpcyB3YXMgZGlzY3Vzc2VkIGR1cmluZyB0aGUgMjAxOSB3aXJlbGVzcyB3b3Jrc2hvcC4g
VGhlIGNvbmNsdXNpb24KPiBmcm9tIHRoYXQgZGlzY3Vzc2lvbiB3YXMgdGhhdCB3aGlsZSB0aGVy
ZSBpcyBjbGVhciBuZWVkIGZvciBTQVIgcG93ZXIKPiBsaW1pdHMgZm9yIHZhcmlvdXMgZGV2aWNl
cyBhbmQgbXVsdGlwbGUgdmVuZG9ycy9kcml2ZXJzLCBpdCBkaWQgbm90IGxvb2sKPiBjbGVhciB0
aGF0IGEgc2luZ2xlIGNvbW1vbiBpbnRlcmZhY2UgY291bGQgYmUgZGVmaW5lZCBjbGVhbmx5IHRh
a2VuIGludG8KPiBhY2NvdW50IHRoZSBkaWZmZXJlbmNlcyBpbiB0aGUgd2F5cyB2ZW5kb3JzIGhh
dmUgZGVzaWduZWQgdGhlIG1lY2hhbmlzbQo+IGluIGRyaXZlciBhbmQgZmlybXdhcmUgaW1wbGVt
ZW50YXRpb25zLiBBcyBzdWNoLCB2ZW5kb3Igc3BlY2lmaWMKPiBjb21tYW5kcyB3ZXJlIGlkZW50
aWZpZWQgYXMgdGhlIGFwcHJvYWNoLgoKW2NpdGF0aW9uIG5lZWRlZF0KSSB3YXMgaW4gdGhhdCB3
b3Jrc2hvcCwgYW5kIHdoaWxlIEkgcmVjYWxsIHRoZSBhc3NlcnRpb24sIEkgZG9uJ3QKcmVjYWxs
IGFueSBldmlkZW5jZSBbMV0uIEluIGZhY3QsIEkndmUgd2F0Y2hlZCAob2ZmLWxpc3QpIFdlbiBH
b25nCnByb3Bvc2Ugc2V2ZXJhbCB2YXJpYXRpb25zIG9mIHRoaXMgZXhhY3Qgc2FtZSBBUEkgYWxv
bmcgdGhlIHdheSAoaGludCwKSSdtIHRoZSBvbmUgcmVxdWVzdGluZyBoZSB1cHN0cmVhbSB0aGlz
KSwgYW5kIGl0J3MgY2xlYXIgdGhlcmUncwoqc29tZSogZmxleGliaWxpdHkgaW4gdGhlIEFQSS4g
SWYsIGZvciBleGFtcGxlLCB0aGUgZHJpdmVyIGF0dGVtcHRlZAp0byBwcm92aWRlIGEgbGlzdCBv
ZiBmcmVxdWVuY3kgYmFuZHMgaXQgc3VwcG9ydHMgY29udHJvbGxpbmcgVFggcG93ZXIKZm9yLCB0
aGF0IHdvdWxkIGdvIGEgbG9uZyB3YXkgdG93YXJkIHNoYXJpbmcgdGhpcyBBUEkgYmV0d2VlbiBk
cml2ZXJzLgoKQW5vdGhlciBoaW50OiB0aGlzIGlzIGV4YWN0bHkgd2h5IFBrc2hpaCBpcyBzcGVh
a2luZyB1cCBoZXJlIC0tIEknbQpmaWVsZGluZyByZXF1ZXN0cyBmcm9tIGhpbSBhbmQgaGlzIGVt
cGxveWVyIG9uIGltcGxlbWVudGluZyB0aGUgc2FtZQpmZWF0dXJlLCBhbmQgaGlzIEFQSSBpcyBz
dGFydGluZyB0byBsb29rIGFuIGF3ZnVsIGxvdCBsaWtlIHlvdXJzLiBTbyBJCnN1Z2dlc3RlZCBo
ZSByZXZpZXcgdGhpcyBwcm9wb3NhbCB0byBzZWUgd2hlcmUgYW5kIHdoeSB0aGV5IGRpZmZlci4K
CkFueXdheSwgSSBkb24ndCByZWFsbHkgb2JqZWN0IHdpdGggc3RhcnRpbmcgb3V0IHdpdGggYQpR
dWFsY29tbS1zcGVjaWZpYyBhbmQgYSBSZWFsdGVrLXNwZWNpZmljIHZlbmRvciBjb21tYW5kIHRv
IGltcGxlbWVudApuZWFybHkgdGhlIHNhbWUgZmVhdHVyZSwgYnV0IEknZCBwcmVmZXIgaWYgcGVv
cGxlIGRpZCBlbmdhZ2UgaW4gc29tZQpoZWFsdGh5IGRpc2N1c3Npb24gYWJvdXQgd2h5IHRoZXkg
Y2FuJ3Qgc2hhcmUgYW4gQVBJLCB3aXRoIHRoZSBob3Blcwp0aGF0IG1heWJlIHRoZXkgY2FuIGNv
bnZlcmdlIHNvbWVkYXkuIEluIGZhY3QsIHRoYXQncyBleGFjdGx5IHdoYXQgdGhlCldpa2kgc2F5
cyBhYm91dCB0aGlzOgoKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxv
cGVycy9kb2N1bWVudGF0aW9uL25sODAyMTEjdmVuZG9yLXNwZWNpZmljX2FwaQoKIlRoZSBnb2Fs
IHdpdGggdGhlc2UgcnVsZXMgaXMgdG8gZW5hYmxlIHVzZSBvZiB2ZW5kb3IgY29tbWFuZHMgaW4g
YQpmYXNoaW9uIHRoYXQgaXMgdHJhbnNwYXJlbnQgZW5vdWdoIHRvIGFsbG93IGxhdGVyIHJldXNl
IGJ5IG90aGVyCmNvbXBvbmVudHMgd2l0aCBzaW1pbGFyIG5lZWRzLCBhbmQgdGhlbiBwb3RlbnRp
YWxseSBkZWZpbmluZyDigJxyZWFs4oCdCm5sODAyMTEgQVBJIGZvciB0aGUgdXNlIGNhc2UgaW4g
cXVlc3Rpb24uIgoKUmVnYXJkcywKQnJpYW4KClsxXSBUaGUgY2xvc2VzdCB0aGluZyB0byBldmlk
ZW5jZSBJJ3ZlIHNlZW4gaXMgdGhhdCBjZXJ0YWluICR2ZW5kb3JzCmRlY2lkZSB0aGV5IGRvbid0
IHdhbnQgdG8gZ2l2ZSB1c2VyIHNwYWNlIGFueSBjb250cm9sIGF0IGFsbCBvdmVyIHRoZQpTQVIg
cG93ZXIgdGFibGVzLCBmb3IgJHJlYXNvbnMuIEJ1dCBzdWNoICR2ZW5kb3JzIHNob3VsZCBub3Qg
cmVhbGx5CmhhdmUgYW55IHNheSBpbiBpbXBsZW1lbnRpbmcgdXNlciBzcGFjZSBBUElzIGZvciB0
aG9zZSAkdmVuZG9ycyB0aGF0CmRvIHByb3ZpZGUgc3VjaCBjb250cm9sLgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAph
dGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2F0aDEwawo=
