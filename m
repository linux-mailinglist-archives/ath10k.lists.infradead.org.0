Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9881C195650
	for <lists+ath10k@lfdr.de>; Fri, 27 Mar 2020 12:25:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8mzmv9x+b08UxgC7FM+R5WgleG6kNRAePeFvO85xgDk=; b=OXz/6mq5p7r4cN
	/D62p8cLq+yVsgEgs9hJ2pnLRqbQV0yuWPUm37mH1Ouj4Y8WfBi/fFHoY/xDlePBEs9gjsFIHGzuI
	9T2AyfQwYwbD0raRN235rWZzINLtnFdqadB6MKcmnDOFvWMINz6zmYIW/VENdMOculyYyBzkf7jSB
	Ihg5OP00blYk1GQOOkhB3WZHaM7In37kNO+KsHBfl4M22sx9GdnuvcrzzhH4JPCvpeW4yq2bbMkbY
	s35dWJyVYX6JmH6q5ziUJL5czQD5YzvwHsrHW+dlUQuGO7hvn4KlWwa2gKab3nOgqo5DDVxvd3Vv3
	JX2fFvq/XS9sPyDMxf8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHn7J-0004US-9B; Fri, 27 Mar 2020 11:25:37 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHn7C-0004Th-Nk
 for ath10k@lists.infradead.org; Fri, 27 Mar 2020 11:25:34 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585308332; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=v00esGDG7LHWpQKV3144KDgvmPjIbXzlLvEwUmYlamQ=;
 b=EO8ZbIdR0CQA9hSSaLI10suQJ+hVcei9ROGDAWonVRCG6vjH0/61/H3wCvDb3OjdlS9tkciJ
 mm/dmYiSV2Iaavy+GZZa7DB6xgu93xKRVDJRITXA6wO6SVMb0HPhhyw1B42CddSnRjnJGvre
 FnWfn5GSewbmw1MrMHYohzzCcB4=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7de29c.7f0d2b160ca8-smtp-out-n02;
 Fri, 27 Mar 2020 11:25:16 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6AC7DC433BA; Fri, 27 Mar 2020 11:25:15 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7806FC433F2;
 Fri, 27 Mar 2020 11:25:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7806FC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: ssreeela@codeaurora.org
Subject: Re: [PATCH] ath10k: enable VHT160 and VHT80+80 modes
References: <1585148169-2320-1-git-send-email-ssreeela@codeaurora.org>
 <20200326095907.5326BC433BA@smtp.codeaurora.org>
 <812e84a585ed3aeda9aa54f7d2b14e93@codeaurora.org>
