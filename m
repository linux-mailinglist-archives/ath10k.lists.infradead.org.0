Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68023BC401
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 10:22:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CJcYSt8FYkJo2eJFOPrilpOZ6L5lLAfY3fE9aXRZ2Ac=; b=rVJDRlbSiE5RJCRjC6V5wSlOm
	6li8Cd6Hvpqu+AAVd3ChpsEDaU6hl21uqHdCTjHbYq2ueAlZOoxYYFv1KkfjXS7IM4erP9w3wLka9
	LuVC5eBpG4NfoTMg+l31tQyBwBph6AOrujAIQOOv8RGsG5rk3Zsq5FkThYqrVAGHOuhJSRV5LWeRF
	z/qNwaxn1BYZ4cIlEk1iqW85Jqqgq73E+cGKyv+TV5brwV5N3QjEXcIhmrSw1NLsCd5esp6pRN01G
	O65/R2TJkfHFIlYfL3jcVnalOHaSAGnynBLldxSnsmIM/0glAYXkpP6eNhcwFeOcr8Eev2mEKRiSD
	VlHJ/nJKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCg5x-0005FD-Rt; Tue, 24 Sep 2019 08:22:49 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCg5s-0005En-V6
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 08:22:46 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 25F1F60265; Tue, 24 Sep 2019 08:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569313364;
 bh=32NmNmKKduEVdtULZjfuI+1nlnbYAGk25UhmZpR6+74=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JoFZ3bv06iThmtbrQ24T6AZyC7WYie0uxNAikBSG6CeQFHhWaDh1qlbYq8cMOF3lL
 A1zDQ4MWFGwNxXoItlrjYXgaB28hmkoqJunQkdm8eU4gb4CD+vUNe9Rkp8Vpuvp8iT
 P3Lt3TbTUmss+xHx/ELdBnfuluh+C+FBh+1/0Ues=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 92DEE601D4;
 Tue, 24 Sep 2019 08:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569313363;
 bh=32NmNmKKduEVdtULZjfuI+1nlnbYAGk25UhmZpR6+74=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Dd9HOt1ntIEFGIccv3r62hjZeD2S0Z0kqnyKFeOYnHGqoijNhrALiUciaxN1bk4wI
 EHLR0QPUfMu5j/EeetpECV3zmyLMHvk8Ncru1esQv8N8X5eAYPGQLPi4C+q/v/gqrg
 YSSd4ntmxdd4/epjjHBcCokzBL1c9+ou4BnTyDk0=
MIME-Version: 1.0
Date: Tue, 24 Sep 2019 16:22:43 +0800
From: Yibo Zhao <yiboz@codeaurora.org>
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH V3 3/4] mac80211: fix low throughput in multi-clients
 situation
In-Reply-To: <87impj5lkm.fsf@toke.dk>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
 <1569223201-1490-4-git-send-email-yiboz@codeaurora.org>
 <87impj5lkm.fsf@toke.dk>
Message-ID: <2aab0bd944ee34751304a5f92b885113@codeaurora.org>
X-Sender: yiboz@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_012245_052515_DEFE6087 
X-CRM114-Status: GOOD (  12.86  )
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

