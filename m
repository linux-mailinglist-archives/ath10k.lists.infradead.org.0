Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E241A76A6
	for <lists+ath10k@lfdr.de>; Tue, 14 Apr 2020 10:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvU6QMPqO/ANnpfIxQCH3U+r+QNyrcnI8hh4NDPM0Hg=; b=HI3yWmvtEhF0pv
	THbgWv4rKeXUcMkLhk7R9tmeNVX3mzgW7ybL+cYfOksiKVOiBLkPTpgi3Yt1zCxEPs5jn/P7nuWDx
	aH9kZoERtkwwWZH2Vt0NM5VLQ/nqIO+xm+rtwl6eghBa/Hy58q1DgzqRSwDl0hWSvoS87RN1oQknW
	iMZ3L0Z1Rn7TX9R/xL7ddipePAGrQTOvE2rJ487oYrr9MzR8i0N8D8nOU5Fv7IhmvtJDXVNB+FMKT
	PMBAZQm5Tsp4T6vvLucIdxrjB+GpXihMy6pyDChXd9JvK2mm/NcEhCnEgtM9oIRCMuvrMA92WgI+S
	U1tGqZl4CHYprhgRzPyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOHJd-0006Ar-4F; Tue, 14 Apr 2020 08:53:09 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHJZ-0006AU-6T
 for ath10k@lists.infradead.org; Tue, 14 Apr 2020 08:53:06 +0000
Received: by mail-io1-xd43.google.com with SMTP id s18so9052012ioe.10
 for <ath10k@lists.infradead.org>; Tue, 14 Apr 2020 01:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xgnW1aPbLN9oOeaHCeNquDTagEFhzczVgOye2DWFQPA=;
 b=W1qr+Z1WYjHe4xbKDV1lmYbmMK6RFMtvxD/PDVSkDfSzlMskA0HUwhRyGtEydLjjJ+
 TNICYVr3OxqzknKtDcSfTBA/eAWOt29dV+xSJaCmHVsyWeK++krCn3z6F6Ud7qDELhpB
 8AvSrfz+w31zYeREM2ZO89IDkSHxkD4uk4cRgLnX2MFVa/GtOaK8Uhph02oRlPNTqhOc
 0Zv6mjvGvvZD8+C1sYNTVovz3mAVxfrrVcubVFerI65mnnpX1w8Ij5v0eKcVoUiIS0KO
 QiXBnZMZCtY2hzC0ElSAZ5OZp3Wl+W7XhOe9WqqzFo+9nJT7H5/h/ALZapxy0VyFp6HX
 Q4dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xgnW1aPbLN9oOeaHCeNquDTagEFhzczVgOye2DWFQPA=;
 b=lQOYtoHLeBUSO0sLXQpRoiyKP+Vg5zUo1cO7rtawXEfTyScXD43Yq5Wni8PkArGSQo
 VJJz0mf77XaLjxwHdmp5jE17PuxTzlDLR5JpsYhKlWLol9YvLZmLj0gjSSIkU/aW9JaG
 AkuynXQWASIH9kvETWAQkvKtJmk7z3X5Au1WCoE+mnvsqU1FnQnW/MHIMzgvX6UUrv6+
 QZlk7w/MKmUGWnrtF+xdRhZQekaAX2B9Lu6SfIzJjkWS/PLvR7HmCkPZckZgakSZE5MJ
 4/aurBu8bP9egduNvUbb8bnidgBWL264TYcLhqgrbyCEgiWv7nLA6rzjWUdhhTIwvPce
 /ezw==
X-Gm-Message-State: AGi0PuY2FKNj6SRjkaSYcRozlef7QZ857Y1c933a6+nxeyrTUBtUdpQl
 chnfgPOpRCWNFM+6nkui57tmtmMdBhjR62DXVwQ=
X-Google-Smtp-Source: APiQypKjz85AvGXDEq22GsIemmLzjd+NkTFTrWd5gb5jSuMtbqA7PKIv7iLvBvUX0G+E0NwB66xS9ezyPU9oe5KQudM=
X-Received: by 2002:a5e:d709:: with SMTP id v9mr11061211iom.195.1586854383423; 
 Tue, 14 Apr 2020 01:53:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:2bc4:0:0:0:0:0 with HTTP; Tue, 14 Apr 2020 01:53:02
 -0700 (PDT)
