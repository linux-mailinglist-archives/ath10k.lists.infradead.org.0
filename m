Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B25122B8F
	for <lists+ath10k@lfdr.de>; Tue, 17 Dec 2019 13:32:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dC6c7GKV7Sqy9Un1hUG5YHP/oko8Aymorgx9HsIePTs=; b=q8/9e0k3ePjZQFXXsIgoF5I61
	Y3SIEIAAVuYkkWQEhYILS5aOGvUow3cHrJsKMmSpNxLffmq5JyYtCCCXbTS9PDYkqctWFrPd6LPL/
	uuPjWSm7IAjaidg4YW4LcZl9Vn+6jaAZLBbv76vdLNvDL7BZxVNzxN1/hD2seCaHm8jRCgyueIFkO
	MroLeuILLb6B+DL4bD4Hz1w3jlXkkr1m8XaXdb0cLd2m9nNVmKfthrQne9rP5eZGzF/x3h+fAvLV4
	TyAGSnFho3YqV9EpcrfKcdN060r7A0QLXVLO4+MolzgVAp2RqlPfKrYm+kp0dQTn36nS1i8WIn+39
	vcojkOjdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihC21-0007Bb-Ga; Tue, 17 Dec 2019 12:32:53 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihC1w-00079j-QE
 for ath10k@lists.infradead.org; Tue, 17 Dec 2019 12:32:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:References:To:From:Subject;
 bh=BXHWn//OypmWN4nUwPmIkLW9l6j7erYnadxSsy5HUBc=; 
 b=BaewL80GueEIiQy2X5wS7xZjYmwovHnTIvZkuWNSLjaydXvexNugAetKd/I8IX+GPd1rrCBAfAazTnPkZNkg9jbpiPJClXVZacuADQXfKI5SfufcF1/D0T90vodw/eyisksY55aOQtazExnBeyDliVIStoK7N2bO6Qdz2U3zLYs=;
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
To: greearb@candelatech.com, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
References: <20191216220747.887-1-greearb@candelatech.com>
 <a2af03e9-8b53-b297-467b-d0f07b8a002b@newmedia-net.de>
Message-ID: <b5d63d96-4ba6-bbab-bf1c-a61c6c437f37@newmedia-net.de>
Date: Tue, 17 Dec 2019 13:32:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <a2af03e9-8b53-b297-467b-d0f07b8a002b@newmedia-net.de>
X-Received: from [2a01:7700:8040:3500:8860:b628:52d9:8f37]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1ihC0Z-0004Q9-K0; Tue, 17 Dec 2019 13:31:23 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_043249_288603_AD4998C1 
X-CRM114-Status: GOOD (  16.69  )
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

