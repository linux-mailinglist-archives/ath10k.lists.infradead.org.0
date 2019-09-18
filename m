Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D35B613B
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 12:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MBn+weA0FaQo17IJ69wB0utkqPI6HFJyeuPAy6YPwXI=; b=MKv5pJZF3VdWGW
	Q7Z2w9LakehULNKyFm9+2lCXujXPcv6RtvQDpT/J657iVK9VOwXzT8TEYMf5K1u+M71aP4FrjGez7
	F/ugnBrE7YqV/ZNI5Jlgm4dutje6biJZqlE2CyicQLANQBK30eTiBTmRYNK+IgTWDLpjeCznWuGTi
	sdKxdP7SrA1pB78jGBbL3d9FWlBptRUWHoR/l41sSlFBcO3qk11qqtK0DfdmqiXanL+utro3u8pCq
	nvHs6FZ+r1/Jo23Wbtqr47R3o7vsX0zb4iOha+NCUf0goCTahBi+5LBjVzVW0YkkDMslX6IYWvqat
	UktDt7n0tLrygmj3bE1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAX0W-0006ld-Jn; Wed, 18 Sep 2019 10:16:20 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAX0N-0006eJ-Ny
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 10:16:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568801770;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=i67xqtI2vcG8BpM46PyzUmSV2sn6raIhV4PJs0Si30k=;
 b=EUzV974tVTItkCvchQJVs1YJDUPTTgeitYqk3JQ+lfHsnys6Cxf6iA16sPHAVtuYZ3r+B8
 WlRzWWQifXUHNxBz8Ll+9eVM4orKmEy2Wvmyci08pOvMkOqvKD/e9yqpUSbZnb76NcWyqP
 aq7ah2jNItEZIaVFRhG1IUl9TCbR6JA=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-7-dC9BwhfaNVCvgjfLmOMuvg-1; Wed, 18 Sep 2019 06:16:07 -0400
Received: by mail-ed1-f71.google.com with SMTP id v5so4100511edr.9
 for <ath10k@lists.infradead.org>; Wed, 18 Sep 2019 03:16:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=i67xqtI2vcG8BpM46PyzUmSV2sn6raIhV4PJs0Si30k=;
 b=XyUb6WS82BCm0CS9WSXF+Qx05ORzCsRlvGSvN2VdJxeOvTVNTfuvWxqWWZTfCBZANq
 /Y0XWrbtyoluFdAbgBCJzDl19t9tkJ3D1KQkpOvKGC4P7XI4F9Q4gHjk1vrQWRMCa0IH
 u6GvKuowFPYgWI02+3NoOsKwPnaStOsxY19p0vSqVggSJ3RzFrO+8IKwzy/I0WmZ1fTp
 8LfxUev/Cid728BEnfGtytk8m0GLAMQ/08Og8wMvSlzoZr4J/E+bNNnLeli+vYHSeEvZ
 uSl+oZTHBzUwhdVTqcLFWr0LYk//9z56dCFpiVI7pYAsOlP2ANkjRrf8vJkpfwhv9Xor
 Vudg==
X-Gm-Message-State: APjAAAVktr4GmFOXWX814EhQ/WJ8Fjv0RK3gCbT1bjq2Ky19uC7QKNA6
 oLBOI+hflzOsJu8DDK3jf5CdEcLYLEbtlZ1tzNiaabLpRTOb125mGKgL8W89QVz23cNmFUODNQe
 9+lpdmtHy9pmsDp8nzIc4sQ==
X-Received: by 2002:a17:906:4985:: with SMTP id
 p5mr8828350eju.106.1568801766170; 
 Wed, 18 Sep 2019 03:16:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzGSKU6d3VLwTQCGsjgk9CbzqyDu0cGBKhPz/3eZvqfBWhgwugxFVt0FjMVU1iJA91GQxqDHQ==
X-Received: by 2002:a17:906:4985:: with SMTP id
 p5mr8828332eju.106.1568801765968; 
 Wed, 18 Sep 2019 03:16:05 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id a20sm928820edt.95.2019.09.18.03.16.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 03:16:05 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id AE07518063E; Wed, 18 Sep 2019 12:16:04 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>
Subject: Re: [PATCH 3/4] mac80211: fix low throughput in push pull mode
In-Reply-To: <595c99a36c4f3e3eb131894d85c09746@codeaurora.org>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-3-git-send-email-yiboz@codeaurora.org>
 <6684ceecde399edeb31c594f889a403440c78142.camel@sipsolutions.net>
 <8e4cd872d082c6bce598c87411a2125f@codeaurora.org> <87lfumiq3w.fsf@toke.dk>
 <595c99a36c4f3e3eb131894d85c09746@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 18 Sep 2019 12:16:04 +0200
Message-ID: <871rwdj4ez.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: dC9BwhfaNVCvgjfLmOMuvg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_031611_870151_FCDE7C04 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless-owner@vger.kernel.org,
 Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

WWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgoKPiBPbiAyMDE5LTA5LTE4
IDA1OjEyLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+IFlpYm8gWmhhbyA8eWli
b3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4gCj4+PiBPbiAyMDE5LTA5LTE2IDIzOjI3LCBK
b2hhbm5lcyBCZXJnIHdyb3RlOgo+Pj4+IFdpdGhvdXQgcmVhbGx5IGxvb2tpbmcgYXQgdGhlIGNv
ZGUgLQo+Pj4+IAo+Pj4+PiBJZiBzdGF0aW9uIGlzIGluZWxpZ2libGUgZm9yIHRyYW5zbWlzc2lv
biBpbgo+Pj4+PiBpZWVlODAyMTFfdHhxX21heV90cmFuc21pdCgpLAo+Pj4+PiBubyBwYWNrZXQg
d2lsbCBiZSBkZWxpdmVyZWQgdG8gRlcuIER1cmluZyB0aGUgdGVzdHMgaW4gcHVzaC1wdWxsIAo+
Pj4+PiBtb2RlCj4+Pj4+IHdpdGgKPj4+Pj4gbWFueSBjbGllbnRzLCBhZnRlciBzZXZlcmFsIHNl
Y29uZHMsIG5vdCBhIHNpbmdsZSBzdGF0aW9uIGlzIGFuCj4+Pj4+IGVsaWdpYmxlCj4+Pj4+IGNh
bmRpZGF0ZSBmb3IgdHJhbnNtaXNzaW9uIHNpbmNlIGdsb2JhbCB0aW1lIGlzIHNtYWxsZXIgdGhh
biBhbGwgdGhlCj4+Pj4+IHN0YXRpb24ncyB2aXJ0dWFsIGFpcnRpbWUuIEFzIGEgY29uc2VxdWVu
Y2UsIHRoZSBUeCBoYXMgYmVlbiBibG9ja2VkCj4+Pj4+IGFuZAo+Pj4+PiB0aHJvdWdocHV0IGlz
IHF1aXRlIGxvdy4KPj4+PiAKPj4+PiBZb3Ugc2hvdWxkIHJld3JpdGUgdGhpcyB0byBiZSwgZXJt
LCBhIGJpdCBtb3JlIHVuZGVyc3RhbmRhYmxlIGluCj4+Pj4gbWFjODAyMTEgY29udGV4dC4gSSBh
c3N1bWUgeW91J3JlIHNwZWFraW5nIChtb3N0bHk/KSBhYm91dCBhdGgxMGssIAo+Pj4+IGJ1dAo+
Pj4+IEkKPj4+PiBoYXZlIHZlcnkgbGl0dGxlIGNvbnRleHQgdGhlcmUuICJwdXNoIHB1bGwgbW9k
ZSI/ICJmaXJtd2FyZSI/IFRoZXNlCj4+Pj4gdGhpbmdzIGFyZSBub3Qgc29tZXRoaW5nIG1hYzgw
MjExIGtub3dzIGFib3V0Lgo+Pj4gSGkgSm9oYW5uZXMsCj4+PiAKPj4+IFRoYW5rcyBmb3IgeW91
ciBraW5kbHkgcmVtaW5kZXIuIFdpbGwgcmV3cml0ZSB0aGUgY29tbWl0IGxvZy4KPj4+IAo+Pj4+
IAo+Pj4+PiBDby1kZXZlbG9wZWQtYnk6IFlpYm8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+
Cj4+Pj4gCj4+Pj4gVGhhdCBhbHNvIHNlZW1zIHdyb25nLCBzaG91bGQgYmUgVG9rZSBJIGd1ZXNz
LCB1bmxlc3MgeW91IGludGVuZGVkIAo+Pj4+IGZvcgo+Pj4+IGEKPj4+PiBGcm9tOiBUb2tlIHRv
IGJlIHByZXNlbnQ/Cj4+PiBEbyB5b3UgbWVhbiBpdCBzaG91bGQgYmUgc29tZXRoaW5nIGxpa2U6
Cj4+PiAKPj4+IENvLWRldmVsb3BlZC1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tl
QHRva2UuZGs+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBZaWJvIFpoYW8gPHlpYm96QGNvZGVhdXJvcmEu
b3JnPgo+Pj4gU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRv
a2UuZGs+Cj4+PiAKPj4+IEFtIEkgdW5kZXJzdGFuZGluZyByaWdodD8KPj4gCj4+IEkgdGhpbmsg
dGhlIHJpZ2h0IHRoaW5nIGhlcmUsIGFzIHdpdGggdGhlIHByZXZpb3VzIHBhdGNoLCBpcyB0byBq
dXN0Cj4+IGRyb3AgbXkgc2lnbi1vZmY7IHlvdSdyZSB3cml0aW5nIHRoaXMgcGF0Y2gsIGFuZCBJ
J2xsIGFkZCBhY2svcmV2aWV3cyAKPj4gYXMKPj4gYXBwcm9wcmlhdGUuIEFuZCBpbiB0aGF0IGNh
c2UsIHdlbGwsIG5vIG5lZWQgdG8gaGF2ZSBjby1kZXZlbG9wZWQtYnkKPj4geW91cnNlbGYgd2hl
biB5b3VyIG5hbWUgaXMgb24gdGhlIHBhdGNoIGFzIGF1dGhvciA6KQo+PiAKPj4gLVRva2UKPiBT
b3JyeSwgSSB0aGluayBJIGhhdmUgbWlzc2VkIGNoZWNraW5nIHlvdXIgcmVwbHksIHBsZWFzZSBp
Z25vcmUgdGhlIAo+IHdyb25nIHNpZ25lZC1vZmYgaW4gUEFUQ0gtVjIuCgpXaGlsZSB5b3UncmUg
cmUtc3Bpbm5pbmcsIGNvdWxkIHlvdSBwbGVhc2UgYWRkIGEgY2hhbmdlbG9nIGZvciB0aGUKY2hh
bmdlcyB5b3UgbWFrZT8gTWFrZXMgaXQgZWFzaWVyIHRvIGtlZXAgdHJhY2sgOikKCllvdSBjYW4g
YWRkIGEgY292ZXItbGV0dGVyIHdpdGggYSBmdWxsIGNoYW5nZWxvZyBpbnN0ZWFkIG9mIGhhdmlu
ZyBhCnNlcGFyYXRlIGNoYW5nZWxvZyBmb3IgZWFjaCBwYXRjaDsgdGhhdCdzIHdoYXQgSSB1c3Vh
bGx5IGRvLi4uCgotVG9rZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
