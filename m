Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B77AEC54
	for <lists+ath10k@lfdr.de>; Tue, 10 Sep 2019 15:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e+d+DGQrU2fSPICGyZBw7d7pcxa8lumh3M438Xn7de8=; b=seqLb2DTA6uvLEPywFEiVFDr8
	zW+YRgaQUaiMWtAOon9QTSZexOG5+1rReai9Wn8lU2m186LCjaT3yNYEfHfY+dYu8j1VllU0lbN+T
	q4ZSCCF7DCTbvii/zyXyOtVu6J9Fsr0wSZg+0xUXeM0vhuQ6l3Fj/lVmqZkCO4C2lOPNNd3N+6zdI
	GGNiqKR1xueIyGgBKUXVf271kyIVRAnhaARaErYl12XZ2QI90hVWVa9rXIDo8dg7syUoUIctDZfcv
	rIY8/U3oCEkvpllQ9A9WFoo90s7nTMQW1kU7nPprINH+EUOaFBZkrdT7UWQYJEGPoqLgFAs/RDxaB
	XamG3ZGjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gZP-00019S-Mh; Tue, 10 Sep 2019 13:52:35 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gZK-00018s-Ql
 for ath10k@lists.infradead.org; Tue, 10 Sep 2019 13:52:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=38MKsIbpNHaEM9ZFsmC3eE6Y65nM1KbFnYODuFoec/g=; 
 b=cu9VmH59QefQ6mf9KjvuKkaHTWCScqTZz6+wADxVcptqmeQ6AUMHF/MCLmAPhZz8clJnYVok+1RIAPmBl/ytz9PrEHlEjl+RZk6wZmu/QoAuigE39QGzfbAiOzcDTZITLrv04f9Fv+9jCMxX2hzTi8sJAvXNV6Oxwh8OWha84Qk=;
Subject: Re: [PATCH] ath10k: restore QCA9880-AR1A (v1) detection
To: ath10k@lists.infradead.org
References: <20190906215423.23589-1-chunkeey@gmail.com>
 <20190907214359.1C52A21835@mail.kernel.org>
 <CAKR_QVKv8kgXSSCwd8esw28hARA61Pah3usRi+ZZG6ss2CcS=g@mail.gmail.com>
 <87h85kfwfn.fsf@codeaurora.org>
 <CAKR_QVJpGZCBaE3hW6FShykYa=T6hy2dHn22daQVodWGL_-Afw@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <a1cf238e-ee80-ee81-f7a6-28faff3a35a6@newmedia-net.de>
Date: Tue, 10 Sep 2019 15:51:02 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <CAKR_QVJpGZCBaE3hW6FShykYa=T6hy2dHn22daQVodWGL_-Afw@mail.gmail.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i7gZO-00079E-JS
 for ath10k@lists.infradead.org; Tue, 10 Sep 2019 15:52:34 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_065231_198775_585E7922 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

