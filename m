Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B741F455
	for <lists+ath10k@lfdr.de>; Wed, 15 May 2019 14:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V/wKvdjmq10BOxKPPSWU/g3UhIqmacPeAaKePa2j4tI=; b=s5Q9sMRUZ673doKudDuKw92YY
	C520ymU1HBIJSZW9J7AGqufRLiy2DwPzMhnrSbTTLBiFIRKG1ounoenyRfAwLtjNVSYVx6XpS92FC
	qgNBUabJYe/Qc61jsmXaaTvaysvxPNbaWy8DcMZBsBAZ5W8VqbzzNloI8ax3rgiVaJVAdwriIVqYh
	EqUfOxmWsHsaIrB6PUY7DEqlSnHgGe2piEB+mXhqy+ieW36epvxT9EOpxoOiA6sjIfQlRjqwjBzct
	q3DVZJlKSuGWgb0gZlrgqjKgpTHuaECx0wZ0FQ8AXqHg2/zCvUwNGSJr79alm2jc54kHi+DJ7Hy80
	W/qO12tOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQszi-0007Ow-FS; Wed, 15 May 2019 12:26:50 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQsze-0007OS-K0
 for ath10k@lists.infradead.org; Wed, 15 May 2019 12:26:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=l8hz/9E+bGi/YRiunga88QYdyNkvCSDmHKobPkwan/Q=; 
 b=ahvKRPmMrey3ZG8EDctsTwFQLvI5NuJTg6W4i9NtKKJyui9IVqYAcL+TRffdAlwR7QiDZudhc4sfwpikUXQhwGJn7K9cAfqNf+8o1hK1keDskEzzt/pQ/wPMBpCQhg5b4J0YjqxndtL6Ulyxx8iEf6sLcG38Z2ykph5ekkBu9Ts=;
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Ben Greear <greearb@candelatech.com>, ath10k <ath10k@lists.infradead.org>
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
Date: Wed, 15 May 2019 14:26:35 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1hQszi-00066T-HZ; Wed, 15 May 2019 14:26:51 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_052646_946515_185614C7 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
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

