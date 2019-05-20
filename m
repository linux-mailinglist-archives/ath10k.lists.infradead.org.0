Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F38623DEB
	for <lists+ath10k@lfdr.de>; Mon, 20 May 2019 18:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ElPMAegd3+bDQKdCYFxAePI4cdocaVaCiDpW26wmgqo=; b=la2b0jQIDHmE7glqb373owQp1
	JkQuE6CLCxIiJhQjnHT0qyAHlcAsoKxV2BWaszOUyGJo5A9VTDbPrWj3wFo3Vjz6IvfdXiA2aYG5u
	8u49TSPhLt7CrQVp8yt9CBaWbJVNUHTWbOMPyF0ttor9bXfqPbVeo4UTxEuZZANhBhfQY4PVMzw6l
	+yAp8Yv7TihWQr7EPDiufncK25vRea3dpyLQS4TzCzMWLzPjVJ2spQ/clhCOszvBrmK2tKgX9KyvH
	5m1fWVFtOElvzsCXTuIy42HxCo8ME6PR5NkTTUVR8bjKKZ09qhjuDSlahWPSttiSoq1j7S3RD6QcL
	TEJ81FNyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSldX-0005p3-MM; Mon, 20 May 2019 16:59:43 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSldT-0005oj-TL
 for ath10k@lists.infradead.org; Mon, 20 May 2019 16:59:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=gbpmzq15uRwAMzIK3XT0LF66G67n3mixh9h1SqoQSm0=; 
 b=p0yVwahbu63dLjcsi63wIEyZ7QhyxOcBc+nDMmv2oXhbvkY3EhnyXlNc+R2qMbYN1agtyN7nDEZVN13R1ke1RQo9jehRpZFnsf4e2+JyG9seS6f3VSoURo4vc/axAg4Vmwwc5rGkNOJjCDEP1hR56wjLsFYhgci+UD6aO/y3/7g=;
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Ben Greear <greearb@candelatech.com>, Adrian Chadd <adrian@freebsd.org>
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
 <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
 <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
 <55b50a9a-49f4-d669-22d4-84e2efabf451@candelatech.com>
 <2ef800e2-5ce6-f579-ded5-65dc82827e4d@newmedia-net.de>
 <cdfa7b09-4e32-a62d-1bb6-d6128ba6594b@candelatech.com>
 <eae17245-eec2-96fe-34ff-f3800fae44d8@newmedia-net.de>
 <CAJ-Vmo=xhBvLmzec5mzf-gcFm1h6cQBLUOdVhuQjvbUWFjP-AQ@mail.gmail.com>
 <6378a260-0441-b985-6421-091f46d871f5@candelatech.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <3d1db9ca-92a0-2bf7-5608-54e2b8e0476f@newmedia-net.de>
Date: Mon, 20 May 2019 18:59:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <6378a260-0441-b985-6421-091f46d871f5@candelatech.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1hSldY-0002BX-Ah; Mon, 20 May 2019 18:59:44 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_095940_236673_5437E052 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ath10k <ath10k@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

