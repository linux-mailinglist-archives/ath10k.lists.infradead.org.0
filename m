Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4312D1230FA
	for <lists+ath10k@lfdr.de>; Tue, 17 Dec 2019 16:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TlIo/OWIftgCc4ZPZeAE2TifvooWAyrlxOmv5Z6KOVU=; b=Cet3ozmb2swwqA8O+dgCBETtC
	6f8MkJKylyjnsLPLiqqnbjSr1WaZFKUfVeuX79mlb1GFxy96XrsD03WO8YRH39aSJvWfnyY7U7z0u
	Rn+n0FyKdVHm3kE1Z2Wg+RZ6mwfSgDs9FzSUJQf90dUzSTYZNEggnYaydzWxE0VFm023djzsEz8m1
	kL5zWwnL4iY0KiUVDloB286MYxmsvXmEw6coEYCPaUekj5PlBssP5zsUV8LK0Lg5IYCwzCUlYeFDs
	xe4MjHLphyFfhh8XwhMcWlMuYdlgJRiLLifB1IBc27P93COsRs7impmha0UVSJQKiUAaVDtqrW5Zi
	flDcAYA0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihFF7-00016D-GK; Tue, 17 Dec 2019 15:58:37 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihFF0-00015H-CA
 for ath10k@lists.infradead.org; Tue, 17 Dec 2019 15:58:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=za3cJOCaZuT5GQwiv3nIfwdkTIVrTryKwXbjymuUcJI=; 
 b=Xqx9JngcLIaRiGJLcEd346Qs4i6PP5f/3fyKtzKNEgGiGMDBsYSvJdyLaAS9YnyootYN2SHvL3a9HvBfvR4QY06m2TQn6WOTYrTb1H0+MK1nIrjSFC0jHyP+vb7LdbMq9Xn0OTedIsW39zYflQ1f0ELlvLji+z8GcM/YkZFbr8c=;
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
To: Ben Greear <greearb@candelatech.com>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
References: <20191216220747.887-1-greearb@candelatech.com>
 <a2af03e9-8b53-b297-467b-d0f07b8a002b@newmedia-net.de>
 <b5d63d96-4ba6-bbab-bf1c-a61c6c437f37@newmedia-net.de>
 <80700614-679a-336e-bd9a-e88622e75c9a@candelatech.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <4775d91a-9719-46f8-b0f2-979b8d86cf9f@newmedia-net.de>
