Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B9DB613E
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 12:16:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ffy2spGQr2zsYISiTZGDDy1njzFxXsVyXZiH0yojUg0=; b=DaPK3mU3PNhOA+wvm0pXC+2fe
	neBHehqnmPGmlm6++NTVA7hl/7H85HkUwLATPyvB0I5HMeWJ8ZHhW5IIXhAmFm/bHC6ytxNpdIIik
	iM3d5fTjMeosxY1lCmIuQ2UIX6zJ8+sz9Vw3KFQrtM2sAn043ylYpQbX/JNsuj1n28dORRBCCE7cZ
	aMe45uwnXqK9+8NRJN3XxmoXNs+1/+n2+eLRa821L7gSkc3TOYYByUTydxQUWT+8TdfauKR4/Ymcb
	aleVLMMcGzzn10ZBCn0DGWDZ3CsBI1BZpWy8WEadHswzRehJ8pB/uTyYLyMBSn81g+Sd7Aofiq7FO
	D+Yt3qy9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAX0v-0006w6-1N; Wed, 18 Sep 2019 10:16:45 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAX0q-0006vi-F7
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 10:16:41 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0783060A43; Wed, 18 Sep 2019 10:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568801800;
 bh=zZmSMI9xJbFedwUxpMliYWUAfGPkhLOmdt4pFKZAJeg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ln3ChGBj2vvdN3BKlRZ7/c0GVur3IIRWKbDiG/bQHD8aonpg3mfuKd6SBzHofhJ7Q
 xEcfZfE5GAoCCd/MjsVtWl+fEna6bLC0DCF3j+a+jNngHmzafeaZ5cvs8zBmhuudgB
 g3bcvwBhl/0F9ffdJ0T2UeLBaKVH3wYi/u2W1PD8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id E481E6034D;
 Wed, 18 Sep 2019 10:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568801799;
 bh=zZmSMI9xJbFedwUxpMliYWUAfGPkhLOmdt4pFKZAJeg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mHr/+189qXAkrwWGg04pq3DVoPsYsWumJtPmZb2BxIrkX6HDMbnDwZE4zkOq8SYAO
 bR+MxD8tXP/HyFD5eSDKMGrLEvC9cLPO7I6Cx4eoc/voflx/wf1xl8PYFoR+Wp4BJU
 DAVJ43xoBwxSiTbCqUsMpLUa+qYj3nGWBGBkSinw=
MIME-Version: 1.0
Date: Wed, 18 Sep 2019 18:16:38 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH 4/4] mac80211: Sync airtime weight sum with per AC synced
 sta airtime weight together
In-Reply-To: <87impqipl7.fsf@toke.dk>
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-4-git-send-email-yiboz@codeaurora.org>
 <87impqipl7.fsf@toke.dk>
