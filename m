Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5BE992EF
	for <lists+ath10k@lfdr.de>; Thu, 22 Aug 2019 14:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MD9PS04ektf7L1zsR9fmjpTmq94E2wjkXJzkKxNGMtk=; b=RqNIcpd4VIS/cs
	zHNSrvoz69ajCk59iCHlHoWVRza6lV/+woVCjTagEv79zMD3SmVsZ4AkNjUlZVp++jN4zygf5Vz9a
	etLo193J5p7GwdNoORo6KH0J9UhBgxlTed1RxDMuP6gQ7aRwJMa67/w5wlZfuHHnAIvfMpQr4YfI/
	joBgC3iiZ6yFSYXtP3n1aEszUTdZXVHIVDVPeS0FDHms4OYxMh2x/jYZJdTEuH/IvMiU1m6UdwLPg
	P57CbxeIKggWt/smlxJNMfHM65jQS7lAwCG1Tt2O+BWY9dJJin7S8ZEQtd6/YwurKQx8BwLGyUUdN
	VWjr3OgkvdWUhgh11b6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0lws-0000kX-HL; Thu, 22 Aug 2019 12:12:14 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0lwk-0000k0-Kd
 for ath10k@lists.infradead.org; Thu, 22 Aug 2019 12:12:08 +0000
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0F3DF81F01
 for <ath10k@lists.infradead.org>; Thu, 22 Aug 2019 12:12:05 +0000 (UTC)
Received: by mail-ed1-f69.google.com with SMTP id n7so3276344edr.5
 for <ath10k@lists.infradead.org>; Thu, 22 Aug 2019 05:12:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=9h83h1p/qy02LMcxTntGw58CIiMA2cd2aWOiL/YUHAM=;
 b=TH2L8o5Fque4tEANQH6lfRuno3aGINDQSq3Uc56mR6KsmcveVl+A4Y11Pmstpl6j07
 ToJ3s4Xk9umxS/tEQozh8ldzBcrvqc9hhCWMjwA+redDbA+T5Dva/5BiJP26WxLahoWb
 ranuPlohc2S4tRCFXKGYl+HHba7hVmcQXEn1xGvFF2JmDWuf7wKHK5BkBBqQtOXCigMN
 RjvYpfUCOrfrvp5gsgmuIEARkUDepzx2d9VICFfaT4kpk2QvUlLVyAX12bWWAlTUJfhP
 jdR00BGHHhOf4IXRG3GvMlZ/48v4SZToPp22Tv5Yx+1x50b0jKmaqLgU/a/ERWwjR/gU
 LKvA==
X-Gm-Message-State: APjAAAUDVE+4kzq26SWu3KMnG7ac3h6MDwsoUrRKZXPGmO7DubZAcwlE
 0mRPLqzLWAnq3OEB56GE0YGLcXMihLzAfWfotZOsnWulmeftbhJII+gSYvzNMedhdEMsqPphzpI
 cyNgmEejwC4TGBT9hhtlY0g==
X-Received: by 2002:aa7:d043:: with SMTP id n3mr7422558edo.258.1566475923863; 
 Thu, 22 Aug 2019 05:12:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxfgFd0pqx/wt/2/8MBMZSdmQSjSFql9LbG8CrRYzr9Cjm4n9JWISkqTDdPw9bSmMel8QQqmA==
X-Received: by 2002:aa7:d043:: with SMTP id n3mr7422537edo.258.1566475923726; 
 Thu, 22 Aug 2019 05:12:03 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id e29sm4798065eda.51.2019.08.22.05.12.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 05:12:02 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 9BBC0181CEF; Thu, 22 Aug 2019 14:12:01 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Wen Gong <wgong@qti.qualcomm.com>, Wen Gong <wgong@codeaurora.org>,
 "ath10k\@lists.infradead.org" <ath10k@lists.infradead.org>
Subject: RE: [PATCH 4/7] ath10k: disable TX complete indication of htt for sdio
In-Reply-To: <86d0eabcc63849efa914f2c14a3cd59f@aptaiexm02f.ap.qualcomm.com>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-5-git-send-email-wgong@codeaurora.org>
 <87blwkt480.fsf@toke.dk>
 <00992d0991704b0fae73a500bb2eb504@aptaiexm02f.ap.qualcomm.com>
 <8736husub0.fsf@toke.dk>
 <86d0eabcc63849efa914f2c14a3cd59f@aptaiexm02f.ap.qualcomm.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 22 Aug 2019 14:12:01 +0200