In-Reply-To: <MWHPR02MB2496EE78C46698CE3E6101EB98DA0@MWHPR02MB2496.namprd02.prod.outlook.com>
References: <0101016e82883ded-63f88383-cd90-4cb0-b9bb-3dd6a1e9f4e9-000000@us-west-2.amazonses.com>
 <20200409142136.5490EC433BA@smtp.codeaurora.org>
 <MWHPR02MB2496EE78C46698CE3E6101EB98DA0@MWHPR02MB2496.namprd02.prod.outlook.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Tue, 14 Apr 2020 10:53:02 +0200
Message-ID: <CAKR_QVJX719-F7pF2FdjY0Q_uMbvN0-Uo0ac6u7FAWyfci_TAw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] ath10k: correct legacy rate in tx stats
To: Yu Wang <yyuwang@qti.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_015305_263299_08B009A6 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pozega.tomislav[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yu Wang <yyuwang@codeaurora.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 "kvalo@codeaurora.org" <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMTQvMDQvMjAyMCwgWXUgV2FuZyA8eXl1d2FuZ0BxdGkucXVhbGNvbW0uY29tPiB3cm90ZToK
Pgo+Cj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IGF0aDEwayA8YXRoMTBr
LWJvdW5jZXNAbGlzdHMuaW5mcmFkZWFkLm9yZz4gT24gQmVoYWxmIE9mIEthbGxlIFZhbG8KPj4g
U2VudDogVGh1cnNkYXksIEFwcmlsIDksIDIwMjAgMTA6MjIgUE0KPj4gVG86IFl1IFdhbmcgPHl5
dXdhbmdAY29kZWF1cm9yYS5vcmc+Cj4+IENjOiBsaW51eC13aXJlbGVzc0B2Z2VyLmtlcm5lbC5v
cmc7IGF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCj4+IFN1YmplY3Q6IFtFWFRdIFJlOiBbUEFU
Q0ggdjIgMi8yXSBhdGgxMGs6IGNvcnJlY3QgbGVnYWN5IHJhdGUgaW4gdHggc3RhdHMKPj4KPj4g
WXUgV2FuZyA8eXl1d2FuZ0Bjb2RlYXVyb3JhLm9yZz4gd3JvdGU6Cj4+Cj4+ID4gV2hlbiB3b3Jr
aW5nIGluIHN0YXRpb24gbW9kZSwgYWZ0ZXIgY29ubmVjdGVkIHRvIGEgbGVnYWN5IEFQLCAxMWcK
Pj4gPiBvbmx5LCBmb3IgZXhhbXBsZSwgdGhlIHR4IGJpdHJhdGUgaXMgaW5jb3JyZWN0IGluIG91
dHB1dCBvZiBjb21tYW5kCj4+ID4gJ2l3IHdsYW4wIGxpbmsnLgo+PiA+Cj4+ID4gVGhhdCdzIGJl
Y2F1c2UgdGhlIGxlZ2FjeSB0eCBiaXRyYXRlIHZhbHVlIHJlcG9ydGVkIGJ5IGZpcm13YXJlIGlz
IG5vdAo+PiA+IHdlbGwgaGFuZGxlZDoKPj4gPiBGb3IgUUNBNjE3NCwgdGhlIHZhbHVlIHJlcHJl
c2VudHMgcmF0ZSBpbmRleCwgYnV0IHRyZWF0ZWQgYXMgYSByZWFsCj4+ID4gcmF0ZTsgRm9yIFFD
QTk4ODgsIHRoZSB2YWx1ZSBpcyByZWFsIHJhdGUsIHdpdGggdW5pdCAnTWJwcycsIGJ1dAo+PiA+
IHRyZWF0ZWQgYXMgJzEwMGticHMnLgo+PiA+Cj4+ID4gVG8gZml4IHRoaXMgaXNzdWU6Cj4+ID4g
MS4gVHJhbnNsYXRlIHRoZSByYXRlIGluZGV4IHRvIHJlYWwgcmF0ZSBmb3IgUUNBNjE3NDsgMi4g
VHJhbnNsYXRlIHRoZQo+PiA+IHJhdGUgZnJvbSAnTWJwcycgdG8gJ2ticHMnIGZvciBRQ0E5ODg4
Lgo+PiA+Cj4+ID4gVGVzdGVkIHdpdGg6Cj4+ID4gUUNBNjE3NCBQQ0llIHdpdGggZmlybXdhcmUg
V0xBTi5STS40LjQuMS5jMy0wMDAzMS4KPj4gPiBRQ0E2MTc0IFNESU8gd2l0aCBmaXJtd2FyZSBX
TEFOLlJNSC40LjQuMS0wMDAyOS4KPj4gPiBRQ0E5ODg4IFBDSWUgd2l0aCBmaXJtd2FyZSAxMC40
LTMuOS4wLjItMDAwNDAuCj4+ID4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBZdSBXYW5nIDx5eXV3YW5n
QGNvZGVhdXJvcmEub3JnPgo+PiA+IFNpZ25lZC1vZmYtYnk6IEthbGxlIFZhbG8gPGt2YWxvQGNv
ZGVhdXJvcmEub3JnPgo+Pgo+PiBNeSBjb21tZW50cyBkb24ndCBzZWVtIHRvIGdvIHRvIHBhdGNo
d29yaywgc28gdHJ5aW5nIGFnYWluOgo+Pgo+PiBXaGF0IGFib3V0IFFDQTk4OFggYW5kIFdDTjM5
OTAsIGhvdyBkbyB0aGV5IGJlaGF2ZT8gRG9lcyB0aGlzIHBhdGNoCj4+IGJyZWFrIHRob3NlPwo+
IFNpbmNlIEhUVF9UMkhfTVNHX1RZUEVfUFBEVV9TVEFUU19JTkQgaXMgYSBuZXdseSBhZGRlZCBt
ZXNzYWdlLCBzdXBwb3NlIGl0J3MKPiB3b24ndCBicmVhayB0aGUgb3RoZXIgZnVuY3Rpb25zLgo+
IEkgZG9u4oCZdCBoYXZlIGVudmlyb25tZW50IHRvIHZlcmlmeSB0aGUgcGF0Y2ggd2l0aCBRQ0E5
ODhYIGFuZCBXQ04zOTkwLgo+IENhbiBhbnlvbmUgaGVscCBvbiB0aGlzPwo+Cj4+Cj4+ID4gK2Nj
ayA9IChwcmVhbWJsZSA9PSBXTUlfUkFURV9QUkVBTUJMRV9DQ0spOwo+PiA+ICtod19yYXRlID0g
QVRIMTBLX0hXX0xFR0FDWV9SQVRFKCpyYXRlY29kZSk7Cj4+ID4gK2ZvciAoaSA9IDA7IGkgPCBz
YmFuZC0+bl9iaXRyYXRlczsgaSsrKSB7Cj4+ID4gK2JpdHJhdGVzID0gJnNiYW5kLT5iaXRyYXRl
c1tpXTsKPj4gPiAraWYgKGF0aDEwa19tYWNfYml0cmF0ZV9pc19jY2soYml0cmF0ZXMtPmJpdHJh
dGUpICE9IGNjaykKPj4gPiArY29udGludWU7Cj4+ID4gKwo+PiA+ICtpZiAoYml0cmF0ZXMtPmh3
X3ZhbHVlID09IGh3X3JhdGUgfHwKPj4gPiArICAgIChiaXRyYXRlcy0+ZmxhZ3MgJiBJRUVFODAy
MTFfUkFURV9TSE9SVF9QUkVBTUJMRSAmJgo+PiA+ICsgICAgIGJpdHJhdGVzLT5od192YWx1ZV9z
aG9ydCA9PSBod19yYXRlKSkgewo+PiA+ICtiaXRyYXRlID0gYml0cmF0ZXMtPmJpdHJhdGU7Cj4+
ID4gKwo+PiA+ICsvKiBUaGUgYml0cmF0ZSB3aWxsIGJlIHJlY292ZXJlZCBpbgo+PiA+ICsgKiBh
dGgxMGtfdXBkYXRlX3Blcl9wZWVyX3R4X3N0YXRzKCkuCj4+ID4gKyAqLwo+PiA+ICtpZiAoYml0
cmF0ZSA9PSA1NSkKPj4gPiArYml0cmF0ZSA9IDYwOwo+PiA+ICsKPj4gPiArYml0cmF0ZSA9IGJp
dHJhdGUgLyAxMDsKPj4KPj4gSGVyZSB5b3UgdXNlIG1hZ2ljIHZhbHVlIDYwIGJ1dCBpbiBhdGgx
MGtfdXBkYXRlX3Blcl9wZWVyX3R4X3N0YXRzKCkgeW91Cj4+IHVzZQo+PiBtYWdpYyB2YWx1ZSA1
MDoKPj4KPj4gPiArLyogZnJvbSAxTWJwcyB0byAxMDBLYnBzICovCj4+ID4gK3JhdGUgPSByYXRl
ICogMTA7Cj4+ID4gK2lmIChyYXRlID09IDUwKQo+PiA+ICtyYXRlID0gNTU7Cj4+Cj4+IEFtIEkg
bWlzc2luZyBzb21ldGhpbmcgb3IgaG93IGlzIHRoaXMgc3VwcG9zZWQgdG8gd29yaz8KPiBJbiBl
eGlzdGluZyBjb2RlLCBhdGgxMGtfdXBkYXRlX3Blcl9wZWVyX3R4X3N0YXRzKCkgd2lsbCBjaGVj
ayB0aGUgYml0cmF0ZQo+IGFuZCBjb252ZXJ0IDZfQ0NLIHRvIDUoaW4gdGhlIGNvbW1lbnQ6IEZX
IHNlbmRzIENDSyByYXRlIDUuNU1icHMgYXMgNiksIGFuZAo+IHRoZW4gNSB3aWxsIGJlIHJlY292
ZXJlZCB0byA1NS4KPiBUaGF0J3Mgd2h5IHdlIG5lZWQgdG8gY29udmVydCBiaXRyYXRlIDU1IHRv
IDYgd2hlbiBwcm9jZXNzaW5nIFBQRFVfU1RBVFMuCj4KPiBpZiAodHhyYXRlLmZsYWdzID09IFdN
SV9SQVRFX1BSRUFNQkxFX0NDSyB8fAo+IHR4cmF0ZS5mbGFncyA9PSBXTUlfUkFURV9QUkVBTUJM
RV9PRkRNKSB7Cj4gcmF0ZSA9IEFUSDEwS19IV19MRUdBQ1lfUkFURShwZWVyX3N0YXRzLT5yYXRl
Y29kZSk7Cj4gLyogVGhpcyBpcyBoYWNreSwgRlcgc2VuZHMgQ0NLIHJhdGUgNS41TWJwcyBhcyA2
ICovCj4gaWYgKHJhdGUgPT0gNiAmJiB0eHJhdGUuZmxhZ3MgPT0gV01JX1JBVEVfUFJFQU1CTEVf
Q0NLKQo+IHJhdGUgPSA1Owo+IHJhdGVfaWR4ID0gYXRoMTBrX2dldF9sZWdhY3lfcmF0ZV9pZHgo
YXIsIHJhdGUpOwo+IGlmIChyYXRlX2lkeCA8IDApCj4gcmV0dXJuOwo+Cj4gLyogZnJvbSAxTWJw
cyB0byAxMDBLYnBzICovCj4gcmF0ZSA9IHJhdGUgKiAxMDsKPiBpZiAocmF0ZSA9PSA1MCkKPiBy
YXRlID0gNTU7Cj4+Cj4+IC0tCj4+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gv
MTEyNTEwMDEvCj4+Cj4+IGh0dHBzOi8vd2lyZWxlc3Mud2lraS5rZXJuZWwub3JnL2VuL2RldmVs
b3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0aW5ncGF0Y2gKPj4gZXMKPj4KPj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gYXRoMTBrIG1haWxpbmcg
bGlzdAo+PiBhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwo+PiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gYXRoMTBrIG1haWxpbmcgbGlzdAo+IGF0aDEwa0Bs
aXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9hdGgxMGsKPgoKSGkKCkkgZG9uJ3QgdW5kZXJzdGFuZCB3aHkgYXJlIHlvdSBmaXhp
bmcgdGhpcyBpbiBkcml2ZXIgd2hlbiB0aGUgY29tbWVudApjbGVhcmx5IHNheXMgIkZXIHNlbmRz
IENDSyByYXRlIDUuNU1icHMgYXMgNiIKU2hvdWxkbid0IGEgcHJvcGVyIHdheSBiZSB0byBmaXgg
dGhpcyBpbiBmaXJtd2FyZT8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