Message-ID: <dad15b9a52a4e136fd3b4f42c2c5b818@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_031640_544957_E0678F05 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gMjAxOS0wOS0xOCAwNToyNCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IFlp
Ym8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPiAKPj4gR2xvYmFsIGFpcnRp
bWUgd2VpZ2h0IHN1bSBpcyB1cGRhdGVkIG9ubHkgd2hlbiB0eHEgaXMgYWRkZWQvcmVtb3ZlZAo+
PiBmcm9tIHJidHJlZS4gSWYgdXBwZXIgbGF5ZXIgY29uZmlndXJlcyBzdGEgd2VpZ2h0IGR1cmlu
ZyBoaWdoIGxvYWQsCj4+IGFpcnRpbWUgd2VpZ2h0IHN1bSB3aWxsIG5vdCBiZSB1cGRhdGVkIHNp
bmNlIHR4cSBpcyBtb3N0IGxpa2VseSBvbiB0aGUKPj4gdHJlZS4gSXQgY291bGQgYSBsaXR0bGUg
bGF0ZSBmb3IgdXBwZXIgbGF5ZXIgdG8gcmVjb25maWd1cmUgc3RhIHdlaWdodAo+PiB3aGVuIHR4
cSBpcyBhbHJlYWR5IGluIHRoZSByYnRyZWUuIEFuZCB0aHVzLCBpbmNvcnJlY3QgYWlydGltZSB3
ZWlnaHQgCj4+IHN1bQo+PiB3aWxsIGxlYWQgdG8gaW5jb3JyZWN0IGdsb2JhbCB2aXJ0dWFsIHRp
bWUgY2FsY3VsYXRpb24gYXMgd2VsbCBhcyAKPj4gZ2xvYmFsCj4+IGFpcnRpbWUgd2VpZ2h0IHN1
bSBvdmVyZmxvdyBvZiBhaXJ0aW1lIHdlaWdodCBzdW0gZHVyaW5nIHR4cSByZW1vdmVkLgo+PiAK
Pj4gSGVuY2UsIG5lZWQgdG8gdXBkYXRlIGFpcnRpbWUgd2VpZ2h0IHN1bSB1cG9uIHJlY2Vpdmlu
ZyBldmVudCBmb3IKPj4gY29uZmlndXJpbmcgc3RhIHdlaWdodCBvbmNlIHN0YSdzIHR4cSBpcyBv
biB0aGUgcmJ0cmVlLgo+PiAKPj4gQmVzaWRlcywgaWYgYWlydGltZSB3ZWlnaHQgc3VtIG9mIEFD
cyBhbmQgc3RhIHdlaWdodCBpcyBzeW5jZWQgdW5kZXIgCj4+IHRoZQo+PiBzYW1lIHBlciBBQyBs
b2NrIHByb3RlY3Rpb24sIHRoZXJlIGNhbiBiZSBhIHZlcnkgc2hvcnQgd2luZG93IGNhdXNpbmcK
Pj4gaW5jb3JyY3QgYWlydGltZSB3ZWlnaHQgc3VtIGNhbGN1bGF0aW9uIGFzIGJlbG93Ogo+PiAK
Pj4gICAgIGFjdGl2ZV90eHFfbG9ja19WTyAgICAgICAgICAgICAgICAgICAgICAgICAgLgo+PiAg
ICAgVk8gd2VpZ2h0IHN1bSBpcyBzeW5jZAkJCS4KPj4gICAgIHN0YSBhaXJ0aW1lIHdlaWdodCBz
dW0gaXMgc3luY2VkCQkuCj4+ICAgICBhY3RpdmVfdHhxX3VubG9ja19WTwkJCS4KPj4gICAgIC4J
CQkJCQkuCj4+ICAgICBhY3RpdmVfdHhxX2xvY2tfVkkgICAgCQkJLgo+PiAgICAgVkkgd2VpZ2h0
IHN1bSBpcyBzeW5jZAkJCS4KPj4gICAgIHN0YSBhaXJ0aW1lIHdlaWdodCBzdW0JCWFjdGl2ZV90
eHFfbG9ja19CRQo+PiAgICAgYWN0aXZlX3R4cV91bmxvY2tfVkkJICAgICAgUmVtb3ZlIHR4cSBh
bmQgdGh1cyBzdW0KPj4gICAgIC4JCQkJICAgICAgaXMgY2FsY3VsYXRlZCB3aXRoIHN5bmNlZAo+
PiAgICAgLgkJCQkgICAgICBzdGEgYWlydGltZSB3ZWlnaHQKPj4gICAgIC4JCQkJCWFjdGl2ZV90
eHFfdW5sb2NrX0JFCj4+IAo+PiBTbyBpbnRyb2R1Y2UgYSBwZXIgYWMgc3luY2VkIHN0YXRpb24g
YWlydGltZSB3ZWlnaHQgc3luY2VkIHdpdGggcGVyCj4+IEFDIHN5bmNlZCB3ZWlnaHQgc3VtIHRv
Z2V0aGVyLiBBbmQgdGhlIHBlci1BQyBzdGF0aW9uIGFpcnRpbWUgd2VpZ2h0Cj4+IGlzIHVzZWQg
dG8gY2FsY3VsYXRlIHdlaWdodCBzdW0uCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBZaWJvIFpoYW8g
PHlpYm96QGNvZGVhdXJvcmEub3JnPgo+PiAtLS0KPj4gIG5ldC9tYWM4MDIxMS9jZmcuYyAgICAg
IHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4+ICBuZXQvbWFjODAyMTEvc3RhX2lu
Zm8uYyB8ICA2ICsrKystLQo+PiAgbmV0L21hYzgwMjExL3N0YV9pbmZvLmggfCAgMyArKysKPj4g
IG5ldC9tYWM4MDIxMS90eC5jICAgICAgIHwgIDQgKystLQo+PiAgNCBmaWxlcyBjaGFuZ2VkLCAz
NCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+PiAKPj4gZGlmZiAtLWdpdCBhL25ldC9t
YWM4MDIxMS9jZmcuYyBiL25ldC9tYWM4MDIxMS9jZmcuYwo+PiBpbmRleCBkNjVhYTAxLi40YjQy
MGJiIDEwMDY0NAo+PiAtLS0gYS9uZXQvbWFjODAyMTEvY2ZnLmMKPj4gKysrIGIvbmV0L21hYzgw
MjExL2NmZy5jCj4+IEBAIC0xMjg0LDcgKzEyODQsOCBAQCBzdGF0aWMgaW50IHN0YV9hcHBseV9w
YXJhbWV0ZXJzKHN0cnVjdCAKPj4gaWVlZTgwMjExX2xvY2FsICpsb2NhbCwKPj4gIAlpbnQgcmV0
ID0gMDsKPj4gIAlzdHJ1Y3QgaWVlZTgwMjExX3N1cHBvcnRlZF9iYW5kICpzYmFuZDsKPj4gIAlz
dHJ1Y3QgaWVlZTgwMjExX3N1Yl9pZl9kYXRhICpzZGF0YSA9IHN0YS0+c2RhdGE7Cj4+IC0JdTMy
IG1hc2ssIHNldDsKPj4gKwl1MzIgbWFzaywgc2V0LCB0aWQsIGFjOwo+PiArCXN0cnVjdCB0eHFf
aW5mbyAqdHhxaTsKPj4gCj4+ICAJc2JhbmQgPSBpZWVlODAyMTFfZ2V0X3NiYW5kKHNkYXRhKTsK
Pj4gIAlpZiAoIXNiYW5kKQo+PiBAQCAtMTQ1Miw4ICsxNDUzLDMwIEBAIHN0YXRpYyBpbnQgc3Rh
X2FwcGx5X3BhcmFtZXRlcnMoc3RydWN0IAo+PiBpZWVlODAyMTFfbG9jYWwgKmxvY2FsLAo+PiAg
CWlmIChpZWVlODAyMTFfdmlmX2lzX21lc2goJnNkYXRhLT52aWYpKQo+PiAgCQlzdGFfYXBwbHlf
bWVzaF9wYXJhbXMobG9jYWwsIHN0YSwgcGFyYW1zKTsKPj4gCj4+IC0JaWYgKHBhcmFtcy0+YWly
dGltZV93ZWlnaHQpCj4+ICsJaWYgKHBhcmFtcy0+YWlydGltZV93ZWlnaHQgJiYKPj4gKwkgICAg
cGFyYW1zLT5haXJ0aW1lX3dlaWdodCAhPSBzdGEtPmFpcnRpbWVfd2VpZ2h0KSB7Cj4+ICsJCWZv
ciAoYWMgPSAwOyBhYyA8IElFRUU4MDIxMV9OVU1fQUNTOyBhYysrKSB7Cj4+ICsJCQlzcGluX2xv
Y2tfYmgoJmxvY2FsLT5hY3RpdmVfdHhxX2xvY2tbYWNdKTsKPj4gKwkJCWZvciAodGlkID0gMDsg
dGlkIDwgSUVFRTgwMjExX05VTV9USURTICsgMTsgdGlkKyspIHsKPj4gKwkJCQlpZiAoIXN0YS0+
c3RhLnR4cVt0aWRdIHx8Cj4+ICsJCQkJICAgIGFjICE9IGllZWU4MDIxMV9hY19mcm9tX3RpZCh0
aWQpKQo+PiArCQkJCQljb250aW51ZTsKPj4gKwo+PiArCQkJCXN0YS0+YWlydGltZV93ZWlnaHRf
c3luY2VkW2FjXSA9Cj4+ICsJCQkJCQkJcGFyYW1zLT5haXJ0aW1lX3dlaWdodDsKPj4gKwo+PiAr
CQkJCXR4cWkgPSB0b190eHFfaW5mbyhzdGEtPnN0YS50eHFbdGlkXSk7Cj4+ICsJCQkJaWYgKFJC
X0VNUFRZX05PREUoJnR4cWktPnNjaGVkdWxlX29yZGVyKSkKPj4gKwkJCQkJY29udGludWU7Cj4+
ICsKPj4gKwkJCQlsb2NhbC0+YWlydGltZV93ZWlnaHRfc3VtW2FjXSA9IGxvY2FsLT5haXJ0aW1l
X3dlaWdodF9zdW1bYWNdICsKPj4gKwkJCQkJCQkJcGFyYW1zLT5haXJ0aW1lX3dlaWdodCAtCj4+
ICsJCQkJCQkJCXN0YS0+YWlydGltZV93ZWlnaHQ7Cj4+ICsJCQl9Cj4+ICsJCQlzcGluX3VubG9j
a19iaCgmbG9jYWwtPmFjdGl2ZV90eHFfbG9ja1thY10pOwo+PiArCQl9Cj4+ICAJCXN0YS0+YWly
dGltZV93ZWlnaHQgPSBwYXJhbXMtPmFpcnRpbWVfd2VpZ2h0Owo+IAo+IFdpdGggdGhpcywgYWly
dGltZV93ZWlnaHQgaXMgYmFzaWNhbGx5IG9ubHkgdXNlZCB0byByZXR1cm4gdG8gYW5kIGZyb20K
PiB1c2Vyc3BhY2UsIHJpZ2h0PyBJLmUuLCBhZnRlciB0aGUgYWJvdmUgbG9vcCBoYXMgcnVuLCBp
dCB3aWxsIG1hdGNoIHRoZQo+IGNvbnRlbnRzIG9mIGFpcnRpbWVfd2VpZ2h0X3N5bmNlZDsgc28g
d2h5IG5vdCBqdXN0IHR1cm4gYWlydGltZV93ZWlnaHQKPiBpbnRvICBhIHBlci1hYyBhcnJheT8g
WW91IGNvdWxkIGp1c3QgdXNlIGFpcnRpbWVfd2VpZ2h0WzBdIGFzIHRoZSB2YWx1ZQo+IHRvIHJl
dHVybiB0byB1c2Vyc3BhY2UuLi4KWWVzLCBJIGFsc28gZmVlbCBpdCBpcyBhIGxpdHRsZSB3ZWly
ZCB0byBrZWVwIGJvdGggb2YgdGhlbS4gSSBhbSBmaW5lIAp3aXRoIHN1Z2dlc3Rpb24uCgo+IAo+
IC1Ub2tlCgotLSAKWWlibwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
