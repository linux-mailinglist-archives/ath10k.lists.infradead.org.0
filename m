Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05341EC5D5
	for <lists+ath10k@lfdr.de>; Fri,  1 Nov 2019 16:47:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V095TjJdVAkPmwO2egQtiuvLAdpVRA9sE6AtwVFNNUk=; b=rzH+WoHw9crpZ+4SlL5oUDRy6
	vmV9jSYHR7Glzg75+Uf0mNpLORRJsc13Y1WZVMgrQX+jBftENPtBNxj/UcHP5SC1o7UK6gY96LJji
	u3BMu7ASPUfsgdrCFqHiuVfxAXaycofFkHV2KyNC8QNjTTdrJBevstV2zRhyTiJfNUAtGAjWCqpa3
	fYfZjxKJetFe/JqvvboiYbbZP6hcl+1vQ1ts9MgOqVvdfgtPXK4FY6/q5eGQWZCIDOuAW4OuR95pr
	aFFpJO03sYBccN1nnDeFe/YXcJmyqT2AhlOa96yWzz4YEYF93Jk7DyDgRGZCIH1mWRHQ6iPL2SswT
	+M0KO97fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZ8k-0002Z0-Qj; Fri, 01 Nov 2019 15:47:06 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZ8Z-0002SP-54
 for ath10k@lists.infradead.org; Fri, 01 Nov 2019 15:46:56 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 21C4213C358;
 Fri,  1 Nov 2019 08:46:54 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 21C4213C358
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1572623214;
 bh=kg6shKRkT49EeDU0n1B8F0wFW//q446ZCdn+nF6zvjs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Ks4Hubv0NSBrXYvozqgarg4kElqq0rzRbUTGwPw2a+tBV9FjHrfKCVZ/13onoIHNO
 eAQhy6V9l2bq2NohMNcrI36pYgrHoFwpVnNgeydSfvQHOu0awDdaBaSBcL52f8AO92
 qkl53tR7LKRgDKp6CnxUhwGqYfpMC59bTbjI1BEw=
Subject: Re: [RFC PATCH] ath10k: fix RX of frames with broken FCS in monitor
 mode
To: =?UTF-8?Q?Linus_L=c3=bcssing?= <linus.luessing@c0d3.blue>,
 ath10k@lists.infradead.org
References: <20191101111138.9086-1-linus.luessing@c0d3.blue>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <8d256f92-a74b-1670-4493-8e36f402548b@candelatech.com>
Date: Fri, 1 Nov 2019 08:46:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20191101111138.9086-1-linus.luessing@c0d3.blue>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_084655_249221_6F72BB9C 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?Q?Linus_L=c3=bcssing?= <ll@simonwunderlich.de>,
 Simon Wunderlich <sw@simonwunderlich.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMTEvMS8xOSA0OjExIEFNLCBMaW51cyBMw7xzc2luZyB3cm90ZToKPiBGcm9tOiBMaW51cyBM
