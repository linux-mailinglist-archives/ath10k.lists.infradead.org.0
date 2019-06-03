Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8378E32CD0
	for <lists+ath10k@lfdr.de>; Mon,  3 Jun 2019 11:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BOdMZtAcLOq/SHeIpdaQVHbHfY/paHuOe+d1WDQTqaQ=; b=SuCy2Uo3ET1sJj
	lL6MFbLRG80mneYDmN+PEoddRr3TnJtIyWRcFJnOMKCkE0tXNT9ILcM64G6gvLWWyncbobipjSv3H
	4Eka6Qg4AKP/WTkZdcaRL2VG10YwUGe7QYKxV+A4gAeeWvSLOnCRx9XwMRKMFfeoie7esJwCw9BnD
	rIaLSrb0UvVQEE9gFwtyuhv4ZcrkarzNvvTETAsHfh1W/JFchmm/FjayTZs25wMNFUReWX0U+apxt
	dQBvwF4yVTEx62mEuAftGyINI0oc0056YIpo13BZkfnSYCKJ0TDgFacKl1clsz0gxvT3tvUY4Hwya
	/13DBfO7DbPLWuz+ENig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjDu-0008Te-UV; Mon, 03 Jun 2019 09:25:46 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjDo-0008TE-9a
 for ath10k@lists.infradead.org; Mon, 03 Jun 2019 09:25:44 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 51F2760131; Mon,  3 Jun 2019 09:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559553939;
 bh=wutyia3Y+TVv20cDByJ577sjJe/NCNX/utUf7+XFGg4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=erBJpmFqVE+jXXsPXUmSHIGYEDOxgH00SR5wvBeBVXi7lubPB4y4iL/Ush8GgtjDW
 7gx0ryLBuKOnuaNp32RhkUsdxF5/YztrBdWDtkskobsTcO5PCRLPdx2dlPp1c3yMsp
 HTi6fVC+g/QLMxgZ+i+SXUGzUIS9uk8SG17xEFpY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2AD6260261;
 Mon,  3 Jun 2019 09:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559553938;
 bh=wutyia3Y+TVv20cDByJ577sjJe/NCNX/utUf7+XFGg4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=DNvE1cfVI96O7iQqbcFir+2dzG4og5HvioyTWkcRzbNRnxhCgRjMfU9/oqz+45y9m
 4bURDXPOBrljLPLJkltov1FEtrQPM3iMmGXXabbbVOPoO1UH1ykiD/T0EPJTB9cIVe
 +FgpLeOK7MK3oB/bh+8jo9BmSDvYXyxRcYiQMwDw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2AD6260261
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Patrick Daume <patrick.daume@dedrone.com>
Subject: Re: Qualcomm Atheros QCA6174 monitoring mode receiving no data
References: <1559296628.11260.4.camel@dedrone.com>
Date: Mon, 03 Jun 2019 12:25:35 +0300
In-Reply-To: <1559296628.11260.4.camel@dedrone.com> (Patrick Daume's message
 of "Fri, 31 May 2019 09:57:09 +0000")
Message-ID: <87lfyjyq9c.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_022543_468330_580A1848 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

