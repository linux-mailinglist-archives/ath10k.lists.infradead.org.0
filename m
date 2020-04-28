Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B231BC129
	for <lists+ath10k@lfdr.de>; Tue, 28 Apr 2020 16:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yAhnQCNGE3BWH3VEm82FJzOch9Mdv9b6taZww9g2qzg=; b=NKGiJea2Ec2vKrsJPv+OujluK
	NqyVH6I5PdpmSibP+DOdQ/FrRseQwrsZ9XE8Rpp/dZcdXNZu4HRd+hczuUktN6q+mlVZlAoaPYafS
	808DLs1ODpYJsx4BahNxJSxSn1z7K8ZFd4Cx8L+fRGSbZbbHp1+5ekxqg05ChLzyPvczidjJHgqaT
	/fbCHzMaqMZxggkDBdTrrq/A/6k9zT46letc97wjIhtNGZqvHk6K1CMScLOLOpvYmO2D96kVbxrv1
	36C+uZfYfbFY+T8IwkQm6ZV+PCyOtHQQQ0fSPwick3yFv+lF/QrRtR7fdh2qvKxeSppBEic6T330T
	Oa3Ivx7IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRCu-0000Mh-5k; Tue, 28 Apr 2020 14:27:32 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRCq-0000Lt-SK
 for ath10k@lists.infradead.org; Tue, 28 Apr 2020 14:27:30 +0000