Date: Tue, 17 Dec 2019 16:58:24 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <80700614-679a-336e-bd9a-e88622e75c9a@candelatech.com>
X-Received: from [2a01:7700:8040:3500:8860:b628:52d9:8f37]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1ihFDb-0007YZ-Pq; Tue, 17 Dec 2019 16:57:03 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_075832_181805_8376A3FF 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Cj4+IGN1cnJlbnRseSBkZWJ1Z2dpbmcgaW4geW91ciBjb2RlLCBidXQgaSBhbHJlYWR5IGhhdmUg
c2VlbiB0aGF0IHRoZSAKPj4gdmFsdWVzIGFyZSB3cm9uZyBub3cgZm9yIHRoaXMgY2hpcHNldAo+
Cj4gVGhhbmtzIGZvciB0ZXN0aW5nLsKgIEknbGwgYWRkIGEgY2hlY2sgZm9yIDAgYW5kIGlnbm9y
ZSB0aGF0IHZhbHVlIAo+IHRvby7CoCBUaGF0IHNlZW0gT0s/CmkgdGVzdGVkIGFscmVhZHkgdGhl
IDAgY2hlY2sgYW5kIGl0IHdvcmtzCj4KPiBXZXJlIHRoZSBwZXItY2hhaW4gdmFsdWVzIE9LPwpv
biA5OTg0IGkgc2VlIG5vIGRpc2FkdmFudGFnZSBzbyBmYXIuIHNlZW0gdG8gd29yayBhbmQgdGhl
IHZhbHVlcyBsb29rIApzYW5lLiBpIHdpbGwgZG8gYSBzaWRlIGJ5IHNpZGUgY29tcGFyaXNhdGlv
biBsYXRlciB0aGlzIGRheSBvbiA5OTg0Cj4KPiBUaGFua3MsCj4gQmVuCj4KPj4+Cj4+PiBBbSAx
Ni4xMi4yMDE5IHVtIDIzOjA3IHNjaHJpZWIgZ3JlZWFyYkBjYW5kZWxhdGVjaC5jb206Cj4+Pj4g
RnJvbTogQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVjaC5jb20+Cj4+Pj4KPj4+PiBUaGlz
IG1ha2VzIHBlci1jaGFpbiBSU1NJIGJlIG1vcmUgY29uc2lzdGVudCBiZXR3ZWVuIEhUMjAsIEhU
NDAsIEhUODAuCj4+Pj4gSW5zdGVhZCBvZiBkb2luZyBwcmVjaXNlIGxvZyBtYXRoIGZvciBhZGRp
bmcgZGJtLCBJIGRpZCBhIHJvdWdoIAo+Pj4+IGVzdGltYXRlLAo+Pj4+IGl0IHNlZW1zIHRvIHdv
cmsgZ29vZCBlbm91Z2guCj4+Pj4KPj4+PiBUZXN0ZWQgb24gYXRoMTBrLWN0IDk5ODQgZmlybXdh
cmUuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBCZW4gR3JlZWFyIDxncmVlYXJiQGNhbmRlbGF0
ZWNoLmNvbT4KPj4+PiAtLS0KPj4+PiDCoCBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBr
L2h0dF9yeC5jwqAgfCA2NCAKPj4+PiArKysrKysrKysrKysrKysrKysrKy0tLQo+Pj4+IMKgIGRy
aXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvcnhfZGVzYy5oIHzCoCAzICstCj4+Pj4gwqAg
MiBmaWxlcyBjaGFuZ2VkLCA2MCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+Pj4+Cj4+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvaHR0X3J4LmMg
Cj4+Pj4gYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL2h0dF9yeC5jCj4+Pj4gaW5k
ZXggMTNmNjUyYjYyMmRmLi4wMzRkNGFjZTIyOGQgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9u
ZXQvd2lyZWxlc3MvYXRoL2F0aDEway9odHRfcnguYwo+Pj4+ICsrKyBiL2RyaXZlcnMvbmV0L3dp
cmVsZXNzL2F0aC9hdGgxMGsvaHR0X3J4LmMKPj4+PiBAQCAtMTE2Nyw2ICsxMTY3LDQ0IEBAIHN0
YXRpYyBib29sIGF0aDEwa19odHRfcnhfaF9jaGFubmVsKHN0cnVjdCAKPj4+PiBhdGgxMGsgKmFy
LAo+Pj4+IMKgwqDCoMKgwqAgcmV0dXJuIHRydWU7Cj4+Pj4gwqAgfQo+Pj4+IMKgICtzdGF0aWMg
aW50IGF0aDEwa19zdW1fc2lnc18yKGludCBhLCBpbnQgYikgewo+Pj4+ICvCoMKgwqAgaW50IGRp
ZmY7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgaWYgKGIgPT0gMHg4MCkKPj4+PiArwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIGE7Cj4+Pj4gKwo+Pj4+ICvCoMKgwqAgaWYgKGEgPj0gYikgewo+Pj4+ICvCoMKg
wqDCoMKgwqDCoCBkaWZmID0gYSAtIGI7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChkaWZmID09
IDApCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGEgKyAzOwo+Pj4+ICvCoMKg
wqDCoMKgwqDCoCBlbHNlIGlmIChkaWZmID09IDEpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIGEgKyAyOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBlbHNlIGlmIChkaWZmID09IDIp
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGEgKyAxOwo+Pj4+ICvCoMKgwqDC
oMKgwqDCoCByZXR1cm4gYTsKPj4+PiArwqDCoMKgIH0KPj4+PiArwqDCoMKgIGVsc2Ugewo+Pj4+
ICvCoMKgwqDCoMKgwqDCoCBkaWZmID0gYiAtIGE7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChk
aWZmID09IDApCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGIgKyAzOwo+Pj4+
ICvCoMKgwqDCoMKgwqDCoCBlbHNlIGlmIChkaWZmID09IDEpCj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmV0dXJuIGIgKyAyOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBlbHNlIGlmIChkaWZm
ID09IDIpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGIgKyAxOwo+Pj4+ICvC
oMKgwqDCoMKgwqDCoCByZXR1cm4gYjsKPj4+PiArwqDCoMKgIH0KPj4+PiArfQo+Pj4+ICsKPj4+
PiArc3RhdGljIGludCBhdGgxMGtfc3VtX3NpZ3MoaW50IHAyMCwgaW50IGUyMCwgaW50IGU0MCwg
aW50IGU4MCkgewo+Pj4+ICvCoMKgwqAgLyogSGFja3kgYXR0ZW1wdCBhdCBzdW1taW5nIGRibSB3
aXRob3V0IHJlc29ydGluZyB0byBsb2coMTApIAo+Pj4+IGJ1c2luZXNzICovCj4+Pj4gK8KgwqDC
oCBpZiAoZTQwICE9IDB4ODApIHsKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGF0aDEwa19z
dW1fc2lnc18yKGF0aDEwa19zdW1fc2lnc18yKHAyMCwgZTIwKSwgCj4+Pj4gYXRoMTBrX3N1bV9z
aWdzXzIoZTQwLCBlODApKTsKPj4+PiArwqDCoMKgIH0KPj4+PiArwqDCoMKgIGVsc2Ugewo+Pj4+
ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gYXRoMTBrX3N1bV9zaWdzXzIocDIwLCBlMjApOwo+Pj4+
ICvCoMKgwqAgfQo+Pj4+ICt9Cj4+Pj4gKwo+Pj4+IMKgIHN0YXRpYyB2b2lkIGF0aDEwa19odHRf
cnhfaF9zaWduYWwoc3RydWN0IGF0aDEwayAqYXIsCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaWVlZTgwMjExX3J4X3N0YXR1cyAqc3RhdHVzLAo+
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGh0dF9y
eF9kZXNjICpyeGQpCj4+Pj4gQEAgLTExNzcsMTggKzEyMTUsMzIgQEAgc3RhdGljIHZvaWQgYXRo
MTBrX2h0dF9yeF9oX3NpZ25hbChzdHJ1Y3QgCj4+Pj4gYXRoMTBrICphciwKPj4+PiDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RhdHVzLT5jaGFpbnMgJj0gfkJJVChpKTsKPj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGlmIChyeGQtPnBwZHVfc3RhcnQucnNzaV9jaGFpbnNbaV0ucHJpMjBfbWh6ICE9
IDB4ODApIHsKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMtPmNoYWluX3NpZ25h
bFtpXSA9IEFUSDEwS19ERUZBVUxUX05PSVNFX0ZMT09SICsKPj4+PiAtIHJ4ZC0+cHBkdV9zdGFy
dC5yc3NpX2NoYWluc1tpXS5wcmkyMF9taHo7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
c3RhdHVzLT5jaGFpbl9zaWduYWxbaV0gPSBBVEgxMEtfREVGQVVMVF9OT0lTRV9GTE9PUgo+Pj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKyAKPj4+PiBhdGgxMGtfc3VtX3NpZ3Mo
cnhkLT5wcGR1X3N0YXJ0LnJzc2lfY2hhaW5zW2ldLnByaTIwX21oeiwKPj4+PiArIHJ4ZC0+cHBk
dV9zdGFydC5yc3NpX2NoYWluc1tpXS5leHQyMF9taHosCj4+Pj4gKyByeGQtPnBwZHVfc3RhcnQu
cnNzaV9jaGFpbnNbaV0uZXh0NDBfbWh6LAo+Pj4+ICsgcnhkLT5wcGR1X3N0YXJ0LnJzc2lfY2hh
aW5zW2ldLmV4dDgwX21oeik7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy9hdGgxMGtf
d2FybihhciwgInJ4LWgtc2lnLCBjaGFpblslaV0gcHJpMjA6ICVkIAo+Pj4+IGV4dDIwOiAlZMKg
IGV4dDQwOiAlZMKgIGV4dDgwOiAlZFxuIiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAv
L8KgwqDCoMKgwqDCoMKgIGksIHJ4ZC0+cHBkdV9zdGFydC5yc3NpX2NoYWluc1tpXS5wcmkyMF9t
aHosIAo+Pj4+IHJ4ZC0+cHBkdV9zdGFydC5yc3NpX2NoYWluc1tpXS5leHQyMF9taHosCj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy8gcnhkLT5wcGR1X3N0YXJ0LnJzc2lfY2hhaW5zW2ld
LmV4dDQwX21oeiwgCj4+Pj4gcnhkLT5wcGR1X3N0YXJ0LnJzc2lfY2hhaW5zW2ldLmV4dDgwX21o
eik7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1cy0+Y2hhaW5zIHw9
IEJJVChpKTsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4+IMKgwqDCoMKgwqAgfQo+Pj4+
IMKgwqDCoMKgwqDCoMKgIC8qIEZJWE1FOiBHZXQgcmVhbCBORiAqLwo+Pj4+IC3CoMKgwqAgc3Rh
dHVzLT5zaWduYWwgPSBBVEgxMEtfREVGQVVMVF9OT0lTRV9GTE9PUiArCj4+Pj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByeGQtPnBwZHVfc3RhcnQucnNzaV9jb21iOwo+Pj4+IC3CoMKgwqAg
LyogYXRoMTBrX3dhcm4oYXIsICJyeC1oLXNpZywgc2lnbmFsOiAlZMKgIGNoYWluczogMHgleCAK
Pj4+PiBjaGFpblswXTogJWTCoCBjaGFpblsxXTogJWTCoCBjaGFuWzJdOiAlZFxuIiwKPj4+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzLT5zaWdu
YWwsIHN0YXR1cy0+Y2hhaW5zLCAKPj4+PiBzdGF0dXMtPmNoYWluX3NpZ25hbFswXSwgc3RhdHVz
LT5jaGFpbl9zaWduYWxbMV0sIAo+Pj4+IHN0YXR1cy0+Y2hhaW5fc2lnbmFsWzJdKTsgKi8KPj4+
PiArwqDCoMKgIGlmIChyeGQtPnBwZHVfc3RhcnQucnNzaV9jb21iX2h0ICE9IDB4ODApIHsKPj4+
PiArwqDCoMKgwqDCoMKgwqAgc3RhdHVzLT5zaWduYWwgPSBBVEgxMEtfREVGQVVMVF9OT0lTRV9G
TE9PUiArCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcnhkLT5wcGR1X3N0YXJ0LnJzc2lf
Y29tYl9odDsKPj4+PiArwqDCoMKgIH0KPj4+PiArwqDCoMKgIGVsc2Ugewo+Pj4+ICvCoMKgwqDC
oMKgwqDCoCBzdGF0dXMtPnNpZ25hbCA9IEFUSDEwS19ERUZBVUxUX05PSVNFX0ZMT09SICsKPj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByeGQtPnBwZHVfc3RhcnQucnNzaV9jb21iOwo+Pj4+
ICvCoMKgwqAgfQo+Pj4+ICsKPj4+PiArwqDCoMKgIC8vYXRoMTBrX3dhcm4oYXIsICJyeC1oLXNp
Zywgc2lnbmFsOiAlZMKgIGNoYWluczogMHgleCAKPj4+PiBjaGFpblswXTogJWTCoCBjaGFpblsx
XTogJWTCoCBjaGFpblsyXTogJWQgY2hhaW5bM106ICVkXG4iLAo+Pj4+ICvCoMKgwqAgLy/CoMKg
wqDCoMKgwqDCoCBzdGF0dXMtPnNpZ25hbCwgc3RhdHVzLT5jaGFpbnMsIAo+Pj4+IHN0YXR1cy0+
Y2hhaW5fc2lnbmFsWzBdLAo+Pj4+ICvCoMKgwqAgLy/CoMKgwqDCoMKgwqDCoCBzdGF0dXMtPmNo
YWluX3NpZ25hbFsxXSwgc3RhdHVzLT5jaGFpbl9zaWduYWxbMl0sIAo+Pj4+IHN0YXR1cy0+Y2hh
aW5fc2lnbmFsWzNdKTsKPj4+PiDCoMKgwqDCoMKgIHN0YXR1cy0+ZmxhZyAmPSB+UlhfRkxBR19O
T19TSUdOQUxfVkFMOwo+Pj4+IMKgIH0KPj4+PiDCoCBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
d2lyZWxlc3MvYXRoL2F0aDEway9yeF9kZXNjLmggCj4+Pj4gYi9kcml2ZXJzL25ldC93aXJlbGVz
cy9hdGgvYXRoMTBrL3J4X2Rlc2MuaAo+Pj4+IGluZGV4IGRlYzE1ODIwMDViOS4uNmI0NDY3NzQ3
NGRkIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvcnhf
ZGVzYy5oCj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9yeF9kZXNj
LmgKPj4+PiBAQCAtNzI2LDcgKzcyNiw4IEBAIHN0cnVjdCByeF9wcGR1X3N0YXJ0IHsKPj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgdTggZXh0ODBfbWh6Owo+Pj4+IMKgwqDCoMKgwqAgfSByc3NpX2No
YWluc1s0XTsKPj4+PiDCoMKgwqDCoMKgIHU4IHJzc2lfY29tYjsKPj4+PiAtwqDCoMKgIF9fbGUx
NiByc3ZkMDsKPj4+PiArwqDCoMKgIHU4IHJzdmQwOyAvKiBmaXJzdCB0d28gYml0cyBhcmUgYmFu
ZHdpZHRoLCBvdGhlciA2IGFyZSAKPj4+PiByZXNlcnZlZCAqLwo+Pj4+ICvCoMKgwqAgdTggcnNz
aV9jb21iX2h0Owo+Pj4+IMKgwqDCoMKgwqAgdTggaW5mbzA7IC8qICVSWF9QUERVX1NUQVJUX0lO
Rk8wXyAqLwo+Pj4+IMKgwqDCoMKgwqAgX19sZTMyIGluZm8xOyAvKiAlUlhfUFBEVV9TVEFSVF9J
TkZPMV8gKi8KPj4+PiDCoMKgwqDCoMKgIF9fbGUzMiBpbmZvMjsgLyogJVJYX1BQRFVfU1RBUlRf
SU5GTzJfICovCj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+IGF0aDEwayBtYWlsaW5nIGxpc3QKPj4+IGF0aDEwa0BsaXN0cy5pbmZyYWRl
YWQub3JnCj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0
aDEwawo+Pj4KPj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
