Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5692C125DEF
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 10:45:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uz52xP493SDFdSTD0thDK5X2D1sITUe1/0IuLkUpGdw=; b=uiB34W3LOYxGk9
	n5J4LFD/NPCN6RjEJCmPAUelXiMsQiBsAorF5pIJH9tuoJCEceNramKFqxhn/pEJLVW1QoeVkBFZ2
	uln00iP6KhvtkuWcRzhrUZLFItfIhuImeMzRcmugjjvqvHzLrks3NlbY7WKpDoao+cVxpuKSrCJ7S
	lg0mceKss5hoIES4d2Y2s2PS/6EZ8Zuw9t4jqWtVMG9XssGO2GjymAecj9mcS+66dpJ0p23nQz9J7
	IjBEnmW6fu5Pgb0J+2j3APi2wxBy+2PqNk/2oaZwxDiumD8jZl0X639sDj/efAyRuwX0j0hOaoDxO
	Aw7OqpucD0pAj8Zh2QoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihsMw-0002pq-Gw; Thu, 19 Dec 2019 09:45:18 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ihsMs-0002ms-6U
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 09:45:16 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBJ9irAX002966,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS12.realtek.com.tw[172.21.6.16])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBJ9irAX002966
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Dec 2019 17:44:53 +0800
Received: from RTEXMB05.realtek.com.tw (172.21.6.98) by
 RTITCAS12.realtek.com.tw (172.21.6.16) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Thu, 19 Dec 2019 17:44:53 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTEXMB05.realtek.com.tw (172.21.6.98) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 19 Dec 2019 17:44:52 +0800
Received: from RTEXMB04.realtek.com.tw ([fe80::d9c5:a079:495e:b999]) by
 RTEXMB04.realtek.com.tw ([fe80::d9c5:a079:495e:b999%6]) with mapi id
 15.01.1779.005; Thu, 19 Dec 2019 17:44:52 +0800
From: Pkshih <pkshih@realtek.com>
To: "kvalo@codeaurora.org" <kvalo@codeaurora.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Subject: Re: [PATCH 1/2] nl80211: vendor-cmd: qca: add dynamic SAR power limits
Thread-Topic: [PATCH 1/2] nl80211: vendor-cmd: qca: add dynamic SAR power
 limits
Thread-Index: AQHVtbqfy+afOUsOgU+QxpLu1oHgEqfAsFoA
Date: Thu, 19 Dec 2019 09:44:52 +0000
Message-ID: <1576748692.7758.17.camel@realtek.com>
References: <1576684108-30177-1-git-send-email-kvalo@codeaurora.org>
 <1576684108-30177-2-git-send-email-kvalo@codeaurora.org>