Received: from [192.168.254.4] (unknown [50.34.219.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 15B2313C283;
 Tue, 28 Apr 2020 07:27:24 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 15B2313C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1588084046;
 bh=uJfi3yqJT689k/koN7HWdgLdOqnl3VJ1ES5anj/Umb4=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=fN9YNTV5I6Omibnf0OY3BKpmE5av8OT+WHtiZg9c5deRZt+tc41d0scOzOMwQcsE1
 1mbSWQDZN5tzgPiAi0/Jqj4JsaNr4pVg/5zKq8s8NyTSl5kP1hEWAAtX5x5x/lfBEw
 yDb5OYYRI/biBC0TzdbjdWp4DVChOKz3ofS9HIyY=
Subject: Re: [PATCH] ath10k: increase rx buffer size to 2048
To: Kalle Valo <kvalo@codeaurora.org>, Sven Eckelmann <sven@narfation.org>
References: <20200205191043.21913-1-linus.luessing@c0d3.blue>
 <3300912.TRQvxCK2vZ@bentobox> <3097447.aZuNXRJysd@sven-edge>
 <87blnblsyv.fsf@codeaurora.org>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <db0f12d8-0604-70fa-81ad-5c1060eb0c6e@candelatech.com>
Date: Tue, 28 Apr 2020 07:27:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <87blnblsyv.fsf@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_072728_940790_C6F75EE6 
X-CRM114-Status: GOOD (  19.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: =?UTF-8?Q?Linus_L=c3=bcssing?= <linus.luessing@c0d3.blue>,
 Simon Wunderlich <sw@simonwunderlich.de>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, mail@adrianschmutzler.de,
 "David S . Miller" <davem@davemloft.net>,
 =?UTF-8?Q?Linus_L=c3=bcssing?= <ll@simonwunderlich.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

CgpPbiAwNC8yOC8yMDIwIDA1OjAxIEFNLCBLYWxsZSBWYWxvIHdyb3RlOgo+IFN2ZW4gRWNrZWxt
YW5uIDxzdmVuQG5hcmZhdGlvbi5vcmc+IHdyaXRlczoKPgo+PiBPbiBXZWRuZXNkYXksIDEgQXBy
aWwgMjAyMCAwOTowMDo0OSBDRVNUIFN2ZW4gRWNrZWxtYW5uIHdyb3RlOgo+Pj4gT24gV2VkbmVz
ZGF5LCA1IEZlYnJ1YXJ5IDIwMjAgMjA6MTA6NDMgQ0VTVCBMaW51cyBMw7xzc2luZyB3cm90ZToK
Pj4+PiBGcm9tOiBMaW51cyBMw7xzc2luZyA8bGxAc2ltb253dW5kZXJsaWNoLmRlPgo+Pj4+Cj4+
Pj4gQmVmb3JlLCBvbmx5IGZyYW1lcyB3aXRoIGEgbWF4aW11bSBzaXplIG9mIDE1MjggYnl0ZXMg
Y291bGQgYmUKPj4+PiB0cmFuc21pdHRlZCBiZXR3ZWVuIHR3byA4MDIuMTFzIG5vZGVzLgo+Pj4+
Cj4+Pj4gRm9yIGJhdG1hbi1hZHYgZm9yIGluc3RhbmNlLCB3aGljaCBhZGRzIGl0cyBvd24gaGVh
ZGVyIHRvIGVhY2ggZnJhbWUsCj4+Pj4gd2UgdHlwaWNhbGx5IG5lZWQgYW4gTVRVIG9mIGF0IGxl
YXN0IDE1MzIgYnl0ZXMgdG8gYmUgYWJsZSB0byB0cmFuc21pdAo+Pj4+IHdpdGhvdXQgZnJhZ21l
bnRhdGlvbi4KPj4+Pgo+Pj4+IFRoaXMgcGF0Y2ggbm93IGluY3JlYXNlcyB0aGUgbWF4bWltdW0g
ZnJhbWUgc2l6ZSBmcm9tIDE1MjggdG8gMTY1Ngo+Pj4+IGJ5dGVzLgo+Pj4gWy4uLl0KPj4+Cj4+
PiBAS2FsbGUsIEkgc2F3IHRoYXQgdGhpcyBwYXRjaCB3YXMgbWFya2VkIGFzIGRlZmVycmVkIFsx
XSBidXQgSSBjb3VsZG4ndCBmaW5kCj4+PiBhbnkgbWFpbCB3aHkgaXQgd2FzIGRvbmUgc28uIEl0
IHNlZW1zIGxpa2UgdGhpcyBjdXJyZW50bHkgY3JlYXRlcyByZWFsIHdvcmxkCj4+PiBwcm9ibGVt
cyAtIHNvIHdvdWxkIGJlIG5pY2UgaWYgeW91IGNvdWxkIGV4cGxhaW4gc2hvcnRseSB3aGF0IGlz
IGN1cnJlbnRseQo+Pj4gYmxvY2tpbmcgaXRzIGFjY2VwdGFuY2UuCj4+Cj4+IFBpbmc/Cj4KPiBT
b3JyeSBmb3IgdGhlIGRlbGF5LCBteSBwbGFuIHdhcyB0byBmaXJzdCB3cml0ZSBzb21lIGRvY3Vt
ZW50YXRpb24gYWJvdXQKPiBkaWZmZXJlbnQgaGFyZHdhcmUgZmFtaWxpZXMgYnV0IGhhdmVuJ3Qg
bWFuYWdlZCB0byBkbyB0aGF0IHlldC4KPgo+IE15IHByb2JsZW0gd2l0aCB0aGlzIHBhdGNoIGlz
IHRoYXQgSSBkb24ndCBrbm93IHdoYXQgaGFyZHdhcmUgYW5kCj4gZmlybXdhcmUgdmVyc2lvbnMg
d2VyZSB0ZXN0ZWQsIHNvIGl0IG5lZWRzIGFuYWx5c2lzIGJlZm9yZSBJIGZlZWwgc2FmZQo+IHRv
IGFwcGx5IGl0LiBUaGUgYXRoMTBrIGhhcmR3YXJlIGZhbWlsaWVzIGFyZSB2ZXJ5IGRpZmZlcmVu
dCB0aGF0IGV2ZW4KPiBpZiBhIHBhdGNoIHdvcmtzIHBlcmZlY3RseSBvbiBvbmUgYXRoMTBrIGhh
cmR3YXJlIGl0IGNvdWxkIHN0aWxsIGJyZWFrCj4gYmFkbHkgb24gYW5vdGhlciBvbmUuCj4KPiBX
aGF0IG1ha2VzIG1lIGZhc3RlciB0byBhcHBseSBhdGgxMGsgcGF0Y2hlcyBpcyB0byBoYXZlIGNv
bXByZWhlbnNpdmUKPiBhbmFseXNpcyBpbiB0aGUgY29tbWl0IGxvZy4gVGhpcyBzaG93cyBtZSB0
aGUgcGF0Y2ggYXV0aG9yIGhhcwo+IGNvbnNpZGVyZWQgYWJvdXQgYWxsIGhhcmR3YXJlIGZhbWls
aWVzLCBub3QganVzdCB0aGUgb25lIGhlIGlzIHRlc3RpbmcKPiBvbiwgYW5kIHRoYXQgSSBkb24n
dCBuZWVkIHRvIGRvIHRoZSBhbmFseXNpcyBteXNlbGYuCgpJdCBoYXMgYmVlbiBpbiBhdGgxMGst
Y3QgZm9yIGEgd2hpbGUsIGFuZCB0aGF0IGhhcyBzb21lIGZhaXJseSB3aWRlIGNvdmVyYWdlCmlu
IE9wZW5XcnQsIHNvIGxpa2VseSBpZiB0aGVyZSB3ZXJlIHByb2JsZW1zIHdlIHdvdWxkIGhhdmUg
c2VlbiBpdCBhbHJlYWR5LgoKSSBkaWQgbm90IG1ha2UgYW55IHNwZWNpZmljIGNoYW5nZXMgdG8g
ZmlybXdhcmUgdG8gc3VwcG9ydCB0aGlzLCBzbyB1cHN0cmVhbQpmaXJtd2FyZSBzaG91bGQgYmVo
YXZlIHNpbWlsYXJseS4KClNlZW1zIGxpa2UgdXBzdHJlYW0gYXRoMTBrIGNvdWxkIHJlYWxseSBi
ZW5lZml0IGZyb20gaGF2aW5nIHNvbWUgdGVzdCBiZWRzCnNvIHlvdSBjYW4gYWN0dWFsbHkgdGVz
dCBjb2RlIG9uIGRpZmZlcmVudCBjaGlwcyBhbmQgaGF2ZSBjb25maWRlbmNlCmluIHlvdXIgY2hh
bmdlcyEKClRoYW5rcywKQmVuCgotLSAKQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVjaC5j
b20+CkNhbmRlbGEgVGVjaG5vbG9naWVzIEluYyAgaHR0cDovL3d3dy5jYW5kZWxhdGVjaC5jb20K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBt
YWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