CkFtIDE3LjA1LjIwMTkgdW0gMTg6MDAgc2NocmllYiBCZW4gR3JlZWFyOgo+IE9uIDUvMTcvMTkg
ODo0NyBBTSwgQWRyaWFuIENoYWRkIHdyb3RlOgo+PiBPbiBGcmksIDE3IE1heSAyMDE5IGF0IDA4
OjA2LCBTZWJhc3RpYW4gR290dHNjaGFsbAo+PiA8cy5nb3R0c2NoYWxsQG5ld21lZGlhLW5ldC5k
ZT4gd3JvdGU6Cj4+Cj4+Cj4+PiBwZXJzb25hbGx5IGkgdGhpbmsgZ29pbmcgYmFjayB0byBiYXNp
YyByYXRlcyBsaWtlIDIgbWJpdCBtYWtlcyBubyBzZW5zZQo+Pj4gYW55d2F5LiBpdHMgdGhhdCBk
ZWFkIHNsb3cgdGhhdCBhIGNvbm5lY3Rpb24gbXVzdCBicmVhayBhbmQgaGFzIHRvIGJlCj4+PiBi
cm9rZW4gaWYgdGhpcyBkb2VzbnQgd29yay4KPj4+IHN0aWxsIGEgc2hhbWUgdGhhdCBiZWFjb25z
IGFyZSBzdGlsbCB0cmFuc21pdHRlZCBpbiB0aGlzIHdheSBhbmQKPj4+IG11bHRpY2FzdC9icm9h
ZGNhc3QgcGFja2V0cyBhcyB3ZWxsIHdoaWNoIGNhdXNlcyBhIGhlbGwgb2YgcHJvYmxlbXMuIAo+
Pj4gYnV0Cj4+PiB0aGF0cyBmb3IgYmFja3dhcmQgY29tcGF0aWJpbGl0eSBvZiBjYXVzZQo+Pgo+
PiBJdCBkZXBlbmRzIG9uIHdoYXQga2luZCBvZiBjaGFubmVsIHlvdSBhcmUuIE5vdCBldmVyeW9u
ZSBpcyBkZXBsb3lpbmcKPj4gc3VwZXIgZGVuc2UgZW50ZXJwcmlzZSBBUHMuIDotKQo+Pgo+PiBU
aGUgMTFhYyBhbmQgMTFheCBjaGlwcyB0aGF0IGRvIGNvbnN0YW50IGZyZXF1ZW5jeSByZWFkanVz
dGluZyB3b3JrCj4+IGJldHRlciBpbiB0aGluZ3MgbGlrZSBtb3ZpbmcgZHJvbmVzLCB3aGVyZSB5
b3UgaGF2ZSBjb25zdGFudCBkb3BwbGVyCj4+IHNoaWZ0LiBJIGtub3cgc29tZSBwZW9wbGUgZG9p
bmcgZHJvbmUgd29yayB0aGF0IGp1c3QgZG9uJ3QgYm90aGVyIHdpdGgKPj4gTUNTIGFuZCBhZ2dy
ZWdhdGlvbiBiZWNhdXNlIHRoZXkgbmVlZCBhIHN1cGVyIHJlbGlhYmxlIGNoYW5uZWwgYW5kIHRo
ZQo+PiBjb25kaXRpb25zIGNvbnN0YW50bHkgc2hpZnQuCj4+Cj4+IFRoYXQgc2FpZCwgdGhleSdy
ZSB2ZXJ5IHNhZCB0aGF0IHRoZXkgY2FuJ3QgaGFjayBvbiB0aGUgMTFhYy8xMWF4Cj4+IGZpcm13
YXJlIHRvIGZpeCBzb21lIGVyciwgbGVzcyBvcHRpbWFsIGRlY2lzaW9ucyBpbiB0aGVpciB1c2Ug
Y2FzZQo+PiBzcGFjZSBsaWtlIHRoZXkgY2FuIHdpdGggYXRoNWsvYXRoOWsuCj4+Cj4+IElTVFIg
YmFjayBhdCBRQ0EgZGF5cyB0aGVyZSB3ZXJlIHNvbWUgcGVvcGxlIG9uIHRoZSBzeXN0ZW1zIHRl
YW0gdGhhdAo+PiBjb3VsZCBkZW1vbnN0cmF0ZSBDQ0sgd2FzIG1vcmUgc3RhYmxlIGluIHNvbWUg
dXNlIGNhc2VzIGFuZCBzbyBkaWRuJ3QKPj4gbGlrZSB0aGUgTGludXggcmF0ZSBjb250cm9sIGJl
aGF2aW91ciBvZiBub3QgZmFsbGluZyBiYWNrIHRvIENDSyBpbiAyRwo+PiAxMW4gbW9kZS4gVGhl
cmUgd2FzIC4uIHB1c2hiYWNrIGFnYWluc3QgdGhlIGxpbnV4IHVwc3RyZWFtIHJhdGUKPj4gY29u
dHJvbCBpbiB0aGlzIHJlc3BlY3QgcmlnaHQgdW50aWwgdGhlIGxpbnV4IGZvbGsgdG90YWxseSBk
ZXByZWNhdGVkCj4+IHRoZSBRQ0EgcmF0ZSBjb250cm9sIGluIGF0aDlrLiA6KQo+Pgo+PiAoQW5k
IHRoZW4gYnVncyBsaWtlIHdoYXQgYmVuIGlzIHNlZWluZyA6KQo+Pgo+PiBCZW4gLSBkaWQgZGlz
YWJsaW5nIENDSy9PRkRNIGZhbGxiYWNrIHJhdGVzIGhlbHA/IERpZCB5b3UgZml4IHRoZSBiaXQK
Pj4gdGhhdCB0cmllcyB0byBzZW5kIEFNUERVIGZyYW1lcyBpbiBub24tMTFuIHJhdGVzPwo+Cj4g
WWVzLCBkaXNhYmxpbmcgdGhlIGZhbGxiYWNrIGFwcGVhcnMgdG8gaGF2ZSBmaXhlZCBteSBpc3N1
ZS4KPgo+IEkgZGlkIG5vdCB0cnkgdG8gZml4IHRoZSBmYWxsYmFjayBjb2RlIGJlY2F1c2UgSSB0
aGluayBpdCB3aWxsIGJlIHF1aXRlCj4gY29tcGxpY2F0ZWQgdG8gZG8gaXQgcHJvcGVybHkgKEkg
c3VzcGVjdCBhIGRpZmZlcmVudCB0aWQgbXVzdCBiZSB1c2VkIAo+IGZvciB0aGlzCj4gdG8gd29y
aykuwqAgSSdtIG5vdCBldmVuIGVudGlyZWx5IHN1cmUgb2YgZXhhY3RseSB3aHkgdGhlIHRyYW5z
bWl0IAo+IGxvZ2ljIGZhaWxzCj4gaW4gdGhpcyBjYXNlLCBhbmQgYnkgdGhlIHRpbWUgcmF0ZS1j
dHJsIGxvZ2ljIGlzIHF1ZXJpZWQsIEkgdGhpbmsgaXQgCj4gaXMgdG9vCj4gbGF0ZSB0byBlYXNp
bHkgY2hhbmdlIHRpZHMuCj4KPiBBbmQgRllJLCBpbiBteSBmaXJtd2FyZS9kcml2ZXIsIHlvdSBj
YW4gbm93IHNwZWNpZnkgdGhlIGV4YWN0IAo+IHByZWFtYmxlLXR5cGUsIG1jcywgYmFuZHdpZHRo
LCB0eHBvd2VyLAo+IHJldHJhbnNtaXQgY291bnQsIGV0YyBvbiBhIHBlciBwYWNrZXQgYmFzaXMu
wqAgSSdtIG5vdCBzdXJlIG9mIGFsbCB0aGUgCj4gYnVncyBhbmQgbGltaXRhdGlvbnMKPiBpbiB0
aGlzIGNvZGUsIGJ1dCBpdCBhdCBsZWFzdCBtb3N0bHkgd29ya3MgYXMgaG9wZWQgZm9yIHRoZSB3
YXlzIHdlIAo+IGFyZSB1c2luZyBpdAo+IChyeCBzZW5zaXRpdml0eSB0ZXN0IHJpZ3MsIGV0Yyku
Cj4KPiBNaWdodCBiZSBvZiBpbnRlcmVzdCBpZiBzb21lb25lIHdhbnRzIHRvIGRvIGEgc29tZXdo
YXQgbGltaXRlZCAKPiB1c2VyLXNwYWNlIHJhdGUtY3RybCBmb3IKPiBhdGgxMGsgd2F2ZS0yLgp0
aGUgY3VyaW91cyB0aGluZyBpcyBzdGlsbCB0aGF0IHRoZSBmYWxsYmFjayBjb2RlIGFwcGxpZXMg
b25seSBmb3IgMi40IApnaHogc28gaXQgd291bGQgbmV2ZXIgaGF2ZSBhZmZlY3RlZCA4MDIuMTFh
Ywo+Cj4gVGhhbmtzLAo+IEJlbgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