dGhlIHRwbGluayBhcmNoZXIgYzcgdjEgaW5kZWVkIGhhcyB0aGlzIGh3IDEgdmVyc2lvbi4gYnV0
IHRoYXRzIHRoZSBvbmx5IApkZXZpY2UgaSBrbm93IGNvbW1pbmcgd2l0aCB0aGlzIGNoaXBzZXQg
dmVyc2lvbgpidXQgdGhlIHYxIGhhcyBhbHNvIGEgbWluaXBjaWUgc2xvdCBhbmQgaXMgbm90IHNv
bGRlcmVkIGxpa2UgYWxsIG90aGVyIApyZXZpc2lvbnMuwqAgc28gaSBqdXN0IHJlcGxhY2VkIHRo
ZSBjYXJkIG9uIG15IHRlc3QgZGV2aWNlLgppbiBhZGRpdGlvbiB3ZSBtYXkgYXNrIGJlbiBncmVh
ciBpZiBoZSBpcyBhYmxlIHRvIHByb3ZpZGUgYSB2MSBmaXJtd2FyZSAKZnJvbSBoaXMgY3QgdHJl
ZSBzaW5jZSB0aGUgcWNhIHNvdXJjZWNvZGVzIGRvIGNvbnRhaW4gc3VwcG9ydApmb3IgdGhlIHYx
IHJldmlzaW9uLiBidXQgZG9udCBleHBlY3QgdG9vIG11Y2guIHRoZXJlIHdhcyBhIHJlYXNvbiB3
aHkgdjEgCndhcyBuZXZlciByZWFsbHkgb24gdGhlIG1hcmtldAoKQW0gMTAuMDkuMjAxOSB1bSAx
NDo1OSBzY2hyaWViIFRvbSBQc3lib3JnOgo+IE9uIDEwLzA5LzIwMTksIEthbGxlIFZhbG8gPGt2
YWxvQGNvZGVhdXJvcmEub3JnPiB3cm90ZToKPj4gKGRyb3BwaW5nIHN0YWJsZSBsaXN0KQo+Pgo+
PiBUb20gUHN5Ym9yZyA8cG96ZWdhLnRvbWlzbGF2QGdtYWlsLmNvbT4gd3JpdGVzOgo+Pgo+Pj4g
QWNjb3JkaW5nIHRvIHRoaXMgdmVyeSBvbGQgcG9zdAo+Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvcGlwZXJtYWlsL2F0aDEway8yMDEzLUp1bHkvMDAwMDIxLmh0bWwKPj4+IHNlZW1zIGxp
a2UgeW91J3ZlIGJlZW4gbWlzaW5mb3JtZWQgb24gYW1vdW50IG9mIHRoZXNlIGNhcmRzIHRoYXQg
d2VyZQo+Pj4gcHV0IG91dCBpbiB0aGUgbWFya2V0Lgo+Pj4KPj4+IEF0IGxlYXN0IGRpZ2lwYXJ0
IG9ubHkgaGF2ZSA+NDAwMDAgdW5pdHMgaW4gc3RvY2tzCj4+PiBodHRwczovL3d3dy5kaWdpcGFy
dC5jb20vcGFydC9RQ0E5ODgwLUFSMUEgYW5kIG90aGVyIHJldGFpbGVycwo+Pj4gcHJvYmFibHkg
ZmV3IHRob3VzYW5kcyBtb3JlLgo+Pj4KPj4+IFdpdGggdGhhdCBsYXJnZSBhbW91bnQgb2YgY2Fy
ZHMgSSB0aGluayBpdCBpcyBqdXN0aWZpZWQgdG8gcmVxdWVzdAo+Pj4gZmlybXdhcmUgc3VwcG9y
dCBmb3IgdGhlIGNoaXAuIEFuZCBwcm9iYWJseSBhIGxvdCBlYXNpZXIgdG8gbWFrZSBmZXcKPj4+
IGZpcm13YXJlIG1vZGlmaWNhdGlvbnMgdGhhbiBnbyBoYWNraW5nIGEgYnVuY2ggb2YgQVBJIGNh
bGxzIHNvIGl0Cj4+PiB3b3JrcyB3aXRoIHYyIGZpcm13YXJlLgo+PiBJJ20gdmVyeSBzdXJwcmlz
ZWQgdGhhdCBRQ0E5ODgwIGh3MS4wIGJvYXJkcyBhcmUgc3RpbGwgYXZhaWxhYmxlLCBhZnRlcgo+
PiBzaXggeWVhcnMuIERpZCB5b3UgY29uZmlybSB0aGF0IGl0IHJlYWxseSBpcyBodzEuMCBhbmQg
bm90IGp1c3Qgc29tZQo+PiBtaXh1cCB3aXRoIGhhcmR3YXJlIGlkcyBvciBzb21ldGhpbmcgbGlr
ZSB0aGF0Pwo+IFByaW50IG9uIHRoZSBjaGlwIGNsZWFybHkgc2F5cyBRQ0E5ODgwLUFSMUEuIElE
IHNhbWUgYXMgZm9yIHYyIC0gMDAzQy4KPgo+PiBvbGQgaHcxLjAgZmlybXdhcmUgdG8gc2VlIGlm
IGl0IHdvcmtzLgo+IEkgZG9uJ3Qga25vdyB3aGljaCBmdyBibG9iIHZlcnNpb24gdGhhdCBpcy4g
SSBjb3VsZCBub3QgZmluZCBpdAo+IG9ubGluZS4gQWxsIGZpbGVzIGFyZSB2MiByZWxhdGVkLgo+
Cj4+IEJ1dCBpZiBpdCdzIHJlYWxseSBpcyBodzEuMCBJIGRvdWJ0IHRoZXJlIHdpbGwgYmUgYW55
IHN1cHBvcnQgZm9yIHRoYXQuCj4+IEkgcmVjb21tZW5kIHRvIGF2b2lkIGh3MS4wIGFsdG9nZXRo
ZXIuCj4+Cj4+IC0tCj4+IEthbGxlIFZhbG8KPj4KPiBUaGF0IHdvdWxkIGJlIHRvbyBiYWQsIGV2
ZW4gd29yc2Ugd2hlbiB5b3UgZmluZCBvdXQgdGhhdAo+IHFjYS13aWZpLTEwLjIuNC41OC4xIGRy
aXZlciBmYWlscyB0byBsb2FkIGZpcm13YXJlIHRvby4gVGhlIG9ubHkgb25lCj4gdGhhdCB3b3Jr
cyBpcyBxY2Etd2lmaSB0aGF0IGNvbWVzIHdpdGggdHAtbGluayBmaXJtd2FyZSwgc29tZSB2ZXJ5
Cj4gZWFybHkgdmVyc2lvbiAxMC4wLjEwOCBvciBzb210ZWhpbmcgbGlrZSB0aGF0IHRoYXQgaGFz
IG5vIGF2YWlsYWJsZQo+IHNvdXJjZXMuLgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBhdGgxMGsgbWFpbGluZyBsaXN0Cj4gYXRoMTBrQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2F0aDEwawo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
