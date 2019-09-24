Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5DEBC0AA
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 05:19:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UkgoRhIvtVklBTBw9dppKYwJxgvNDm0toTiQG5q/ou8=; b=gEppywSTqdcoeMpK2maPxjt6Q
	aHMTiuDbX0CHTE6MVue5jczeJYPETknQVJZEXSwYdOtN5+vhTpiopQK24vqURD81T7UY6bybi8yIi
	YtbJbslKIVKGiZpbj1GVMBrmu7SPDVGVp+XQUW0UQNr6+OHPEa3T7TexMszt9HEABqQcqc1OgR8MW
	SWRhpl+QELIvgKAnl06N+TtJD4z2+560DoFoSFLFzDL9oobw2WMrDyzbhFBN5Ee6bpsXX9Q7qT0eS
	apvHconrV1yTK55VqOkONMWKFfvsISzbBVaFZ29WE+2r9hUXGRpnPCrKxLhYg8vzXtG+8sxDPwejY
	ttCGGn0aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCbMY-00071U-Hy; Tue, 24 Sep 2019 03:19:38 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCbMU-000718-Dc
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 03:19:35 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 09F5C60265; Tue, 24 Sep 2019 03:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569295174;
 bh=5fHGFSZ09yQayNghU6B++C4ukJVhlxZr4yvdON9mR0w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jp3WoPxLmjAsdajbZxDfA0v6+4Er6F1ILWx8M+pPlnb1EzIOXT5PV0nX4eTR3fwnN
 k4LSaAJmjviD5pVYK/nYwd+JSXbtbInZ+1nhbAxVBjuXUhejKm5CkbK3Ydnq0/PvQ8
 nAztPBOyr68pXQcNEElHMqnzLuj5CNsbxAQ7ZuG0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 98DF1602B8;
 Tue, 24 Sep 2019 03:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569295173;
 bh=5fHGFSZ09yQayNghU6B++C4ukJVhlxZr4yvdON9mR0w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=XskCCl8v1QRH03SoCOUJeSziXe5dZshkHZBq0UD9yYYLcSkzM8+YZBSSvoEkUOnbp
 IJQRojPygEPTvvPYHk1jTLDkBGftVWa+uyGFOmoK+HG3QtoLB4WZuwJRHt+ypPiZ7q
 nsfMk6XToM7bHB7l+MrCD9gnvAwXq+1vtmpBfUoA=
MIME-Version: 1.0
Date: Tue, 24 Sep 2019 11:19:33 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH V3 4/4] mac80211: Sync airtime weight sum with per AC
 synced sta airtime weight together
In-Reply-To: <87blvb5lb9.fsf@toke.dk>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
 <1569223201-1490-5-git-send-email-yiboz@codeaurora.org>
 <87blvb5lb9.fsf@toke.dk>
