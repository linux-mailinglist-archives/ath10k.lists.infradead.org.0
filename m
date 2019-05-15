Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7E71E7A6
	for <lists+ath10k@lfdr.de>; Wed, 15 May 2019 06:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8FmsD8f3QvQXmsU2zS4Ugwz9Lyrs2LMIbLVxC2VrYBE=; b=ZFfKAavRz7Y7D51fpZV16uoXB
	kDXBWvAxz4vMWHibVDla5HQ0Ho5RYnB7AmLxokIz3RVuHvMjbojfhGKbUIrXtukKagRxTveo5VsfE
	cUs+gdkyz0h5gAwf+jqhiAI5BPT6KMY4CZ4bCEi4LDNrDWf2TXbfwGaAclFAAaLSuTRd3hav9TqWj
	DOiQnohsVdc68mzrSVJKWgUdjCgrzrwxrQN45Uth4WT8koSQRbqDyEXG/alc1nEH5cIge3QjgZX6N
	lto01lk2SbzDV3XvYuM4DIUAHiqDidRbX01WDWEuQ9R3dNaRey8MJ/rlfHOTPJmenJZpp4xsIo+gw
	0fM+htr6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQlVJ-0004Sz-C5; Wed, 15 May 2019 04:26:57 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQlVE-0004Ma-Ir
 for ath10k@lists.infradead.org; Wed, 15 May 2019 04:26:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=u25I9uDYl7wdf2UQ1EM1g3E9cCS7V7tUVEluz+h3po0=; 
 b=xnALyOu6JtUrWiWL8Dr5YHDqKs9AbaFiuj1Sn+LyvTI9ErnXIjHr8mugGURczdGWHOcajnfDIGZuwXrk6FXLn41oAzv6zqhbNvvYV+HjL6bfR+uesMF+gA+6E8s/BJYXflCx4WOGW0SUqLCq3nbwXQyNf8KTDqo7e/4KLO4HgNM=;
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Ben Greear <greearb@candelatech.com>, ath10k <ath10k@lists.infradead.org>
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
Date: Wed, 15 May 2019 06:26:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
X-Received: from [2003:c9:3f07:6200:f0a7:95a7:7499:ec6a]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1hQlVD-0000mJ-JT; Wed, 15 May 2019 06:26:51 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_212653_057345_024A6047 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Y2FuIHlvdSBzZW5kIG1lIGEgZGV0YWlsZWQgaW5zdHJ1Y3Rpb24gZm9yIHRlc3RpbmcgdGhpcyBv
biBteSBkZXZpY2VzPyAKc28gd2hpY2ggY29tbWFuZHMgaGF2ZSBiZWVuIHVzZWQgZm9yIGdlbmVy
YXRpbmcgdGhlIHRyYWZmaWMgZXRjLiAoaXBlcmYzPykKClNlYmFzdGlhbgoKQW0gMTUuMDUuMjAx
OSB1bSAwMzo1MiBzY2hyaWViIEJlbiBHcmVlYXI6Cj4gSGVsbG8sCj4KPiBJIGZvdW5kIGEgc3Ry
YW5nZSBpc3N1ZSBhbmQgY3VyaW91cyBpZiBzb21lb25lIGhhcyBzZWVuIHNpbWlsYXIuCj4KPiBJ
IG1hZGUgYW4gQVAgd2hlcmUgdGhlIEFQIGludGVyZmFjZSBhY3RzIGFzIGEgcm91dGVkIGludGVy
ZmFjZS7CoCBJIAo+IGdlbmVyYXRlCj4gdHJhZmZpYyB0aHJvdWdoIGFub3RoZXIgaW50ZXJmYWNl
IGluIHRoZSByb3V0ZXIuwqAgV2hlbiBzZW5kaW5nIDMwME1icHMgCj4gb2YgNTEyIGJ5dGUKPiBV
RFAgcGF5bG9hZHMsIGluIHRoZSBkb3duc3RyZWFtIGRpcmVjdGlvbiwgYW5kIHdpdGggdGhlIHN0
YXRpb24gYmVpbmcgCj4gYSAxeDEgL0FDIGRldmljZSwKPiB0aGVuIHRoZSBBUCBOSUMgYXBwZWFy
cyB0byBtb3N0bHkgbG9jayB1cCB3aXRoaW4gYWJvdXQgMSBtaW51dGUuIEkgCj4gc3RpbGwgc2Vl
IGJlYWNvbnMsIGJ1dCBubwo+IGRhdGEgZnJhbWVzLsKgIEluIHNvbWUgY2FzZXMsIEkgcmVwcm9k
dWNlZCB3aXRoIHZlcnkgc2xvdyBzcGVlZCB0cmFmZmljIAo+IGFzIHdlbGwuCj4KPiBJIHRyaWVk
IHVzaW5nIGEgbW9zdGx5IHVuLW1vZGlmaWVkIGZpcm13YXJlIChpZSwgc2ltaWxhciB0byB1cHN0
cmVhbSAKPiBRQ0EpLCBhcyB3ZWxsIGFzIG15Cj4gaGFja2VkIHVwb24gZmlybXdhcmUsIGFuZCBh
bGwgYWN0IHNpbWlsYXJseS7CoCBJJ20gdXNpbmcgdGhlIDQuMjAgCj4ga2VybmVsLCBidXQgYXQg
bGVhc3QgZm9yIG5vdywKPiBpdCBkb2VzIG5vdCBhcHBlYXIgdG8gYmUgYSBrZXJuZWwgaXNzdWUu
Cj4KPiBJZiBJIHVzZSBsYXJnZXIgTVRVIHNpemVkIGZyYW1lcywgb3IgaGF2ZSBhIDJ4MiBzdGF0
aW9uIGluc3RlYWQgb2YgMXgxIAo+IHRoZW4gaXQgaXMgbXVjaCBoYXJkZXIKPiB0byByZXByb2R1
Y2UgKGFuZCBtYXliZSBjYW5ub3QgYmUgcmVwcm9kdWNlZCkuwqAgQWxzbywgd2hlbiBnZW5lcmF0
aW5nIAo+IHRyYWZmaWMgZGlyZWN0bHkgb24KPiB0aGUgQVAgZGV2aWNlIGluc3RlYWQgb2YgdXNp
bmcgdGhlIHJvdXRlZCBpbnRlcmZhY2UgYXMgYSB0cmFmZmljIAo+IHNvdXJjZSwgaXQgaXMgaGFy
ZGVyIHRvCj4gcmVwcm9kdWNlLgo+Cj4gVGhhbmtzLAo+IEJlbgo+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEw
a0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYXRoMTBrCg==
