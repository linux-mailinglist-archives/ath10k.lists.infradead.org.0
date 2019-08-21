Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F13976B4
	for <lists+ath10k@lfdr.de>; Wed, 21 Aug 2019 12:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zu4HcJ+k2NXA/rfsScJ/JitDypMwRxYou23jCA4Bnqo=; b=uh7GPQR0HOWMgq
	+UU8FvZt8lHbWfXmPsU9icLKvcrdFaO12eAWtITS9DkOw/d3dfDDl2Fv1rNyLFI/dpb6DAXwCbw3v
	aqLCY+GAOxzdStwzegLyqC7aHTQ+3jwlWf9bAsNSymZR0fobg2qCFtFKjRQEfQe2kGUZvrZzSkrtN
	xaC5x3pjAU+QQQqtzeRlP3mRJitfOiyCls/9NZ4We4G9c2+Zrdal6YhSev/wuMtowLk8oSlL3KIsu
	b2R+zluvG8qi/8M3OQgWFsfRigZOh8oXyOCr5DRq2LghOiTgfYA8UiIauih498cT+iBv3D1bMmelm
	fLDOmV0aTCNrz6rnvykw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0NZd-0008J6-RW; Wed, 21 Aug 2019 10:10:37 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NZX-0008In-2d
 for ath10k@lists.infradead.org; Wed, 21 Aug 2019 10:10:32 +0000
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B2CE43D96B
 for <ath10k@lists.infradead.org>; Wed, 21 Aug 2019 10:10:30 +0000 (UTC)
Received: by mail-ed1-f69.google.com with SMTP id r25so1092088edp.20
 for <ath10k@lists.infradead.org>; Wed, 21 Aug 2019 03:10:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=8sBw1pzj3D8oNi/fIhRETMzxkmcUyKcDfjDtHp5hRqg=;
 b=S+cHrs+wo5huK8eBqoeEzuVLHO/Ch2UlppuEz026q2Z973fN6oN1g59/+vylWkt1VK
 UYB/yGyyb/989zF8qRi4OPb+jlliO4hhSTQFNt0UlC8WRk5Q1CVe4eMBSJJDqvbeJ2r3
 qwpdtFuHNxpLkp2OwifmKeopgZSUSKxsrrSkId1mHD0qS/3r/m+yy+VMkHdc/AU9NNHs
 mSOy80OhjGWNSiCDUWNYT5qgQi6nzbbf8VocejbtnE+ZyIMRGE3Pu+vhd+uJIoICueg2
 MBWBuB1SawxMLafltqpe9chCH+MfGiG4vSAQrFLlRay/pWH5HS9S2F/SKdbqm5LyxCic
 VQyQ==
X-Gm-Message-State: APjAAAVehkxNtv4V3xH9wseVhdSbHNRl+GvtzuhYTbtVgjZuyVgucIcH
 oGjiCUBudtErt1r4RzT5QGmrx0obdpRsuFXQyW2dr80Rbxs2+tcb+Q4gWrmpDk54JnDlSygw1cw
 DRooBmZT2yxPqb9j2Na0SGg==
X-Received: by 2002:a17:906:1b0d:: with SMTP id
 o13mr30067119ejg.96.1566382229491; 
 Wed, 21 Aug 2019 03:10:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyd3E5HYBNShFpCV41jp08tnq1HHLUa5AYaE/M2Y8ba2T6CwiqUzX7t1gKN1O12nCIaKVeLPg==
X-Received: by 2002:a17:906:1b0d:: with SMTP id
 o13mr30067103ejg.96.1566382229316; 
 Wed, 21 Aug 2019 03:10:29 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id w3sm3996451edu.4.2019.08.21.03.10.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 03:10:28 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id F212E181CEF; Wed, 21 Aug 2019 12:10:27 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Wen Gong <wgong@qti.qualcomm.com>, Wen Gong <wgong@codeaurora.org>,
 "ath10k\@lists.infradead.org" <ath10k@lists.infradead.org>
Subject: RE: [PATCH 4/7] ath10k: disable TX complete indication of htt for sdio
In-Reply-To: <00992d0991704b0fae73a500bb2eb504@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-5-git-send-email-wgong@codeaurora.org>
 <87blwkt480.fsf@toke.dk>
 <00992d0991704b0fae73a500bb2eb504@aptaiexm02f.ap.qualcomm.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 21 Aug 2019 12:10:27 +0200
