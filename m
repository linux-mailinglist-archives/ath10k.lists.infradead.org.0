Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 217ECBC458
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 10:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KbXaez0fXzIsfFYZSROaIN4d9GUcZk6DgxI+SMVAT2c=; b=QxGqxmYbelyw2OgTVxWdxg/Gl
	3zajah/NIMuu+7hzbjQskqScyw0TxB6ICR/h6xScoLXMscvraYlgldsAMp1bvF3uKtuEQBlZtav/A
	rf7bCTz2UjbsSr/Wbn/56wGNn9arqF+vIbfth++Xkd4sgWphQwjQvmk+zw8yrNXGy7KKhhWUvQaCm
	CM2t8O9u2OrDxh9pclfbFJylRT3lAMD8h9J+xPoQIu1t2Kd5eFyq0OWtypUa9reT4ux2BioeRdxVx
	hq0mje3KvMp7gztft4obn9/lcACykChxc/9rnJlQYU4nLhz4R62n9iKolgWCIKsVpe8gR33a0T7Oz
	5pQDufoSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCgeR-0000dQ-Qc; Tue, 24 Sep 2019 08:58:27 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCgeM-0000d4-2n
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 08:58:23 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id AC9486083C; Tue, 24 Sep 2019 08:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569315501;
 bh=+OjAu5LkmUVoBsrucFH48IscYXvzLUSlgsNMMFX+PpU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SWj6swxanwA0PwluKXwYcXYKrfdATjgDZGEuC6i3QDdjFfk3a0BRb5xnQeDQezLvL
 ZIix9512E1iC5bfCu3nKiyQK5onB7Zlb4bnmd3rqvoDAhoWkAEzMGfQRVV4t6H9QCv
 3aUTt8nxvcGl6aOum4Atmc6OAuqd4igI1sgrh8/s=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 5629660256;
 Tue, 24 Sep 2019 08:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569315501;
 bh=+OjAu5LkmUVoBsrucFH48IscYXvzLUSlgsNMMFX+PpU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SWj6swxanwA0PwluKXwYcXYKrfdATjgDZGEuC6i3QDdjFfk3a0BRb5xnQeDQezLvL
 ZIix9512E1iC5bfCu3nKiyQK5onB7Zlb4bnmd3rqvoDAhoWkAEzMGfQRVV4t6H9QCv
 3aUTt8nxvcGl6aOum4Atmc6OAuqd4igI1sgrh8/s=
MIME-Version: 1.0
Date: Tue, 24 Sep 2019 16:58:21 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH V3 3/4] mac80211: fix low throughput in multi-clients
 situation
In-Reply-To: <87d0fq3wqy.fsf@toke.dk>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
 <1569223201-1490-4-git-send-email-yiboz@codeaurora.org>
 <87impj5lkm.fsf@toke.dk> <2aab0bd944ee34751304a5f92b885113@codeaurora.org>
 <87d0fq3wqy.fsf@toke.dk>
Message-ID: <0c58a6be437e5a21c63ad44cc86c317b@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_015822_145979_2AFA711F 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

T24gMjAxOS0wOS0yNCAxNjo0OCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IFlp
Ym8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPiAKPj4+IEkgY2FuIHNlZSB3
aHkgd2UgbmVlZCB0aGUgc2Vjb25kIHBhcnQgKGJhc2ljYWxseSwgdGhpcyBoYXBwZW5zIAo+Pj4g
YmVjYXVzZQo+Pj4gSQo+Pj4gZm9yZ290IHRvIGFkZCBhIGNoZWNrIGZvciAibm8gZWxpZ2libGUg
c3RhdGlvbnMiIGluIG1heV90cmFuc21pdCgpLAo+Pj4gbGlrZQo+Pj4gdGhlIG9uZSBpbiBuZXh0
X3R4cSgpKS4gQW5kIHJvdW5kaW5nIHVwIHRoZSBkaXZpc2lvbiByZXN1bHQgZG9lc24ndAo+Pj4g
aHVydCwgSSBndWVzcy4gQnV0IHdoeSBkb2VzIGl0IGhlbHAgdG8gY2hhbmdlIHRoZSBncmFjZSBw
ZXJpb2QgaWYgCj4+PiB3ZSdyZQo+Pj4gZG9pbmcgYWxsIHRoZSBvdGhlciBzdHVmZj8KPj4gSW4g
bXVsdGktY2xpZW50cyBjYXNlLCBpdCBpcyBwb3NzaWJsZSBhIFRYUSBzb21ldGltZXMgZ2V0cyBk
cmFpbmVkIGR1ZQo+PiB0byBGVyBoYXMgZGVlcCBxdWV1ZSBhbmQgZmV3IHBhY2tldHMgaW4gVFhR
IGF0IHRoYXQgdGltZS4gU28gdGhlIFRYUSAKPj4gaXMKPj4gcmVtb3ZlZCBmcm9tIHRoZSByYnRy
ZWUgYWZ0ZXIgZGVxdWV1aW5nLiBXaGVuIGl0IGlzIGFib3V0IHRvIGFkZGVkIAo+PiBiYWNrCj4+
IHZlcnkgc29vbiBhZnRlciB0aGUgcmVtb3ZhbCwgdGhlIGdfdnQgbWlnaHQgaGF2ZSBnb25lIGEg
bGl0dGxlIGZhciAKPj4gYXdheQo+PiBmcm9tIHN0YSB2dCB3aGVyZSBzeW5jIGlzIG5lZWRlZC4g
V2l0aCB0aGlzIHN5bmMsIHRoZSBzdGF0aW9uIGlzIAo+PiBmb3JjZWQKPj4gdG8gY2F0Y2ggdXAg
d2l0aCB0aGUgZ192dCwgaG93ZXZlciwgaXRzIGNoYW5jZSBmb3IgdHJhbnNtaXNzaW9uIGhhcyAK
Pj4gYmVlbgo+PiByZWR1Y2VkLiBJIHRoaW5rIDUwMHVzIGlzIHF1aXRlIGEgc2hvcnQgcGVyaW9k
IGluIG11bHRpLWNsaWVudHMgY2FzZS4KPiAKPiBUaGF0J3MgYSBnb29kIHBvaW50LCBhY3R1YWxs
eTogSGF2aW5nIHRoZSBncmFjZSBwZXJpb2QgYmUgdG9vIHNtYWxsIAo+IHdpbGwKPiBhbGxvdyBz
dGF0aW9ucyB0aGF0IGxlYXZlIGFuZCByZS1lbnRlciB0aGUgcXVldWUgdG8gInNraXAgYWhlYWQi
IGFuZCAKPiB1c2UKPiBtb3JlIHRoYW4gaXRzIHNoYXJlLiBIb3dldmVyLCBJIHRoaW5rIGl0J3Mg
YSBzZXBhcmF0ZSBpc3N1ZSBmcm9tIHdoYXQKPiB0aGlzIHBhdGNoIGlzIGFib3V0OyBzbyBob3cg
YWJvdXQgSSBqdXN0IGluY3JlYXNlIHRoZSBncmFjZSBwZXJpb2QgaW4KPiB0aGUgbmV4dCB2ZXJz
aW9uIG9mIHRoZSBiYXNlIHBhdGNoPwoKU3VyZSwgbm8gcHJvYmxlbS4gOikKPiAKPiAtVG9rZQoK
LS0gCllpYm8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
