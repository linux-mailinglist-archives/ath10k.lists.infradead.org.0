Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310A5162A7
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 13:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kSFf7t+5qvq85oQmswAs0mzJTnOCQzE1/tb2xeqAR8Q=; b=gFWZlOx7mDBwh/5pGW07cXvnN
	HNB7a2riYBetIhBwQqdT3zy8JweIPfMrkBpcAD/jn4HexokBBtJFBvs3vN4jASJqlu/js79rXyvGC
	s27IgilGHIPueD/XKxCgj5lmjpgXvFCMAehJM6HLRojTs5+/JfjdRJiIalZErEeroVQaeTE599WyZ
	zl1fQjI20EXtIdQXjskRj3/8wz1opAmim9tjNqwSL7rcfTXCYfWVisX+GUOQ5lOBMPKqUn0YcNEjO
	zL8momh1KeJ8xWAkw8j+Tj30IqnPTrx0Tu/r6ESix2uF/UP5JCJvk7OKvWCKEhjwgmwxvfmvlOhus
	FOponZdXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNy3o-0002tO-Fv; Tue, 07 May 2019 11:15:00 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNy3k-0002rc-Cv
 for ath10k@lists.infradead.org; Tue, 07 May 2019 11:14:57 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B1C176156F; Tue,  7 May 2019 11:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557227694;
 bh=W6Da4lmzrAN7ThT1PUW5EF/gexzED6xbatYp6r99iok=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OKNQXgLdGPirECrOEJtDTa5+1NtfEh3ltkNjc01Sf05zLal5hW48yaEbR8fiYiLgZ
 5vF4fUxLBNHOKM6jvkciIBkmSijnuo3p2NMVMCZhUwrCC4UgMczjweV0CEgMCWEEQR
 WT8egjvCVrYDiX0XIwcyxZUXC/+VOpigWlDo0qcg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id CD1FC6115D;
 Tue,  7 May 2019 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557227693;
 bh=W6Da4lmzrAN7ThT1PUW5EF/gexzED6xbatYp6r99iok=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gdK/1b9TAJsevZUSVozhZQUdX+srOeJmyeMdjoMlwzZLaYanWEVq46yZiHqaJ852x
 nIMLW56Gavo/FrKV3gcHFu7BpPuQSkUOScwzRLzEtRqrauK/P8LVsD+uqbi2hupCz+
 WO2+kvXA3ZeXAW3KkqMM7txus+mcD427XPSgsbjw=
MIME-Version: 1.0
Date: Tue, 07 May 2019 19:14:53 +0800
From: leiwa@codeaurora.org
To: =?UTF-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH v2] ath10k: fix different tx duration output
In-Reply-To: <875zrbrb1q.fsf@toke.dk>
References: <1555489045-18070-1-git-send-email-leiwa@codeaurora.org>
 <87mukprnie.fsf@toke.dk> <298a645b17aac0f5c466f011225533b0@codeaurora.org>
 <875zrbrb1q.fsf@toke.dk>
Message-ID: <ef8c4fec57a8117b98e30c904fc1a3f5@codeaurora.org>
X-Sender: leiwa@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_041456_458233_BCFDD682 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
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

