Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 059251DAB09
	for <lists+ath10k@lfdr.de>; Wed, 20 May 2020 08:49:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n//cs2ugbzFe3BiiKkyumlRsQE5jkoB51YV7pt9Fa4Y=; b=J2dwN+RlnBJCQG
	MlpZJGhdYuJIX8Esd8iHbj6uHHozuAUj/s1V3vJ6ArlCw9IDS6oElyH85XuqbdXMSPoBWp9cyc8KM
	NP3GIiXh6aCoXCR0gbE7AepFPOMW0+RUhcQ1Zh7iYiiHdkY9Nl0qQA+RV5uBtgbTJOq65ylcy5a2+
	G2YdCsXA4FLYJu/y/qyrW3N7ZpcDZ+ngdhMLyX11BqRcaKRDsZGjblb1lN0F1kZ27xBT/t3yXh+2A
	bz4i+Avy5NO1j8OWzpTiJtbznlPvwtvn52iLjvtNXlFajPPYcq2Y9b7va72WAP6abRQeE987DqQ/f
	QgdhSiqSrv/Wlb5MMXqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbIXE-00049d-2U; Wed, 20 May 2020 06:49:00 +0000
Received: from smail.rz.tu-ilmenau.de ([141.24.186.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIX9-00048Y-Tf
 for ath10k@lists.infradead.org; Wed, 20 May 2020 06:48:57 +0000
Received: from [192.168.178.25] (unknown [87.147.49.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smail.rz.tu-ilmenau.de (Postfix) with ESMTPSA id 50C8D58006C;
 Wed, 20 May 2020 08:48:49 +0200 (CEST)
Subject: Re: [PATCHv4] ath10k : Fix channel survey dump
To: John Deere <24601deerej@gmail.com>,
 Venkateswara Naralasetty <vnaralas@codeaurora.org>,
 ath10k@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
References: <1588820612-15884-1-git-send-email-vnaralas@codeaurora.org>
 <bee1439c-de98-dbf0-ee82-88620ecc560a@gmail.com>
From: Markus Theil <markus.theil@tu-ilmenau.de>
Message-ID: <f3da0683-1e1e-6c67-08bb-2147e745a317@tu-ilmenau.de>
Date: Wed, 20 May 2020 08:48:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <bee1439c-de98-dbf0-ee82-88620ecc560a@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_234856_105808_EDF3BAEA 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.24.186.67 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

SSd2ZSBzZWVuIHRoaXMgcGF0Y2ggZ290IGRyb3BwZWQgYWdhaW4gZnJvbSB0aGUgYXRoLmdpdCBw
ZW5kaW5nIGJyYW5jaC4KT24gd2hpY2ggaHcvZmlybXdhcmUgY29tYmluYXRpb24gZGlkIGl0IGZh
aWwgdG8gb3BlcmF0ZT8KCk9uIDUvMTcvMjAgNDoyNiBBTSwgSm9obiBEZWVyZSB3cm90ZToKPgo+
IE9uIDUvNy8yMCAxMTowMyBBTSwgVmVua2F0ZXN3YXJhIE5hcmFsYXNldHR5IHdyb3RlOgo+PiBD
aGFubmVsIGFjdGl2ZS9idXN5IHRpbWUgYXJlIHNob3dpbmcgaW5jb3JyZWN0KGxlc3MgdGhhbiBw
cmV2aW91cyBvcgo+PiBzb21ldGltZXMgemVybykgZm9yIHN1Y2Nlc3NpdmUgc3VydmV5IGR1bXAg
Y29tbWFuZC4KPj4KPj4gZXhhbXBsZToKPj4gU3VydmV5IGRhdGEgZnJvbSB3bGFuMAo+PiDCoMKg
wqDCoGZyZXF1ZW5jeTrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
NTE4MCBNSHogW2luIHVzZV0KPj4gwqDCoMKgwqBjaGFubmVsIGFjdGl2ZSB0aW1lOsKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgNTQ5OTUgbXMKPj4gwqDCoMKgwqBjaGFubmVsIGJ1c3kgdGltZTrCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA0MzIgbXMKPj4gwqDCoMKgwqBjaGFubmVsIHJlY2VpdmUg
dGltZTrCoMKgwqDCoMKgwqDCoMKgwqDCoCAwIG1zCj4+IMKgwqDCoMKgY2hhbm5lbCB0cmFuc21p
dCB0aW1lOsKgwqDCoMKgwqDCoMKgwqDCoCA1OSBtcwo+PiBTdXJ2ZXkgZGF0YSBmcm9tIHdsYW4w
Cj4+IMKgwqDCoMKgZnJlcXVlbmN5OsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCA1MTgwIE1IeiBbaW4gdXNlXQo+PiDCoMKgwqDCoGNoYW5uZWwgYWN0aXZlIHRpbWU6
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAzMjU5MiBtcwo+PiDCoMKgwqDCoGNoYW5uZWwgYnVzeSB0
aW1lOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDI1NCBtcwo+PiDCoMKgwqDCoGNoYW5uZWwg
cmVjZWl2ZSB0aW1lOsKgwqDCoMKgwqDCoMKgwqDCoMKgIDAgbXMKPj4gwqDCoMKgwqBjaGFubmVs
IHRyYW5zbWl0IHRpbWU6wqDCoMKgwqDCoMKgwqDCoMKgIDAgbXMKPj4KPj4gVGhpcyBwYXRjaCBm
aXggdGhpcyBpc3N1ZSBieSBhc3NpZ25pbmcgJ3dtaV9ic3Nfc3VydmV5X3JlcV90eXBlJwo+PiBh
cyAnV01JX0JTU19TVVJWRVlfUkVRX1RZUEVfUkVBRCcgd2hpY2ggYWNjdW11bGF0ZSBzdXJ2ZXkg
ZGF0YSBpbgo+PiBGVyBhbmQgc2VuZCBzdXJ2ZXkgZGF0YSB0byBkcml2ZXIgdXBvbiB0aGUgZHJp
dmVyIHJlcXVlc3QuIFdyYXAgYXJvdW5kCj4+IGlzIHRha2VuIGNhcmUgYnkgRlcuCj4+Cj4+IGhh
cmR3YXJlIHVzZWQgOiBRQ0E5OTg0Cj4+IGZpcm13YXJlIHZlcsKgIDogdmVyIDEwLjQtMy41LjMt
MDAwNTcKPj4KPj4gaGFyZHdhcmUgdXNlZCA6IFFDQTk4OFgKPj4gZmlybXdhcmUgdmVywqAgOiAx
MC4yLjQtMS4wLTAwMDQ3Cj4+Cj4+IFRlc3RlZC1ieTogTWFya3VzIFRoZWlsIDxtYXJrdXMudGhl
aWxAdHUtaWxtZW5hdS5kZT4KPj4gU2lnbmVkLW9mZi1ieTogVmVua2F0ZXN3YXJhIE5hcmFsYXNl
dHR5IDx2bmFyYWxhc0Bjb2RlYXVyb3JhLm9yZz4KPj4gLS0tCj4+IHY0Ogo+PiDCoCAqIHVwZGF0
ZWQgc2lnbmVkLW9mZi1ieQo+Pgo+PiB2MzoKPj4gwqAgKiBSZWJhc2VkIG9uIFRPVCBhbmQgYWRk
ZWQgVGVzdGVkLWJ5Cj4+Cj4+IMKgIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvbWFj
LmMgfCAyICstCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway9t
YWMuYwo+PiBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvbWFjLmMKPj4gaW5kZXgg
YTExNDdjYy4uOTMzMGI1MiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRo
L2F0aDEway9tYWMuYwo+PiArKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL21h
Yy5jCj4+IEBAIC03Mjc1LDcgKzcyNzUsNyBAQCBhdGgxMGtfbWFjX3VwZGF0ZV9ic3NfY2hhbl9z
dXJ2ZXkoc3RydWN0IGF0aDEwawo+PiAqYXIsCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHN0cnVjdCBpZWVlODAyMTFfY2hhbm5lbCAqY2hhbm5lbCkKPj4gwqAgewo+
PiDCoMKgwqDCoMKgIGludCByZXQ7Cj4+IC3CoMKgwqAgZW51bSB3bWlfYnNzX3N1cnZleV9yZXFf
dHlwZSB0eXBlID0KPj4gV01JX0JTU19TVVJWRVlfUkVRX1RZUEVfUkVBRF9DTEVBUjsKPj4gK8Kg
wqDCoCBlbnVtIHdtaV9ic3Nfc3VydmV5X3JlcV90eXBlIHR5cGUgPSBXTUlfQlNTX1NVUlZFWV9S
RVFfVFlQRV9SRUFEOwo+PiDCoCDCoMKgwqDCoMKgIGxvY2tkZXBfYXNzZXJ0X2hlbGQoJmFyLT5j
b25mX211dGV4KTsKPj4gwqAKPgo+Cj4gSSBoYXZlIHRlc3RlZCB0aGlzIG9uIGEgUUNBOTk4MCBk
ZXZpY2Ugb24gYSBUUC1MaW5rIEFyY2hlciBBN3Y1IHdpdGgKPiB0aGUgZmlybXdhcmUgdmVyc2lv
biAxMC4yLjQuNzAuNzAuCj4KPiBbcm9vdEBBcmNoZXItQTd2NSB+XSMgdXB0aW1lCj4gwqAxMDox
ODo0MCB1cCA3IGRheXMswqAgMzo1MizCoCBsb2FkIGF2ZXJhZ2U6IDAuMDMsIDAuMDEsIDAuMDAK
Pgo+Cj4gSXQgaGFzIGJlZW4gd29ya2luZyBmaW5lOgo+Cj4gU3VydmV5IGRhdGEgZnJvbSB3bGFu
MAo+IMKgwqDCoMKgZnJlcXVlbmN5OsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgNTI0MCBNSHogW2lu
IHVzZV0KPiDCoMKgwqDCoG5vaXNlOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtMTAx
IGRCbQo+IMKgwqDCoMKgY2hhbm5lbCBhY3RpdmUgdGltZTrCoMKgwqDCoMKgwqDCoCA1OTM3MjQ1
ODAgbXMKPiDCoMKgwqDCoGNoYW5uZWwgYnVzeSB0aW1lOsKgwqDCoMKgwqDCoMKgIDk3MDY5ODUg
bXMKPiDCoMKgwqDCoGNoYW5uZWwgcmVjZWl2ZSB0aW1lOsKgwqDCoMKgwqDCoMKgIDIwNTM1ODAg
bXMKPiDCoMKgwqDCoGNoYW5uZWwgdHJhbnNtaXQgdGltZTrCoMKgwqDCoMKgwqDCoCA2NDczMDU4
IG1zCj4KPiBUZXN0ZWQtYnk6IEpvaG4gRGVlcmUgPDI0NjAxZGVlcmVqQGdtYWlsLmNvbT4KPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYXRoMTBr
IG1haWxpbmcgbGlzdAo+IGF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsKCi0tIApNYXJrdXMgVGhlaWwK
ClRlY2huaXNjaGUgVW5pdmVyc2l0w6R0IElsbWVuYXUsIEZhY2hnZWJpZXQgVGVsZW1hdGlrL1Jl
Y2huZXJuZXR6ZQpQb3N0ZmFjaCAxMDA1NjUKOTg2ODQgSWxtZW5hdSwgR2VybWFueQoKUGhvbmU6
ICs0OSAzNjc3IDY5LTQ1ODIKRW1haWw6IG1hcmt1c1tkb3RddGhlaWxbYXRddHUtaWxtZW5hdVtk
b3RdZGUKV2ViOiBodHRwOi8vd3d3LnR1LWlsbWVuYXUuZGUvdGVsZW1hdGlrCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlz
dAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
