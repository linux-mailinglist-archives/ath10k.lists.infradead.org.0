Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6675320F47
	for <lists+ath10k@lfdr.de>; Thu, 16 May 2019 21:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aLZK69Zsy0ikExlPyxNOMDogiaS4sW7XFGKHRv4u/BM=; b=t6lSU2STJoF0Pq0Y/sw8uPGA5
	twA/DQojQ0Z/iw8WuHlpAs6cnDDtlRJuzUDfLHdrTqUAtEqeEkLOJCsPSB7GhdtZgZqoGlSV5Iz26
	Nzq1iYeKpPyLXf//Zqrj/GU6BX++HhDG9Vw0G6/ktU/Jdwajyodl7ipDm0SZAvPP07fC0AH3qm++6
	5TQmZ1qDrs/A/1IuHmBHdcuZeE2vxEHwQuV/s+XmriDi922XUJkNrYScwd72qo/BJUUIGptrKnzkm
	a2GITcNxL0pKT1B5Qm6L5anrYMZTC2LbL23elFGRGdwISOobbAAT4imvAcScQIuvmKDIaaQKsQWNl
	nB9nm7zRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRMEo-0003hc-KU; Thu, 16 May 2019 19:40:22 +0000
Received: from [208.74.158.174] (helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRMEk-0003hI-N9
 for ath10k@lists.infradead.org; Thu, 16 May 2019 19:40:20 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 0AF5527C05;
 Thu, 16 May 2019 12:40:15 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 0AF5527C05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1558035615;
 bh=naQ9wu0R/BjuBcabyPT0dOjKBahp2Ieuh4dCRU7aJX8=;
 h=Subject:From:To:References:Date:In-Reply-To:From;
 b=jfTNWo8yvPEVEnsRVbV2e3lwPk61jzYycYz2bOE6QpxrDTzMnag8S/8YIv0q1afXj
 yFJFly0aJolneO6p3PCLDktFdsXZiyyjgjT+/9iNVPhPfxxnY9kgO5+b9oSh+0Vc3R
 LF/iQNBM4QzV4Bsj0b5IJhKBjTudT+Rklhw7bECI=
Subject: Re: Problem with 9984 in routed mode with 512b frames.
From: Ben Greear <greearb@candelatech.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 ath10k <ath10k@lists.infradead.org>
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
 <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
 <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
Organization: Candela Technologies
Message-ID: <55b50a9a-49f4-d669-22d4-84e2efabf451@candelatech.com>
Date: Thu, 16 May 2019 12:40:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_124018_831883_08EAB442 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gNS8xNS8xOSA2OjAwIEFNLCBCZW4gR3JlZWFyIHdyb3RlOgo+IE9uIDUvMTUvMTkgNToyNiBB
TSwgU2ViYXN0aWFuIEdvdHRzY2hhbGwgd3JvdGU6Cj4+Cj4+IEFtIDE1LjA1LjIwMTkgdW0gMTQ6
MjAgc2NocmllYiBCZW4gR3JlZWFyOgo+Pj4gT24gMDUvMTQvMjAxOSAwOToyNiBQTSwgU2ViYXN0
aWFuIEdvdHRzY2hhbGwgd3JvdGU6Cj4+Pj4gY2FuIHlvdSBzZW5kIG1lIGEgZGV0YWlsZWQgaW5z
dHJ1Y3Rpb24gZm9yIHRlc3RpbmcgdGhpcyBvbiBteSBkZXZpY2VzPyBzbyB3aGljaCBjb21tYW5k
cyBoYXZlIGJlZW4gdXNlZCBmb3IgZ2VuZXJhdGluZyB0aGUgdHJhZmZpYyBldGMuIChpcGVyZjM/
KQo+Pj4KPj4+IEkgYW0gdXNpbmcgb3VyIG93biB0cmFmZmljIGdlbmVyYXRvciwgYnV0IEkgaW1h
Z2luZSBpcGVyZjMgc2hvdWxkIHdvcmsgZmluZSB0b28uCj4+Pgo+Pj4gSSBhbSB0ZXN0aW5nIG9u
IHg4Ni02NCBhbmQgc28gZm9ydGguwqAgTWF5YmUgeW91IGNhbiB0ZXN0IHdpdGggVURQIHNtYWxs
LXBhY2tldCBsb2FkIG9uIHlvdXIgcGxhdGZvcm0KPj4+IGluIHJvdXRlZCBtb2RlIChpZSwgZXh0
ZXJuYWwgaXBlcmYgZ2VuZXJhdG9yIHRocm91Z2ggeW91ciBBUCkgYW5kIHNlZSBpZiB5b3Ugc2Vl
IGlzc3Vlcz8KPj4gdGhhdHMgdGhlIHBsYW4uIGNhbiB5b3UgZG8gYSB0ZXN0IHdpdGggaXBlcmYz
IHRvIHNlZSBpZiBpdHMgcmVwcm9kdWNlYWJsZS4gaSBtZWFuIGkgd2lsbCB0ZXN0IGl0IG9uIGlw
cSBiYXNlZCBib2FyZHMgYW5kIHg2NC4gYnV0IHRvIG1ha2Ugc3VyZSB0aGF0IHRoZSBzY2VuYXJp
bwo+PiBpcyBpZGVudGljYWwgd2hpY2ggcmFpc2VkIHVwIHlvdXIgaXNzdWUsIGl0IHdvdWxkIGJl
IGZpbmQgaWYgd2UgaGF2ZSBpZGVudGljYWwgc29mdHdhcmUgZm9yIHRlc3RpbmcgaW5jbHVkaW5n
IHRoZSBzYW1lIG9wdGlvbnMKCkkgdGhpbmsgSSBmb3VuZCB0aGUgaXNzdWUuICBUaGUgcmF0ZS1j
dHJsIGxvZ2ljIGluIHRoZSBmaXJtd2FyZSBhbGxvd3MgYSB0cmFuc2l0aW9uIGZyb20gSFQvVkhU
IDIwIE1DUzAgZG93biB0byBPRkRNIHJhdGVzLgpJdCBzZWVtcyB0aGUgaGFyZHdhcmUgZG9lcyBu
b3QgbGlrZSB0byBzZWUgYW4gQU1QRFUgd2l0aCBhbiBPRkRNIHJhdGUgZm9yIDIwTWh6IGFuZCBh
IFZIVCByYXRlIGZvciA4ME1oeiAob3IgbWF5YmUganVzdCB0aGUKc2luZ2xlIE9GRE0gcmF0ZSBp
cyB0aGUgZmF1bHQpLgoKSWYgeW91IGNhbiBlZGl0IGZpcm13YXJlLCB0aGVuIHNldHRpbmcgdGhp
cyB0byAwIHByb2JhYmx5IGZpeGVzIHRoZSBpc3N1ZS4KCmdfcmNfY2NrX3JhdGVfYWxsb3dlZAoK
SSB0aGluayB0byByZXByb2R1Y2UgeW91J2QgbmVlZCB0byBzZW5kIGhpZ2ggc3BlZWQgdHJhZmZp
YyBpbiBhIHNpdHVhdGlvbiB3aGVyZSB0aGUKUkYgZW52aXJvbm1lbnQgaXMgZ29pbmcgdG8gbWFr
ZSByYXRlLWN0cmwgZmFpbCBxdWl0ZSBhIGJpdC4gIChTbG93IHNwZWVkIHNob3VsZAp3b3JrIHRv
bywgYnV0IGl0IHdvdWxkIGxpa2VseSB0YWtlIGEgbG90IGxvbmdlcikuCgpBbmQsIGl0IGlzIGFs
d2F5cyBwb3NzaWJsZSB0aGF0IHdoYXRldmVyIEkgc2F3IHdoZW4gdGVzdGluZyBtb3N0bHktc3Rv
Y2sgRlcgaXMgZGlmZmVyZW50CmZyb20gd2hhdCBJIGV2ZW50dWFsbHkgZGVidWdnZWQgdG8gaW4g
bXkgZmlybXdhcmUuICBTdGlsbCwgZnJvbSBsb29raW5nIGF0IE1DUyB2cyBTTlIKY2hhcnRzLCB0
aGVyZSBzZWVtcyB0byBiZSBubyBhZHZhbnRhZ2UgdG8gdHJ5aW5nIE9GRE0gdnMgTUNTMCBmb3Ig
MjBNaHouCgpUaGFua3MsCkJlbgoKLS0gCkJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2gu
Y29tPgpDYW5kZWxhIFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6Ly93d3cuY2FuZGVsYXRlY2guY29t
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBr
IG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
