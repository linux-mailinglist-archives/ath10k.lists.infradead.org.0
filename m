Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE94F11E022
	for <lists+ath10k@lfdr.de>; Fri, 13 Dec 2019 10:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BU2sZNs4zb5kpjQNaUq0PpdyLDBlfjZrcTNk9EkHWYg=; b=qWveNLlvmaX8vc
	K2SPnoLVpbu+bIuaSR2Q+BUDSeMW9gm8tXlDD+XE913/4puQL94w+vXtYfLsy2rKzMtmdpDKYNDOC
	v9PvgK88FPnWXN6C2rABNV0HqJVZyZnqQBmI2wYpr/UttpCrQz6TRcToGipe+6tLS/tpHNkIwHZmK
	RJgPG/eCjQuQ3YOISPfwbsuxBFpvXddjq/vEgm/MggS+cdZemVW6o8ZTH7mgjOUnRo3kSyypX/mKp
	WKnmJp6jyeZnyzreNOKH4pQyDVsQsMb6xpFXnwcvPgxfA3Hsz0Ad63VQg8pmA7/JRKpG9BfOPiQd/
	pKhJmAyTkGyiMydxLKlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifgrd-00051N-Mn; Fri, 13 Dec 2019 09:03:57 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifgrZ-000512-Gx
 for ath10k@lists.infradead.org; Fri, 13 Dec 2019 09:03:54 +0000
Received: by mail-ot1-x341.google.com with SMTP id g18so5537131otj.13
 for <ath10k@lists.infradead.org>; Fri, 13 Dec 2019 01:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ka38vJIL+Q5x82lOwfqXtKAirFyyCs3SbFGLKj42N0A=;
 b=mY7WoL4IPn5T4tOU3CrFn4PCXyZ0shLmFr+ocJtY9JHDAZvVo1apCd1xuH/ZoFvsjA
 tl54dn3A5w368QAr/KcUs7xAILtR5xuQaOwjmvoh6gbG1bIt0uhvlKhYO7CQbp/fP4Kc
 8Oed+P4iT5g2JZvkaptIR6Y8kbWqcGqmrtQ5zI0Fu0C2FypDwHJv0l+HlIm9/Q0t2Zwy
 +hSXoejWdiEYndhknuQ0vtgfO6ytxMeZrBFeVSUkSxxabLvEmmAFebVws+iow5TzVVcr
 DxXhDtiz5JZJUOFXcS+T/dnK1Lsrtf3Lu89BpPYGY/KAZPQauWJ9IN934srqvVhyX33H
 8niQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ka38vJIL+Q5x82lOwfqXtKAirFyyCs3SbFGLKj42N0A=;
 b=hmdaBkrtAO1Vv6Kjb4JjrLviBsAypP4hG/479GT23+7M/nNptrUtUFD14ZXKmgRBP9
 7E3qAr1ul54I0qqrhc/npdvPUPEs3R3EFBsEY9uchwbN5yypT7PxQw1My87x8V7gM7Rr
 3Agk6ImJchjnmbYqzkWrh9kkVwyZjiNbDnVm5gSsqa0KJQdlla+RQtdfn1VpxSkRg3of
 TdfpZ+mbJVDmFCq4CpqvRaEzR+Si3oTIE879DBaC8iL7prs2VWnmhhv6HH0EnbsUmU3e
 +FDhj5HDB+Dznpm1s9E1Zy2+ZmCESDtcp6fNl2mxIk3zjTzTWvdf9Hhv2xPa503UpAj6
 zPxQ==
X-Gm-Message-State: APjAAAXG5vqQ0bis3cWeiA23p9Fg30aiWxZdrkQV5THoI8Cx4jZZXZo4
 LT4K8yrHxbjCCTC24IAoATCuCaD4y33JkUCUMmE=
X-Google-Smtp-Source: APXvYqzsrWgrHR4MSN/u2QtdXko80fEsIRTnpa3ApeVVUUCzzCrxs3uPT276sQdMiDNdLxSjzO7sGYV+5ZZouB1eaqQ=
X-Received: by 2002:a05:6830:10c9:: with SMTP id
 z9mr13440223oto.200.1576227832064; 
 Fri, 13 Dec 2019 01:03:52 -0800 (PST)
MIME-Version: 1.0
References: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
In-Reply-To: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
From: Justin Capella <justincapella@gmail.com>
Date: Fri, 13 Dec 2019 01:03:41 -0800
Message-ID: <CAMrEMU_w7dj5RVNmkVoCjU1o_FEEXn9oA7XCBwFQ+j2EQkck4Q@mail.gmail.com>
Subject: Re: [PATCH V4 0/4] Enable virtual time-based airtime scheduler
 support on ath10k
To: Yibo Zhao <yiboz@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_010353_587350_A8A3F8D5 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

