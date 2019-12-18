Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D3C123E41
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 05:05:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x32oHfghMJmCTJndZ/p2OoVkML+xG/jkq74W1pYpST8=; b=f6JMgJ3b14FJfZ4BDtmQxc5tj
	DnKg2BwwM1sItVQuQ+qoXOoBxgRhrlYrBREp8w5mhym0znHw9LmFh/JRYhPdBI2ThZkA1IGqd4hpG
	4G3IdbIjt704HtgR+pmN3NA/YSk8dDHTCKCHH9beKVh1jzQbUd7FAmpKYLg6jIHplmzIKXUmjhplA
	DTf63r8MOHIX3xbrANTFvT8raYAeFsm45wmVWXqDtRt43rIvAkdPBIVvQG/sQQZg171oJZdjaNzyG
	ZQQlLShWHO3LbggKvwErrI+L1my/gc7gKO3J8hEUlOspV4DW7mn2dZOBAZmNmMMo3B5ph6eZ54QhF
	Z9wgajccQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihQaa-0004aP-L8; Wed, 18 Dec 2019 04:05:32 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihQaX-0004a1-2d
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 04:05:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=rFjaA1MgH0DmRFIFWiCHh660Qit95dLDtCB6mWbKeJQ=; 
 b=xt+f6jBEA24h268VHBsupd3E1s9407kT9dSO1RbWI8s1KwEOZSxk8dwrT3GqEpeDBL4kHfMP+8xnfVAscUzv5ALXpnSwwqeijXarMyo93KS9SMSWePS+hQB66LqFxSXGP1WDKF0XjXgzFZ0Cd8Y+RXGVawn5hoBh0ePPPXYK8lQ=;
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
To: Ben Greear <greearb@candelatech.com>,
 Tom Psyborg <pozega.tomislav@gmail.com>
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
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <9431f1a2-a44e-9b81-72b0-9a703e1841ac@newmedia-net.de>
Date: Wed, 18 Dec 2019 05:05:08 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <8eae96cd-a94e-abc1-4750-73f931d657d6@candelatech.com>
X-Received: from [2003:c9:3f0e:3a00:383d:f7f7:6179:80c8]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1ihQZ7-0006Xr-C8; Wed, 18 Dec 2019 05:04:01 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_200529_409075_A366F76D 
X-CRM114-Status: GOOD (  21.95  )
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>,
 Justin Capella <justincapella@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

