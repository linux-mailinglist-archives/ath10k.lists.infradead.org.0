Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2C412512E
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 20:00:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aX98xJ2ilLDyO2h/wsZWcJ5A/vHiX0WW2DLdPqzLpe4=; b=aYshbn1/hQ+axJJCsm/ekvNpJ
	FOZSNctr1oo514xRP3GhF1f/A7GVCEzjJNHRC+tJpSpJNSNdy8/7zauWOZyZNyDHzxgM5EhaX0TEf
	or9DKGeBnjmseRffwdNOyJKbE10j1aE//7m6ppAOBCwPYC+ApjeUm7pdqQJ2jomo2fwYiJhLnH0py
	KD/C9Rv0UeM2Hrb9fQzFo3zQYCUn+DBMKM6j0ICgQIkAiLJ9N+oVyJwms0+gdUIFkufFzmq4z5bT5
	f5lf6CDkW/yUU1S2vDR3AJGS2af6FMswpNr+LSxhziFe3wXYnsQgPiynmAZ4kMUBe2ith66Of8tbi
	MYrgpshzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iheYH-0003DX-Kv; Wed, 18 Dec 2019 19:00:05 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iheYA-00035o-IF
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 19:00:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=D2enaLawDGBEW5JcqOdvz7w8+XSpRsZH2OKVQt19760=; 
 b=v+AmHLjj9IQixLMZWklmAz/gpOY7nSHRQZ7ePmNWjBUZWohWXu6D5xh+W/K2GZyhpr2JmipJh9MzORAsUZU+VE1zoxWiRU+Nq+t7noYvSpBT7OT69KZnNGvXICmu4fblBi/8Rgz7zCQNXsZNNmXW624EEtlK0lwWeSAvdWVhjmI=;
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
To: Ben Greear <greearb@candelatech.com>,
 Justin Capella <justincapella@gmail.com>
References: <20191216220747.887-1-greearb@candelatech.com>
 <a2af03e9-8b53-b297-467b-d0f07b8a002b@newmedia-net.de>
 <b5d63d96-4ba6-bbab-bf1c-a61c6c437f37@newmedia-net.de>
 <80700614-679a-336e-bd9a-e88622e75c9a@candelatech.com>
 <4775d91a-9719-46f8-b0f2-979b8d86cf9f@newmedia-net.de>
 <CAMrEMU-vGB8uR-JZbD2vj4vXgWNHfFqcbsqB=gOqBBDZWGkzQA@mail.gmail.com>
 <11290a30-46e8-638e-4110-86e6b2eb3d3f@candelatech.com>
 <CAKR_QV+xNbAzzw12x3Ku49bHnERTxYRAK8AfUSwp_uOgNMbY4Q@mail.gmail.com>
 <a95e7f6d-1cb8-3188-aea4-233dce6f9330@candelatech.com>
 <CAKR_QVL0P4qYidtqLwhhacCOpx2iq+4RRhTXbGhfRnf2PUj5tA@mail.gmail.com>
 <CAKR_QV+KV1dR_QKjANL34DGJuyf3OSN8J6gs3bqcmiRCCzkdXA@mail.gmail.com>
 <5e3f22d1-b8ba-d756-a15c-1e7ae56c1dad@newmedia-net.de>
 <8eae96cd-a94e-abc1-4750-73f931d657d6@candelatech.com>
 <9431f1a2-a44e-9b81-72b0-9a703e1841ac@newmedia-net.de>
 <CAMrEMU8UrY9F++ut88to0AxKJXHTi9cwUs8uGOmN=k0ymcH0FA@mail.gmail.com>
 <c06008e6-680f-5fec-081f-1f832034c92a@candelatech.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <216c0feb-2fa1-3a61-df2d-507f7fc497e9@newmedia-net.de>
