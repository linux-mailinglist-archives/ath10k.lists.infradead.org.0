Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD1E212CF
	for <lists+ath10k@lfdr.de>; Fri, 17 May 2019 06:21:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bdBrBjs0kRYMs91/FyDMmW0Twe2fV8b6Hpien2ugvyg=; b=Yz6bPxBHQx9JB/cqUWSxuKa5+
	9J3mHGPqmp+S3QeGGqkovJvcCHRiiF4sQSNiPttiCReipSg47OHMF7rh5KRyfrUvX8/8dlTWNqMWb
	iTy3tBKKl1281qh7nW3RdimDR6zwGrhw6UaZBkCg0zSQqJwNcwvtw2Zx8L1omlQnZNicpcN83e2Uj
	HZVsg6sdoRK7Fp7TSuKrc2gbSb0O9J7Cahh+A/hrfTegu+nRApLubD5jXZgL6pe0Hd9zdb1ILYfyt
	M9SO21cfSGPyoJABpEa8WZ0kigLQyv3IAcCkzAMvS2Zj/zqYssXVlRSgsV9xjnp4nyMOZYy9II32q
	lVzIR2/6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRUNP-0002Mh-3u; Fri, 17 May 2019 04:21:47 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRUNL-0002MM-BD
 for ath10k@lists.infradead.org; Fri, 17 May 2019 04:21:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=W7TTJQJw7qVWbZ4KaIl4eA/iMXnee61dvkVTAZ9WAuo=; 
 b=EzZtpkuzx6cRnIXp/hNTWGTr62zDRdCW2VmU9092X/5HwugM4ul7WtVsr+nrxfZ9mBAiOtVL+dHOTQSM4AvNKbephEFMdRKlPZiTmXzyNVXA5RmAn0kuuF4LhG30CfPzvtRrQHO8ifaJm3FHlKWkTT7/CbCXtoKWDXf5M9GMOEA=;
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: ath10k@lists.infradead.org
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
 <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
 <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
 <55b50a9a-49f4-d669-22d4-84e2efabf451@candelatech.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <2ef800e2-5ce6-f579-ded5-65dc82827e4d@newmedia-net.de>
Date: Fri, 17 May 2019 06:21:30 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <55b50a9a-49f4-d669-22d4-84e2efabf451@candelatech.com>
X-Received: from [2003:c9:3f07:6200:acca:d4b:6c16:68df]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1hRUNO-0001A9-FY
 for ath10k@lists.infradead.org; Fri, 17 May 2019 06:21:46 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_212143_821122_B0EB24A9 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
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