cmVzdWx0IG9mIG15IHRlc3RzCgpvbiBxY2E5ODh4IHJ4ZC0+cHBkdV9zdGFydC5yc3NpX2NvbWJf
aHQgaXMgYWx3YXlzIHplcm8uIHNvIHlvdSBuZWVkIHRvIAphZGQgYSBhZGRpdGlvbmFsIGNoZWNr
CgpBbSAxNy4xMi4yMDE5IHVtIDEzOjAyIHNjaHJpZWIgU2ViYXN0aWFuIEdvdHRzY2hhbGw6Cj4g
aSBzZWUgYSBpc3N1ZSBpbiB5b3VyIHBhdGNoIGZvciBxY2E5ODh4IGNoaXBzZXRzCj4KPiArwqDC
oMKgIGlmIChyeGQtPnBwZHVfc3RhcnQucnNzaV9jb21iX2h0ICE9IDB4ODApIHsKPiArwqDCoMKg
wqDCoMKgwqAgc3RhdHVzLT5zaWduYWwgPSBBVEgxMEtfREVGQVVMVF9OT0lTRV9GTE9PUiArCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcnhkLT5wcGR1X3N0YXJ0LnJzc2lfY29tYl9odDsKPiAr
wqDCoMKgIH0KPgo+Cj4gdGhpcyBpcyBhbHdheXMgdHJ1ZSBmb3IgcWNhOTg4eCwgYnV0IHRoZSBm
aWVsZCBpcyBub3QgcHJvdmlkZWQgb24gCj4gdGhlc2Ugb2xkZXIgY2hpcHNldHMuIHNvIHNpZ25h
bCByZXBvcnRpbmcgd2lsbCBiZSBicm9rZW4KPiBpJ20gY3VycmVudGx5IGRlYnVnZ2luZyBpbiB5
b3VyIGNvZGUsIGJ1dCBpIGFscmVhZHkgaGF2ZSBzZWVuIHRoYXQgdGhlIAo+IHZhbHVlcyBhcmUg
d3Jvbmcgbm93IGZvciB0aGlzIGNoaXBzZXQKPgo+IEFtIDE2LjEyLjIwMTkgdW0gMjM6MDcgc2No
cmllYiBncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbToKPj4gRnJvbTogQmVuIEdyZWVhciA8Z3JlZWFy
YkBjYW5kZWxhdGVjaC5jb20+Cj4+Cj4+IFRoaXMgbWFrZXMgcGVyLWNoYWluIFJTU0kgYmUgbW9y
ZSBjb25zaXN0ZW50IGJldHdlZW4gSFQyMCwgSFQ0MCwgSFQ4MC4KPj4gSW5zdGVhZCBvZiBkb2lu
ZyBwcmVjaXNlIGxvZyBtYXRoIGZvciBhZGRpbmcgZGJtLCBJIGRpZCBhIHJvdWdoIAo+PiBlc3Rp
bWF0ZSwKPj4gaXQgc2VlbXMgdG8gd29yayBnb29kIGVub3VnaC4KPj4KPj4gVGVzdGVkIG9uIGF0
aDEway1jdCA5OTg0IGZpcm13YXJlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW4gR3JlZWFyIDxn
cmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvbmV0L3dpcmVsZXNz
L2F0aC9hdGgxMGsvaHR0X3J4LmPCoCB8IDY0ICsrKysrKysrKysrKysrKysrKysrLS0tCj4+IMKg
IGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvcnhfZGVzYy5oIHzCoCAzICstCj4+IMKg
IDIgZmlsZXMgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPj4KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvaHR0X3J4LmMgCj4+
IGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9odHRfcnguYwo+PiBpbmRleCAxM2Y2
NTJiNjIyZGYuLjAzNGQ0YWNlMjI4ZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxl
c3MvYXRoL2F0aDEway9odHRfcnguYwo+PiArKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgv
YXRoMTBrL2h0dF9yeC5jCj4+IEBAIC0xMTY3LDYgKzExNjcsNDQgQEAgc3RhdGljIGJvb2wgYXRo
MTBrX2h0dF9yeF9oX2NoYW5uZWwoc3RydWN0IAo+PiBhdGgxMGsgKmFyLAo+PiDCoMKgwqDCoMKg
IHJldHVybiB0cnVlOwo+PiDCoCB9Cj4+IMKgICtzdGF0aWMgaW50IGF0aDEwa19zdW1fc2lnc18y
KGludCBhLCBpbnQgYikgewo+PiArwqDCoMKgIGludCBkaWZmOwo+PiArCj4+ICvCoMKgwqAgaWYg
KGIgPT0gMHg4MCkKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBhOwo+PiArCj4+ICvCoMKgwqAg
aWYgKGEgPj0gYikgewo+PiArwqDCoMKgwqDCoMKgwqAgZGlmZiA9IGEgLSBiOwo+PiArwqDCoMKg
wqDCoMKgwqAgaWYgKGRpZmYgPT0gMCkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJu
IGEgKyAzOwo+PiArwqDCoMKgwqDCoMKgwqAgZWxzZSBpZiAoZGlmZiA9PSAxKQo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gYSArIDI7Cj4+ICvCoMKgwqDCoMKgwqDCoCBlbHNlIGlm
IChkaWZmID09IDIpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBhICsgMTsKPj4g
K8KgwqDCoMKgwqDCoMKgIHJldHVybiBhOwo+PiArwqDCoMKgIH0KPj4gK8KgwqDCoCBlbHNlIHsK
Pj4gK8KgwqDCoMKgwqDCoMKgIGRpZmYgPSBiIC0gYTsKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChk
aWZmID09IDApCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBiICsgMzsKPj4gK8Kg
wqDCoMKgwqDCoMKgIGVsc2UgaWYgKGRpZmYgPT0gMSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIGIgKyAyOwo+PiArwqDCoMKgwqDCoMKgwqAgZWxzZSBpZiAoZGlmZiA9PSAyKQo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gYiArIDE7Cj4+ICvCoMKgwqDCoMKgwqDC
oCByZXR1cm4gYjsKPj4gK8KgwqDCoCB9Cj4+ICt9Cj4+ICsKPj4gK3N0YXRpYyBpbnQgYXRoMTBr
X3N1bV9zaWdzKGludCBwMjAsIGludCBlMjAsIGludCBlNDAsIGludCBlODApIHsKPj4gK8KgwqDC
oCAvKiBIYWNreSBhdHRlbXB0IGF0IHN1bW1pbmcgZGJtIHdpdGhvdXQgcmVzb3J0aW5nIHRvIGxv
ZygxMCkgCj4+IGJ1c2luZXNzICovCj4+ICvCoMKgwqAgaWYgKGU0MCAhPSAweDgwKSB7Cj4+ICvC
oMKgwqDCoMKgwqDCoCByZXR1cm4gYXRoMTBrX3N1bV9zaWdzXzIoYXRoMTBrX3N1bV9zaWdzXzIo
cDIwLCBlMjApLCAKPj4gYXRoMTBrX3N1bV9zaWdzXzIoZTQwLCBlODApKTsKPj4gK8KgwqDCoCB9
Cj4+ICvCoMKgwqAgZWxzZSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gYXRoMTBrX3N1bV9z
aWdzXzIocDIwLCBlMjApOwo+PiArwqDCoMKgIH0KPj4gK30KPj4gKwo+PiDCoCBzdGF0aWMgdm9p
ZCBhdGgxMGtfaHR0X3J4X2hfc2lnbmFsKHN0cnVjdCBhdGgxMGsgKmFyLAo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpZWVlODAyMTFfcnhfc3RhdHVz
ICpzdGF0dXMsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Ry
dWN0IGh0dF9yeF9kZXNjICpyeGQpCj4+IEBAIC0xMTc3LDE4ICsxMjE1LDMyIEBAIHN0YXRpYyB2
b2lkIGF0aDEwa19odHRfcnhfaF9zaWduYWwoc3RydWN0IAo+PiBhdGgxMGsgKmFyLAo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgc3RhdHVzLT5jaGFpbnMgJj0gfkJJVChpKTsKPj4gwqAgwqDCoMKgwqDC
oMKgwqDCoMKgIGlmIChyeGQtPnBwZHVfc3RhcnQucnNzaV9jaGFpbnNbaV0ucHJpMjBfbWh6ICE9
IDB4ODApIHsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzLT5jaGFpbl9zaWduYWxb
aV0gPSBBVEgxMEtfREVGQVVMVF9OT0lTRV9GTE9PUiArCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcnhkLT5wcGR1X3N0YXJ0LnJzc2lfY2hhaW5zW2ldLnByaTIwX21oejsKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzLT5jaGFpbl9zaWduYWxbaV0gPSBBVEgxMEtf
REVGQVVMVF9OT0lTRV9GTE9PUgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICsg
Cj4+IGF0aDEwa19zdW1fc2lncyhyeGQtPnBwZHVfc3RhcnQucnNzaV9jaGFpbnNbaV0ucHJpMjBf
bWh6LAo+PiArIHJ4ZC0+cHBkdV9zdGFydC5yc3NpX2NoYWluc1tpXS5leHQyMF9taHosCj4+ICsg
cnhkLT5wcGR1X3N0YXJ0LnJzc2lfY2hhaW5zW2ldLmV4dDQwX21oeiwKPj4gKyByeGQtPnBwZHVf
c3RhcnQucnNzaV9jaGFpbnNbaV0uZXh0ODBfbWh6KTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLy9hdGgxMGtfd2FybihhciwgInJ4LWgtc2lnLCBjaGFpblslaV0gcHJpMjA6ICVkIGV4dDIw
OiAKPj4gJWTCoCBleHQ0MDogJWTCoCBleHQ4MDogJWRcbiIsCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIC8vwqDCoMKgwqDCoMKgwqAgaSwgcnhkLT5wcGR1X3N0YXJ0LnJzc2lfY2hhaW5zW2ld
LnByaTIwX21oeiwgCj4+IHJ4ZC0+cHBkdV9zdGFydC5yc3NpX2NoYWluc1tpXS5leHQyMF9taHos
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8vIHJ4ZC0+cHBkdV9zdGFydC5yc3NpX2NoYWlu
c1tpXS5leHQ0MF9taHosIAo+PiByeGQtPnBwZHVfc3RhcnQucnNzaV9jaGFpbnNbaV0uZXh0ODBf
bWh6KTsKPj4gwqAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzLT5jaGFpbnMgfD0g
QklUKGkpOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+PiDCoMKgwqDCoMKgIH0KPj4gwqAgwqDC
oMKgwqDCoCAvKiBGSVhNRTogR2V0IHJlYWwgTkYgKi8KPj4gLcKgwqDCoCBzdGF0dXMtPnNpZ25h
bCA9IEFUSDEwS19ERUZBVUxUX05PSVNFX0ZMT09SICsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByeGQtPnBwZHVfc3RhcnQucnNzaV9jb21iOwo+PiAtwqDCoMKgIC8qIGF0aDEwa193YXJu
KGFyLCAicngtaC1zaWcsIHNpZ25hbDogJWTCoCBjaGFpbnM6IDB4JXggY2hhaW5bMF06IAo+PiAl
ZMKgIGNoYWluWzFdOiAlZMKgIGNoYW5bMl06ICVkXG4iLAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzLT5zaWduYWwsIHN0YXR1cy0+Y2hhaW5z
LCAKPj4gc3RhdHVzLT5jaGFpbl9zaWduYWxbMF0sIHN0YXR1cy0+Y2hhaW5fc2lnbmFsWzFdLCAK
Pj4gc3RhdHVzLT5jaGFpbl9zaWduYWxbMl0pOyAqLwo+PiArwqDCoMKgIGlmIChyeGQtPnBwZHVf
c3RhcnQucnNzaV9jb21iX2h0ICE9IDB4ODApIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHN0YXR1cy0+
c2lnbmFsID0gQVRIMTBLX0RFRkFVTFRfTk9JU0VfRkxPT1IgKwo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByeGQtPnBwZHVfc3RhcnQucnNzaV9jb21iX2h0Owo+PiArwqDCoMKgIH0KPj4gK8Kg
wqDCoCBlbHNlIHsKPj4gK8KgwqDCoMKgwqDCoMKgIHN0YXR1cy0+c2lnbmFsID0gQVRIMTBLX0RF
RkFVTFRfTk9JU0VfRkxPT1IgKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByeGQtPnBwZHVf
c3RhcnQucnNzaV9jb21iOwo+PiArwqDCoMKgIH0KPj4gKwo+PiArwqDCoMKgIC8vYXRoMTBrX3dh
cm4oYXIsICJyeC1oLXNpZywgc2lnbmFsOiAlZMKgIGNoYWluczogMHgleCBjaGFpblswXTogCj4+
ICVkwqAgY2hhaW5bMV06ICVkwqAgY2hhaW5bMl06ICVkIGNoYWluWzNdOiAlZFxuIiwKPj4gK8Kg
wqDCoCAvL8KgwqDCoMKgwqDCoMKgIHN0YXR1cy0+c2lnbmFsLCBzdGF0dXMtPmNoYWlucywgc3Rh
dHVzLT5jaGFpbl9zaWduYWxbMF0sCj4+ICvCoMKgwqAgLy/CoMKgwqDCoMKgwqDCoCBzdGF0dXMt
PmNoYWluX3NpZ25hbFsxXSwgc3RhdHVzLT5jaGFpbl9zaWduYWxbMl0sIAo+PiBzdGF0dXMtPmNo
YWluX3NpZ25hbFszXSk7Cj4+IMKgwqDCoMKgwqAgc3RhdHVzLT5mbGFnICY9IH5SWF9GTEFHX05P
X1NJR05BTF9WQUw7Cj4+IMKgIH0KPj4gwqAgZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVs
ZXNzL2F0aC9hdGgxMGsvcnhfZGVzYy5oIAo+PiBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9h
dGgxMGsvcnhfZGVzYy5oCj4+IGluZGV4IGRlYzE1ODIwMDViOS4uNmI0NDY3NzQ3NGRkIDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3J4X2Rlc2MuaAo+PiAr
KysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3J4X2Rlc2MuaAo+PiBAQCAtNzI2
LDcgKzcyNiw4IEBAIHN0cnVjdCByeF9wcGR1X3N0YXJ0IHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
IHU4IGV4dDgwX21oejsKPj4gwqDCoMKgwqDCoCB9IHJzc2lfY2hhaW5zWzRdOwo+PiDCoMKgwqDC
oMKgIHU4IHJzc2lfY29tYjsKPj4gLcKgwqDCoCBfX2xlMTYgcnN2ZDA7Cj4+ICvCoMKgwqAgdTgg
cnN2ZDA7IC8qIGZpcnN0IHR3byBiaXRzIGFyZSBiYW5kd2lkdGgsIG90aGVyIDYgYXJlIHJlc2Vy
dmVkICovCj4+ICvCoMKgwqAgdTggcnNzaV9jb21iX2h0Owo+PiDCoMKgwqDCoMKgIHU4IGluZm8w
OyAvKiAlUlhfUFBEVV9TVEFSVF9JTkZPMF8gKi8KPj4gwqDCoMKgwqDCoCBfX2xlMzIgaW5mbzE7
IC8qICVSWF9QUERVX1NUQVJUX0lORk8xXyAqLwo+PiDCoMKgwqDCoMKgIF9fbGUzMiBpbmZvMjsg
LyogJVJYX1BQRFVfU1RBUlRfSU5GTzJfICovCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IGF0aDEwayBtYWlsaW5nIGxpc3QKPiBhdGgxMGtAbGlz
dHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYXRoMTBrCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
