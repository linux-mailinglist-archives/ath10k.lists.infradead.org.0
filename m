Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8B5BC169
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 07:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VBQL1a8hK57gI+zOWFSX+fisyIotK0H7lvYVAKR3eAo=; b=HqQgJ0Sytag56A
	zQ2cy0uvLFkmbDsRH9W2Ityy/VV5KdQy7diDjPaC7lGx/tgWnuohknLGWw/W/QLelXNeJ7sQe0+Ns
	moE8G7PpYqPWDpfhECqsstU9qPwVqZ1fEL9WwA0oNdaE21NyZSzuiuzGlH27z5+sxoPQZ3Q7qEqXu
	XyFMzGukERbGFbsrkxJYVuqj8R2xjbUEmf/X8zOsr38t2LPw+/KI638yw5OytrWVr58cWC6BYIlnC
	qINEQintnZwhehX9kISD07TZsF0m3TqUmac9ObAMqQC6pR5zzrUImXB2QH/Bl9yl4TgCfa1UfNA/Q
	gTuk/3W30rdZsci+FIMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCdP9-0005u7-AZ; Tue, 24 Sep 2019 05:30:27 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCdP5-0005tn-Vx
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 05:30:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9A7A460397; Tue, 24 Sep 2019 05:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569303023;
 bh=SKpoTL5qdqpCZE8jfMpeNULCFOVTf1yiWa2F+YGyiUY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=i3ZY2OYdN2lGQe+y7MbsWqxJOYxpD0Ec7VitiyHqBIquXU/qK2wNGgUI6nAbehWVB
 NT80mtpExC9mph25W5QYL5vF+AJoUCoTtraD+lWUtAgkHPWrV9rjMhnlG2gfZsBzbu
 d+0509hQHGcuv3BAtAcFNk56bfcb9XVsHJDcs4yw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-106-186.rev.dnainternet.fi
 [37.136.106.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 416EE60240;
 Tue, 24 Sep 2019 05:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569303023;
 bh=SKpoTL5qdqpCZE8jfMpeNULCFOVTf1yiWa2F+YGyiUY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=i3ZY2OYdN2lGQe+y7MbsWqxJOYxpD0Ec7VitiyHqBIquXU/qK2wNGgUI6nAbehWVB
 NT80mtpExC9mph25W5QYL5vF+AJoUCoTtraD+lWUtAgkHPWrV9rjMhnlG2gfZsBzbu
 d+0509hQHGcuv3BAtAcFNk56bfcb9XVsHJDcs4yw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 416EE60240
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Tomislav =?utf-8?Q?Po=C5=BEega?= <pozega.tomislav@gmail.com>
Subject: Re: [PATCH 5/5] ath10k: pull_svc_rdy code-style fix
References: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
 <1569268165-1639-5-git-send-email-pozega.tomislav@gmail.com>
Date: Tue, 24 Sep 2019 08:30:19 +0300
In-Reply-To: <1569268165-1639-5-git-send-email-pozega.tomislav@gmail.com>
 ("Tomislav \=\?utf-8\?Q\?Po\=C5\=BEega\=22's\?\= message of "Mon, 23 Sep 2019
 21:49:25 +0200")
Message-ID: <87d0fq5kic.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_223024_045965_52CAE3CA 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

VG9taXNsYXYgUG/FvmVnYSA8cG96ZWdhLnRvbWlzbGF2QGdtYWlsLmNvbT4gd3JpdGVzOgoKPiBE
cm9wIHVubmVlZGVkIGxpbmVzIGJ5IG1vdmluZyBza2IgZGF0YSBpbiBib3RoIG1haW4gYW5kIDEw
eCBXTUkKPiBwdWxsIHNlcnZpY2UgcmVhZHkgZXZlbnQgb3BlcmF0aW9ucy4KPgo+IFNpZ25lZC1v
ZmYtYnk6IFRvbWlzbGF2IFBvxb5lZ2EgPHBvemVnYS50b21pc2xhdkBnbWFpbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21pLmMgfCAgICA2ICsrLS0tLQo+
ICAxIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9hdGgvYXRoMTBrL3dtaS5jIGIvZHJpdmVy
cy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWkuYwo+IGluZGV4IDU5ZDJkMmEuLjhhYjE3OGMg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYXRoL2F0aDEway93bWkuYwo+ICsr
KyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2F0aC9hdGgxMGsvd21pLmMKPiBAQCAtNTM0NSwxMyAr
NTM0NSwxMiBAQCBzdGF0aWMgaW50IGF0aDEwa193bWlfYWxsb2NfaG9zdF9tZW0oc3RydWN0IGF0
aDEwayAqYXIsIHUzMiByZXFfaWQsCj4gIGF0aDEwa193bWlfbWFpbl9vcF9wdWxsX3N2Y19yZHlf
ZXYoc3RydWN0IGF0aDEwayAqYXIsIHN0cnVjdCBza19idWZmICpza2IsCj4gIAkJCQkgICBzdHJ1
Y3Qgd21pX3N2Y19yZHlfZXZfYXJnICphcmcpCj4gIHsKPiAtCXN0cnVjdCB3bWlfc2VydmljZV9y
ZWFkeV9ldmVudCAqZXY7Cj4gKwlzdHJ1Y3Qgd21pX3NlcnZpY2VfcmVhZHlfZXZlbnQgKmV2ID0g
KHZvaWQgKilza2ItPmRhdGE7Cj4gIAlzaXplX3QgaSwgbjsKPiAgCj4gIAlpZiAoc2tiLT5sZW4g
PCBzaXplb2YoKmV2KSkKPiAgCQlyZXR1cm4gLUVQUk9UTzsKPiAgCj4gLQlldiA9ICh2b2lkICop
c2tiLT5kYXRhOwoKQWN0dWFsbHkgSSBwcmVmZXIgdGhlIG9yaWdpbmFsIHN0eWxlLCBzbyB0aGF0
IHdlIGZpcnN0IGNoZWNrIHRoZSBkYXRhIGluCnNrYiBpcyB2YWxpZCBhbmQgb25seSB0aGVuIGFz
c2lnbiB0aGUgZGF0YSB0byBldi4KCi0tIApLYWxsZSBWYWxvCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0Bs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYXRoMTBrCg==