CkFtIDE4LjEyLjIwMTkgdW0gMDM6Mzcgc2NocmllYiBCZW4gR3JlZWFyOgo+Cj4KPiBPbiAxMi8x
Ny8yMDE5IDA2OjEyIFBNLCBTZWJhc3RpYW4gR290dHNjaGFsbCB3cm90ZToKPj4gaSBkb250IGtu
b3cgd2hhdCB5b3Ugd2FudCB0byBjb21wYXJlIGhlcmUuCj4+Cj4+IDEuIHlvdSBjb21wYXJlIDIg
ZGlmZmVyZW50IHdpZmkgY2hpcHNldHMuIGJvdGggaGF2ZSBkaWZmZXJlbnQgCj4+IHNlbnNpdGl0
aXZ5IGFuZCBvdmVyYWxsIG91dHB1dCBwb3dlciBzcGVjCj4+Cj4+IDIuIGJvdGggaGF2ZSBkaWZm
ZXJlbnQgYW1vdW50IG9mIGFudGVubmEgY2hhaW5zLiB3aGljaCBkb2VzIG1ha2UgYSAKPj4gZGlm
ZmVyZW5jZSBpbiBpbnB1dCBzZW5zaXRpdml0eQo+Pgo+PiAzLiB0aGUgcGF0Y2ggYmVuIG1hZGUg
aGFzIG5vIGVmZmVjdCBvbiBxY2E5ODgwIGNoaXBzZXRzLiBpdCBvbmx5IAo+PiB0YWtlcyBlZmZl
Y3Qgb24gMTAuNCBiYXNlZCBjaGlwc2V0cyBsaWtlIDk5ODQKPgo+IFRoZSBwYXJ0IG9mIG15IHBh
dGNoIHRoYXQgc3VtcyBzZWNvbmRhcnkgZnJlcXVlbmNpZXMgc2hvdWxkIGFwcGx5IHRvIAo+IHdh
dmUtMSBhcyB3ZWxsLCBidXQgSSBoYXZlCj4gbm90IHZlcmlmaWVkIHRoYXQgeWV0Lgp5ZWFoLiBy
aWdodC4gc29ycnkgaSB3YXMganVzdCBsb29raW5nIGF0IHRvdGFsIHNpZ25hbCBzdW0gd2hpY2gg
dXNlcyAKcnNzaV9jb21iX2h0Cj4KPgo+PiBhYm91dCBub2lzZSBmbG9vcnMgaW4gZ2VuZXJhbC4g
bm9pc2UgZmxvb3JzIG9mIC0xMDggYXJlIGJvZ3VzLiB0aGVyZSAKPj4gaXMgYSBwaHlzaWNhbCBs
aW1pdCBhIG5vaXNlIGxldmVsIGNhbiBiZS4KPj4gc2luY2UgZHJpdmVycyBsaWtlIGF0aDlrIGFy
ZSBkb2luZyBhIGN5Y2xpYyBjYWxpYnJhdGlvbiwgdGhlIG5vaXNlIAo+PiB2YWx1ZSBtaWdodCBp
bmRlZWQgY2hhbmdlLiBidXQgdGhpcyBjYWxpYnJhdGlvbiBpcwo+PiBub3QgcnVubmluZyBpbiBy
ZWFsdGltZS4gaXRzIGN5Y2xpYy4gaSdtIG5vdCBhd2FyZSBpZiBjaGlwc2V0cyBsaWtlIAo+PiBx
Y2E5ODh4IGFyZSBnb2luZyB0aGUgc2FtZSB3YXksIGJ1dCBzaW5jZSBxY2E5ODh4Cj4+IGhhcyBz
aW1lIHNpbWlsYXJpZXMgd2l0aCBhdGg5ayBjaGlwc2V0cyB1bmxpa2UgdGhlIG5ld2VyIDk5ODQg
Cj4+IHZhcmlhbnRzLCBpdCBjb3VsZCBiZS4gdGhlIDMwIHNlY29uZHMgbWVudGlvbmVkCj4+IGlu
IHRoZSBidWcgcmVwb3J0IGZpdHMgdG8gbXkgZXhwZWN0YXRpb25zIG9mIHRoZSBlYXJseSBub2lz
ZWZsb29yIAo+PiBjYWxpYnJhdGlvbiB3aGljaCBoYXMgYSBzaG9ydCBkZWxheSBhbmQgYWZ0ZXIg
c3VjY2Vzcwo+PiB0dXJuaW5nIHRvIHVzZSBhIGxvbmcgZGVsYXkuIGFueXdheS4gaW4gdGhpcyBl
YXJseSBjYWxpYnJhdGlvbiBwaGFzZSAKPj4gc2lnbmFscyBtaWdodCBjaGFuZ2UgYW5kIHdpbGwg
c3RhYmlsaXplIGFmdGVyLiB0aGlzIGlzbnQgYSBpc3N1ZQo+PiBzaW5jZSB5b3VyIGNvbm5lY3Rp
b24gd2lsbCB3b3JrIGFueXdheSBldmVuIGlmIGl0IG1pZ2h0IHRha2UgYSBsaXR0bGUgCj4+IGJp
dCBsb25nZXIgaWYgeW91IGhhdmUgcG9vciBzaWduYWwgbGV2ZWxzCj4+Cj4+IEBiZW4uIGFtIGkg
d3Jvbmcgb3Igd2hhdCBkbyB0aGluaz8KPgo+IEkgZG9uJ3Qga25vdyBlbm91Z2ggYWJvdXQgaG93
IHRoZSBub2lzZSBmbG9vciBjYWxjdWxhdGlvbnMgYXJlIGRvbmUgb3IgCj4gaG93IHRoZSBhcHBs
eSB0byBzZXR0aW5ncwo+IHRvIGtub3cgdGhlIGFuc3dlci4KPgo+IEkgd2lsbCBiZSBoYXBweSBp
biBnZW5lcmFsIGlmIGF0aDEwayB3YXZlLTEsIHdhdmUtMiwgYW5kIGF0aDlrIHJlcG9ydCAKPiBz
aW1pbGFyIFJTU0kgZm9yIHNpbWlsYXIKPiBzZXR1cHMuCnRoYXQgd2lsbCBub3Qgd29yay4geW91
IGNvbXBhcmUgZGlmZmVyZW50IGNoaXBzZXRzIGFuZCBkZXBlbmRpbmcgb24gdGhlIAppbXBsZW1l
bnRhdGlvbiBieSB0aGUgY2FyZCB2ZW5kb3IKcmYgc2Vuc2l0aXZpdHkgY2FuIGJlIHZlcnkgZGlm
ZmVudC4gdGhlIHNhbWUgZ29lcyBmb3Igb3V0cHV0IHBvd2VyLiBzb21lIAp2ZW5kb3JzIGFyZSB1
c2luZyBhZGRpdGlvbmFsIHJmIGFtcHMKZm9yIGVuaGFuY2luZyBvdXRwdXQgcG93ZXIgKHViaXF1
aXRpIGlzIGJlc3QgZXhhbXBsZSBoZXJlKS4gdGhpcyB0aGVzZSAKYW1wcyBhbHNvIG1heSBoYXZl
IGluZmx1ZW5jZSB0byBzZW5zaXRpdml0eS4Kb24gdGhlc2UgY2FyZHMgeW91IHNldCAxMCBkYiBv
dXRwdXQgcG93ZXIsIGJ1dCBpbiBmYWN0IGl0IG91dHB1dHMgMTggZGIuIApzbyB0aGVyZSBpcyBh
IGJpYXMgb2Zmc2V0IG9uIHRoZXNlIGNhcmRzIG9yIGRldmljZXMuICh0aGUgb2Zmc2V0IGlzIApk
ZXBlbmRpbmcgb24gdGhlIGRldmljZSBtb2RlbCkKCndoYXQgeW91IG1lYXN1cmUgaXMgd2hhdCB0
aGUgY2hpcCByZWNlaXZlcywgYnV0IG5vdCB3aGF0IHdhcyBsb3N0IG9uIHRoZSAKcGNiIGxheW91
dC4gKG9yIHdhcyBldmVuIGdlbmVyYXRlZCBpbiBjYXNlIG9mIG5vaXNlKQphbmQgd2hlbiBpdCBj
b21lcyB0byBjYWxpYnJhdGlvbiBkYXRhLiBjb3JyZWN0IHdvdWxkIGJlIGlmIGVhY2ggCmluZGl2
aWR1YWwgY2FyZCBpcyBjYWxpYnJhdGVkIGJlZm9yZSBzaGlwbWVudC4gaW4gcmVhbGl0eSBtYW51
ZmFjdHVyZXMKYXJlIGRvaW5nIGNhbGlicmF0aW9uIG9uIGEgc2luZ2xlIHJlZmVyZW5jZSBjYXJk
IGFuZCBjbG9uZSBpdCBvbiBhbGwgCmZvbGxvd2luZyBjYXJkcyB0byBzYXZlIHRpbWUuIHRoZSBy
ZXN1bHQgZGVwZW5kcyBvbiBkYXkgb3Igd2VlayBvZiAKcHJvZHVjdGlvbgphbmQgY3VycmVudCBw
b3NpdGlvbiBvZiB0aGUgbW9vbiBhbmQgc3VuLiBlcnJvcnMgb2YgKy0gMiBkYiBhcmUgY29tbW9u
IApoZXJlLiAodGhpcyBpcyBub3QgYSBmYWN0IGZvciBhbGwgY2FyZCBvciBkZXZpY2UgdmVuZG9y
cykKCj4KPiBJZiB5b3UgbG9vayBhdCB0aGUgdHgtcmF0ZS1wb3dlciB0YWJsZSBpbiBhdGgxMGss
IGZvciBpbnN0YW5jZSwgeW91IAo+IGNhbiBzZWUgZGlmZmVyZW50IE1DUyBhcmUgdHJhbnNtaXR0
ZWQKPiBhdCBkaWZmZXJlbnQgc2lnbmFsIGxldmVscy7CoCBTbywgc29tZSBjaGFuZ2UgZnJvbSBp
bml0aWFsIGNvbmRpdGlvbnMgCj4gbWlnaHQgYmUgYmVjYXVzZSBoaWdoZXIgTUNTIGlzCj4gYmVp
bmcgdHJhbnNtaXR0ZWQgYWZ0ZXIgcmF0ZS1jdHJsIHNjYWxlcyB1cD8KeWVzLiB0aGlzIGlzIG1v
ZHVsYXRpb24gcmVsYXRlZC4gYXMgaGlnaGVyIHRoZSByYXRlIGdvZXMgYXMgbG93ZXIgdGhlIApw
b3dlciB3aWxsIGJlLiB0aGF0cyBwcmluY2libGUgb2YgUUFNLgphbmQgdGhlIHJhdGUgY29udHJv
bCBpdHNlbGYgaXNudCBzaWduYWwgYnV0IGVycm9yIHJhdGUgYmFzZWQuIHNvIGhpZ2ggCnBhY2tl
dCBsb3NzIHRyaWdnZXJzIHRoZSByYXRlIGNvbnRyb2wgdG8gbG93ZXIgdGhlIHJhdGUgd2hpY2gg
cmVzdWx0cwppbiBpbmNyZWFzZWQgb3V0cHV0IHBvd2VyIGFuZCB2aWNlIHZlcnNhLiBidXQgYXMg
bWVudGlvbmVkLiBhdCBjYXJkIApzdGFydHVwIGEgbm9pc2UgZmxvb3IgY2FsaWJyYXRpb24gc3Rh
cnRzIHdoaWNoIG1heSBzdWNjZWVkIG9yIGZhaWwuCmlmIGl0IHN1Y2NlZWRzIGl0IHdpbGwgdHVy
biBpbnRvIGEgbG9uZyBkZWxheSBwaGFzZS4gc28gY3ljbGljIApjYWxpYnJhdGlvbi4gdGhlIGNh
bGlicmF0aW9uIHRpbWUgaXMgZXhhY3RseSAzMCBzZWNvbmRzIChtaW5pbXVtKSBhbmQgaWYgCml0
IGZhaWxzIGl0IGNhbgpleGNlZWQgdG8gNjAgc2Vjb25kcy4gYWZ0ZXIgdGhhdCB0aW1lIGl0IHdp
bGwgc2xlZXAgZm9yIDMwMCBzZWNvbmRzIGFuZCAKd2lsbCBjaGVjayBmb3IgcmVjYWxpYnJhdGlv
biBjb25kaXRpb25zLiAodGhlcmUgYXJlIHJ1bGVzIGxpa2UgaGlnaCAKbm9pc2UgZmxvb3IgY2hh
bmdlcyBldGMuKQphIHJlY2FsaWJyYXRpb24gaXMgYWxzbyB0cmlnZ2VyZWQgYXQgY2hhbm5lbCBj
aGFuZ2VzwqAgYW5kIGlmIGNoaXBzZXQgCnRlbXBlcmF0dXJlIGNoYW5nZXMgYXQgYSBjZXJ0YWlu
IGxldmVsLgpmcm9tIHdoYXQgaSBoYXZlIHNlZW4gdGhlIHByb2NlZHVyZSBpbiB0aGUgcWNhOTg4
MCBmaXJtd2FyZSBpcyBleGFjdGx5IAp0aGUgc2FtZSBhcyBpbiBhdGg5ay4KYW55d2F5LiB3aGls
ZSB0aGlzIGNhbGlicmF0aW9uIGlzIHJ1bm5pbmcsIHRoZSBzaWduYWwgYW5kIG5vaXNlIGZsb29y
IAptaWdodCBiZSB1bnN0YWJsZSBvciBldmVuIGJvZ3VzIHVudGlsIHRoaXMgaXMgZmluaXNoZWQg
YW5kIHJhdGUgY29udHJvbCAKbWlnaHQgbm90IGJlIG9wdGltYWwKdW5kZXIgc3RyZXNzIGNvbmRp
dGlvbnMgbGlrZSBsb25nIHJhbmdlIGxpbmtzIHdpdGggbG93IHNpZ25hbHMuIHdpdGggCnN0YW5k
YXJkIHdpZmkgdXNhZ2UgeW91IHNob3VsZCBub3Qgbm90aWNlIGl0IHRoYXQgbXVjaCBzaW5jZSBz
aWduYWwgdG8gCm5vaXNlIHJhdGlvIGlzIGhpZ2ggZW5vdWdoIGFueXdheQoKCj4KPiBMb3RzIG9m
IG1vdmluZyBwYXJ0cy4uLgo+Cj4gVGhhbmtzLAo+IEJlbgo+Cj4+Cj4+IFNlYmFzdGlhbgo+Pgo+
PiBBbSAxOC4xMi4yMDE5IHVtIDAwOjM3IHNjaHJpZWIgVG9tIFBzeWJvcmc6Cj4+PiBhbHNvIG5v
dGljZWQgbm93IHRoYXQgdGhlIG5vaXNlIGZsb29yIGNoYW5nZXMgd2l0aCBzaWduYWwgc3RyZW5n
dGggYXMKPj4+IGRlc2NyaWJlZCBpbiB0aGlzIGJ1ZyByZXBvcnQ6Cj4+PiBodHRwczovL3d3dy5t
YWlsLWFyY2hpdmUuY29tL2F0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnL21zZzExNTUzLmh0bWwK
Pj4+Cj4+PiBhZnRlciB3aWZpIHJlc3RhcnQKPj4+Cj4+PiBpd2luZm86Cj4+Pgo+Pj4gc2lnbmFs
OiAtNTlkQm0gbm9pc2U6IC0xMDhkQm0KPj4+Cj4+PiB0aGVuIGdvZXMgdG8KPj4+Cj4+PiBzaWdu
YWw6IC01MmRCbSBub2lzZTogLTEwM2RCbQo+Pj4KPj4+IGFuZCBmaW5hbGx5IGRyb3BzIHRvCj4+
Pgo+Pj4gc2lnbmFsOiAtNTlkQm0gbm9pc2U6IC0xMDNkQm0KPj4+Cj4+Cj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QK
YXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9hdGgxMGsK