V291bGQgaXQgbWFrZSBzZW5zZSB0byBjb25zaWRlciBza2ItPnByaW9yaXR5IC8gUW9TIGluIHRo
ZSBBY2Nlc3MKQ2xhc3NpZmllciBzZWxlY3Rpb24/CgpPbiBUaHUsIERlYyAxMiwgMjAxOSBhdCAx
MToyNiBQTSBZaWJvIFpoYW8gPHlpYm96QGNvZGVhdXJvcmEub3JnPiB3cm90ZToKPgo+IFRoaXMg
c2VyaWVzIGZpeCBzb21lIGlzc3VlcyB3aGVuIGVuYWJsaW5nIHZpcnR1YWwgdGltZS1iYXNlZCBh
aXJ0aW1lIHNjaGVkdWxlciBvbiBhdGgxMGsuCj4KPiBDaGFuZ2VzIHNpbmNlIHYzOgo+ICAgQ2hh
bmdlIHNjaGVkdWxlX3BvcyB0byBwcmV2aW91cyBub2RlIG9uY2UgaXQgaGFzIGNoYW5jZSB0byBi
ZSBtb3ZlZC9yZW1vdmVkCj4gICBmcm9tIGN1cnJlbnQgcG9zaXRpb24gaW4gdGhlIHRyZWUgaW4g
bG9vcCBzY2VuYXJpbyBhbmQgYnJpbmcgYmFjayBzY2hlZHVsZV9yb3VuZAo+ICAgaW4gY2FzZSB0
aGF0IHNhbWUgbm9kZSBpcyB0byBiZSBzY2hlZHVsZWQgYWdhaW4gaW4gdGhlIG1lYW4gdGltZS4K
Pgo+ICAgSW5jcmVhc2UgYWlydGltZSBncmFjZSBwZXJpb2QgdG8gMjAwMCB1cyBpbiB0aGUgZmly
c3QgcGF0Y2guCj4KPiAgIFB1dCBwZXItQUMgc3RhdGlvbiB3ZWlnaHQgY2hlY2tpbmcgaW4gaXRz
IGxvY2sgZHVyaW5nIGNvbmZpZ3VyYXRpb24gZnJvbSBhcHBsaWNhdGlvbi4KPgo+IENoYW5nZXMg
c2luY2UgdjI6Cj4gICBDaGFuZ2VzIHN0YXRpb24gYWlydGltZSB3ZWlnaHQgdG8gYmUgcGVyLUFD
IGJhc2VkIHRvIGF2b2lkIHN5bmMgaXNzdWUKPiAgIFJlbW92ZSBDby1kZXZlbG9wZWQtYnkgYW5k
IFRva2UncyBzaWduLW9mZiBhcyBUb2tlIHN1Z2dlc3RlZAo+Cj4gQ2hhbmdlcyBzaW5jZSB2MToK
PiAgIE1vZGlmeSB0aGUgYXV0aG9yIG9mIENvLWRldmVsb3BlZC1ieSBhcyBKb2hhbm5lcyBzdWdn
ZXN0ZWQKPgo+IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiAoMSk6Cj4gICBtYWM4MDIxMTogU3dp
dGNoIHRvIGEgdmlydHVhbCB0aW1lLWJhc2VkIGFpcnRpbWUgc2NoZWR1bGVyCj4KPiBZaWJvIFpo
YW8gKDMpOgo+ICAgbWFjODAyMTE6IGZpeCBpc3N1ZSBpbiBsb29wIHNjZW5hcmlvCj4gICBtYWM4
MDIxMTogZml4IGxvdyB0aHJvdWdocHV0IGluIG11bHRpLWNsaWVudHMgc2l0dWF0aW9uCj4gICBt
YWM4MDIxMTogU3luYyBhaXJ0aW1lIHdlaWdodCBzdW0gd2l0aCBwZXIgQUMgc3luY2VkIHN0YSBh
aXJ0aW1lCj4gICAgIHdlaWdodCB0b2dldGhlcgo+Cj4gIG5ldC9tYWM4MDIxMS9jZmcuYyAgICAg
ICAgIHwgIDI5ICsrKysrLQo+ICBuZXQvbWFjODAyMTEvZGVidWdmcy5jICAgICB8ICA0OCArKysr
KysrKystCj4gIG5ldC9tYWM4MDIxMS9kZWJ1Z2ZzX3N0YS5jIHwgIDE4ICsrLS0KPiAgbmV0L21h
YzgwMjExL2llZWU4MDIxMV9pLmggfCAgMTIgKystCj4gIG5ldC9tYWM4MDIxMS9tYWluLmMgICAg
ICAgIHwgICAyICstCj4gIG5ldC9tYWM4MDIxMS9zdGFfaW5mby5jICAgIHwgIDI1ICsrKy0tCj4g
IG5ldC9tYWM4MDIxMS9zdGFfaW5mby5oICAgIHwgICA4ICstCj4gIG5ldC9tYWM4MDIxMS90eC5j
ICAgICAgICAgIHwgMjM0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLQo+ICA4IGZpbGVzIGNoYW5nZWQsIDI3OCBpbnNlcnRpb25zKCspLCA5OCBkZWxldGlvbnMo
LSkKPgo+IC0tCj4gMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
