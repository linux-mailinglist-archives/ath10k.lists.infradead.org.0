Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48ADE59CF9
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:35:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EttmhZTtKgQqYqpGnCP83Z+Pp/f/ZjqhGssKCXthxl8=; b=MzDopRBgbsiO53
	AIpG4LkglSDKjXW2efVIIxJSMp8Sa62GWZAZi7qwcEEi4tchzRnRfc1MzxZRwAZEKJ5NBzyKNmVG4
	H/q3t7j17uz3YXvhwOSsDzR71q8U2oo2eH7TOIsdtjzrnT2UitxRgZRHq3oqRd7+S/2CYGZecgbTE
	MtUoHNa4YADCfM8wZRlWX5r3NoSWtxY7zci+u9STimh1KD98mW8EuJLQbnzCAI5mUitvNVu9moZTM
	RmtwzomG/IO/FSfWV39VmMVqTIuDSl2gERkjvJWyRBVT9R/S7UpnRufubleqU2/r2y6pdaGPTEtgu
	eDvEsEcrlqXmoGPn35mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgr20-0006hm-Em; Fri, 28 Jun 2019 13:35:12 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgr1u-0006Qn-I5
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:35:10 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 3ED3B6070D; Fri, 28 Jun 2019 13:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728906;
 bh=CfAgIe/MjqyI4DCb4h6vE++nYk6HF2bHEpeDqkwp5k0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=OXO5n0gxqxAF/Wk921lDH9BPVHHWEgK67WNgREe4b3RTixmlZ7KzObXKS/84B18cM
 x37xDMsdcdhT6169XVASctCk+XdxerU5DzdKeGRT2ldQQYRdUTJAVf705YPLaza2JN
 1VriRwtGdKaB16EsgoSeRx2hrRPs+vBdI8yERYrw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0EA9D604BE;
 Fri, 28 Jun 2019 13:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728905;
 bh=CfAgIe/MjqyI4DCb4h6vE++nYk6HF2bHEpeDqkwp5k0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=GWDtvDSbpK6LY7mi03EVjqJOF2UPnzQ0k51cVDckcPvTPufAW7RWl5WqdZ/SknFiY
 rw5uAuo81URmeMno3IQP9YzAIBvaLv+QCHcc0CaBwjE58bdyKwE6bvHKQHvJ/zzn5+
 CD01IuR34URWWFCxzzudn30FnMd1gEjriKoeleOQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0EA9D604BE
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?5byg6bmP?= <1805692831@qq.com>
Subject: Re: ath10k-firmware: QCA4019 hw1.0: Add Qxwlan E2600AC specific BDFs
References: <tencent_B26A61094B6D40FD7D21F63DEF95D7952F0A@qq.com>
Date: Fri, 28 Jun 2019 16:35:02 +0300
In-Reply-To: <tencent_B26A61094B6D40FD7D21F63DEF95D7952F0A@qq.com>
 (=?utf-8?B?IuW8oOm5jyIncw==?=
 message of "Fri, 22 Feb 2019 17:00:21 +0800")
Message-ID: <87imspesu1.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_063506_636955_04DF2925 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

