Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F315BC07A
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 04:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bV+a+q0Pjzx+tR4x6gVzTZRNMSyADsOGix8fNb8+bgA=; b=FKaPx/yP8JKNnjWW8nrO6+t3W
	b8MTYgeaXhvy2oo8J6+8CYjK/MmXLF4HxRurkcuJavfMxd8uu6e8MN33v+W/i1m/NpeXmjKTliWxx
	gq4Mj/OZbRzRZIDIDuda2IU7Kja0BPUSJPRn/E8edNaBPfUhum0vJTXvoXmtqCLJ9I8YYKkd+kWZC
	nRTZImm4eK4bRR/uymtTpNpLiGEILx8cvNNLXyzIx5AbaTAXMzJ+tRIxYaMerVqR17imIlU8J3/e2
	CY9UkBKsjNeO9LcZAHdF5iO4Zmi/KYMCyQy1jaeblU+HU/RTp7mSa2enYPF1aJ981Cg2KwHpy06bT
	aMEwmVsRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCazT-0006sD-E3; Tue, 24 Sep 2019 02:55:47 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCazP-0006rv-Pi
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 02:55:45 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 64DB960397; Tue, 24 Sep 2019 02:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569293743;
 bh=MfPnhSxtM0OnJVZW0H9aUW4BawgL6o8WwzQf1XZzdK4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kivjp+SgDUkRBfZ0mAsgM7Vcw4RGX8GSE0doWbtsFtBwQlEaM/yhFm4JQmbZec8/N
 ikPxy7fTqoZHrDBNtMnvjKa02Dz8x43V9KIF1Zw7S/8egEaawj8pQ7SWEgXW3fhDTX
 ozYJNFt47jj6xQqxjCmBzVavG0mcebmoMqRAeGTM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id C34F960240;
 Tue, 24 Sep 2019 02:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569293742;
 bh=MfPnhSxtM0OnJVZW0H9aUW4BawgL6o8WwzQf1XZzdK4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kJvgB5MBU+jLViNDsBn+bJtaFj1ibhJUthOcMVHp8rE+5C2l3HiPY9lL7ohX3YItp
 iza2YeasrWyxwblqYcfYpE71CmlhXsmPNpGIRkeTFakWrQhKKs6dimJvqXmS0bal4O
 bxa9ebrP151wjpvU1vZ+TQrzAz+220jO8H7e3VeE=
MIME-Version: 1.0
Date: Tue, 24 Sep 2019 10:55:42 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH V3 2/4] mac80211: defer txqs removal from rbtree
In-Reply-To: <87ef075lit.fsf@toke.dk>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
 <1569223201-1490-3-git-send-email-yiboz@codeaurora.org>
 <87ef075lit.fsf@toke.dk>
Message-ID: <5dadc4a130c2ba3d6548969f47c5f85c@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_195543_856783_6C732B8B 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0yMyAxODo1NiwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IFlp
Ym8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPiAKPj4gSW4gYSBsb29wIHR4
cXMgZGVxdWV1ZSBzY2VuYXJpbywgaWYgdGhlIGZpcnN0IHR4cSBpbiB0aGUgcmJ0cmVlIGdldHMK
Pj4gcmVtb3ZlZCBmcm9tIHJidHJlZSBpbW1lZGlhdGVseSBpbiB0aGUgaWVlZTgwMjExX3JldHVy
bl90eHEoKSwgdGhlCj4+IGxvb3Agd2lsbCBicmVhayBzb29uIGluIHRoZSBpZWVlODAyMTFfbmV4
dF90eHEoKSBkdWUgdG8gc2NoZWR1bGVfcG9zCj4+IG5vdCBsZWFkaW5nIHRvIHRoZSBzZWNvbmQg
dHhxIGluIHRoZSByYnRyZWUuIFRodXMsIGRlZmVyaW5nIHRoZQo+PiByZW1vdmFsIHJpZ2h0IGJl
Zm9yZSB0aGUgZW5kIG9mIHRoaXMgc2NoZWR1bGUgcm91bmQuCj4gCj4gRGlkbid0IHdlIGFncmVl
IHRoYXQgd2UgY291bGQgZml4IHRoaXMgYnkgbWFraW5nIF9fdW5zY2hlZHVsZV90eHEoKQo+IGF3
YXJlIG9mIHNjaGVkdWxlX3BvcyBpbnN0ZWFkIG9mIHRoaXMgZGVmZXJyZWQgcmVtb3ZhbCBtZWNo
YW5pc20/CgpZZXMsIFYzIGlzIGFjdHVhbGx5IHVzZWQgdG8gdXBkYXRlIHRoZSBjb21taXQgbG9n
IG9mIFtQQVRDSCBWMyAzLzRdIHNvIAp0aGF0IHdlIGNhbiBkaXNjdXNzIGluIHBhcmFsbGVsIHdp
dGggb3RoZXJzLCBhbmQgW1BBVENIIFYzIDQvNF0gZm9yIApkaXNjdXNzaW9uLiBQbGVhc2UgaWdu
b3JlIFtQQVRDSCBWMyAyLzRdLiB3ZSBjYW4ga2VlcCBvdXIgZGlzY3Vzc2lvbiBpbiAKVjIgdW50
aWwgd2UgY29uY2x1ZGUgdGhlIGZpbmFsIG9uZSBhbmQgdGhlbiBhIG5ldyB2ZXJzaW9uIHdpbGwg
YmUgc2VudCAKb3V0IGFsb25nIHdpdGggW21hYzgwMjExOiBTd2l0Y2ggdG8gYSB2aXJ0dWFsIHRp
bWUtYmFzZWQgYWlydGltZSAKc2NoZWR1bGVyXSB3aGljaCBpbmNsdWRlcyB0aGUgcmVkdWNpbmcg
bG9jayBmaXguCgpTb3JyeSBmb3IgdGhlIGNvbmZ1c2lvbiwgOykuCgo+IAo+IC1Ub2tlCgotLSAK
WWlibwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYXRo
MTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
