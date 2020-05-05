Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A28891C4E83
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 08:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N38Zi+xo7KSgwLmfPd2EQpuZZ5G9Ku+dy9vRqjinh0o=; b=RIXEbPfro7rtVWWkZNHAOGEvw
	2Pl8jkYP6GccUgttNcM59awf1gnT4Um/jUXX1rcn3Mu4ausLgHEdGdEB9XOTJza/FfUxlfFD2MFaD
	0hkjTEHuQnnzGNZeUY5AgMKmmGHqq4D+yDnK5b2jl8lTjDTlkLYVkMs22MLAGvN1r1MX12b3l42NH
	R318201gh8Y8BSdj7tT/anQEbeATSlb+FZ6vlaMvi/PhNjg1woq7N4F8c6a5QXW9QqINkBrOiJMeO
	+c1j1/dxJb0gwaYdTcoLlUb4reZq6CZuO866DvBnriC7KSnZ2FCxWhqo2XtLpcZ+9gDwsLA04DUiU
	etC2+K39Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVrSO-0000ax-NJ; Tue, 05 May 2020 06:53:32 +0000
Received: from smail.rz.tu-ilmenau.de ([141.24.186.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVrSK-0000a8-57; Tue, 05 May 2020 06:53:30 +0000
Received: from [192.168.178.34] (unknown [87.147.56.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smail.rz.tu-ilmenau.de (Postfix) with ESMTPSA id 29329580243;
 Tue,  5 May 2020 08:53:25 +0200 (CEST)
Subject: Re: [PATCH 2/2] ath11k: use cumulative survey statistics
To: Rajkumar Manoharan <rmanohar@codeaurora.org>
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
 <20200504154122.91862-2-markus.theil@tu-ilmenau.de>
 <85fa2d5f9183b3a12c5283b800f3750f@codeaurora.org>
From: Markus Theil <markus.theil@tu-ilmenau.de>
Message-ID: <c786e982-fcd6-2368-6b2f-f09b265654d6@tu-ilmenau.de>
Date: Tue, 5 May 2020 08:53:24 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <85fa2d5f9183b3a12c5283b800f3750f@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_235328_780910_265EE26C 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.24.186.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 kvalo@codeaurora.org, ath10k@lists.infradead.org, ath11k@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

QW0gMDUuMDUuMjAyMCB1bSAwMTozNyBzY2hyaWViIFJhamt1bWFyIE1hbm9oYXJhbjoKPiBPbiAy
MDIwLTA1LTA0IDA4OjQxLCBNYXJrdXMgVGhlaWwgd3JvdGU6Cj4+IGF0aDExayBjdXJyZW50bHkg
cmVwb3J0cyBzdXJ2ZXkgcmVzdWx0cyBmb3IgdGhlIGxhc3QgaW50ZXJ2YWwgYmV0d2VlbiAKPj4g
ZWFjaAo+PiBpbnZvY2F0aW9uIG9mIE5MODAyMTFfQ01EX0dFVF9TVVJWRVkuIEZvciBjb25jdXJy
ZW50IGludm9jYXRpb25zLCB0aGlzCj4+IGNhbiBsZWFkIHRvIHVuZXhwZWN0ZWRseSBzbWFsbCBy
ZXN1bHRzLCBlLmcuIHdoZW4gaG9zdGFwZCB1c2VzIHN1cnZleQo+PiBkYXRhIGFuZCBpdyBzdXJ2
ZXkgZHVtcCBpcyBpbnZva2VkIGluIHBhcmFsbGVsLiBGaXggdGhpcyBieSByZXR1cm5pbmcKPj4g
Y3VtdWxhdGl2ZSByZXN1bHRzLCB0aGF0IGRvbid0IGRlcGVuZCBvbiB0aGUgbGFzdCBpbnZvY2F0
aW9uLiBPdGhlcgo+PiBkcml2ZXJzLCBlLmcuIGF0aDlrIG9yIG10NzYgYWxzbyB1c2UgdGhpcyBi
ZWhhdmlvci4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTWFya3VzIFRoZWlsIDxtYXJrdXMudGhlaWxA
dHUtaWxtZW5hdS5kZT4KPj4gLS0tCj4+IMKgZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEx
ay93bWkuYyB8IDIwICsrKysrKysrKystLS0tLS0tLS0tCj4+IMKgMSBmaWxlIGNoYW5nZWQsIDEw
IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvd2lyZWxlc3MvYXRoL2F0aDExay93bWkuYwo+PiBiL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L2F0aC9hdGgxMWsvd21pLmMKPj4gaW5kZXggYzJhOTcyMzc3Njg3Li4zMjJkZGZkYTViZmQgMTAw
NjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMWsvd21pLmMKPj4gKysr
IGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDExay93bWkuYwo+PiBAQCAtNTYxMCwxNiAr
NTYxMCwxNiBAQCBhdGgxMWtfcGRldl9ic3NfY2hhbl9pbmZvX2V2ZW50KHN0cnVjdAo+PiBhdGgx
MWtfYmFzZSAqYWIsIHN0cnVjdCBza19idWZmICpza2IpCj4+Cj4+IMKgwqDCoMKgIHN1cnZleSA9
ICZhci0+c3VydmV5W2lkeF07Cj4+Cj4+IC3CoMKgwqAgc3VydmV5LT5ub2lzZcKgwqDCoMKgID0g
YnNzX2NoX2luZm9fZXYubm9pc2VfZmxvb3I7Cj4+IC3CoMKgwqAgc3VydmV5LT50aW1lwqDCoMKg
wqDCoCA9IGRpdl91NjQodG90YWwsIGNjX2ZyZXFfaHopOwo+PiAtwqDCoMKgIHN1cnZleS0+dGlt
ZV9idXN5ID0gZGl2X3U2NChidXN5LCBjY19mcmVxX2h6KTsKPj4gLcKgwqDCoCBzdXJ2ZXktPnRp
bWVfcnjCoMKgID0gZGl2X3U2NChyeF9ic3MsIGNjX2ZyZXFfaHopOwo+PiAtwqDCoMKgIHN1cnZl
eS0+dGltZV90eMKgwqAgPSBkaXZfdTY0KHR4LCBjY19mcmVxX2h6KTsKPj4gLcKgwqDCoCBzdXJ2
ZXktPmZpbGxlZMKgwqAgfD0gKFNVUlZFWV9JTkZPX05PSVNFX0RCTSB8Cj4+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBTVVJWRVlfSU5GT19USU1FIHwKPj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIFNVUlZFWV9JTkZPX1RJTUVfQlVTWSB8Cj4+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBTVVJWRVlfSU5GT19USU1FX1JYIHwKPj4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFNVUlZFWV9JTkZPX1RJTUVfVFgpOwo+PiArwqDC
oMKgIHN1cnZleS0+bm9pc2XCoMKgwqDCoMKgID0gYnNzX2NoX2luZm9fZXYubm9pc2VfZmxvb3I7
Cj4+ICvCoMKgwqAgc3VydmV5LT50aW1lwqDCoMKgwqDCoCArPSBkaXZfdTY0KHRvdGFsLCBjY19m
cmVxX2h6KTsKPj4gK8KgwqDCoCBzdXJ2ZXktPnRpbWVfYnVzeSArPSBkaXZfdTY0KGJ1c3ksIGNj
X2ZyZXFfaHopOwo+PiArwqDCoMKgIHN1cnZleS0+dGltZV9yeMKgwqAgKz0gZGl2X3U2NChyeF9i
c3MsIGNjX2ZyZXFfaHopOwo+PiArwqDCoMKgIHN1cnZleS0+dGltZV90eMKgwqAgKz0gZGl2X3U2
NCh0eCwgY2NfZnJlcV9oeik7Cj4+ICvCoMKgwqAgc3VydmV5LT5maWxsZWTCoMKgwqAgfD0gKFNV
UlZFWV9JTkZPX05PSVNFX0RCTSB8Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIFNVUlZFWV9JTkZPX1RJTUUgfAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBTVVJWRVlfSU5GT19USU1FX0JVU1kgfAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBTVVJWRVlfSU5GT19USU1FX1JYIHwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgU1VSVkVZX0lORk9fVElNRV9UWCk7Cj4KPiBNYXJrdXMsCj4KPiBJdCBk
ZXBlbmRzIG9uIHR5cGUgb2Ygc3VydmV5IHJlcXVlc3QgaXMgZ2l2ZW4gdG8gZmlybXdhcmUuIElu
IGF0aDExaywgCj4gZmlybXdhcmUgcmVwb3J0cwo+IGFjY3VtdWxhdGVkIHZhbHVlcy4gU28gdGhl
IGFib3ZlIGFkZGl0aW9uIGlzIHdyb25nIGFuZCByZXBvcnQgZG91YmxlIAo+IHZhbHVlLiBIYXZl
IHlvdQo+IHRlc3RlZCB0aGlzIGNoYW5nZT8KPgo+IC1SYWprdW1hcgpPaywgc28gcGxlYXNlIGRy
b3AgYm90aCBvZiBteSBwYXRjaGVzLiBNeSBhc3N1bXB0aW9ucyB3ZXJlIGluY29tcGxldGUgCmFu
ZCB0b28gaHVtYmxlLiBJIGp1c3QgYXNzdW1lZCwgYXRoMTBrIGFuZCBhdGgxMWsgYm90aCB1c2Ug
aW5jcmVtZW50YWwgCnN1cnZleXMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