IuW8oOm5jyIgPDE4MDU2OTI4MzFAcXEuY29tPiB3cml0ZXM6Cgo+IEhpLAo+Cj4gRm9yIHRoZSBx
dWVzdGlvbnMgZnJvbSB0aGUgd2lraSBwYWdlOgo+Cj4gKiBkZXNjcmlwdGlvbiBmb3Igd2hhdCBo
YXJkd2FyZSB0aGlzIGlzOgo+Cj4gICAtIGl0IGlzIGEgSVBRNDAxOCBiYXNlZCBib2FyZCAoQVAt
REswNy1DMSkKPiAgIC0gb25lIFFDQTQweHggcmFkaW8gaXMgdXNlZCBhcyAyLjQvNSBHSHogcmFk
aW8KPiAgIC0gb25lIFFDQTQweHggcmFkaW8gaXMgdXNlZCBhcyA1R0h6IHJhZGlvCj4KPiAqIG9y
aWdpbiBvZiB0aGUgYm9hcmQgZmlsZSAoZGlkIHlvdSBjcmVhdGUgaXQgeW91cnNlbGYgb3Igd2hl
cmUgeW91Cj4gICBkb3dubG9hZGVkKQo+Cj4gICAtIFRoZSBib2FyZCBmaWxlKHMpIHdoZXJlIGV4
dHJhY3RlZCBmcm9tIHRoZSBReHdsYW4gZmlybXdhcmUuIAo+ICAgLSBUaGUgZmlsZXMgaW4gdGhp
cyBlbWFpbCBhcmU6Cj4gICAgICogYm9hcmRfd2lmaTBfMmcuYmluCj4gICAgICogYm9hcmRfd2lm
aTBfNWcuYmluCj4gICAgICogYm9hcmRfd2lmaTFfNWcuYmluCj4KPiAqIGlkcyB0byBiZSB1c2Vk
IHdpdGggdGhlIGJvYXJkIGZpbGUgKEFUSDEwS19CRF9JRV9CT0FSRF9OQU1FIGluIGF0aDEwaykK
Pgo+ICAgLSBRQ0E0MDE5IGh3MS4wCj4KPiAgICAgKyBidXM9YWhiLGJtaS1jaGlwLWlkPTAsYm1p
LWJvYXJkLWlkPTI4LHZhcmlhbnQ9UXh3bGFuLUUyNjAwQUMKPiAgICAgICBzaGEyNTZzdW06Cj4g
ICAgICAgMTQ5NjU4YWY0YTM1MmE3Yzk5MzQxM2FiNzJkODNhY2MzYjUwYTU3Zjc2MWNhNWJjZjVl
NTk3YTk4MzM1YWVmNQo+ICAgICArIGJ1cz1haGIsYm1pLWNoaXAtaWQ9MCxibWktYm9hcmQtaWQ9
MjksdmFyaWFudD1ReHdsYW4tRTI2MDBBQwo+ICAgICAgIHNoYTI1NnN1bToKPiAgICAgICA4YWEy
ZDVjZjAzYzJiOGU3MDQ1MjUyNWVkZjY3MzVkNDMxMzAwMmM0YmZkMWY1MDU0YmRjMjE2MmIyZjE5
MmViCj4gICAgICsgYnVzPWFoYixibWktY2hpcC1pZD0wLGJtaS1ib2FyZC1pZD0zMCx2YXJpYW50
PVF4d2xhbi1FMjYwMEFDCj4gICAgICAgc2hhMjU2c3VtOgo+ICAgICAgIDg4NjQ0Y2UwYmIyNTUx
NTdkNGExZDgxODU5NTllZGNiY2RjYTBhZjYyZThhOWU4Mjg1NTA0Nzc1OWFkMjhiOWYKPgo+ICog
YXR0YWNoIHRoZSBhY3R1YWwgYm9hcmQgZmlsZSAoYm9hcmQuYmluKQo+Cj4gICAtIFRoZSBuYW1l
IG9mIHRoZSBmaWxlcyBhcmUgZXF1YWwgdG8gdGhlIGlkIHN0cmluZyBpbiB0aGUgYm9hcmQtMi5i
aW4KPiAgICAgKG1pbnVzIHRoZSAiLmJpbiIpCgpUaGUgbmFtZSBvZiBhdHRhY2htZW50cyBkb24n
dCB3b3JrIHdpdGggbXkgc2NyaXB0OgoKWzIuIGFwcGxpY2F0aW9uL29jdGV0LXN0cmVhbTsgYm9h
cmRfd2lmaTBfMmcuYmluXS4uLgoKWzMuIGFwcGxpY2F0aW9uL29jdGV0LXN0cmVhbTsgYm9hcmRf
d2lmaTBfNWcuYmluXS4uLgoKWzQuIGFwcGxpY2F0aW9uL29jdGV0LXN0cmVhbTsgYm9hcmRfd2lm
aTFfNWcuYmluXS4uLgoKSSBhdXRvbWF0aWNhbGx5IHByb2Nlc3MgdGhlc2Ugc28gaXQncyBpbXBv
cnRhbnQgdGhhdCB0aGUgZmlsZW5hbWVzIGFyZQpjb3JyZWN0LiBJIGFkZGVkIG5vdyBhbiBleGFt
cGxlIGhlcmU6CgpodHRwczovL3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi91c2Vycy9kcml2
ZXJzL2F0aDEway9ib2FyZGZpbGVzCgotLSAKS2FsbGUgVmFsbwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2F0aDEwawo=
