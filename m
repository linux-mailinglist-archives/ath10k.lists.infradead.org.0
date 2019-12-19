Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 610B2125DF1
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 10:45:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZxrHTkj2ph9ttrG6217w/RqfF0CKJ7gAmcm7R/PRis=; b=ry1HBN70vzPeRv
	Nf0fo1aruJ8EqFerwr5+OFHqXJS7lDeo63geZFoElJSHeyRzT9int0gg+NjgkPtJBjEx1SV4a+fin
	9a9q/hopQKen6cCbrKwnG6R7cJmRaX3m5/epRG+Gf96I4cO8w75eAzgsi5NK0pIaGJEfok4JBGijf
	KAe37x+3E+G7V8u+fTBgXIH2kYpLJ0/AusB8/xb3iga30NB2Y35S9LD2GxWxXEEmlAETedxKVLpis
	DOq1OKuPPwnXoD3kXgDtkCGWXW7Eh7UIMYcFtVIrVKsnTMOUQMudn32k1AXDovQAu/jZB0XOffO/b
	i6S58xPulesYT1wPFzfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihsN3-0002tu-25; Thu, 19 Dec 2019 09:45:25 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ihsMy-0002rX-LF
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 09:45:22 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBJ9jFDW003133,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS12.realtek.com.tw[172.21.6.16])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBJ9jFDW003133
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Dec 2019 17:45:15 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTITCAS12.realtek.com.tw (172.21.6.16) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Thu, 19 Dec 2019 17:45:15 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTEXMB03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 19 Dec 2019 17:45:15 +0800
Received: from RTEXMB04.realtek.com.tw ([fe80::d9c5:a079:495e:b999]) by
 RTEXMB04.realtek.com.tw ([fe80::d9c5:a079:495e:b999%6]) with mapi id
 15.01.1779.005; Thu, 19 Dec 2019 17:45:15 +0800
From: Pkshih <pkshih@realtek.com>
To: "kvalo@codeaurora.org" <kvalo@codeaurora.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Subject: Re: [PATCH 2/2] ath10k: allow dynamic SAR power limits to be
 configured
Thread-Topic: [PATCH 2/2] ath10k: allow dynamic SAR power limits to be
 configured
Thread-Index: AQHVtbqgmfC7L3CRJUO4KPQhAXkz/6fAsHQA
Date: Thu, 19 Dec 2019 09:45:14 +0000
Message-ID: <1576748714.7758.18.camel@realtek.com>
References: <1576684108-30177-1-git-send-email-kvalo@codeaurora.org>
 <1576684108-30177-3-git-send-email-kvalo@codeaurora.org>