In-Reply-To: <1576684108-30177-2-git-send-email-kvalo@codeaurora.org>
Accept-Language: en-US, zh-TW
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.69.95]
Content-ID: <7DDF86B689B53E43A7D50DF0F926A71F@realtek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_014514_499420_D768C763 
X-CRM114-Status: GOOD (  23.62  )
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
cm9tOiBXZW4gR29uZyA8d2dvbmdAY29kZWF1cm9yYS5vcmc+DQo+IA0KPiBUaGUgdmVuZG9yIGNv
bW1hbmRzIGlzIHRvIGFkZCBBUEkgZm9yIHVzZXIgdG8gY29uZmlndXJlIGR5bmFtaWMgU0FSDQo+
IHBvd2VyIGxpbWl0cywgaXQgd2lsbCBub3QgcmVwbGFjZSB0aGUgZXhpc3RpbmcgcG93ZXIgY29u
dHJvbA0KPiBmdW5jdGlvbmFsaXR5LCBpdCBpcyB0byBtYWtlIG1vcmUgY29udmVuaWVudCB0byBj
b25maWd1cmUgcG93ZXIuDQo+IA0KPiBBbiBleGFtcGxlIG9mIHVzYWdlKHdsYW4wIGlzIHRoZSB3
aXJlbGVzcyBpbnRlcmZhY2UgZGV2IG5hbWUpOg0KPiBpdyBkZXYgd2xhbjAgdmVuZG9yIHNlbmQg
MHgxMzc0IDB4OTIgMHgyQyAweDAwIDB4MDMgMHgwMCAweDE0IDB4MDAgMHgwMQ0KPiAweDAwIDB4
MDggMHgwMCAweDA3IDB4MDAgMHgyMiAweDAwIDB4MDAgMHgwMCAweDA4IDB4MDAgMHgwNCAweDAw
IDB4MDANCj4gMHgwMCAweDAwIDB4MDAgMHgxNCAweDAwIDB4MDIgMHgwMCAweDA4IDB4MDAgMHgw
NyAweDAwIDB4MTEgMHgwMCAweDAwDQo+IDB4MDAgMHgwOCAweDAwIDB4MDQgMHgwMCAweDAxIDB4
MDAgMHgwMCAweDAwDQo+IA0KPiBtZWFucyBvZiBieXRlczoNCj4gMHgxMzc0OiB2ZW5kb3IgaWQN
Cj4gMHg5MjogdmVuZG9yIHN1YmNtZCBpZA0KPiAweDIyOiAyLjRHIHBvd2VyIGxpbWl0DQo+IDB4
MTE6IDVHIHBvd2VyIGxpbWl0DQo+IA0KPiBUZXN0ZWQgd2l0aCBRQ0E2MTc0IFNESU8gd2l0aCBm
aXJtd2FyZSBXTEFOLlJNSC40LjQuMS0wMDAyOS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFdlbiBH
b25nIDx3Z29uZ0Bjb2RlYXVyb3JhLm9yZz4NCj4gU2lnbmVkLW9mZi1ieTogS2FsbGUgVmFsbyA8
a3ZhbG9AY29kZWF1cm9yYS5vcmc+DQo+IC0tLQ0KPiDCoGluY2x1ZGUvdWFwaS9ubDgwMjExLXZu
ZC1xY2EuaCB8IDY4DQo+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kw0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA2OCBpbnNlcnRpb25zKCspDQo+IMKgY3JlYXRlIG1vZGUg
MTAwNjQ0IGluY2x1ZGUvdWFwaS9ubDgwMjExLXZuZC1xY2EuaA0KPiANCj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvdWFwaS9ubDgwMjExLXZuZC1xY2EuaCBiL2luY2x1ZGUvdWFwaS9ubDgwMjExLXZu
ZC1xY2EuaA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAuLjQ4
MmM5NDA5YTJjMA0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL2luY2x1ZGUvdWFwaS9ubDgwMjEx
LXZuZC1xY2EuaA0KPiBAQCAtMCwwICsxLDY4IEBADQo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogSVNDICovDQo+ICsvKg0KPiArICogQ29weXJpZ2h0IChjKSAyMDE5IFRoZSBMaW51eCBG
b3VuZGF0aW9uLiBBbGwgcmlnaHRzIHJlc2VydmVkLg0KPiArICovDQo+ICsNCj4gKyNpZm5kZWYg
X1VBUElfTkw4MDIxMV9WTkRfUUNBX0gNCj4gKyNkZWZpbmUgX1VBUElfTkw4MDIxMV9WTkRfUUNB
X0gNCj4gKw0KPiArLyogVmVuZG9yIGlkIHRvIGJlIHVzZWQgaW4gdmVuZG9yIHNwZWNpZmljIGNv
bW1hbmQgYW5kIGV2ZW50cyB0byB1c2VyIHNwYWNlDQo+ICsgKiBOT1RFOiBUaGUgYXV0aG9yaXRh
dGl2ZSBwbGFjZSBmb3IgZGVmaW5pdGlvbiBvZiBRQ0FfTkw4MDIxMV9WRU5ET1JfSUQsDQo+ICsg
KiB2ZW5kb3Igc3ViY21kIGRlZmluaXRpb25zIHByZWZpeGVkIHdpdGggUUNBX05MODAyMTFfVkVO
RE9SX1NVQkNNRCwgYW5kDQo+ICsgKiBxY2Ffd2xhbl92ZW5kb3JfYXR0ciBpcyBvcGVuIHNvdXJj
ZSBmaWxlIHNyYy9jb21tb24vcWNhLXZlbmRvci5oIGluDQo+ICsgKiBnaXQ6Ly93MS5maS9zcnYv
Z2l0L2hvc3RhcC5naXQ7IHRoZSB2YWx1ZXMgaGVyZSBhcmUganVzdCBhIGNvcHkgb2YgdGhhdA0K
PiArICovDQo+ICsjZGVmaW5lIFFDQV9OTDgwMjExX1ZFTkRPUl9JRCAweDAwMTM3NA0KPiArDQo+
ICsvKioNCj4gKyAqIGVudW0gcWNhX25sODAyMTFfdmVuZG9yX3N1YmNtZHMgLSBRQ0Egbmw4MDIx
MSB2ZW5kb3IgY29tbWFuZCBpZGVudGlmaWVycw0KPiArICoNCj4gKyAqQFFDQV9OTDgwMjExX1ZF
TkRPUl9TVUJDTURfU0VUX1NBUl9MSU1JVFMgYW5kIGlzIHVzZWQgdG8gcmV0cmlldmUgdGhlDQo+
ICsgKglzZXR0aW5ncyBjdXJyZW50bHkgaW4gdXNlLiBUaGUgYXR0cmlidXRlcyByZXR1cm5lZCBi
eSB0aGlzIGNvbW1hbmQNCj4gYXJlDQo+ICsgKglkZWZpbmVkIGJ5IGVudW0gcWNhX3ZlbmRvcl9h
dHRyX3Nhcl9saW1pdHMuDQo+ICsgKi8NCj4gK2VudW0gcWNhX25sODAyMTFfdmVuZG9yX3N1YmNt
ZHMgew0KPiArCVFDQV9OTDgwMjExX1ZFTkRPUl9TVUJDTURfU0VUX1NBUl9MSU1JVFMgPSAxNDYs
DQo+ICsJfTsNCj4gKw0KPiArLyoqDQo+ICsgKiBlbnVtIHFjYV92ZW5kb3JfYXR0cl9zYXJfbGlt
aXRzIC0gQXR0cmlidXRlcyBmb3IgU0FSIHBvd2VyIGxpbWl0cw0KPiArICoNCj4gKyAqIEBRQ0Ff
V0xBTl9WRU5ET1JfQVRUUl9TQVJfTElNSVRTX1NQRUM6IE5lc3RlZCBhcnJheSBvZiBTQVIgcG93
ZXINCj4gKyAqCWxpbWl0IHNwZWNpZmljYXRpb25zLiBUaGUgbnVtYmVyIG9mIHNwZWNpZmljYXRp
b25zIGlzDQo+ICsgKglzcGVjaWZpZWQgYnkgQFFDQV9XTEFOX1ZFTkRPUl9BVFRSX1NBUl9MSU1J
VFNfTlVNX1NQRUNTLiBFYWNoDQo+ICsgKglzcGVjaWZpY2F0aW9uIGNvbnRhaW5zIGEgc2V0IG9m
DQo+ICsgKglRQ0FfV0xBTl9WRU5ET1JfQVRUUl9TQVJfTElNSVRTX1NQRUNfKiBhdHRyaWJ1dGVz
LiBBDQo+ICsgKglzcGVjaWZpY2F0aW9uIGlzIHVuaXF1ZWx5IGlkZW50aWZpZWQgYnkgdGhlIGF0
dHJpYnV0ZXMNCj4gKyAqCSVRQ0FfV0xBTl9WRU5ET1JfQVRUUl9TQVJfTElNSVRTX1NQRUNfQkFO
RCBhbmQgYWx3YXlzDQo+ICsgKgljb250YWlucyBhcyBhIHBheWxvYWQgdGhlIGF0dHJpYnV0ZQ0K
PiArICoJJVFDQV9XTEFOX1ZFTkRPUl9BVFRSX1NBUl9MSU1JVFNfU1BFQ19QT1dFUl9MSU1JVC4N
Cj4gKyAqDQo+ICsgKiBAUUNBX1dMQU5fVkVORE9SX0FUVFJfU0FSX0xJTUlUU19TUEVDX0JBTkQ6
IE9wdGlvbmFsICh1MzIpIHZhbHVlIHRvDQo+ICsgKglpbmRpY2F0ZSBmb3Igd2hpY2ggYmFuZCB0
aGlzIHNwZWNpZmljYXRpb24gYXBwbGllcy4gVmFsaWQNCj4gKyAqCXZhbHVlcyBhcmUgZW51bWVy
YXRlZCBpbiBlbnVtICVubDgwMjExX2JhbmQgKGFsdGhvdWdoIG5vdCBhbGwNCj4gKyAqCWJhbmRz
IG1heSBiZSBzdXBwb3J0ZWQgYnkgYSBnaXZlbiBkZXZpY2UpLiBJZiB0aGUgYXR0cmlidXRlIGlz
DQoNCkNhbiB3ZSBkZWZpbmUgc2VwYXJhdGVkIGVudW0gdG8gYWRkcmVzcyBmb3VyIDVHIHN1Yi1i
YW5kcywgbGlrZXMNCg0KZW51bSBubDgwMjExX3Nhcl9iYW5kIHsNCglOTDgwMjExX1NBUl9CQU5E
XzJHLA0KCU5MODAyMTFfU0FSX0JBTkRfNUdfQkFORDEsDQoJTkw4MDIxMV9TQVJfQkFORF81R19C
QU5EMiwNCglOTDgwMjExX1NBUl9CQU5EXzVHX0JBTkQzLA0KCU5MODAyMTFfU0FSX0JBTkRfNUdf
QkFORDQsDQp9Ow0KDQpJIHRoaW5rIHRoaXMgdmVuZG9yIGNvbW1hbmQgY2FuIGJlIGEgZ2VuZXJp
YyBubDgwMjExIGNvbW1hbmQsIGJlY2F1c2UNCndlIG5lZWQgU0FSDQpwb3dlciBsaW1pdCBhcyB3
ZWxsLg0KDQo+ICsgKglub3Qgc3VwcGxpZWQgdGhlbiB0aGUgc3BlY2lmaWNhdGlvbiB3aWxsIGJl
IGFwcGxpZWQgdG8gYWxsDQo+ICsgKglzdXBwb3J0ZWQgYmFuZHMuDQo+ICsgKg0KPiArICogQFFD
QV9XTEFOX1ZFTkRPUl9BVFRSX1NBUl9MSU1JVFNfU1BFQ19QT1dFUl9MSU1JVDogUmVxdWlyZWQg
KHUzMikNCj4gKyAqCXZhbHVlIHRvIHNwZWNpZnkgdGhlIGFjdHVhbCBwb3dlciBsaW1pdCB2YWx1
ZSBpbiB1bml0cyBvZiAwLjUNCj4gKyAqCWRCbSAoaS5lLiwgYSB2YWx1ZSBvZiAxMSByZXByZXNl
bnRzIDUuNSBkQm0pLg0KDQpDYW4gd2UgaGF2ZSBoaWdoZXIgcHJlY2lzaW9uLCBpbiB1bml0IG9m
IDAuMTI1Pw0KDQoNCj4gKyAqCVRoaXMgaXMgcmVxdWlyZWQsIHdoZW4gJVFDQV9XTEFOX1ZFTkRP
Ul9BVFRSX1NBUl9MSU1JVFNfU0VMRUNUIGlzDQo+ICsgKgklUUNBX1dMQU5fVkVORE9SX0FUVFJf
U0FSX0xJTUlUU19TRUxFQ1RfVVNFUi4NCj4gKyAqDQo+ICsgKiBUaGVzZSBhdHRyaWJ1dGVzIGFy
ZSB1c2VkIHdpdGggJVFDQV9OTDgwMjExX1ZFTkRPUl9TVUJDTURfU0VUX1NBUl9MSU1JVFMNCj4g
KyAqIGFuZCAlUUNBX05MODAyMTFfVkVORE9SX1NVQkNNRF9HRVRfU0FSX0xJTUlUUy4NCj4gKyAq
Lw0KPiArZW51bSBxY2FfdmVuZG9yX2F0dHJfc2FyX2xpbWl0cyB7DQo+ICsJUUNBX1dMQU5fVkVO
RE9SX0FUVFJfU0FSX0xJTUlUU19JTlZBTElEID0gMCwNCj4gKwlRQ0FfV0xBTl9WRU5ET1JfQVRU
Ul9TQVJfTElNSVRTX1NQRUMgPSAzLA0KPiArCVFDQV9XTEFOX1ZFTkRPUl9BVFRSX1NBUl9MSU1J
VFNfU1BFQ19CQU5EID0gNCwNCj4gKwlRQ0FfV0xBTl9WRU5ET1JfQVRUUl9TQVJfTElNSVRTX1NQ
RUNfUE9XRVJfTElNSVQgPSA3LA0KDQpXaHkgdGhlc2UgZW51bSBhcmVuJ3QgY29udGludWFsPw0K
VGhlIHJlYXNvbiBtYXkgYmUgYmVjYXVzZSBRQ0FfV0xBTl9WRU5ET1JfQVRUUl9TQVJfTElNSVRT
X1NFTEVDVCBhbmQgc29tZXRoaW5nDQptZQ0KbnRpb25lZCBpbiBhYm92ZSBwYXJhZ3JhcGggYnV0
IG1pc3NpbmcgaW4gdGhpcyBlbnVtPw0KDQpUaGV5IHdpbGwgd2FzdGUgbWVtb3J5IHdoZW4gZG9p
bmcgbmxhX3BhcnNlKCkgd2l0aCB0YltNQVhdOw0KDQo+ICsNCj4gKwlRQ0FfV0xBTl9WRU5ET1Jf
QVRUUl9TQVJfTElNSVRTX0FGVEVSX0xBU1QsDQo+ICsJUUNBX1dMQU5fVkVORE9SX0FUVFJfU0FS
X0xJTUlUU19NQVggPQ0KPiArCQlRQ0FfV0xBTl9WRU5ET1JfQVRUUl9TQVJfTElNSVRTX0FGVEVS
X0xBU1QgLSAxDQo+ICt9Ow0KPiArDQo+ICsjZW5kaWYgLyogX1VBUElfTkw4MDIxMV9WTkRfUUNB
X0hfICovDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwph
dGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