CkFtIDE2LjA1LjIwMTkgdW0gMjE6NDAgc2NocmllYiBCZW4gR3JlZWFyOgo+IE9uIDUvMTUvMTkg
NjowMCBBTSwgQmVuIEdyZWVhciB3cm90ZToKPj4gT24gNS8xNS8xOSA1OjI2IEFNLCBTZWJhc3Rp
YW4gR290dHNjaGFsbCB3cm90ZToKPj4+Cj4+PiBBbSAxNS4wNS4yMDE5IHVtIDE0OjIwIHNjaHJp
ZWIgQmVuIEdyZWVhcjoKPj4+PiBPbiAwNS8xNC8yMDE5IDA5OjI2IFBNLCBTZWJhc3RpYW4gR290
dHNjaGFsbCB3cm90ZToKPj4+Pj4gY2FuIHlvdSBzZW5kIG1lIGEgZGV0YWlsZWQgaW5zdHJ1Y3Rp
b24gZm9yIHRlc3RpbmcgdGhpcyBvbiBteSAKPj4+Pj4gZGV2aWNlcz8gc28gd2hpY2ggY29tbWFu
ZHMgaGF2ZSBiZWVuIHVzZWQgZm9yIGdlbmVyYXRpbmcgdGhlIAo+Pj4+PiB0cmFmZmljIGV0Yy4g
KGlwZXJmMz8pCj4+Pj4KPj4+PiBJIGFtIHVzaW5nIG91ciBvd24gdHJhZmZpYyBnZW5lcmF0b3Is
IGJ1dCBJIGltYWdpbmUgaXBlcmYzIHNob3VsZCAKPj4+PiB3b3JrIGZpbmUgdG9vLgo+Pj4+Cj4+
Pj4gSSBhbSB0ZXN0aW5nIG9uIHg4Ni02NCBhbmQgc28gZm9ydGguwqAgTWF5YmUgeW91IGNhbiB0
ZXN0IHdpdGggVURQIAo+Pj4+IHNtYWxsLXBhY2tldCBsb2FkIG9uIHlvdXIgcGxhdGZvcm0KPj4+
PiBpbiByb3V0ZWQgbW9kZSAoaWUsIGV4dGVybmFsIGlwZXJmIGdlbmVyYXRvciB0aHJvdWdoIHlv
dXIgQVApIGFuZCAKPj4+PiBzZWUgaWYgeW91IHNlZSBpc3N1ZXM/Cj4+PiB0aGF0cyB0aGUgcGxh
bi4gY2FuIHlvdSBkbyBhIHRlc3Qgd2l0aCBpcGVyZjMgdG8gc2VlIGlmIGl0cyAKPj4+IHJlcHJv
ZHVjZWFibGUuIGkgbWVhbiBpIHdpbGwgdGVzdCBpdCBvbiBpcHEgYmFzZWQgYm9hcmRzIGFuZCB4
NjQuIAo+Pj4gYnV0IHRvIG1ha2Ugc3VyZSB0aGF0IHRoZSBzY2VuYXJpbwo+Pj4gaXMgaWRlbnRp
Y2FsIHdoaWNoIHJhaXNlZCB1cCB5b3VyIGlzc3VlLCBpdCB3b3VsZCBiZSBmaW5kIGlmIHdlIGhh
dmUgCj4+PiBpZGVudGljYWwgc29mdHdhcmUgZm9yIHRlc3RpbmcgaW5jbHVkaW5nIHRoZSBzYW1l
IG9wdGlvbnMKPgo+IEkgdGhpbmsgSSBmb3VuZCB0aGUgaXNzdWUuwqAgVGhlIHJhdGUtY3RybCBs
b2dpYyBpbiB0aGUgZmlybXdhcmUgYWxsb3dzIAo+IGEgdHJhbnNpdGlvbiBmcm9tIEhUL1ZIVCAy
MCBNQ1MwIGRvd24gdG8gT0ZETSByYXRlcy4KPiBJdCBzZWVtcyB0aGUgaGFyZHdhcmUgZG9lcyBu
b3QgbGlrZSB0byBzZWUgYW4gQU1QRFUgd2l0aCBhbiBPRkRNIHJhdGUgCj4gZm9yIDIwTWh6IGFu
ZCBhIFZIVCByYXRlIGZvciA4ME1oeiAob3IgbWF5YmUganVzdCB0aGUKPiBzaW5nbGUgT0ZETSBy
YXRlIGlzIHRoZSBmYXVsdCkuCj4KPiBJZiB5b3UgY2FuIGVkaXQgZmlybXdhcmUsIHRoZW4gc2V0
dGluZyB0aGlzIHRvIDAgcHJvYmFibHkgZml4ZXMgdGhlIAo+IGlzc3VlLgo+Cj4gZ19yY19jY2tf
cmF0ZV9hbGxvd2VkCgphY2NvcmRpbmcgdG8gdGhlIGNvZGUgdGhpcyB2YXJpYWJsZSBoYXMgb25s
eSBlZmZlY3Qgb24gMi40IGdoei4gdGhlIApmYWxsYmFjayB0byBjY2sgcmF0ZXMgd2lsbCBvbmx5
IGJlIGRvbmUgaWYgcGh5bW9kZSBpcyAyLjQgZ2h6CgoKPgo+IEkgdGhpbmsgdG8gcmVwcm9kdWNl
IHlvdSdkIG5lZWQgdG8gc2VuZCBoaWdoIHNwZWVkIHRyYWZmaWMgaW4gYSAKPiBzaXR1YXRpb24g
d2hlcmUgdGhlCj4gUkYgZW52aXJvbm1lbnQgaXMgZ29pbmcgdG8gbWFrZSByYXRlLWN0cmwgZmFp
bCBxdWl0ZSBhIGJpdC7CoCAoU2xvdyAKPiBzcGVlZCBzaG91bGQKPiB3b3JrIHRvbywgYnV0IGl0
IHdvdWxkIGxpa2VseSB0YWtlIGEgbG90IGxvbmdlcikuCj4KPiBBbmQsIGl0IGlzIGFsd2F5cyBw
b3NzaWJsZSB0aGF0IHdoYXRldmVyIEkgc2F3IHdoZW4gdGVzdGluZyAKPiBtb3N0bHktc3RvY2sg
RlcgaXMgZGlmZmVyZW50Cj4gZnJvbSB3aGF0IEkgZXZlbnR1YWxseSBkZWJ1Z2dlZCB0byBpbiBt
eSBmaXJtd2FyZS7CoCBTdGlsbCwgZnJvbSAKPiBsb29raW5nIGF0IE1DUyB2cyBTTlIKPiBjaGFy
dHMsIHRoZXJlIHNlZW1zIHRvIGJlIG5vIGFkdmFudGFnZSB0byB0cnlpbmcgT0ZETSB2cyBNQ1Mw
IGZvciAyME1oei4KPgo+IFRoYW5rcywKPiBCZW4KPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2F0aDEwawo=