Message-ID: <8736husub0.fsf@toke.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_031031_158593_BC914A82 
X-CRM114-Status: GOOD (  14.41  )
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
ZW50OiBUdWVzZGF5LCBBdWd1c3QgMjAsIDIwMTkgODoyNCBQTQo+PiBUbzogV2VuIEdvbmcgPHdn
b25nQGNvZGVhdXJvcmEub3JnPjsgYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gQ2M6IGxp
bnV4LXdpcmVsZXNzQHZnZXIua2VybmVsLm9yZwo+PiBTdWJqZWN0OiBbRVhUXSBSZTogW1BBVENI
IDQvN10gYXRoMTBrOiBkaXNhYmxlIFRYIGNvbXBsZXRlIGluZGljYXRpb24gb2YgaHR0Cj4+IGZv
ciBzZGlvCj4+IAo+PiBXZW4gR29uZyA8d2dvbmdAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4g
Cj4+ID4gVHggY29tcGxldGUgbWVzc2FnZSBmcm9tIGZpcm13YXJlIGNvc3QgYnVzIGJhbmR3aWR0
aCBvZiBzZGlvLCBhbmQgYnVzCj4+ID4gYmFuZHdpZHRoIGlzIHRoZSBib2xsdGVuZWNrIG9mIHRo
cm91Z2hwdXQsIGl0IHdpbGwgZWZmZWN0IHRoZSBiYW5kd2lkdGgKPj4gPiBvY2N1cGFuY3kgb2Yg
ZGF0YSBwYWNrZXQgb2YgVFggYW5kIFJYLgo+PiA+Cj4+ID4gVGhpcyBwYXRjaCBkaXNhYmxlIFRY
IGNvbXBsZXRlIGluZGljYXRpb24gZnJvbSBmaXJtd2FyZSBmb3IgaHR0IGRhdGEKPj4gPiBwYWNr
ZXQsIGl0IHJlc3VsdHMgaW4gc2lnbmlmaWNhbnQgcGVyZm9ybWFuY2UgaW1wcm92ZW1lbnQgb24g
VFggcGF0aC4KPj4gCj4+IFdhaXQsIGhvdyBkb2VzIHRoYXQgd29yaz8gQW0gSSB1bmRlcnN0YW5k
aW5nIGl0IGNvcnJlY3RseSB0aGF0IHRoaXMKPj4gcmVwbGFjZXMgYSBwZXItcGFja2V0IFRYIGNv
bXBsZXRpb24gd2l0aCBhIHBlcmlvZGljIG9uZSBzZW50IG91dCBvZgo+PiBiYW5kPwo+IFdoZW4g
dGhpcyBwYXRjaCBhcHBsaWVkLCBmaXJtd2FyZSB3aWxsIG5vdCBpbmRpY2F0ZSB0eCBjb21wbGV0
ZSBmb3IgdHgKPiBEYXRhLCBpdCBvbmx5IGluZGljYXRlIEhUVF9UMkhfTVNHX1RZUEVfVFhfQ1JF
RElUX1VQREFURV9JTkQsCj4gVGhpcyBodHQgbXNnIHdpbGwgdGVsbCBob3cgbWFueSBkYXRhIHR4
IGNvbXBsZXRlIHdpdGhvdXQgc3RhdHVzKHN0YXR1cyBtYXliZSBzdWNjZXNzL2ZhaWwpLgoKQWgs
IHNvIHRoaXMgaXMgYmFzaWNhbGx5IGEgY291bnRlciBvZiBob3cgbXVjaCBkYXRhIGlzIGN1cnJl
bnRseSBxdWV1ZWQKaW4gdGhlIGZpcm13YXJlPwoKPj4gQW5kIGNvdWxkIHlvdSBleHBsYWluIHdo
YXQgdGhlIGNyZWRpdHMgdGhpbmcgaXMgZm9yLCBwbGVhc2U/IDopCj4gRm9yIGhpZ2ggbGF0ZW5j
eSBidXMgY2hpcCwgYWxsIHRoZSB0eCBkYXRhJ3MgY29udGVudChpbmNsdWRlIGlwL3VkcC90Y3Ag
aGVhZGVyCj4gYW5kIHBheWxvYWQpIHdpbGwgYmUgdHJhbnNmZXIgdG8gZmlybXdhcmUncyBtZW1v
cnkgdmlhIGJ1cy4KPiBBbmQgZmlybXdhcmUgaGFzIGxpbWl0ZWQgbWVtb3J5IGZvciB0eCBkYXRh
LCB0aGUgdHggZGF0YSdzIGNvbnRlbnQgbXVzdAo+IFNhdmVkIGluIGZpcm13YXJlIG1lbW9yeSBi
ZWZvcmUgaXQgdHggY29tcGxldGUsIGlmIGF0aDEwayB0cmFuc2ZlciB0eAo+IGRhdGEgbW9yZSB0
aGFuIHRoZSBsaW1pdCwgZmlybXdhcmUgd2lsbCBvY2N1ciBlcnJvci4gVGhlIGNyZWRpdCBpcyB1
c2VkCj4gdG8gYXZvaWQgYXRoMTBrIGV4Y2VlZCB0aGUgbGltaXQuCgpXaGF0J3MgYSB0eXBpY2Fs
IGxpbWl0IGluIHRoZSBmaXJtd2FyZT8KCi1Ub2tlCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YXRoMTBrCg==
