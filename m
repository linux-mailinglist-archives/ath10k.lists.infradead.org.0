Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5B21F4E9
	for <lists+ath10k@lfdr.de>; Wed, 15 May 2019 15:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lXM9PD8f22aSYShAJiGiWV5EPxNH80z2FWAsygFv2rw=; b=HhivfrSJa9IzqxWjV7gaUzLfg
	YnP5XNXUNfh+pFRBYDxNyjx1L0Nm1NVS82R1VhNfBtnNy/6dRvrh1mTFlehiEjVO2UU/TlJZ8Glkj
	q7WTq6fABxVBZ2wt3lT5mXZrIyrFDy45GTHfhBgCQjKkSFkXmKeVjDyci+uoNVHBbelQw4gxcWPDZ
	bZM4q1h0oZVHoPJyt6mY21xgdYauRLPqET+vAtLsjpbRYOLpe6WvbzMRPF12k3PFA0YrguysiM2f8
	VxaqDVZ5sdUX5vEl6YVB9KaH83N78o501imX1aoflPmoc/gDF3jfYnR48Zc+CYGGkwCWWOu6dI/1h
	O9DjX9/ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQtWF-0005hJ-Ny; Wed, 15 May 2019 13:00:27 +0000
Received: from [208.74.158.174] (helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtWB-0005gw-8t
 for ath10k@lists.infradead.org; Wed, 15 May 2019 13:00:24 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 8B35216322;
 Wed, 15 May 2019 06:00:22 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 8B35216322
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1557925222;
 bh=Opeb3cMJAt7OedythEzb4pkEPLABlfS6L01rzm4cCJs=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=RXAZXe21r59w7OoejBfxh/Zh+atsbWxQe7HZCjw6hc+WWrLUrzR2Cw2u4eOIzJJ7I
 405d1Z7aBXdWgWvrGCjFbRHuMgaai9kZsffIwcIRFBp/uv0Ct0sRTYQ78IqTU9/AnT
 s2G5SFVF0/i2fh5CUUT4+Zo6UJy4N78ZY2hSFNkA=
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 ath10k <ath10k@lists.infradead.org>
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
 <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
Date: Wed, 15 May 2019 06:00:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_060023_407464_C8EB2905 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
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
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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

T24gNS8xNS8xOSA1OjI2IEFNLCBTZWJhc3RpYW4gR290dHNjaGFsbCB3cm90ZToKPiAKPiBBbSAx
NS4wNS4yMDE5IHVtIDE0OjIwIHNjaHJpZWIgQmVuIEdyZWVhcjoKPj4gT24gMDUvMTQvMjAxOSAw
OToyNiBQTSwgU2ViYXN0aWFuIEdvdHRzY2hhbGwgd3JvdGU6Cj4+PiBjYW4geW91IHNlbmQgbWUg
YSBkZXRhaWxlZCBpbnN0cnVjdGlvbiBmb3IgdGVzdGluZyB0aGlzIG9uIG15IGRldmljZXM/IHNv
IHdoaWNoIGNvbW1hbmRzIGhhdmUgYmVlbiB1c2VkIGZvciBnZW5lcmF0aW5nIHRoZSB0cmFmZmlj
IGV0Yy4gKGlwZXJmMz8pCj4+Cj4+IEkgYW0gdXNpbmcgb3VyIG93biB0cmFmZmljIGdlbmVyYXRv
ciwgYnV0IEkgaW1hZ2luZSBpcGVyZjMgc2hvdWxkIHdvcmsgZmluZSB0b28uCj4+Cj4+IEkgYW0g
dGVzdGluZyBvbiB4ODYtNjQgYW5kIHNvIGZvcnRoLsKgIE1heWJlIHlvdSBjYW4gdGVzdCB3aXRo
IFVEUCBzbWFsbC1wYWNrZXQgbG9hZCBvbiB5b3VyIHBsYXRmb3JtCj4+IGluIHJvdXRlZCBtb2Rl
IChpZSwgZXh0ZXJuYWwgaXBlcmYgZ2VuZXJhdG9yIHRocm91Z2ggeW91ciBBUCkgYW5kIHNlZSBp
ZiB5b3Ugc2VlIGlzc3Vlcz8KPiB0aGF0cyB0aGUgcGxhbi4gY2FuIHlvdSBkbyBhIHRlc3Qgd2l0
aCBpcGVyZjMgdG8gc2VlIGlmIGl0cyByZXByb2R1Y2VhYmxlLiBpIG1lYW4gaSB3aWxsIHRlc3Qg
aXQgb24gaXBxIGJhc2VkIGJvYXJkcyBhbmQgeDY0LiBidXQgdG8gbWFrZSBzdXJlIHRoYXQgdGhl
IHNjZW5hcmlvCj4gaXMgaWRlbnRpY2FsIHdoaWNoIHJhaXNlZCB1cCB5b3VyIGlzc3VlLCBpdCB3
b3VsZCBiZSBmaW5kIGlmIHdlIGhhdmUgaWRlbnRpY2FsIHNvZnR3YXJlIGZvciB0ZXN0aW5nIGlu
Y2x1ZGluZyB0aGUgc2FtZSBvcHRpb25zCgpPbmUgb2Ygb3VyIG90aGVyIGVuZ2luZWVycyB3aWxs
IHRyeSB0byByZXByb2R1Y2UgaXQgb24gYSBkaWZmZXJlbnQgc3lzdGVtIHRvZGF5LgoKQW5kIGlu
IGNhc2UgeW91IGFyZSBzbmlmZmluZyBkdXJpbmcgeW91ciBvd24gdGVzdGluZywgSSdkIGJlIGN1
cmlvdXMgaWYgeW91IHNlZQphbnkgQU1TRFUgZnJhbWVzPyAgSSBvbmx5IHNlZSBBTVBEVVMgZnVs
bCBvZiBzaW5nbGUtcGFja2V0IGZyYW1lcy4gIEkgd291bGQgZXhwZWN0CnNldmVyYWwgb2YgdGhl
IDUxMmIgZnJhbWVzIHRvIGJlIHB1dCBpbnRvIEFNU0RVIHN1Yi1mcmFtZXMuICBJIHBsYW4gdG8g
bG9vayBpbnRvIHRoYXQKYWZ0ZXIgSSBmaWd1cmUgb3V0IHRoZSB0eCBzdGFsbCBpc3N1ZS4KClRo
YW5rcywKQmVuCgo+Pgo+PiBGcm9tIGRlYnVnZ2luZyB5ZXN0ZXJkYXksIEkgc2VlIGEgbG90IG9m
IHR4LWhhbmcgbm90aWZpY2F0aW9ucyBpbiB0aGUgZmlybXdhcmUsIGFuZAo+PiBJIGFsc28gYmVs
aWV2ZSBJIHNhdyBpdCB0cnlpbmcgdG8gdHJhbnNtaXQgd2l0aCBhIDAgcmF0ZS1pbmR4LCB3aGlj
aCBpcyAxMU1icHMgQ0NLLAo+PiB3aGljaCBpcyBpbnZhbGlkIGZvciA1R2h6LsKgIEknbGwgYmUg
ZGVidWdnaW5nIHRoYXQgbW9yZSB0b2RheS7CoCBJIGRvbid0IGtub3cgaWYgc3RvY2sKPj4gZmly
bXdhcmUgZmFpbHMgZm9yIHRoZSBzYW1lIHJlYXNvbnMsIGJ1dCB0aGUgc3ltcHRvbSBsb29rZWQg
dGhlIHNhbWUuCj4gY291bGQgYmUgYSBidWZmZXIgb3ZlcmZsb3cvbG9ja2luZyBkdWUgYSB1ZHAg
Zmxvb2RpbmcuIHNvIGEgbWlzc2luZyBjaGVjayB0byBkcm9wIHBhY2tldHMgd2hpY2ggYXJlIG91
dCBvZiBsaW1pdCBvciBhIHRvbyByZXN0cmljdGl2ZSBidWZmZXIgbWFuYWdlbWVudC4KPiBsaWtl
IHN0YXRpYyBmcmFtZSBidWZmZXJzIG9mIG1heCBtdHUgc2l6ZSwgYnV0IGl0cyBqdXN0IHVzZWQg
cGFydGlhbGx5IGJ5IGZyYW1lIGR1ZSB0aGUgc21hbGwgc2l6ZSBvZiB0aGUgdWRwIHBhY2tldHMu
IHlvdSBtYXkga25vdyBpdCBiZXR0ZXIgc2luY2UgeW91IGhhdmUgCj4gbXVjaCBiZXR0ZXIKPiBr
bm93bGVkZ2UgYWJvdXQgdGhlIGZpcm13YXJlIGludGVybmFscy4KPj4KPj4gVGhhbmtzLAo+PiBC
ZW4KPj4KPj4+Cj4+PiBTZWJhc3RpYW4KPj4+Cj4+PiBBbSAxNS4wNS4yMDE5IHVtIDAzOjUyIHNj
aHJpZWIgQmVuIEdyZWVhcjoKPj4+PiBIZWxsbywKPj4+Pgo+Pj4+IEkgZm91bmQgYSBzdHJhbmdl
IGlzc3VlIGFuZCBjdXJpb3VzIGlmIHNvbWVvbmUgaGFzIHNlZW4gc2ltaWxhci4KPj4+Pgo+Pj4+
IEkgbWFkZSBhbiBBUCB3aGVyZSB0aGUgQVAgaW50ZXJmYWNlIGFjdHMgYXMgYSByb3V0ZWQgaW50
ZXJmYWNlLsKgIEkgZ2VuZXJhdGUKPj4+PiB0cmFmZmljIHRocm91Z2ggYW5vdGhlciBpbnRlcmZh
Y2UgaW4gdGhlIHJvdXRlci7CoCBXaGVuIHNlbmRpbmcgMzAwTWJwcyBvZiA1MTIgYnl0ZQo+Pj4+
IFVEUCBwYXlsb2FkcywgaW4gdGhlIGRvd25zdHJlYW0gZGlyZWN0aW9uLCBhbmQgd2l0aCB0aGUg
c3RhdGlvbiBiZWluZyBhIDF4MSAvQUMgZGV2aWNlLAo+Pj4+IHRoZW4gdGhlIEFQIE5JQyBhcHBl
YXJzIHRvIG1vc3RseSBsb2NrIHVwIHdpdGhpbiBhYm91dCAxIG1pbnV0ZS4gSSBzdGlsbCBzZWUg
YmVhY29ucywgYnV0IG5vCj4+Pj4gZGF0YSBmcmFtZXMuwqAgSW4gc29tZSBjYXNlcywgSSByZXBy
b2R1Y2VkIHdpdGggdmVyeSBzbG93IHNwZWVkIHRyYWZmaWMgYXMgd2VsbC4KPj4+Pgo+Pj4+IEkg
dHJpZWQgdXNpbmcgYSBtb3N0bHkgdW4tbW9kaWZpZWQgZmlybXdhcmUgKGllLCBzaW1pbGFyIHRv
IHVwc3RyZWFtIFFDQSksIGFzIHdlbGwgYXMgbXkKPj4+PiBoYWNrZWQgdXBvbiBmaXJtd2FyZSwg
YW5kIGFsbCBhY3Qgc2ltaWxhcmx5LsKgIEknbSB1c2luZyB0aGUgNC4yMCBrZXJuZWwsIGJ1dCBh
dCBsZWFzdCBmb3Igbm93LAo+Pj4+IGl0IGRvZXMgbm90IGFwcGVhciB0byBiZSBhIGtlcm5lbCBp
c3N1ZS4KPj4+Pgo+Pj4+IElmIEkgdXNlIGxhcmdlciBNVFUgc2l6ZWQgZnJhbWVzLCBvciBoYXZl
IGEgMngyIHN0YXRpb24gaW5zdGVhZCBvZiAxeDEgdGhlbiBpdCBpcyBtdWNoIGhhcmRlcgo+Pj4+
IHRvIHJlcHJvZHVjZSAoYW5kIG1heWJlIGNhbm5vdCBiZSByZXByb2R1Y2VkKS7CoCBBbHNvLCB3
aGVuIGdlbmVyYXRpbmcgdHJhZmZpYyBkaXJlY3RseSBvbgo+Pj4+IHRoZSBBUCBkZXZpY2UgaW5z
dGVhZCBvZiB1c2luZyB0aGUgcm91dGVkIGludGVyZmFjZSBhcyBhIHRyYWZmaWMgc291cmNlLCBp
dCBpcyBoYXJkZXIgdG8KPj4+PiByZXByb2R1Y2UuCj4+Pj4KPj4+PiBUaGFua3MsCj4+Pj4gQmVu
Cj4+Pj4KPj4+Cj4+Cj4gCgoKLS0gCkJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2guY29t
PgpDYW5kZWxhIFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6Ly93d3cuY2FuZGVsYXRlY2guY29tCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1h
aWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