CkFtIDE1LjA1LjIwMTkgdW0gMTQ6MjAgc2NocmllYiBCZW4gR3JlZWFyOgo+IE9uIDA1LzE0LzIw
MTkgMDk6MjYgUE0sIFNlYmFzdGlhbiBHb3R0c2NoYWxsIHdyb3RlOgo+PiBjYW4geW91IHNlbmQg
bWUgYSBkZXRhaWxlZCBpbnN0cnVjdGlvbiBmb3IgdGVzdGluZyB0aGlzIG9uIG15IAo+PiBkZXZp
Y2VzPyBzbyB3aGljaCBjb21tYW5kcyBoYXZlIGJlZW4gdXNlZCBmb3IgZ2VuZXJhdGluZyB0aGUg
dHJhZmZpYyAKPj4gZXRjLiAoaXBlcmYzPykKPgo+IEkgYW0gdXNpbmcgb3VyIG93biB0cmFmZmlj
IGdlbmVyYXRvciwgYnV0IEkgaW1hZ2luZSBpcGVyZjMgc2hvdWxkIHdvcmsgCj4gZmluZSB0b28u
Cj4KPiBJIGFtIHRlc3Rpbmcgb24geDg2LTY0IGFuZCBzbyBmb3J0aC7CoCBNYXliZSB5b3UgY2Fu
IHRlc3Qgd2l0aCBVRFAgCj4gc21hbGwtcGFja2V0IGxvYWQgb24geW91ciBwbGF0Zm9ybQo+IGlu
IHJvdXRlZCBtb2RlIChpZSwgZXh0ZXJuYWwgaXBlcmYgZ2VuZXJhdG9yIHRocm91Z2ggeW91ciBB
UCkgYW5kIHNlZSAKPiBpZiB5b3Ugc2VlIGlzc3Vlcz8KdGhhdHMgdGhlIHBsYW4uIGNhbiB5b3Ug
ZG8gYSB0ZXN0IHdpdGggaXBlcmYzIHRvIHNlZSBpZiBpdHMgCnJlcHJvZHVjZWFibGUuIGkgbWVh
biBpIHdpbGwgdGVzdCBpdCBvbiBpcHEgYmFzZWQgYm9hcmRzIGFuZCB4NjQuIGJ1dCB0byAKbWFr
ZSBzdXJlIHRoYXQgdGhlIHNjZW5hcmlvCmlzIGlkZW50aWNhbCB3aGljaCByYWlzZWQgdXAgeW91
ciBpc3N1ZSwgaXQgd291bGQgYmUgZmluZCBpZiB3ZSBoYXZlIAppZGVudGljYWwgc29mdHdhcmUg
Zm9yIHRlc3RpbmcgaW5jbHVkaW5nIHRoZSBzYW1lIG9wdGlvbnMKPgo+IEZyb20gZGVidWdnaW5n
IHllc3RlcmRheSwgSSBzZWUgYSBsb3Qgb2YgdHgtaGFuZyBub3RpZmljYXRpb25zIGluIHRoZSAK
PiBmaXJtd2FyZSwgYW5kCj4gSSBhbHNvIGJlbGlldmUgSSBzYXcgaXQgdHJ5aW5nIHRvIHRyYW5z
bWl0IHdpdGggYSAwIHJhdGUtaW5keCwgd2hpY2ggCj4gaXMgMTFNYnBzIENDSywKPiB3aGljaCBp
cyBpbnZhbGlkIGZvciA1R2h6LsKgIEknbGwgYmUgZGVidWdnaW5nIHRoYXQgbW9yZSB0b2RheS7C
oCBJIAo+IGRvbid0IGtub3cgaWYgc3RvY2sKPiBmaXJtd2FyZSBmYWlscyBmb3IgdGhlIHNhbWUg
cmVhc29ucywgYnV0IHRoZSBzeW1wdG9tIGxvb2tlZCB0aGUgc2FtZS4KY291bGQgYmUgYSBidWZm
ZXIgb3ZlcmZsb3cvbG9ja2luZyBkdWUgYSB1ZHAgZmxvb2RpbmcuIHNvIGEgbWlzc2luZyAKY2hl
Y2sgdG8gZHJvcCBwYWNrZXRzIHdoaWNoIGFyZSBvdXQgb2YgbGltaXQgb3IgYSB0b28gcmVzdHJp
Y3RpdmUgYnVmZmVyIAptYW5hZ2VtZW50LgpsaWtlIHN0YXRpYyBmcmFtZSBidWZmZXJzIG9mIG1h
eCBtdHUgc2l6ZSwgYnV0IGl0cyBqdXN0IHVzZWQgcGFydGlhbGx5IApieSBmcmFtZSBkdWUgdGhl
IHNtYWxsIHNpemUgb2YgdGhlIHVkcCBwYWNrZXRzLiB5b3UgbWF5IGtub3cgaXQgYmV0dGVyIApz
aW5jZSB5b3UgaGF2ZSBtdWNoIGJldHRlcgprbm93bGVkZ2UgYWJvdXQgdGhlIGZpcm13YXJlIGlu
dGVybmFscy4KPgo+IFRoYW5rcywKPiBCZW4KPgo+Pgo+PiBTZWJhc3RpYW4KPj4KPj4gQW0gMTUu
MDUuMjAxOSB1bSAwMzo1MiBzY2hyaWViIEJlbiBHcmVlYXI6Cj4+PiBIZWxsbywKPj4+Cj4+PiBJ
IGZvdW5kIGEgc3RyYW5nZSBpc3N1ZSBhbmQgY3VyaW91cyBpZiBzb21lb25lIGhhcyBzZWVuIHNp
bWlsYXIuCj4+Pgo+Pj4gSSBtYWRlIGFuIEFQIHdoZXJlIHRoZSBBUCBpbnRlcmZhY2UgYWN0cyBh
cyBhIHJvdXRlZCBpbnRlcmZhY2UuwqAgSSAKPj4+IGdlbmVyYXRlCj4+PiB0cmFmZmljIHRocm91
Z2ggYW5vdGhlciBpbnRlcmZhY2UgaW4gdGhlIHJvdXRlci7CoCBXaGVuIHNlbmRpbmcgCj4+PiAz
MDBNYnBzIG9mIDUxMiBieXRlCj4+PiBVRFAgcGF5bG9hZHMsIGluIHRoZSBkb3duc3RyZWFtIGRp
cmVjdGlvbiwgYW5kIHdpdGggdGhlIHN0YXRpb24gCj4+PiBiZWluZyBhIDF4MSAvQUMgZGV2aWNl
LAo+Pj4gdGhlbiB0aGUgQVAgTklDIGFwcGVhcnMgdG8gbW9zdGx5IGxvY2sgdXAgd2l0aGluIGFi
b3V0IDEgbWludXRlLiBJIAo+Pj4gc3RpbGwgc2VlIGJlYWNvbnMsIGJ1dCBubwo+Pj4gZGF0YSBm
cmFtZXMuwqAgSW4gc29tZSBjYXNlcywgSSByZXByb2R1Y2VkIHdpdGggdmVyeSBzbG93IHNwZWVk
IAo+Pj4gdHJhZmZpYyBhcyB3ZWxsLgo+Pj4KPj4+IEkgdHJpZWQgdXNpbmcgYSBtb3N0bHkgdW4t
bW9kaWZpZWQgZmlybXdhcmUgKGllLCBzaW1pbGFyIHRvIHVwc3RyZWFtIAo+Pj4gUUNBKSwgYXMg
d2VsbCBhcyBteQo+Pj4gaGFja2VkIHVwb24gZmlybXdhcmUsIGFuZCBhbGwgYWN0IHNpbWlsYXJs
eS7CoCBJJ20gdXNpbmcgdGhlIDQuMjAgCj4+PiBrZXJuZWwsIGJ1dCBhdCBsZWFzdCBmb3Igbm93
LAo+Pj4gaXQgZG9lcyBub3QgYXBwZWFyIHRvIGJlIGEga2VybmVsIGlzc3VlLgo+Pj4KPj4+IElm
IEkgdXNlIGxhcmdlciBNVFUgc2l6ZWQgZnJhbWVzLCBvciBoYXZlIGEgMngyIHN0YXRpb24gaW5z
dGVhZCBvZiAKPj4+IDF4MSB0aGVuIGl0IGlzIG11Y2ggaGFyZGVyCj4+PiB0byByZXByb2R1Y2Ug
KGFuZCBtYXliZSBjYW5ub3QgYmUgcmVwcm9kdWNlZCkuwqAgQWxzbywgd2hlbiAKPj4+IGdlbmVy
YXRpbmcgdHJhZmZpYyBkaXJlY3RseSBvbgo+Pj4gdGhlIEFQIGRldmljZSBpbnN0ZWFkIG9mIHVz
aW5nIHRoZSByb3V0ZWQgaW50ZXJmYWNlIGFzIGEgdHJhZmZpYyAKPj4+IHNvdXJjZSwgaXQgaXMg
aGFyZGVyIHRvCj4+PiByZXByb2R1Y2UuCj4+Pgo+Pj4gVGhhbmtzLAo+Pj4gQmVuCj4+Pgo+Pgo+
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsg
bWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
