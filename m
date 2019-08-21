Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 887629769C
	for <lists+ath10k@lfdr.de>; Wed, 21 Aug 2019 12:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVlKiWpQFkm8wIh6p3xzTBaEEN+j9Bw5v8TQD2AsB5Q=; b=H7wPXvKDke+qF3
	hSCP+21ubz4DAxbBDcZ/gsqLfnm7gmrfuLq3uvf8B1fF/k1ev4ziHRIlHayT3Z9YCbUZJMd7VdxR5
	zSyksWeyKBwcKk2BAJpQFzrLN1LwQx3Zj9FzdYPvUxMESjFQik+fGp+jO1JgjOxHYB80IGglpKH2G
	HoBYjdKN6XcMrja7DMecJ50Glv0y39/Z7Gez8rgOd8vrVpAwx0wxrxhHRlcrfkL/0PCz5nrxvQ26J
	xuBkbrfHLAyXsFD9dhjqx2YTM0PCCMgVtJtWmTkcN/KTATTvRRk8jHBOngy0XOE7B7JNi0HLwFeYj
	5ksgz8TdJ0FF2KVDi1rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0NRi-0004mf-AE; Wed, 21 Aug 2019 10:02:26 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NRS-0004lx-D5
 for ath10k@lists.infradead.org; Wed, 21 Aug 2019 10:02:11 +0000
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C6D2483F40
 for <ath10k@lists.infradead.org>; Wed, 21 Aug 2019 10:02:09 +0000 (UTC)
Received: by mail-ed1-f69.google.com with SMTP id z25so991468edm.3
 for <ath10k@lists.infradead.org>; Wed, 21 Aug 2019 03:02:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=07D+Vb3VLQ7yy1uusVKQzDL7GcVauqDp+oTev9vZRJc=;
 b=fVQiymul9D67+ckS9mD1SErClELcx97njwVNiCTdZFd+NQsBMOHHoYbfx/gG7bPDMB
 XRZhpMcU7LDw3LqOfC8hQaJDccOs09D1ebpEn2dVqLsAjA5R+IviJ45y8x7UoZSZS1Lw
 W1DZ0nFqtjdpOjOEAMraY6JY1mm7Se5nDtO9IVd3uIN86+epJy2gdfp4TOSYp+Iq+6SD
 pFyhWn6TSRbvMO4jUIv9mtPl0Cdqdx71y98styzLX+HW9Fc6n5BCEPoGfQ9RP3PVZ2QP
 Ay1INuglnPAiAJ8837MLR1MnS3tiQ7ESzlU4hTMlmz0l9XKaZP9pzn6R8mUqxYODgUAH
 8iUA==
X-Gm-Message-State: APjAAAWpq8ZUDF64r2bSutX3t2sSIvd1oTa6fZqZTloikmtj9nondZ+0
 AdHN+vXPtLDWn/fN2QE6jQc4BBPPVpuMYuK3K7e1/DWrDFycQpnwPfS25AW/UkuES9uhwtEgKpY
 rBp83pkVWJqKp+zc3KBvqlg==
X-Received: by 2002:a17:906:80da:: with SMTP id
 a26mr14494753ejx.222.1566381728589; 
 Wed, 21 Aug 2019 03:02:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw0JI0SafZ9Vvbuugd0J1jl5yuOT94aDRH1vgoNYwg1udQjTld/BlgZzN9lZuYSJZCyNtPcGQ==
X-Received: by 2002:a17:906:80da:: with SMTP id
 a26mr14494741ejx.222.1566381728442; 
 Wed, 21 Aug 2019 03:02:08 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id v6sm3043620ejx.28.2019.08.21.03.02.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 03:02:07 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 27C49181CEF; Wed, 21 Aug 2019 12:02:07 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Wen Gong <wgong@qti.qualcomm.com>, Wen Gong <wgong@codeaurora.org>,
 "ath10k\@lists.infradead.org" <ath10k@lists.infradead.org>
Subject: RE: [PATCH 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
In-Reply-To: <59f668bda688419e9b6f44587d391135@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-3-git-send-email-wgong@codeaurora.org>
 <87ef1gt49d.fsf@toke.dk>
 <59f668bda688419e9b6f44587d391135@aptaiexm02f.ap.qualcomm.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 21 Aug 2019 12:02:07 +0200
Message-ID: <878srmsuow.fsf@toke.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_030210_461486_58F40FB9 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

V2VuIEdvbmcgPHdnb25nQHF0aS5xdWFsY29tbS5jb20+IHdyaXRlczoKCj4+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IGF0aDEwayA8YXRoMTBrLWJvdW5jZXNAbGlzdHMuaW5m
cmFkZWFkLm9yZz4gT24gQmVoYWxmIE9mIFRva2UKPj4gSMO4aWxhbmQtSsO4cmdlbnNlbgo+PiBT
ZW50OiBUdWVzZGF5LCBBdWd1c3QgMjAsIDIwMTkgODoyMyBQTQo+PiBUbzogV2VuIEdvbmcgPHdn
b25nQGNvZGVhdXJvcmEub3JnPjsgYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gQ2M6IGxp
bnV4LXdpcmVsZXNzQHZnZXIua2VybmVsLm9yZwo+PiBTdWJqZWN0OiBbRVhUXSBSZTogW1BBVENI
IDIvN10gYXRoMTBrOiBjaGFuZ2UgbWF4IFJYIGJ1bmRsZSBzaXplIGZyb20gOCB0bwo+PiAzMiBm
b3Igc2Rpbwo+PiAKPj4gV2VuIEdvbmcgPHdnb25nQGNvZGVhdXJvcmEub3JnPiB3cml0ZXM6Cj4+
IAo+PiA+IFRoZSBtYXggYnVuZGxlIHNpemUgc3VwcG9ydCBieSBmaXJtd2FyZSBpcyAzMiwgY2hh
bmdlIGl0IGZyb20gOCB0byAzMgo+PiA+IHdpbGwgaGVscCBwZXJmb3JtYW5jZS4gVGhpcyByZXN1
bHRzIGluIHNpZ25pZmljYW50IHBlcmZvcm1hbmNlCj4+ID4gaW1wcm92ZW1lbnQgb24gUlggcGF0
aC4KPj4gCj4+IFdoYXQgaGFwcGVucyB3aGVuIHRoZSBoYXJkd2FyZSBkb2Vzbid0IGhhdmUgZW5v
dWdoIGRhdGEgdG8gZmlsbCBhCj4+IGJ1bmRsZT8gRG9lcyBpdCBzZW5kIGEgc21hbGxlciBvbmUs
IG9yIGRvZXMgaXQgd2FpdCB1bnRpbCBpdCBjYW4gZmlsbAo+PiBpdD8KPj4gCj4KPiBUaGUgYnVu
ZGxlIGlzIGZpbGxlZCBieSBmaXJtd2FyZS4gCj4gSXQgd2lsbCBub3Qgd2FpdCB1bnRpbCBpdCBj
YW4gZmlsbCBpdC4KPiBGb3IgZXhhbXBsZSwgaWYgeW91IGRvIHBpbmcgcGVyIHNlY29uZCwgaXQg
d2lsbCBoYXZlIG9ubHkgMSBwaW5nIHBhY2tldAo+IEluIHRoZSBidW5kbGUuCgpSaWdodCwgY29v
bC4KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