Message-ID: <874l29pffy.fsf@toke.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_051206_718025_E243A4BB 
X-CRM114-Status: GOOD (  13.97  )
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
YWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUBy
ZWRoYXQuY29tPgo+PiBTZW50OiBXZWRuZXNkYXksIEF1Z3VzdCAyMSwgMjAxOSA2OjEwIFBNCj4+
IFRvOiBXZW4gR29uZyA8d2dvbmdAcXRpLnF1YWxjb21tLmNvbT47IFdlbiBHb25nCj4+IDx3Z29u
Z0Bjb2RlYXVyb3JhLm9yZz47IGF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCj4+IENjOiBsaW51
eC13aXJlbGVzc0B2Z2VyLmtlcm5lbC5vcmcKPj4gU3ViamVjdDogW0VYVF0gUkU6IFtQQVRDSCA0
LzddIGF0aDEwazogZGlzYWJsZSBUWCBjb21wbGV0ZSBpbmRpY2F0aW9uIG9mIGh0dAo+PiBmb3Ig
c2Rpbwo+PiAKPj4gV2VuIEdvbmcgPHdnb25nQHF0aS5xdWFsY29tbS5jb20+IHdyaXRlczoKPj4g
Cj4+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+ID4+IEZyb206IGF0aDEwayA8YXRo
MTBrLWJvdW5jZXNAbGlzdHMuaW5mcmFkZWFkLm9yZz4gT24gQmVoYWxmIE9mIFRva2UKPj4gPj4g
SMO4aWxhbmQtSsO4cmdlbnNlbgo+PiA+PiBTZW50OiBUdWVzZGF5LCBBdWd1c3QgMjAsIDIwMTkg
ODoyNCBQTQo+PiA+PiBUbzogV2VuIEdvbmcgPHdnb25nQGNvZGVhdXJvcmEub3JnPjsgYXRoMTBr
QGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gPj4gQ2M6IGxpbnV4LXdpcmVsZXNzQHZnZXIua2VybmVs
Lm9yZwo+PiA+PiBTdWJqZWN0OiBbRVhUXSBSZTogW1BBVENIIDQvN10gYXRoMTBrOiBkaXNhYmxl
IFRYIGNvbXBsZXRlIGluZGljYXRpb24gb2YKPj4gaHR0Cj4+ID4gV2hlbiB0aGlzIHBhdGNoIGFw
cGxpZWQsIGZpcm13YXJlIHdpbGwgbm90IGluZGljYXRlIHR4IGNvbXBsZXRlIGZvciB0eAo+PiA+
IERhdGEsIGl0IG9ubHkgaW5kaWNhdGUgSFRUX1QySF9NU0dfVFlQRV9UWF9DUkVESVRfVVBEQVRF
X0lORCwKPj4gPiBUaGlzIGh0dCBtc2cgd2lsbCB0ZWxsIGhvdyBtYW55IGRhdGEgdHggY29tcGxl
dGUgd2l0aG91dCBzdGF0dXMoc3RhdHVzCj4+IG1heWJlIHN1Y2Nlc3MvZmFpbCkuCj4+IAo+PiBB
aCwgc28gdGhpcyBpcyBiYXNpY2FsbHkgYSBjb3VudGVyIG9mIGhvdyBtdWNoIGRhdGEgaXMgY3Vy
cmVudGx5IHF1ZXVlZAo+PiBpbiB0aGUgZmlybXdhcmU/Cj4gWWVzLgo+PiAKPj4gPj4gQW5kIGNv
dWxkIHlvdSBleHBsYWluIHdoYXQgdGhlIGNyZWRpdHMgdGhpbmcgaXMgZm9yLCBwbGVhc2U/IDop
Cj4+ID4gRm9yIGhpZ2ggbGF0ZW5jeSBidXMgY2hpcCwgYWxsIHRoZSB0eCBkYXRhJ3MgY29udGVu
dChpbmNsdWRlIGlwL3VkcC90Y3AKPj4gaGVhZGVyCj4+ID4gYW5kIHBheWxvYWQpIHdpbGwgYmUg
dHJhbnNmZXIgdG8gZmlybXdhcmUncyBtZW1vcnkgdmlhIGJ1cy4KPj4gPiBBbmQgZmlybXdhcmUg
aGFzIGxpbWl0ZWQgbWVtb3J5IGZvciB0eCBkYXRhLCB0aGUgdHggZGF0YSdzIGNvbnRlbnQgbXVz
dAo+PiA+IFNhdmVkIGluIGZpcm13YXJlIG1lbW9yeSBiZWZvcmUgaXQgdHggY29tcGxldGUsIGlm
IGF0aDEwayB0cmFuc2ZlciB0eAo+PiA+IGRhdGEgbW9yZSB0aGFuIHRoZSBsaW1pdCwgZmlybXdh
cmUgd2lsbCBvY2N1ciBlcnJvci4gVGhlIGNyZWRpdCBpcyB1c2VkCj4+ID4gdG8gYXZvaWQgYXRo
MTBrIGV4Y2VlZCB0aGUgbGltaXQuCj4+IAo+PiBXaGF0J3MgYSB0eXBpY2FsIGxpbWl0IGluIHRo
ZSBmaXJtd2FyZT8KPiBJdCBpcyA5NiBkYXRhIHBhY2tldCBpbiBteSB0ZXN0LiBJdCBjYW4gY2hh
bmdlZCBpbiBmaXJtd2FyZSBjb2RlLgoKUmlnaHQsIEkgc2VlLiBJcyB0aGlzIGNvdW50ZXIgYXZh
aWxhYmxlIGluIGFsbCBhdGgxMGsgZmlybXdhcmUsIG9yIGlzIGl0ClNESU8gb25seT8KCkknbSBh
c2tpbmcgYmVjYXVzZSB0aGlzIGNvdWxkIGFsc28gYmUgYSB3YXkgb2YgaW1wbGVtZW50aW5nIHNv
bWV0aGluZwpsaWtlIEJ5dGUgUXVldWUgTGltaXRzICh0aG91Z2ggSSdtIG5vdCBzdXJlIGhvdyBl
ZmZlY3RpdmUgaXQgd291bGQgYmUpLgoKLVRva2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9h
dGgxMGsK