w7xzc2luZyA8bGxAc2ltb253dW5kZXJsaWNoLmRlPgo+IAo+IFNvIGZhciwgZnJhbWVzIHdlcmUg
Zm9yd2FyZGVkIHJlZ2FyZGxlc3Mgb2YgdGhlIEZDUyBjb3JyZWN0bmVzcyBsZWFkaW5nCj4gdG8g
dXNlcnNwYWNlIGFwcGxpY2F0aW9ucyBsaXN0ZW5pbmcgb24gdGhlIG1vbml0b3IgbW9kZSBpbnRl
cmZhY2UgdG8KPiByZWNlaXZlIHBvdGVudGlhbGx5IGJyb2tlbiBmcmFtZXMsIGV2ZW4gd2l0aCB0
aGUgImZjc2ZhaWwiIGZsYWcgdW5zZXQuCj4gCj4gQnkgZGVmYXVsdCwgd2l0aCB0aGUgImZjc2Zh
aWwiIGZsYWcgb2YgYSBtb25pdG9yIG1vZGUgaW50ZXJmYWNlCj4gdW5zZXQsIGZyYW1lcyB3aXRo
IEZDUyBlcnJvcnMgc2hvdWxkIGJlIGRyb3BwZWQuIFdpdGggdGhpcyBwYXRjaCwgdGhlCj4gZmNz
ZmFpbCBmbGFnIGlzIHRha2VuIGludG8gYWNjb3VudCBjb3JyZWN0bHkuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogTGludXMgTMO8c3NpbmcgPGxsQHNpbW9ud3VuZGVybGljaC5kZT4KPiAtLS0KPiBUaGlz
IHdhcyB0ZXN0ZWQgb24gYW4gT3BlbiBNZXNoIEE0MSBkZXZpY2UsIGZlYXR1cmluZyBhIFFDQTQw
MTkuIEFuZAo+IHdpdGggdGhpcyBmaXJtd2FyZToKPiAKPiBodHRwczovL3d3dy5jYW5kZWxhdGVj
aC5jb20vZG93bmxvYWRzL2F0aDEway00MDE5LTEwLTRiL2Zpcm13YXJlLTUtY3QtZnVsbC1jb21t
dW5pdHktMTIuYmluLWxlZGUuMDExCj4gCj4gQnV0IGZyb20gbG9va2luZyBhdCB0aGUgY29kZSBp
dCBzZWVtcyB0aGF0IHRoZSB2YW5pbGxhIGF0aDEwayBoYXMgdGhlCj4gc2FtZSBpc3N1ZSwgdGhl
cmVmb3JlIHN1Ym1pdHRpbmcgaXQgaGVyZS4KPiAKPiBJJ20gYWxzbyBub3QgdGhhdCBmYW1pbGlh
ciB3aXRoIHRoZSBhdGgxMGsgY29kZSB5ZXQuIFNvIG5vdCAxMDAlIHN1cmUgaWYKPiBpdCdzIHRo
ZSByaWdodCBwbGFjZSBmb3IgdGhpcyBjaGVjay4gVGhlcmVmb3JlIHNlbmRpbmcgYXMgUkZDLgo+
IC0tLQo+ICAgZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9odHRfcnguYyB8IDYgKysr
KysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvaHR0X3J4LmMgYi9kcml2ZXJzL25ldC93
aXJlbGVzcy9hdGgvYXRoMTBrL2h0dF9yeC5jCj4gaW5kZXggNTNmMTA5NWRlOGZmLi5jZTBhMTZl
YmI4YmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9odHRf
cnguYwo+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvaHR0X3J4LmMKPiBA
QCAtMTI4NSw2ICsxMjg1LDEyIEBAIHN0YXRpYyB2b2lkIGF0aDEwa19wcm9jZXNzX3J4KHN0cnVj
dCBhdGgxMGsgKmFyLCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQo+ICAgCj4gICAJc3RhdHVzID0gSUVF
RTgwMjExX1NLQl9SWENCKHNrYik7Cj4gICAKPiArCWlmIChhci0+bW9uaXRvciAmJiAhKGFyLT5m
aWx0ZXJfZmxhZ3MgJiBGSUZfRkNTRkFJTCkgJiYKPiArCSAgICBzdGF0dXMtPmZsYWcgJiBSWF9G
TEFHX0ZBSUxFRF9GQ1NfQ1JDKSB7Cj4gKwkJZGV2X2tmcmVlX3NrYl9hbnkoc2tiKTsKPiArCQly
ZXR1cm47Cj4gKwl9CgpNYXliZSB3b3J0aCBhZGRpbmcgYSBjb3VudGVyIGxpa2UgJ3J4X2Ryb3Bf
Y3JjJyB0byB0aGUgYXRoMTBrX2RlYnVnIHN0cnVjdCBhbmQgaW5jcmVtZW50IGl0IGhlcmUKYW5k
IGFsc28gc2hvdyBpbiBkZWJ1Z2ZzIGFuZC9vciBldGh0b29sIHN0YXRzPwoKQW5kLCBtYXliZSBu
byBjaGVjayBmb3IgYXItPm1vbml0b3IsIGluIGNhc2Ugc29tZWhvdyB0aGUgZnJhbWUgaXMgc3Rp
bGwgcmVjZWl2ZWQKd2l0aCBiYWQgQ1JDIGV2ZW4gd2l0aG91dCBtb25pdG9yIG1vZGU/CgpUaGFu
a3MsCkJlbgoKCi0tIApCZW4gR3JlZWFyIDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT4KQ2FuZGVs
YSBUZWNobm9sb2dpZXMgSW5jICBodHRwOi8vd3d3LmNhbmRlbGF0ZWNoLmNvbQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxp
c3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