UGF0cmljayBEYXVtZSA8cGF0cmljay5kYXVtZUBkZWRyb25lLmNvbT4gd3JpdGVzOgoKPiBJJ3Zl
IGFuIFNwYXJrTGFuIFdQRVEtMjYxQUNOKEJUKSBRdWFsY29tbSBBdGhlcm9zIFFDQTYxNzQgY2hp
cHNldCBvbiBhbiA0LjQuMSBLZXJuZWwuCj4gSWYgSSBicmluZyB0aGUgY2hpcCBpbiBtb2luaXRv
ciBtb2RlIHNvbWUgRGF0YS0sIFFvUy0sCj4gQWNrbm93bGVkZ21lbnQtcGFja2V0cyBhcmUgbm90
YWJseSBtaXNzaW5nLgo+IEZvciBjb21wYXJpc29uIEkgdXNlZCB0Y3BkdW1wIGluIHBhcmFsbGVs
IHdpY2ggYW4gSW50ZWwgV2lyZWxlc3MgMzE2MCBjaGlwLgo+IE9ubHkgQmVhY29ucywgUHJvYmUg
UmVxdWVzdHMgYW5kIFJlc3BvbnNlIHdlcmUgcmVjb3JkZWQuCj4KPiBJIHRyaWVkIHRvIHVwZGF0
ZSB0aGUga2VybmVsIHRvICc0LjkuMTQwJyBhbmQgdGhlIGZpcm13YXJlIHRvCj4gJ1dMQU4uUk0u
NC40LjEtMDAwNzktUUNBUk1TV1BaLTEnIHJlc3VsdGluZyBpbiB0aGUgbW9uaXRvcmluZyBtb2Rl
Cj4gSW50ZXJmYWNlIHJlY2VpdmluZyBubyBkYXRhIGF0IGFsbC4KPiBJIGFsc28gdHJpZWQgZGlm
ZmVyZW50IHZlcnNpb24gb2YgdGhlIGZpcm13YXJlIGluIGNvbWJpbmF0aW9uIHdpdGgKPiBiYWNr
cG9ydHMgb24gdGhlIDQuNC4xIEtlcm5lbC7CoAo+IEFsbCByZWxldmFudCBiYWNrcG9ydHMgc3Rh
cnRpbmcgZnJvbSAndjQuMTQtcmMyJyBzaG93IHRoZSBzYW1lCj4gYmVoYXZpb3VyIGluIG1vbml0
b3IgbW9kZcKgCj4gKGluY2x1ZGluZyB0ZXN0cyB3aXRoIHRoZSAnV0xBTi5STS40LjQuMS0wMDA3
OS1RQ0FSTVNXUFotMScsCj4gJzQuNC4xLmMzJywgJzQuNC4xLmMyJyBmaXJtd2FyZSBpbiBjb21i
aW5hdGlvbiB3aXRoICd2NC4xNC1yYzInLAo+ICd2NC4yMC4xNycsICd2NS4wLjUnICd2NS4xLXJj
MicgYmFja3BvcnRzKcKgwqDCoMKgwqDCoMKgCj4KPiBDYW4gYW55b25lIHBvaW50IG91dCB3aGlj
aCBwYXRjaGVzIG1heSBiZSByZWxhdmFudD8KPiBJcyB0aGUgbW9uaXRvcmluZyBtb2RlIG5vIGxv
bmdlciBzdXBwb3J0ZWQgd2l0aCBhIG5ld2VyIGZpcm13YXJlL2RyaXZlciB2ZXJzaW9uPwoKSUlS
QyBzb21lb25lIHJlcG9ydGVkIG1vbml0b3IgbW9kZSB3b3JraW5nIG9uIFFDQTYxNzQgaHczLjAg
YnV0IEkgZG9uJ3QKcmVtZW1iZXIgdGhlIHNwZWNpZmljcy4gdjQuMTQgYW5kIHY0LjkgYXJlIHF1
aXRlIG9sZCBrZXJuZWxzIGFuZApXTEFOLlJNLjQuNC4xLTAwMDc5LVFDQVJNU1dQWi0xIGlzIGFs
c28gMS41IHllYXJzIG9sZCBmaXJtd2FyZS4gSQpyZWNvbW1lbmQgdHJ5aW5nIGxhdGVzdCBhdGgx
MGsgKGZvciBleGFtcGxlIHY1LjEpIGFuZCBsYXRlc3QgZmlybXdhcmUKZm9yIFFDQTYxNzQ6Cgpo
dHRwczovL2dpdGh1Yi5jb20va3ZhbG8vYXRoMTBrLWZpcm13YXJlL2Jsb2IvbWFzdGVyL1FDQTYx
NzQvaHczLjAvNC40LjEvZmlybXdhcmUtNi5iaW5fV0xBTi5STS40LjQuMS0wMDEzMi1RQ0FSTVNX
UC0xCgotLSAKS2FsbGUgVmFsbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