Date: Wed, 18 Dec 2019 19:59:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <c06008e6-680f-5fec-081f-1f832034c92a@candelatech.com>
X-Received: from [2a01:7700:8040:3500:ed7a:2c:ab99:851c]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1iheWi-0004yv-AD; Wed, 18 Dec 2019 19:58:28 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_105959_108767_536B5FB5 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, Tom Psyborg <pozega.tomislav@gmail.com>,
 ath10k <ath10k@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Cj4gSSBkb24ndCB0aGluayBpdCBpcyBjb3JyZWN0IHRvIHNheSBwZXJpb2RpYyBjYWxpYnJhdGlv
biBkb2VzIG5vdCAKPiBoYXBwZW4gd2l0aAo+IGF0aDEway7CoCBNYXliZSB2ZXJ5IG9sZCB3YXZl
LTEgZmlybXdhcmUgaGFzIHNvbWUgaXNzdWVzLCBidXQgcmVjZW50IAo+IHN0dWZmIGFwcGVhcnMK
PiB0byB3b3JrLsKgIEkgZG8gc2VlIHJlcG9ydGVkIG5vaXNlIGZsb29yIGNoYW5naW5nIG9uIDk5
ODQuCmxpa2Ugb24gcWNhOTk4eCBpIGV4cGVjdCBpdCB0byBjaGFuZ2UgYXQgbGVhc3QgZXZlcnkg
MzAwIHNlY29uZHMuIHRoYXRzIAp0aGUgY2FsaWJyYXRpb24gaW50ZXJ2YWxsIGZvciA5ODh4LiBm
b3IgOTk4NCBpIG5lZWQKdG8gY2hlY2sgaWYgaXRzIGRpZmZlcmVudAo+Cj4gVGhhbmtzLAo+IEJl
bgo+Cj4+Cj4+IE9uIFR1ZSwgRGVjIDE3LCAyMDE5IGF0IDg6MDUgUE0gU2ViYXN0aWFuIEdvdHRz
Y2hhbGwKPj4gPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyb3RlOgo+Pj4KPj4+Cj4+
PiBBbSAxOC4xMi4yMDE5IHVtIDAzOjM3IHNjaHJpZWIgQmVuIEdyZWVhcjoKPj4+Pgo+Pj4+Cj4+
Pj4gT24gMTIvMTcvMjAxOSAwNjoxMiBQTSwgU2ViYXN0aWFuIEdvdHRzY2hhbGwgd3JvdGU6Cj4+
Pj4+IGkgZG9udCBrbm93IHdoYXQgeW91IHdhbnQgdG8gY29tcGFyZSBoZXJlLgo+Pj4+Pgo+Pj4+
PiAxLiB5b3UgY29tcGFyZSAyIGRpZmZlcmVudCB3aWZpIGNoaXBzZXRzLiBib3RoIGhhdmUgZGlm
ZmVyZW50Cj4+Pj4+IHNlbnNpdGl0aXZ5IGFuZCBvdmVyYWxsIG91dHB1dCBwb3dlciBzcGVjCj4+
Pj4+Cj4+Pj4+IDIuIGJvdGggaGF2ZSBkaWZmZXJlbnQgYW1vdW50IG9mIGFudGVubmEgY2hhaW5z
LiB3aGljaCBkb2VzIG1ha2UgYQo+Pj4+PiBkaWZmZXJlbmNlIGluIGlucHV0IHNlbnNpdGl2aXR5
Cj4+Pj4+Cj4+Pj4+IDMuIHRoZSBwYXRjaCBiZW4gbWFkZSBoYXMgbm8gZWZmZWN0IG9uIHFjYTk4
ODAgY2hpcHNldHMuIGl0IG9ubHkKPj4+Pj4gdGFrZXMgZWZmZWN0IG9uIDEwLjQgYmFzZWQgY2hp
cHNldHMgbGlrZSA5OTg0Cj4+Pj4KPj4+PiBUaGUgcGFydCBvZiBteSBwYXRjaCB0aGF0IHN1bXMg
c2Vjb25kYXJ5IGZyZXF1ZW5jaWVzIHNob3VsZCBhcHBseSB0bwo+Pj4+IHdhdmUtMSBhcyB3ZWxs
LCBidXQgSSBoYXZlCj4+Pj4gbm90IHZlcmlmaWVkIHRoYXQgeWV0Lgo+Pj4geWVhaC4gcmlnaHQu
IHNvcnJ5IGkgd2FzIGp1c3QgbG9va2luZyBhdCB0b3RhbCBzaWduYWwgc3VtIHdoaWNoIHVzZXMK
Pj4+IHJzc2lfY29tYl9odAo+Pj4+Cj4+Pj4KPj4+Pj4gYWJvdXQgbm9pc2UgZmxvb3JzIGluIGdl
bmVyYWwuIG5vaXNlIGZsb29ycyBvZiAtMTA4IGFyZSBib2d1cy4gdGhlcmUKPj4+Pj4gaXMgYSBw
aHlzaWNhbCBsaW1pdCBhIG5vaXNlIGxldmVsIGNhbiBiZS4KPj4+Pj4gc2luY2UgZHJpdmVycyBs
aWtlIGF0aDlrIGFyZSBkb2luZyBhIGN5Y2xpYyBjYWxpYnJhdGlvbiwgdGhlIG5vaXNlCj4+Pj4+
IHZhbHVlIG1pZ2h0IGluZGVlZCBjaGFuZ2UuIGJ1dCB0aGlzIGNhbGlicmF0aW9uIGlzCj4+Pj4+
IG5vdCBydW5uaW5nIGluIHJlYWx0aW1lLiBpdHMgY3ljbGljLiBpJ20gbm90IGF3YXJlIGlmIGNo
aXBzZXRzIGxpa2UKPj4+Pj4gcWNhOTg4eCBhcmUgZ29pbmcgdGhlIHNhbWUgd2F5LCBidXQgc2lu
Y2UgcWNhOTg4eAo+Pj4+PiBoYXMgc2ltZSBzaW1pbGFyaWVzIHdpdGggYXRoOWsgY2hpcHNldHMg
dW5saWtlIHRoZSBuZXdlciA5OTg0Cj4+Pj4+IHZhcmlhbnRzLCBpdCBjb3VsZCBiZS4gdGhlIDMw
IHNlY29uZHMgbWVudGlvbmVkCj4+Pj4+IGluIHRoZSBidWcgcmVwb3J0IGZpdHMgdG8gbXkgZXhw
ZWN0YXRpb25zIG9mIHRoZSBlYXJseSBub2lzZWZsb29yCj4+Pj4+IGNhbGlicmF0aW9uIHdoaWNo
IGhhcyBhIHNob3J0IGRlbGF5IGFuZCBhZnRlciBzdWNjZXNzCj4+Pj4+IHR1cm5pbmcgdG8gdXNl
IGEgbG9uZyBkZWxheS4gYW55d2F5LiBpbiB0aGlzIGVhcmx5IGNhbGlicmF0aW9uIHBoYXNlCj4+
Pj4+IHNpZ25hbHMgbWlnaHQgY2hhbmdlIGFuZCB3aWxsIHN0YWJpbGl6ZSBhZnRlci4gdGhpcyBp
c250IGEgaXNzdWUKPj4+Pj4gc2luY2UgeW91ciBjb25uZWN0aW9uIHdpbGwgd29yayBhbnl3YXkg
ZXZlbiBpZiBpdCBtaWdodCB0YWtlIGEgbGl0dGxlCj4+Pj4+IGJpdCBsb25nZXIgaWYgeW91IGhh
dmUgcG9vciBzaWduYWwgbGV2ZWxzCj4+Pj4+Cj4+Pj4+IEBiZW4uIGFtIGkgd3Jvbmcgb3Igd2hh
dCBkbyB0aGluaz8KPj4+Pgo+Pj4+IEkgZG9uJ3Qga25vdyBlbm91Z2ggYWJvdXQgaG93IHRoZSBu
b2lzZSBmbG9vciBjYWxjdWxhdGlvbnMgYXJlIGRvbmUgb3IKPj4+PiBob3cgdGhlIGFwcGx5IHRv
IHNldHRpbmdzCj4+Pj4gdG8ga25vdyB0aGUgYW5zd2VyLgo+Pj4+Cj4+Pj4gSSB3aWxsIGJlIGhh
cHB5IGluIGdlbmVyYWwgaWYgYXRoMTBrIHdhdmUtMSwgd2F2ZS0yLCBhbmQgYXRoOWsgcmVwb3J0
Cj4+Pj4gc2ltaWxhciBSU1NJIGZvciBzaW1pbGFyCj4+Pj4gc2V0dXBzLgo+Pj4gdGhhdCB3aWxs
IG5vdCB3b3JrLiB5b3UgY29tcGFyZSBkaWZmZXJlbnQgY2hpcHNldHMgYW5kIGRlcGVuZGluZyBv
biB0aGUKPj4+IGltcGxlbWVudGF0aW9uIGJ5IHRoZSBjYXJkIHZlbmRvcgo+Pj4gcmYgc2Vuc2l0
aXZpdHkgY2FuIGJlIHZlcnkgZGlmZmVudC4gdGhlIHNhbWUgZ29lcyBmb3Igb3V0cHV0IHBvd2Vy
LiAKPj4+IHNvbWUKPj4+IHZlbmRvcnMgYXJlIHVzaW5nIGFkZGl0aW9uYWwgcmYgYW1wcwo+Pj4g
Zm9yIGVuaGFuY2luZyBvdXRwdXQgcG93ZXIgKHViaXF1aXRpIGlzIGJlc3QgZXhhbXBsZSBoZXJl
KS4gdGhpcyB0aGVzZQo+Pj4gYW1wcyBhbHNvIG1heSBoYXZlIGluZmx1ZW5jZSB0byBzZW5zaXRp
dml0eS4KPj4+IG9uIHRoZXNlIGNhcmRzIHlvdSBzZXQgMTAgZGIgb3V0cHV0IHBvd2VyLCBidXQg
aW4gZmFjdCBpdCBvdXRwdXRzIDE4IAo+Pj4gZGIuCj4+PiBzbyB0aGVyZSBpcyBhIGJpYXMgb2Zm
c2V0IG9uIHRoZXNlIGNhcmRzIG9yIGRldmljZXMuICh0aGUgb2Zmc2V0IGlzCj4+PiBkZXBlbmRp
bmcgb24gdGhlIGRldmljZSBtb2RlbCkKPj4+Cj4+PiB3aGF0IHlvdSBtZWFzdXJlIGlzIHdoYXQg
dGhlIGNoaXAgcmVjZWl2ZXMsIGJ1dCBub3Qgd2hhdCB3YXMgbG9zdCBvbiAKPj4+IHRoZQo+Pj4g
cGNiIGxheW91dC4gKG9yIHdhcyBldmVuIGdlbmVyYXRlZCBpbiBjYXNlIG9mIG5vaXNlKQo+Pj4g
YW5kIHdoZW4gaXQgY29tZXMgdG8gY2FsaWJyYXRpb24gZGF0YS4gY29ycmVjdCB3b3VsZCBiZSBp
ZiBlYWNoCj4+PiBpbmRpdmlkdWFsIGNhcmQgaXMgY2FsaWJyYXRlZCBiZWZvcmUgc2hpcG1lbnQu
IGluIHJlYWxpdHkgbWFudWZhY3R1cmVzCj4+PiBhcmUgZG9pbmcgY2FsaWJyYXRpb24gb24gYSBz
aW5nbGUgcmVmZXJlbmNlIGNhcmQgYW5kIGNsb25lIGl0IG9uIGFsbAo+Pj4gZm9sbG93aW5nIGNh
cmRzIHRvIHNhdmUgdGltZS4gdGhlIHJlc3VsdCBkZXBlbmRzIG9uIGRheSBvciB3ZWVrIG9mCj4+
PiBwcm9kdWN0aW9uCj4+PiBhbmQgY3VycmVudCBwb3NpdGlvbiBvZiB0aGUgbW9vbiBhbmQgc3Vu
LiBlcnJvcnMgb2YgKy0gMiBkYiBhcmUgY29tbW9uCj4+PiBoZXJlLiAodGhpcyBpcyBub3QgYSBm
YWN0IGZvciBhbGwgY2FyZCBvciBkZXZpY2UgdmVuZG9ycykKPj4+Cj4+Pj4KPj4+PiBJZiB5b3Ug
bG9vayBhdCB0aGUgdHgtcmF0ZS1wb3dlciB0YWJsZSBpbiBhdGgxMGssIGZvciBpbnN0YW5jZSwg
eW91Cj4+Pj4gY2FuIHNlZSBkaWZmZXJlbnQgTUNTIGFyZSB0cmFuc21pdHRlZAo+Pj4+IGF0IGRp
ZmZlcmVudCBzaWduYWwgbGV2ZWxzLsKgIFNvLCBzb21lIGNoYW5nZSBmcm9tIGluaXRpYWwgY29u
ZGl0aW9ucwo+Pj4+IG1pZ2h0IGJlIGJlY2F1c2UgaGlnaGVyIE1DUyBpcwo+Pj4+IGJlaW5nIHRy
YW5zbWl0dGVkIGFmdGVyIHJhdGUtY3RybCBzY2FsZXMgdXA/Cj4+PiB5ZXMuIHRoaXMgaXMgbW9k
dWxhdGlvbiByZWxhdGVkLiBhcyBoaWdoZXIgdGhlIHJhdGUgZ29lcyBhcyBsb3dlciB0aGUKPj4+
IHBvd2VyIHdpbGwgYmUuIHRoYXRzIHByaW5jaWJsZSBvZiBRQU0uCj4+PiBhbmQgdGhlIHJhdGUg
Y29udHJvbCBpdHNlbGYgaXNudCBzaWduYWwgYnV0IGVycm9yIHJhdGUgYmFzZWQuIHNvIGhpZ2gK
Pj4+IHBhY2tldCBsb3NzIHRyaWdnZXJzIHRoZSByYXRlIGNvbnRyb2wgdG8gbG93ZXIgdGhlIHJh
dGUgd2hpY2ggcmVzdWx0cwo+Pj4gaW4gaW5jcmVhc2VkIG91dHB1dCBwb3dlciBhbmQgdmljZSB2
ZXJzYS4gYnV0IGFzIG1lbnRpb25lZC4gYXQgY2FyZAo+Pj4gc3RhcnR1cCBhIG5vaXNlIGZsb29y
IGNhbGlicmF0aW9uIHN0YXJ0cyB3aGljaCBtYXkgc3VjY2VlZCBvciBmYWlsLgo+Pj4gaWYgaXQg
c3VjY2VlZHMgaXQgd2lsbCB0dXJuIGludG8gYSBsb25nIGRlbGF5IHBoYXNlLiBzbyBjeWNsaWMK
Pj4+IGNhbGlicmF0aW9uLiB0aGUgY2FsaWJyYXRpb24gdGltZSBpcyBleGFjdGx5IDMwIHNlY29u
ZHMgKG1pbmltdW0pIAo+Pj4gYW5kIGlmCj4+PiBpdCBmYWlscyBpdCBjYW4KPj4+IGV4Y2VlZCB0
byA2MCBzZWNvbmRzLiBhZnRlciB0aGF0IHRpbWUgaXQgd2lsbCBzbGVlcCBmb3IgMzAwIHNlY29u
ZHMgYW5kCj4+PiB3aWxsIGNoZWNrIGZvciByZWNhbGlicmF0aW9uIGNvbmRpdGlvbnMuICh0aGVy
ZSBhcmUgcnVsZXMgbGlrZSBoaWdoCj4+PiBub2lzZSBmbG9vciBjaGFuZ2VzIGV0Yy4pCj4+PiBh
IHJlY2FsaWJyYXRpb24gaXMgYWxzbyB0cmlnZ2VyZWQgYXQgY2hhbm5lbCBjaGFuZ2VzwqAgYW5k
IGlmIGNoaXBzZXQKPj4+IHRlbXBlcmF0dXJlIGNoYW5nZXMgYXQgYSBjZXJ0YWluIGxldmVsLgo+
Pj4gZnJvbSB3aGF0IGkgaGF2ZSBzZWVuIHRoZSBwcm9jZWR1cmUgaW4gdGhlIHFjYTk4ODAgZmly
bXdhcmUgaXMgZXhhY3RseQo+Pj4gdGhlIHNhbWUgYXMgaW4gYXRoOWsuCj4+PiBhbnl3YXkuIHdo
aWxlIHRoaXMgY2FsaWJyYXRpb24gaXMgcnVubmluZywgdGhlIHNpZ25hbCBhbmQgbm9pc2UgZmxv
b3IKPj4+IG1pZ2h0IGJlIHVuc3RhYmxlIG9yIGV2ZW4gYm9ndXMgdW50aWwgdGhpcyBpcyBmaW5p
c2hlZCBhbmQgcmF0ZSBjb250cm9sCj4+PiBtaWdodCBub3QgYmUgb3B0aW1hbAo+Pj4gdW5kZXIg
c3RyZXNzIGNvbmRpdGlvbnMgbGlrZSBsb25nIHJhbmdlIGxpbmtzIHdpdGggbG93IHNpZ25hbHMu
IHdpdGgKPj4+IHN0YW5kYXJkIHdpZmkgdXNhZ2UgeW91IHNob3VsZCBub3Qgbm90aWNlIGl0IHRo
YXQgbXVjaCBzaW5jZSBzaWduYWwgdG8KPj4+IG5vaXNlIHJhdGlvIGlzIGhpZ2ggZW5vdWdoIGFu
eXdheQo+Pj4KPj4+Cj4+Pj4KPj4+PiBMb3RzIG9mIG1vdmluZyBwYXJ0cy4uLgo+Pj4+Cj4+Pj4g
VGhhbmtzLAo+Pj4+IEJlbgo+Pj4+Cj4+Pj4+Cj4+Pj4+IFNlYmFzdGlhbgo+Pj4+Pgo+Pj4+PiBB
bSAxOC4xMi4yMDE5IHVtIDAwOjM3IHNjaHJpZWIgVG9tIFBzeWJvcmc6Cj4+Pj4+PiBhbHNvIG5v
dGljZWQgbm93IHRoYXQgdGhlIG5vaXNlIGZsb29yIGNoYW5nZXMgd2l0aCBzaWduYWwgCj4+Pj4+
PiBzdHJlbmd0aCBhcwo+Pj4+Pj4gZGVzY3JpYmVkIGluIHRoaXMgYnVnIHJlcG9ydDoKPj4+Pj4+
IGh0dHBzOi8vd3d3Lm1haWwtYXJjaGl2ZS5jb20vYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcv
bXNnMTE1NTMuaHRtbCAKPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gYWZ0ZXIgd2lmaSByZXN0YXJ0Cj4+
Pj4+Pgo+Pj4+Pj4gaXdpbmZvOgo+Pj4+Pj4KPj4+Pj4+IHNpZ25hbDogLTU5ZEJtIG5vaXNlOiAt
MTA4ZEJtCj4+Pj4+Pgo+Pj4+Pj4gdGhlbiBnb2VzIHRvCj4+Pj4+Pgo+Pj4+Pj4gc2lnbmFsOiAt
NTJkQm0gbm9pc2U6IC0xMDNkQm0KPj4+Pj4+Cj4+Pj4+PiBhbmQgZmluYWxseSBkcm9wcyB0bwo+
Pj4+Pj4KPj4+Pj4+IHNpZ25hbDogLTU5ZEJtIG5vaXNlOiAtMTAzZEJtCj4+Pj4+Pgo+Pj4+Pgo+
Pj4+Cj4+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