Date: Fri, 27 Mar 2020 13:25:10 +0200
In-Reply-To: <812e84a585ed3aeda9aa54f7d2b14e93@codeaurora.org>
 (ssreeela@codeaurora.org's message of "Thu, 26 Mar 2020 18:45:06
 +0530")
Message-ID: <87bloi2g6h.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_042533_056575_19CD3F7B 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lei Wang <leiwa@codeaurora.org>, Rick Wu <rwu@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Sebastian Gottschall <s.gottschall@dd-wrt.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

c3NyZWVlbGFAY29kZWF1cm9yYS5vcmcgd3JpdGVzOgoKPiBPbiAyMDIwLTAzLTI2IDE1OjI5LCBL
YWxsZSBWYWxvIHdyb3RlOgo+PiBTb3dtaXlhIFNyZWUgRWxhdmFsYWdhbiA8c3NyZWVlbGFAY29k
ZWF1cm9yYS5vcmc+IHdyb3RlOgo+Pgo+Pj4gRnJvbTogTGVpIFdhbmcgPGxlaXdhQGNvZGVhdXJv
cmEub3JnPgo+Pj4KPj4+IFNldCByaWdodCBjaGFubmVsIGZyZXF1ZW5jaWVzIGluIFZIVDE2MCBt
b2RlIGFjY29yZGluZyB0byB0aGUgVkhUMTYwCj4+PiBpbnRlcm9wZXJhYmlsaXR5IHdvcmthcm91
bmQgYWRkZWQgYXMgcGFydCBvZiBJRUVFIFN0ZCA4MDIuMTHihKItMjAxNiBpbgo+Pj4gIlRhYmxl
IDktMjUy4oCUVkhUIE9wZXJhdGlvbiBJbmZvcm1hdGlvbiBzdWJmaWVsZHMiLCBiYW5kX2NlbnRl
cl9mcmVxMgo+Pj4gY29ycmVzcG9uZHMgdG8gQ0NGUzEgaW4gVGFibGUgOS0yNTMuIFByZXZpb3Vz
IGltcGxlbWVudGF0aW9uCj4+PiAoYmFuZF9jZW50ZXJfZnJlcTIgPSAwIGZvciBWSFQxNjApIGlz
IG9ubHkgZGVwcmVjYXRlZC4KPj4+Cj4+PiBFbmFibGUgVkhUODArODAgbW9kZSBhbmQgc2V0IHRo
ZSBwcm9wZXIgcGVlciBSWCBuc3MgdmFsdWUgZm9yCj4+PiBWSFQxNjAgYW5kCj4+PiBWSFQ4MCs4
MCBtb2RlLgo+Pj4KPj4+IEJhc2VkIG9uIHBhdGNoZXMgYnkgU2ViYXN0aWFuIEdvdHRzY2hhbGw6
Cj4+Pgo+Pj4gaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci8yMDE4MDcwNDA5NTQ0NC42NjItMS1z
LmdvdHRzY2hhbGxAZGQtd3J0LmNvbQo+Pj4KPj4+IGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3Iv
MjAxODA3MDQxMjA1MTkuNjQ3OS0xLXMuZ290dHNjaGFsbEBkZC13cnQuY29tCj4+Pgo+Pj4gVGVz
dGVkOiBxY2E5OTg0IHdpdGggZmlybXdhcmUgdmVyIDEwLjQtMy4xMC0wMDA0Nwo+Pj4KPj4+IENv
LWRldmVsb3BlZC1ieTogU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBkZC13cnQu
Y29tPgo+Pj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFs
bEBkZC13cnQuY29tPgo+Pj4gQ28tZGV2ZWxvcGVkLWJ5OiBSaWNrIFd1IDxyd3VAY29kZWF1cm9y
YS5vcmc+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBSaWNrIFd1IDxyd3VAY29kZWF1cm9yYS5vcmc+Cj4+
PiBTaWduZWQtb2ZmLWJ5OiBMZWkgV2FuZyA8bGVpd2FAY29kZWF1cm9yYS5vcmc+Cj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBTb3dtaXlhIFNyZWUgRWxhdmFsYWdhbiA8c3NyZWVlbGFAY29kZWF1cm9yYS5v
cmc+Cj4+Cj4+IEZhaWxzIHRvIGJ1aWxkIG9uIEdDQyA4LjEuIERpZCB5b3UgdGVzdCB0aGlzPwo+
Pgo+PiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9pbmNsdWRlL2FzbS1nZW5lcmljL2J1Zy5oOjUs
Cj4+ICAgICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gveDg2L2luY2x1ZGUvYXNtL2J1Zy5oOjgz
LAo+PiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2J1Zy5oOjUsCj4+ICAg
ICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbmV0L21hYzgwMjExLmg6MTYsCj4+ICAgICAg
ICAgICAgICAgICAgZnJvbSBkcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL21hYy5oOjEw
LAo+PiAgICAgICAgICAgICAgICAgIGZyb20gZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEw
ay9tYWMuYzo4Ogo+PiBJbiBmdW5jdGlvbiAnYXRoMTBrX3BlZXJfYXNzb2NfaF92aHQnLAo+PiAg
ICAgaW5saW5lZCBmcm9tICdhdGgxMGtfcGVlcl9hc3NvY19wcmVwYXJlJyBhdAo+PiBkcml2ZXJz
L25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL21hYy5jOjI3OTA6MjoKPj4gLi9pbmNsdWRlL2xpbnV4
L2NvbXBpbGVyLmg6MzUwOjM4OiBlcnJvcjogY2FsbCB0bwo+PiAnX19jb21waWxldGltZV9hc3Nl
cnRfMjYzMScgZGVjbGFyZWQgd2l0aCBhdHRyaWJ1dGUgZXJyb3I6CgpbLi4uXQoKPiBJIGNoZWNr
ZWQgdGhlIGJ1aWxkLiBCdWlsZCB3YXMgc3VjY2Vzc2Z1bCB3aXRoIEdDQyB2ZXJzaW9uIDQuOC4K
PiBXaWxsIGZpeCB0aGUgZXJyb3IgYW5kIHVwZGF0ZSB0aGUgcGF0Y2guCgpHcmVhdCwgdGhhbmtz
LiBIZXJlJ3MgaG93IEkgaW5zdGFsbGVkIEdDQyA4LjEgZnJvbSBjcm9zc3Rvb2w6CgpsaXN0aW5n
czogaHR0cHM6Ly93d3cua2VybmVsLm9yZy9wdWIvdG9vbHMvY3Jvc3N0b29sLwoKd2dldCBodHRw
czovL3d3dy5rZXJuZWwub3JnL3B1Yi90b29scy9jcm9zc3Rvb2wvZmlsZXMvYmluL3g4Nl82NC84
LjEuMC94ODZfNjQtZ2NjLTguMS4wLW5vbGliYy14ODZfNjQtbGludXgudGFyLnh6CnB1c2hkIC9v
cHQvY3Jvc3MvCnRhciAteGYgfi90bXAvY3Jvc3N0b29sL3g4Nl82NC1nY2MtOC4xLjAtbm9saWJj
LXg4Nl82NC1saW51eC50YXIueHoKCkluIHRvcCBsZXZlbCBjcmVhdGUgR05VTWFrZWZpbGU6CgpD
Uk9TU19DT01QSUxFPS9vcHQvY3Jvc3MvZ2NjLTguMS4wLW5vbGliYy94ODZfNjQtbGludXgvYmlu
L3g4Nl82NC1saW51eC0KaW5jbHVkZSBNYWtlZmlsZQoKLS0gCmh0dHBzOi8vd2lyZWxlc3Mud2lr
aS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0aW5ncGF0Y2hl
cwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBr
IG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