T24gMjAxOS0wNC0xOCAxNjowNywgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+IGxl
aXdhQGNvZGVhdXJvcmEub3JnIHdyaXRlczoKPiAKPj4gT24gMjAxOS0wNC0xNyAxNzoyNiwgVG9r
ZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+Pj4gTGVpIFdhbmcgPGxlaXdhQGNvZGVhdXJv
cmEub3JnPiB3cml0ZXM6Cj4+PiAKPj4+PiBUWCBkdXJhdGlvbiBvdXRwdXQgb2YgdHhfc3RhdHMg
aW4gZGVidWdmcyBhbmQgc3RhdGlvbiBkdW1wIGhhZCBiaWcKPj4+PiBkaWZmZXJlbmNlIGJlY2F1
c2UgdGhleSBnb3QgdHggZHVyYXRpb24gdmFsdWUgZnJvbSBkaWZmZXJlbnQgCj4+Pj4gc3RhdGlz
dGljCj4+Pj4gZGF0YS4gV2Ugc2hvdWxkIHVzZSB0aGUgc2FtZSBzdGF0aXN0aWMgZGF0YS4KPj4+
IAo+Pj4gU28gYXJlIHlvdSBzdXJlIHlvdSBwaWNrZWQgdGhlIG1vc3QgYWNjdXJhdGUgb25lIG9m
IHRoZSB0d28/IDopCj4+PiAKPj4+IC1Ub2tlCj4+IAo+PiBIaSBUb2tlLAo+PiAKPj4gWWVzLgo+
PiBOb3cgZm9yIGF0aDEwaywgdGhlcmUgYXJlIHR3byB3YXlzIHRvIGdldCB0eCBkdXJhdGlvbiBv
dXRwdXQuCj4+IE9uZSBpcyBnb3QgZnJvbSB0eF9zdGF0cyBpbiBkZWJ1Z2ZzIHJlcG9ydGVkIGJ5
IGZpcm13YXJlLiBJdCBpcyBhIAo+PiB0b3RhbAo+PiB2YWx1ZSBpbmNsdWRpbmcgYWxsIHRoZSBm
cmFtZXMgd2hpY2ggY3JlYXRlZCBieSBob3N0IGFuZCBmaXJtd2FyZSBzZW50Cj4+IHRvIHRoZSBw
ZWVyLgo+PiBBbmQgdGhlIHNlY29uZCBpcyBjYWxjdWxhdGVkIGZyb20KPj4gYXRoMTBrX2h0dF9y
eF90eF9jb21wbF9pbmQoKS0tPmllZWU4MDIxMV9zdGFfcmVnaXN0ZXJfYWlydGltZSgpLCBoZXJl
Cj4+IHRoZSB0eCBkdXJhdGlvbiBqdXN0IGluY2x1ZGVzIHRoZSBkYXRhIGZyYW1lcyBzZW50IGZy
b20gaG9zdCB0byB0aGUKPj4gcGVlci4KPiAKPiBTbyB0aGUgZGlmZmVyZW5jZSBpcyB0aGF0IHRo
ZSBmb3JtZXIgaW5jbHVkZXMgY29udHJvbCBmcmFtZXMgYXMgd2VsbD8gCj4gSXMKPiB0aGF0IHRo
ZSBvbmx5IGRpZmZlcmVuY2U/IEFuZCB3aGF0IGV4YWN0bHkgaXMgYSAiYmlnIGRpZmZlcmVuY2Ui
IChmcm9tCj4gdGhlIGNvbW1pdCBtZXNzYWdlKT8KPiAKWWVzLGl0IGFkZHMgdGhlIGR1cmF0aW9u
IHRpbWUgb2YgcmVjZWl2aW5nIEFDSyBmcmFtZXMuCiBGcm9tIG15IHRlc3QsVFggZnJvbSBBUCB0
byBzdGF0aW9uIHdpdGggaXBlcmYgVURQIHRlc3QgaW4gCjEwcyx0eF9zdGF0cy0+dHhfZHVyYXRp
b246NTQ5NjYyM3VzLAphbmQgYW5vdGhlciB2YWx1ZSBpcyAzOTM0MzI3dXMuCj4+IFNvIHRoZSBm
aXJzdCB2YWx1ZSBpcyBwcmVmZXJhYmxlIGZvciBzdGF0aW9uIGR1bXAuCj4gCj4gSG1tLCBJJ20g
bm90IHN1cmUgaWYgSSBhZ3JlZSB3aXRoIHRoaXMuIEkgc3BlY2lmaWNhbGx5IGFkZGVkIHRoZQo+
IHR4X2R1cmF0aW9uIHRvIHRoZSBzdGF0aW9uIGR1bXAgdG8gYmUgYWJsZSB0byBnZXQgdGhlIHZh
bHVlcyB1c2VkIGJ5IAo+IHRoZQo+IGFpcnRpbWUgc2NoZWR1bGVyLiBUaGlzIGJyZWFrcyB3aXRo
IHRoaXMgcGF0Y2guCj4gCj4gLVRva2UKIEZyb20gb3VyIGludGVybmFsIGRpc2N1c3NpbmcsIHdl
IHdpbGwgcmV2ZXJ0IHRoaXMgY2hhbmdlLgpUaGFua3MuCgpMZWkKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBr
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9hdGgxMGsK