T24gMjAxOS0wOS0yMyAxODo1NSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IFlp
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
c192dAlnX3Z0ICB2YWxpZF9mb3JfbmV4dF9UeAo+PiAxCTI1NgkyMDQ4CQkxMjgwMAkyMDQ4CTIw
MDAJTgo+PiAyCTI1NgkyMDQ4CQkJMjA0OAkJTgo+PiAuCS4JLgkJCS4JCS4KPj4gLgkuCS4JCQku
CQkuCj4+IC4JLgkuCQkJLgkJLgo+PiA1MAkyNTYJMjA0OAkJCTIwNDgJCU4KPj4gCj4+IEFmdGVy
IHRoaXMgcm91bmQsIGFsbCB0aGUgc3RhdGlvbnMgYXJlIG5vdCB2YWxpZCBmb3IgbmV4dCB0cmFu
c21pc3Npb24gCj4+IGR1ZSB0bwo+PiBhY2N1bXVsYXRpdmUgZGV2aWF0aW9uLgo+PiAKPj4gQW5k
IGlmIHdlIGFkZCBhIG5ldyAjNTEsCj4+IFNUQQl3ZWlnaHQJVHhfdGltZV9yb3VuZCAgd3Rfc3Vt
CXNfdnQJZ192dCAgdmFsaWRfZm9yX25leHRfVHgKPj4gMQkyNTYJMjA0OAkJMTMwNTYJMjA0OAky
MDIwCU4KPj4gMgkyNTYJMjA0OAkJCTIwNDgJCU4KPj4gLgkuCS4JCQkuCj4+IC4JLgkuCQkJLgo+
PiAuCS4JLgkJCS4KPj4gNTAJMjU2CTIwNDgJCQkyMDQ4CQlOCj4+IDUxCTI1NgkxMDI0CQkJMjUy
NAkJTgo+IAo+IFRoYXQncyBiZXR0ZXIgOikKPiAKPj4gU3luYyBpcyBkb25lIGJ5Ogo+PiBtYXgo
Z192dCBvZiBsYXN0IHJvdW5kIC0gZ3JhY2UgcGVyaW9kLCBzX3Z0KQo+PiBhbmQgc192dCBvZiAj
NTEgPSBtYXgoMjAwMCAtIDUwMCwgMCkgKyAxMDI0ID0gMjUyNCwgYW5kIGl0IGlzIG1vcmUgCj4+
IHRoYW4gdGhlIGZpbmFsCj4+IGdfdnQgb2YgdGhpcyByb3VuZC4KPj4gCj4+IEFmdGVyIHRoaXMg
cm91bmQsIG5vIG1vcmUgc3RhdGlvbiBpcyB2YWxpZCBmb3IgdHJhbnNtaXNzaW9uLgo+PiAKPj4g
VGhlIHJlYWwgc2l0dWF0aW9uIGNhbiBiZSBtb3JlIGNvbXBsaWNhdGUsIGFib3ZlIGlzIG9uZSBv
ZiB0aGUgCj4+IGV4dHJlbWVseSBjYXNlLgo+PiAKPj4gVG8gYXZvaWQgdGhpcyBzaXR1YXRpb24g
dG8gb2NjdXIsIHRoZSBuZXcgcHJvcG9zYWwgaXM6Cj4+IAo+PiAtIEluY3JlYXNlIHRoZSBhaXJ0
aW1lIGdyYWNlIHBlcmlvZCBhIGxpdHRsZSBtb3JlIHRvIHJlZHVjZSB0aGUKPj4gICB1bmV4cGVj
dGVkIHN5bmMKPj4gCj4+IC0gSWYgZ2xvYmFsIHZpcnR1YWwgdGltZSBpcyBsZXNzIHRoYW4gdGhl
IHZpcnR1YWwgYWlydGltZSBvZiBhbnkgCj4+IHN0YXRpb24sCj4+ICAgc3luYyBpdCB0byB0aGUg
YWlydGltZSBvZiBmaXJzdCBzdGF0aW9uIGluIHRoZSByZWQtYmxhY2sgdHJlZQo+PiAKPj4gLSBS
b3VuZCB0aGUgZGl2aXNpb24gcmVzdWx0Cj4gCj4gSSBjYW4gc2VlIHdoeSB3ZSBuZWVkIHRoZSBz
ZWNvbmQgcGFydCAoYmFzaWNhbGx5LCB0aGlzIGhhcHBlbnMgYmVjYXVzZSAKPiBJCj4gZm9yZ290
IHRvIGFkZCBhIGNoZWNrIGZvciAibm8gZWxpZ2libGUgc3RhdGlvbnMiIGluIG1heV90cmFuc21p
dCgpLCAKPiBsaWtlCj4gdGhlIG9uZSBpbiBuZXh0X3R4cSgpKS4gQW5kIHJvdW5kaW5nIHVwIHRo
ZSBkaXZpc2lvbiByZXN1bHQgZG9lc24ndAo+IGh1cnQsIEkgZ3Vlc3MuIEJ1dCB3aHkgZG9lcyBp
dCBoZWxwIHRvIGNoYW5nZSB0aGUgZ3JhY2UgcGVyaW9kIGlmIHdlJ3JlCj4gZG9pbmcgYWxsIHRo
ZSBvdGhlciBzdHVmZj8KSW4gbXVsdGktY2xpZW50cyBjYXNlLCBpdCBpcyBwb3NzaWJsZSBhIFRY
USBzb21ldGltZXMgZ2V0cyBkcmFpbmVkIGR1ZSAKdG8gRlcgaGFzIGRlZXAgcXVldWUgYW5kIGZl
dyBwYWNrZXRzIGluIFRYUSBhdCB0aGF0IHRpbWUuIFNvIHRoZSBUWFEgaXMgCnJlbW92ZWQgZnJv
bSB0aGUgcmJ0cmVlIGFmdGVyIGRlcXVldWluZy4gV2hlbiBpdCBpcyBhYm91dCB0byBhZGRlZCBi
YWNrIAp2ZXJ5IHNvb24gYWZ0ZXIgdGhlIHJlbW92YWwsIHRoZSBnX3Z0IG1pZ2h0IGhhdmUgZ29u
ZSBhIGxpdHRsZSBmYXIgYXdheSAKZnJvbSBzdGEgdnQgd2hlcmUgc3luYyBpcyBuZWVkZWQuIFdp
dGggdGhpcyBzeW5jLCB0aGUgc3RhdGlvbiBpcyBmb3JjZWQgCnRvIGNhdGNoIHVwIHdpdGggdGhl
IGdfdnQsIGhvd2V2ZXIsIGl0cyBjaGFuY2UgZm9yIHRyYW5zbWlzc2lvbiBoYXMgYmVlbiAKcmVk
dWNlZC4gSSB0aGluayA1MDB1cyBpcyBxdWl0ZSBhIHNob3J0IHBlcmlvZCBpbiBtdWx0aS1jbGll
bnRzIGNhc2UuCj4gCj4gLVRva2UKCi0tIApZaWJvCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
YXRoMTBrCg==