Message-ID: <ffe79f35d4dcb50aa31dc04035855f79@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_201934_484938_460CBBFE 
X-CRM114-Status: GOOD (  10.05  )
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0yMyAxOTowMCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgoKPj4g
LQlpZiAocGFyYW1zLT5haXJ0aW1lX3dlaWdodCkKPj4gLQkJc3RhLT5haXJ0aW1lX3dlaWdodCA9
IHBhcmFtcy0+YWlydGltZV93ZWlnaHQ7Cj4+ICsJaWYgKHBhcmFtcy0+YWlydGltZV93ZWlnaHQg
JiYKPj4gKwkgICAgcGFyYW1zLT5haXJ0aW1lX3dlaWdodCAhPSBzdGEtPmFpcnRpbWVfd2VpZ2h0
KSB7Cj4gCj4gVGhpcyBjaGVjayBkb2Vzbid0IHdvcmsgSSB0aGluaz8gWW91J3JlIG5vdCB1c2lu
ZyB0aGUgYXJyYXktYmFzZWQKPiBzdGEtPmFpcnRpbWVfd2VpZ2h0W10sIGFuZCB0aGVyZSBhcmUg
bG9ja2luZyBpc3N1ZXMgYnkganVzdCBjaGVja2luZwo+IGxpa2UgdGhpczsgc28gbWF5YmUganVz
dCBrZWVwIHRoZSBpZigpIG9uIHBhcmFtcy0+YWlydGltZV93ZWlnaHQsIGFuZCAKPiBkbwo+IHRo
ZSBjaGVja2luZyBpbnNpZGUgdGhlIGxvb3Agd2hpbGUgaG9sZGluZyB0aGUgbG9jaz8KCkl0IHNo
b3VsZCBiZSBhcnJheS1iYXNlZCBzdGEtPmFpcnRpbWVfd2VpZ2h0W10gYW5kIEkgYW0gbWlzc2lu
ZyB0aGF0IApwYXJ0IGR1cmluZyB0aGUgcG9ydGluZy4gQnV0IHlvdSBhcmUgcmlnaHQgYWJvdXQg
d2Ugc2hvdWxkIGNoZWNrIGl0IAppbnNpZGUgdGhlIGxvb3Agd2l0aCB0aGUgbG9jay4KCj4gCj4g
T3IgY291bGQgd2UganVzdCB0dXJuIHRoZSB3ZWlnaHRzIGludG8gYXRvbWljcyB0byBhdm9pZCB0
aGUgbG9ja2luZwo+IGVudGlyZWx5PwoKQWN0dWFsbHksIHdlIHN0aWxsIG5lZWQgdGhlIGFjdGl2
ZSB0eHEgbG9ja2luZyB0byBtYWtlIHN1cmUgdGhlIHR4cSBpcyAKb24gdGhlIHJidHJlZS4gT3Ro
ZXJ3aXNlLCBubyBuZWVkIHRvIGNoYW5nZSBhaXJ0aW1lIHdlaWdodCBzdW0uCgo+IAo+PiArCQlm
b3IgKGFjID0gMDsgYWMgPCBJRUVFODAyMTFfTlVNX0FDUzsgYWMrKykgewo+PiArCQkJc3Bpbl9s
b2NrX2JoKCZsb2NhbC0+YWN0aXZlX3R4cV9sb2NrW2FjXSk7Cj4+ICsJCQlmb3IgKHRpZCA9IDA7
IHRpZCA8IElFRUU4MDIxMV9OVU1fVElEUyArIDE7IHRpZCsrKSB7Cj4+ICsJCQkJaWYgKCFzdGEt
PnN0YS50eHFbdGlkXSB8fAo+PiArCQkJCSAgICBhYyAhPSBpZWVlODAyMTFfYWNfZnJvbV90aWQo
dGlkKSkKPj4gKwkJCQkJY29udGludWU7Cj4+ICsKPj4gKwkJCQlwcmVfd2VpZ2h0ID0gc3RhLT5h
aXJ0aW1lX3dlaWdodFthY107Cj4+ICsJCQkJc3RhLT5haXJ0aW1lX3dlaWdodFthY10gPQo+PiAr
CQkJCQkJcGFyYW1zLT5haXJ0aW1lX3dlaWdodDsKPj4gKwo+PiArCQkJCXR4cWkgPSB0b190eHFf
aW5mbyhzdGEtPnN0YS50eHFbdGlkXSk7Cj4+ICsJCQkJaWYgKFJCX0VNUFRZX05PREUoJnR4cWkt
PnNjaGVkdWxlX29yZGVyKSkKPj4gKwkJCQkJY29udGludWU7Cj4+ICsKPj4gKwkJCQlsb2NhbC0+
YWlydGltZV93ZWlnaHRfc3VtW2FjXSA9IGxvY2FsLT5haXJ0aW1lX3dlaWdodF9zdW1bYWNdICsK
Pj4gKwkJCQkJCQkJcGFyYW1zLT5haXJ0aW1lX3dlaWdodCAtCj4+ICsJCQkJCQkJCXByZV93ZWln
aHQ7Cj4+ICsJCQl9Cj4+ICsJCQlzcGluX3VubG9ja19iaCgmbG9jYWwtPmFjdGl2ZV90eHFfbG9j
a1thY10pOwo+PiArCQl9Cj4+ICsJfQo+PiAKCgotLSAKWWlibwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2F0aDEwawo=
