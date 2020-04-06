Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522AB19FA14
	for <lists+ath10k@lfdr.de>; Mon,  6 Apr 2020 18:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UEYDdd5771RLZhNzE6zxUe84Gb+vB0awCqSfj1mqGg=; b=TBpLnv4n5njCZE
	QHGWpYvipQP0iJKrJhBmxxebQTJ7ohUqMC9LJLBPEd4Dm1nOYco9D2VIQCQiE0VtS1uJ5XGXIVsmc
	TCMwxGw3r9RejFmEZ6PpF7p2HklHtmhRj0JOQ1b3seFbO2tiG+9/ikYCWgjnradesSdvY5tpCoLZY
	8SU0Zi57QPMxcht6MU12kwva0Y86bTy08Pa+vBRrINDw2NFBVEQewd+xh5J26OjjZ6rw2lyhDT9YK
	bnheH+JH8wHU7HVJIyYlrfEG2yN9ankRv6r15Vkl5lVvYqRSiCMFnrCoIiwQYHA/tQjuN2CzLlm6b
	SFz3w7LI0PPsHPCyZGyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUZS-0002sV-Gw; Mon, 06 Apr 2020 16:25:58 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUZO-0002rC-1W
 for ath10k@lists.infradead.org; Mon, 06 Apr 2020 16:25:56 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586190354; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=3GqqMefz6xkh7pZzhl1Z381IcHiOKqY0rOLB278udJM=;
 b=AlLgMaaSe+zM0McL/JBJ4mR0HvnA9pdWV0wUS5xw2q/3vNJNevvbH+i7HWy9LMnK8uejOV+5
 LHOLh7u2SNf5mHBeI4CYTM4AQUsJdYjETuLPhgjhDcnCO0/kSz9ksKZDtGauW14uz22QFpDM
 RCMjV3vSBe4MYrFXkF2Xg7Ir6MA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8b580c.7f405a8fd378-smtp-out-n04;
 Mon, 06 Apr 2020 16:25:48 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4EF63C433BA; Mon,  6 Apr 2020 16:25:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3D833C433D2;
 Mon,  6 Apr 2020 16:25:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3D833C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2 1/2] ath10k: enable VHT160 and VHT80+80 modes
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1585574792-719-1-git-send-email-ssreeela@codeaurora.org>
References: <1585574792-719-1-git-send-email-ssreeela@codeaurora.org>
To: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200406162548.4EF63C433BA@smtp.codeaurora.org>
Date: Mon,  6 Apr 2020 16:25:48 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_092554_876460_CA462BB6 
X-CRM114-Status: UNSURE (   8.76  )
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
Cc: Lei Wang <leiwa@codeaurora.org>,
 Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>,
 Rick Wu <rwu@codeaurora.org>, linux-wireless@vger.kernel.org,
 Sebastian Gottschall <s.gottschall@dd-wrt.com>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

U293bWl5YSBTcmVlIEVsYXZhbGFnYW4gPHNzcmVlZWxhQGNvZGVhdXJvcmEub3JnPiB3cm90ZToK
Cj4gU2V0IHJpZ2h0IGNoYW5uZWwgZnJlcXVlbmNpZXMgaW4gVkhUMTYwIG1vZGUgYWNjb3JkaW5n
IHRvIHRoZSBWSFQxNjAKPiBpbnRlcm9wZXJhYmlsaXR5IHdvcmthcm91bmQgYWRkZWQgYXMgcGFy
dCBvZiBJRUVFIFN0ZCA4MDIuMTHihKItMjAxNiBpbgo+ICJUYWJsZSA5LTI1MuKAlFZIVCBPcGVy
YXRpb24gSW5mb3JtYXRpb24gc3ViZmllbGRzIiwgYmFuZF9jZW50ZXJfZnJlcTIKPiBjb3JyZXNw
b25kcyB0byBDQ0ZTMSBpbiBUYWJsZSA5LTI1My4gUHJldmlvdXMgaW1wbGVtZW50YXRpb24KPiAo
YmFuZF9jZW50ZXJfZnJlcTIgPSAwIGZvciBWSFQxNjApIGlzIG9ubHkgZGVwcmVjYXRlZC4KPiAK
PiBFbmFibGUgVkhUODArODAgbW9kZSBhbmQgc2V0IHRoZSBwcm9wZXIgcGVlciBSWCBuc3MgdmFs
dWUgZm9yIFZIVDE2MCBhbmQKPiBWSFQ4MCs4MCBtb2RlLgo+IAo+IEJhc2VkIG9uIHBhdGNoZXMg
YnkgU2ViYXN0aWFuIEdvdHRzY2hhbGw6Cj4gCj4gaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci8y
MDE4MDcwNDA5NTQ0NC42NjItMS1zLmdvdHRzY2hhbGxAZGQtd3J0LmNvbQo+IAo+IGh0dHBzOi8v
bGttbC5rZXJuZWwub3JnL3IvMjAxODA3MDQxMjA1MTkuNjQ3OS0xLXMuZ290dHNjaGFsbEBkZC13
cnQuY29tCj4gCj4gVGVzdGVkOiBxY2E5OTg0IHdpdGggZmlybXdhcmUgdmVyIDEwLjQtMy4xMC0w
MDA0Nwo+IAo+IENvLWRldmVsb3BlZC1ieTogU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNj
aGFsbEBkZC13cnQuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBHb3R0c2NoYWxsIDxz
LmdvdHRzY2hhbGxAZGQtd3J0LmNvbT4KPiBDby1kZXZlbG9wZWQtYnk6IFJpY2sgV3UgPHJ3dUBj
b2RlYXVyb3JhLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBSaWNrIFd1IDxyd3VAY29kZWF1cm9yYS5v
cmc+Cj4gU2lnbmVkLW9mZi1ieTogTGVpIFdhbmcgPGxlaXdhQGNvZGVhdXJvcmEub3JnPgo+IFNp
Z25lZC1vZmYtYnk6IFNvd21peWEgU3JlZSBFbGF2YWxhZ2FuIDxzc3JlZWVsYUBjb2RlYXVyb3Jh
Lm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBLYWxsZSBWYWxvIDxrdmFsb0Bjb2RlYXVyb3JhLm9yZz4K
CjIgcGF0Y2hlcyBhcHBsaWVkIHRvIGF0aC1uZXh0IGJyYW5jaCBvZiBhdGguZ2l0LCB0aGFua3Mu
CgozZGIyNDA2NWMyYzggYXRoMTBrOiBlbmFibGUgVkhUMTYwIGFuZCBWSFQ4MCs4MCBtb2Rlcwo3
OTVkZWY4YjE0ZmYgYXRoMTBrOiBlbmFibGUgcmFkYXIgZGV0ZWN0aW9uIGluIHNlY29uZGFyeSBz
ZWdtZW50CgotLSAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTQ2NTUwNS8K
Cmh0dHBzOi8vd2lyZWxlc3Mud2lraS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRh
dGlvbi9zdWJtaXR0aW5ncGF0Y2hlcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
