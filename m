Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1421C6024
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 20:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rXYOBt/fCPaSZ9oF+pw5WKswoqZj5oMqKVKjyLGlMqo=; b=iDLZ+JLUaH9PDnSA54mnYJrMC
	bV5NG6Idr+HNkv9W+WBg9CpLEP/rTKh82GoVAc+chV+Uct9EmS29fwpqwLea40k+BsfG3HsOBRtm/
	AWseZfP+Q5dWWp8fLMbHrl9LKT6Iu96Y3JVAGV53mopvvT39W6lq3JHJD80ZHMFO8ulBVKo/PGQN0
	6O21Tlpjdc5c28YRYN9xRvtlrwKhkh5v4JsCFX9G9tYwixX8h3MLIPWjzuXVCbjGX4awI4B/K63bW
	FSxdW4dOQEOFh7hlYezh8iFQCSnIATpD6LYpUk/r7WrySD5kuvNQxAZrEeGkqjsBnoxrOXkEVMbyM
	T8MMwGZ9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW2N9-00063A-S5; Tue, 05 May 2020 18:32:51 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW2N5-00062B-Ef
 for ath10k@lists.infradead.org; Tue, 05 May 2020 18:32:49 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588703567; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=kqcch0uCot+4dXsdXDL01hE7tWa5z9rZFO4hj6Mt8EQ=;
 b=eMfypgiGVUqaMOuDzX8ssGrCeYFVSXL0xiT3QB1UzPJmvteSLeCQYQfyqTDQSAIbQDaRy6sO
 lck3DaV07S4FzNlV7p7iLDmsur3JmP7Llkp9hS72dDkrKpqvL1FMfjmi5kjkHMuGHAf/iNMr
 OxGCs4nFCZB58hCKxlin6H3pJBY=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb1b14e.7f1b79eb65e0-smtp-out-n04;
 Tue, 05 May 2020 18:32:46 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0528FC433D2; Tue,  5 May 2020 18:32:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: rmanohar)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B5241C433F2;
 Tue,  5 May 2020 18:32:44 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 05 May 2020 11:32:44 -0700
From: Rajkumar Manoharan <rmanohar@codeaurora.org>
To: Markus Theil <markus.theil@tu-ilmenau.de>
Subject: Re: [PATCH 1/2] ath10k: use cumulative survey statistics
In-Reply-To: <46ab4ffd-b512-de43-40bb-f35989d228b9@tu-ilmenau.de>
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
 <f772b7bf0eac31516a4e28719c1938f2@codeaurora.org>
 <2335594.cnkAv9Vaq7@bentobox> <1845755.pTfhzBy2qg@bentobox>
 <46ab4ffd-b512-de43-40bb-f35989d228b9@tu-ilmenau.de>
Message-ID: <0cd75c16a8557a44e9b2c086847941a1@codeaurora.org>
X-Sender: rmanohar@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_113247_558991_87DEB5A8 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, kvalo@codeaurora.org, ath11k@lists.infradead.org,
 Sven Eckelmann <sven@narfation.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAyMC0wNS0wNSAwODozNywgTWFya3VzIFRoZWlsIHdyb3RlOgo+IE9uIDUvNS8yMCA5OjQ5
