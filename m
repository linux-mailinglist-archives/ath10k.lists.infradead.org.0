Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5916CB6172
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 12:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SlKQ+xH3o8PSKDWFmjVaqru5c84MNNi/OCFkbk8t+1g=; b=J3yMaShDsaXOcTYMy7gjA4p42
	bo5/v9Kz2sa1nem4ktXgpm+RklHu4lJbrVy9mnppwm0wrudKkbThGzYx0r7oWrwj4Mq5YP8LnPPpY
	3J5ehq/kWCDHXBit1TQJJ6bNWmumEGTN1cTD5OKc9f0Tj04rHHiYbw5AmzqryZ7tX+2jPC2rTmfky
	2Ts8daN3tjumB6RcmqwQc9j+HjUZEbjsAXTzPS4UOTKSnpCKg01dbn4pNOJ9/VJDsZCUSMZh88odR
	e6gvVOYq0BbY+pEMPH1J3xtc4Rw9W8l5pzVYNmG5T6e9CY4y8ZJy19IwzVSuZVySMdCYR9YAWUAkF
	rwkKViMJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXDS-0002nI-Lh; Wed, 18 Sep 2019 10:29:42 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXDO-0002n0-5R
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 10:29:39 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DB06D607C3; Wed, 18 Sep 2019 10:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568802577;
 bh=iMRzdh3MbPpyKUh+Jt7/auiQOQSehTSpTQe1gbsmn9Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jOmTwKTbii3xLhSlvFFREFMD/t2/kE0wtn5qSYaGWkXip6qBkXDBkAQ+f4Mg5R9ct
 PiNzJsJQIedHhZqmbq4EcT2WryjZq9nNyJKEel4Di5WOUzzZ/iEgorkckc2N+Gqy7r
 EMRIN1T5saA9s9/iIZrZb4plH1CkGTVKCOYEzYDA=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 6F82B6050D;
 Wed, 18 Sep 2019 10:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568802577;
 bh=iMRzdh3MbPpyKUh+Jt7/auiQOQSehTSpTQe1gbsmn9Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jOmTwKTbii3xLhSlvFFREFMD/t2/kE0wtn5qSYaGWkXip6qBkXDBkAQ+f4Mg5R9ct
 PiNzJsJQIedHhZqmbq4EcT2WryjZq9nNyJKEel4Di5WOUzzZ/iEgorkckc2N+Gqy7r
 EMRIN1T5saA9s9/iIZrZb4plH1CkGTVKCOYEzYDA=
MIME-Version: 1.0
Date: Wed, 18 Sep 2019 18:29:37 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH V2 3/4] mac80211: fix low throughput in multi-clients
 situation
In-Reply-To: <874l19j56n.fsf@toke.dk>
References: <1568800033-17297-1-git-send-email-yiboz@codeaurora.org>
 <1568800033-17297-3-git-send-email-yiboz@codeaurora.org>
 <874l19j56n.fsf@toke.dk>
Message-ID: <38267df5b284bfd681ad69c7e816c5a4@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_032938_226178_A0B300BD 
X-CRM114-Status: UNSURE (   9.59  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

T24gMjAxOS0wOS0xOCAxNzo1OSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IFlp
Ym8gWmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPiAKPj4gTm90IGxvbmcgYWZ0
ZXIgdGhlIHN0YXJ0IG9mIG11bHRpLWNsaWVudHMgdGVzdCwgbm90IGEgc2luZ2xlIHN0YXRpb24g
Cj4+IGlzCj4+IGFuIGVsaWdpYmxlIGNhbmRpZGF0ZSBmb3IgdHJhbnNtaXNzaW9uIHNpbmNlIGds
b2JhbCB2aXJ0dWFsIHRpbWUoZ192dCkgCj4+IGlzCj4+IHNtYWxsZXIgdGhhbiB0aGUgdmlydHVh
bCBhaXJ0aW1lKHNfdnQpIG9mIGFsbCB0aGUgc3RhdGlvbnMuIEFzIGEgCj4+IHJlc3VsdCwKPj4g
dGhlIFR4IGhhcyBiZWVuIGJsb2NrZWQgYW5kIHRocm91Z2hwdXQgaXMgcXVpdGUgbG93Lgo+PiAK
Pj4gVGhpcyBtYXkgbWFpbmx5IGR1ZSB0byBzeW5jIG1lY2hhbmlzbSBhbmQgYWNjdW11bGF0aXZl
IGRldmlhdGlvbiBmcm9tIAo+PiB0aGUKPj4gZGV2aXNpb24gY2FsY3VsYXRpb24gb2YgZ192dC4K
Pj4gCj4+IEZvciBleGFtcGxlOgo+PiBTdXBwb3NlIHdlIGhhdmUgNTAgY2xpZW50cyBpbiBmaXJz
dCByb3VuZC4KPj4gUm91bmQgMToKPj4gU1RBCXdlaWdodAlUeF90aW1lX3JvdW5kICB3dF9zdW0J
c192dAlnX3Z0ICB2YWxpZF9mb3JfbmV4dF9UeAo+PiAuCS4JLgkJCS4JCS4KPj4gLgkuCS4JCQku
CQkuCj4+IC4JLgkuCQkJLgkJLgo+PiAKPj4gQWZ0ZXIgdGhpcyByb3VuZCwgYWxsIHRoZSBzdGF0
aW9ucyBhcmUgbm90IHZhbGlkIGZvciBuZXh0IHRyYW5zbWlzc2lvbiAKPj4gZHVlCj4+IHRvIGFj
Y3VtdWxhdGl2ZSBkZXZpYXRpb24uCj4+IAo+PiBBbmQgaWYgd2UgYWRkIGEgbmV3ICM1MSwKPj4g
Um91bmQgMjoKPj4gU1RBCXdlaWdodAlUeF90aW1lX3JvdW5kCXd0X3N1bSAgc192dAlnX3Z0ICB2
YWxpZF9mb3JfbmV4dF9UeAo+PiAuCS4JLgkJCS4JCS4KPj4gLgkuCS4JCQkuCQkuCj4+IC4JLgku
CQkJLgkJLgo+PiAKPj4gU3luYyBpcyBkb25lIGJ5Ogo+PiBtYXgoZ192dCBvZiBsYXN0IHJvdW5k
IC0gZ3JhY2UgcGVyaW9kLCBzX3Z0KQo+PiBhbmQgc192dCBvZiAjNTEgPSBtYXgoMjAwMCAtIDUw
MCwgMCkgKyAxMDI0ID0gMjUyNCwgYW5kIGl0IGlzIG1vcmUgCj4+IHRoYW4gdGhlCj4+IGZpbmFs
IGdfdnQgb2YgdGhpcyByb3VuZC4KPj4gCj4+IEFmdGVyIHRoaXMgcm91bmQsIG5vIG1vcmUgc3Rh
dGlvbiBpcyB2YWxpZCBmb3IgdHJhbnNtaXNzaW9uLgo+IAo+IEknbSBub3Qgc3VyZSBJIHVuZGVy
c3RhbmQgdGhpcy4gV2FzIHRoZXJlIHN1cHBvc2VkIHRvIGJlIG51bWJlcnMgaW4KPiB0aG9zZSB0
YWJsZXMgYWJvdmU/ClllcywgaXQgbG9va3MgbGlrZSB0aGVyZSBhcmUgc29tZSBkaXNwbGF5IGlz
c3Vlcy4gV2lsbCBmaXggaXQgaW4gbmV4dCAKdmVyc2lvbi4KPiAKPiAtVG9rZQoKLS0gCllpYm8K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBt
YWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