In-Reply-To: <1576684108-30177-3-git-send-email-kvalo@codeaurora.org>
Accept-Language: en-US, zh-TW
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.69.95]
Content-ID: <7E4378CAE2EA9E4480D1745429D99BF2@realtek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_014520_835531_9D332DB1 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDE5LTEyLTE4IGF0IDE3OjQ4ICswMjAwLCBLYWxsZSBWYWxvIHdyb3RlOg0KPiBG
cm9tOiBXZW4gR29uZyA8d2dvbmdAY29kZWF1cm9yYS5vcmc+DQo+IA0KPiBBZGQgc3VwcG9ydCBm
b3IgYSB2ZW5kb3IgY29tbWFuZCBmb3IgU1RBVElPTiwgdGhlIGNvbW1hbmQNCj4gUUNBX05MODAy
MTFfVkVORE9SX1NVQkNNRF9TRVRfU0FSX0xJTUlUUyB3aGljaCBpcyBhbHJlYWR5IGRlZmluZWQg
aW4NCj4gZ2l0Oi8vdzEuZmkvaG9zdGFwLmdpdCAoc3JjL2NvbW1hbmQvcWNhLXZlbmRvci5oKS4g
VGhpcyBhbGxvd3MgdXNlcg0KPiBzcGFjZSB0byBjb25maWd1cmUgcG93ZXIgbGltaXRzIGZvciAy
LjQgR0h6IGFuZCA1IEdIeiBiYW5kcy4NCj4gDQo+IGF0aDEwayBzZXQgcGRldiBwYXJhbWV0ZXIg
V01JX1BERVZfUEFSQU1fVFhQT1dFUl9MSU1JVDJHIGFuZA0KPiBXTUlfUERFVl9QQVJBTV9UWFBP
V0VSX0xJTUlUNUcgdG8gZmlybXdhcmUsIHRoZSAyIHZhbHVlIHdpbGwNCj4gYmUgdXNlZCBhcyBv
bmUgaW5wdXQgc291cmNlIHRvIGFmZmVjdCB0aGUgdHggcG93ZXIuDQo+IA0KPiBXaGVuIFFDQV9O
TDgwMjExX1ZFTkRPUl9TVUJDTURfU0VUX1NBUl9MSU1JVFMgc2V0IHRvIGF0aDEwaywgaXQgd2ls
bA0KPiBiZSBzYXZlZCB0aGUgMi40RyBhbmQgNUcgbGltaXQgdmFsdWUsIElmIFNUQVRJT04gaXMg
Y29ubmVjdGVkIG1lYW53aGlsZSwNCj4gdGhlbiB0aGUgMi40RyBhbmQgNUcgV01JIGNvbW1hbmQg
d2lsbCBiZSBzZXQgdG8gZmlybXdhcmUsIG90aGVyd2lzZQ0KPiBpdCB3aWxsIG5vdCBzZXQgdG8g
ZmlybXdhcmUgYXQgdGhpcyBtb21lbnQuIFdoZW4gU1RBVElPTiBjb25uZWN0DQo+IG5leHQgdGlt
ZSwgaXQgd2lsbCBzZXQgdG8gZmlybXdhcmUuDQo+IA0KPiBUZXN0ZWQgd2l0aCBRQ0E2MTc0IFNE
SU8gd2l0aCBmaXJtd2FyZSBXTEFOLlJNSC40LjQuMS0wMDAyOS4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IFdlbiBHb25nIDx3Z29uZ0Bjb2RlYXVyb3JhLm9yZz4NCj4gU2lnbmVkLW9mZi1ieTogS2Fs
bGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9yYS5vcmc+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvbmV0L3dp
cmVsZXNzL2F0aC9hdGgxMGsvTWFrZWZpbGUgfMKgwqDCoDEgKw0KPiDCoGRyaXZlcnMvbmV0L3dp
cmVsZXNzL2F0aC9hdGgxMGsvY29yZS5jwqDCoMKgfMKgwqDCoDIgKw0KPiDCoGRyaXZlcnMvbmV0
L3dpcmVsZXNzL2F0aC9hdGgxMGsvY29yZS5owqDCoMKgfMKgwqDCoDIgKw0KPiDCoGRyaXZlcnMv
bmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvaHcuaMKgwqDCoMKgwqB8wqDCoMKgMyArDQo+IMKgZHJp
dmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9tYWMuY8KgwqDCoMKgfMKgwqA2NCArKysrKysr
KysrKysrKysrKw0KPiDCoGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvbWFjLmjCoMKg
wqDCoHzCoMKgwqAyICstDQo+IMKgZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway92ZW5k
b3IuYyB8IDExNA0KPiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+IMKgZHJpdmVy
cy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway92ZW5kb3IuaCB8wqDCoDEzICsrKysNCj4gwqBkcml2
ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS5owqDCoMKgwqB8wqDCoMKgNiArKw0KPiDC
oDkgZmlsZXMgY2hhbmdlZCwgMjA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gwqBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway92ZW5kb3Iu
Yw0KPiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBr
L3ZlbmRvci5oDQo+IA0KDQpbLi4uXQ0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJl
bGVzcy9hdGgvYXRoMTBrL3dtaS5oDQo+IGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEw
ay93bWkuaA0KPiBpbmRleCA5NzJkNTNkNzc2NTQuLmYwY2FkYWExMjM5OSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWkuaA0KPiArKysgYi9kcml2ZXJz
L25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS5oDQo+IEBAIC0zNjk1LDYgKzM2OTUsMTIgQEAg
c3RydWN0IHdtaV9jc2FfZXZlbnQgew0KPiDCoCNkZWZpbmUgVkRFVl9ERUZBVUxUX1NUQVRTX1VQ
REFURV9QRVJJT0TCoMKgwqDCoDUwMA0KPiDCoCNkZWZpbmUgUEVFUl9ERUZBVUxUX1NUQVRTX1VQ
REFURV9QRVJJT0TCoMKgwqDCoDUwMA0KPiDCoA0KPiArLyogdGhlIG1hc2sgb2YgNCBzdWIgYmFu
ZCBvZiA1RyBmb3IgU0FSIHBhcmFtZXRlcnMgKi8NCj4gKyNkZWZpbmUgQVRIMTBLX1dNSV9TQVJf
NUdfMF9NQVNLIEdFTk1BU0soNywgMCkNCj4gKyNkZWZpbmUgQVRIMTBLX1dNSV9TQVJfNUdfMV9N
QVNLIEdFTk1BU0soMTUsIDgpDQo+ICsjZGVmaW5lIEFUSDEwS19XTUlfU0FSXzVHXzJfTUFTSyBH
RU5NQVNLKDIzLCAxNikNCj4gKyNkZWZpbmUgQVRIMTBLX1dNSV9TQVJfNUdfM19NQVNLIEdFTk1B
U0soMzEsIDI0KQ0KPiArDQoNClRoZXNlIG1hc2tzIGFyZW4ndCB1c2VkLg0KRG8geW91IHVzZSAn
dTMyJyBhcyBmb3VyICd1OCcgU0FSIHBvd2VyIGxpbWl0IGZvciBmb3VyIGJhbmRzPw0KDQo+IMKg
c3RydWN0IHdtaV9wZGV2X3BhcmFtX21hcCB7DQo+IMKgCXUzMiB0eF9jaGFpbl9tYXNrOw0KPiDC
oAl1MzIgcnhfY2hhaW5fbWFzazsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