IEFNLCBTdmVuIEVja2VsbWFubiB3cm90ZToKPj4gT24gVHVlc2RheSwgNSBNYXkgMjAyMCAwOTow
MTozNCBDRVNUIFN2ZW4gRWNrZWxtYW5uIHdyb3RlOgo+Pj4gT24gVHVlc2RheSwgNSBNYXkgMjAy
MCAwMTo0NjoxMiBDRVNUIFJhamt1bWFyIE1hbm9oYXJhbiB3cm90ZToKPj4+IFsuLi5dCj4+Pj4g
SUlSQyB0aGlzIHdhcyBmaXhlZCBhIHdoaWxlIGFnbyBieSBiZWxvdyBwYXRjaC4gU29tZWhvdyBp
dCBuZXZlciAKPj4+PiBsYW5kZWQKPj4+PiBpbiBhdGguZ2l0Lgo+Pj4+IFNpbXBsZSBvbmUgbGlu
ZSBjaGFuZ2UgaXMgZW5vdWdoLgo+Pj4+IAo+Pj4+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5v
cmcvcGF0Y2gvMTA1NTA3MDcvCj4+PiBCZWNhdXNlIGl0IGRvZXNuJ3Qgd29yayBmb3IgZXZlcnl0
aGluZy4gUmVtZW1iZXIgdGhhdCAxMC4yLjQueCAKPj4+IG92ZXJmbG93cyBhbGwKPj4+IHRoZSB0
aW1lICgxNC0zMHMpIGJlY2F1c2UgaXQgdXNlZCBvbmx5IDMxIGJpdCBmb3IgdGhlIGNvdW50ZXJz
Lgo+Pj4gCj4+PiBCdXQgZmVlbCBmcmVlIHRvIHBvaW50IG1lIHRvIHRoZSBmaXJtd2FyZSB2ZXJz
aW9uIHdoaWNoIGZpeGVkIHRoaXMuCj4+IFNlZSBhbHNvIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5l
bC5vcmcvcGF0Y2gvOTcwMTQ1OS8KPj4gCj4+IEtpbmQgcmVnYXJkcywKPj4gCVN2ZW4KPiAKPiBU
aGlzIHBhdGNoIGFscmVhZHkgZml4ZXMgdGhlIHByb2JsZW0gZm9yIG1lLiBJIHRlc3RlZCBpdCBv
biBRQ0E5ODhYIGh3Cj4gd2l0aCBmaXJtd2FyZSAxMC4yLjQuCj4gCj4gW8KgwqAgMTAuMzUwOTE5
XSBhdGgxMGtfcGNpIDAwMDA6MDQ6MDAuMDogcWNhOTg4eCBodzIuMCB0YXJnZXQgMHg0MTAwMDE2
Ywo+IGNoaXBfaWQgMHgwNDMyMjJmZiBzdWIgMDAwMDowMDAwCj4gW8KgwqAgMTAuMzUwOTMwXSBh
dGgxMGtfcGNpIDAwMDA6MDQ6MDAuMDoga2NvbmZpZyBkZWJ1ZyAxIGRlYnVnZnMgMQo+IHRyYWNp
bmcgMSBkZnMgMCB0ZXN0bW9kZSAwCj4gW8KgwqAgMTAuMzUxODAzXSBhdGgxMGtfcGNpIDAwMDA6
MDQ6MDAuMDogZmlybXdhcmUgdmVyIDEwLjIuNC0xLjAtMDAwNDcKPiBhcGkgNSBmZWF0dXJlcyBu
by1wMnAscmF3LW1vZGUsbWZwLGFsbG93cy1tZXNoLWJjYXN0IGNyYzMyIDM1YmQ5MjU4Cj4gW8Kg
wqAgMTAuMzg1NjE3XSBhdGgxMGtfcGNpIDAwMDA6MDQ6MDAuMDogYm9hcmRfZmlsZSBhcGkgMSBi
bWlfaWQgTi9BCj4gY3JjMzIgYmViYzdjMDgKPiBbwqDCoCAxMS41MzY4MThdIGF0aDEwa19wY2kg
MDAwMDowNDowMC4wOiBodHQtdmVyIDIuMSB3bWktb3AgNSBodHQtb3AgMgo+IGNhbCBvdHAgbWF4
LXN0YSAxMjggcmF3IDAgaHdjcnlwdG8gMQo+IAo+IEkgYWxzbyBkaWQgbm90IHNlZSB0aGUgMzEg
Yml0IG92ZXJmbG93IGFmdGVyIGEgc21hbGwgYW1vdW50IG9mIHNlY29uZHMuCj4gCj4gU3VydmV5
IGRhdGEgZnJvbSB3bHA0czAKPiDCoMKgwqAgZnJlcXVlbmN5OsKgwqDCoCDCoMKgwqAgwqDCoMKg
IDI0MTIgTUh6IFtpbiB1c2VdCj4gwqDCoMKgIG5vaXNlOsKgwqDCoCDCoMKgwqAgwqDCoMKgIMKg
wqDCoCAtNjUgZEJtCj4gwqDCoMKgIGNoYW5uZWwgYWN0aXZlIHRpbWU6wqDCoMKgIMKgwqDCoCA1
MzcwMjI1IG1zCj4gwqDCoMKgIGNoYW5uZWwgYnVzeSB0aW1lOsKgwqDCoCDCoMKgwqAgOTI0MTk5
IG1zCj4gwqDCoMKgIGNoYW5uZWwgcmVjZWl2ZSB0aW1lOsKgwqDCoCDCoMKgwqAgMTQwIG1zCj4g
wqDCoMKgIGNoYW5uZWwgdHJhbnNtaXQgdGltZTrCoMKgwqAgwqDCoMKgIDAgbXMKPiAKR3JlYXQu
IFRoYW5rcyBmb3IgdmFsaWRhdGluZyB0aGUgcGF0Y2guIFZlbmthdCB3aWxsIHBvc3QgdGhlIHBh
dGNoIG9uIApUb1QuCgotUmFqa3VtYXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
