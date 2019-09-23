Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F73BB2F1
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 13:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJUDP8q02tdW8tWXCg69kEDLYusrfklV3XFhIBNE4ek=; b=TSh0ayv/qILBFf
	vCRRKa1Xk9X5Nog/mp4XL+2LJjNeE0WyhIgAsjuOSNxyRlarPcZTUmikNr4n0staLw3VO64aztKsa
	IWG/YMap0PlZDIcNopsEw6ttR9GpdPeHnayiH72JRx16FxOZ9xr9mkz09gCTkshgi1nThXlkZQWUZ
	5vKayoEKw4hhWeO6sZexNGNTaxU0XenVdnDGUlQhI2RVQfwZmNuyBPZSzxU1ODISskTorBIWalgaM
	/37ceyGtbYQXfBf+qg8m0QFJNUtqWuBHoyHocz4jiHuMkE1MJTwLzhQ4QzXlFSjcm5JKKteuH+qtW
	db5eMAo+xxlB00DYCUUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCMjh-0001Nh-Sr; Mon, 23 Sep 2019 11:42:33 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCMje-0001NL-KP
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 11:42:32 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 474B1602F0; Mon, 23 Sep 2019 11:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569238950;
 bh=lUtYUiOh943WW+54GHZhamd2qjJPMz0XuUx4GDR/87k=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ioK5vtxuDUaNLRCy8cjzfGJSNqbAq4gb1MelzZVSF5bzHSmaT305wz2d8v+SFyjyB
 LdklPqawsCXURg161R5pTOIz5PjpSs6Bqm4VUEl8ftK3V6JRh36E943vI/QJVePSAP
 MgND72TFG+eLuw7V3xeSG1pnJEr5jBPj5LadCPx4=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A6CCA60265;
 Mon, 23 Sep 2019 11:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569238950;
 bh=lUtYUiOh943WW+54GHZhamd2qjJPMz0XuUx4GDR/87k=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ioK5vtxuDUaNLRCy8cjzfGJSNqbAq4gb1MelzZVSF5bzHSmaT305wz2d8v+SFyjyB
 LdklPqawsCXURg161R5pTOIz5PjpSs6Bqm4VUEl8ftK3V6JRh36E943vI/QJVePSAP
 MgND72TFG+eLuw7V3xeSG1pnJEr5jBPj5LadCPx4=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A6CCA60265
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH 2/4] mac80211: defer txqs removal from rbtree
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-2-git-send-email-yiboz@codeaurora.org>
 <87pnjyiq7o.fsf@toke.dk>
 <c3ee7ece0986f1c50513cd5fdd2ee03f@codeaurora.org>
 <87sgothmpy.fsf@toke.dk>
 <8cdece5c030fd95817fb099021c38613@codeaurora.org>
 <87tv98fu6l.fsf@toke.dk>
 <1b4ab006d9b5c88035845aaac193ef48@codeaurora.org>
 <8736gre3bm.fsf@toke.dk>
 <198124204167325252fcfcd65e3f2733@codeaurora.org>
 <87ftkp7uuz.fsf@toke.dk>
 <4574cce4079f8dab2b2bf223431a6eae@codeaurora.org>
 <877e617qg2.fsf@toke.dk>
 <910d9bb5f9016b29fb2aaeb0b89bac38@codeaurora.org>
 <874l157nrt.fsf@toke.dk>
 <2935b00bf3e29ad8b2738fe98dc24a76@codeaurora.org>
 <87lfuf5ly2.fsf@toke.dk>
Date: Mon, 23 Sep 2019 14:42:26 +0300
In-Reply-To: <87lfuf5ly2.fsf@toke.dk> ("Toke \=\?utf-8\?Q\?H\=C3\=B8iland-J\?\=
 \=\?utf-8\?Q\?\=C3\=B8rgensen\=22's\?\= message of
 "Mon, 23 Sep 2019 12:47:01 +0200")
Message-ID: <87r2476xy5.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_044230_714521_1875BBD5 
X-CRM114-Status: UNSURE (   6.39  )
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyaXRlczoKCj4gWWli
byBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgo+Cj4+IE9uIDIwMTktMDktMjEg
MjI6MDAsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+IFlpYm8gWmhhbyA8eWli
b3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4+IAo+Pj4+IE9uIDIwMTktMDktMjEgMjE6MDIs
IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+Pj4gWWlibyBaaGFvIDx5aWJvekBj
b2RlYXVyb3JhLm9yZz4gd3JpdGVzOgo+Pj4+PiAKPj4+Pj4+IE9uIDIwMTktMDktMjEgMTk6Mjcs
IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+Pj4+PiBZaWJvIFpoYW8gPHlpYm96
QGNvZGVhdXJvcmEub3JnPiB3cml0ZXM6Cj4+Pj4+Pj4gCj4+Pj4+Pj4+IE9uIDIwMTktMDktMjAg
MTc6MTUsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+Pj4+Pj4+IFlpYm8gWmhh
byA8eWlib3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+IE9u
IDIwMTktMDktMTkgMTg6MzcsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+Pj4+
Pj4+Pj4gWWlibyBaaGFvIDx5aWJvekBjb2RlYXVyb3JhLm9yZz4gd3JpdGVzOgo+Pj4+Pj4+Pj4+
PiAKPj4+Pj4+Pj4+Pj4+IE9uIDIwMTktMDktMTggMTk6MjMsIFRva2UgSMO4aWxhbmQtSsO4cmdl
bnNlbiB3cm90ZToKPj4+Pj4+Pj4+Pj4+PiBZaWJvIFpoYW8gPHlpYm96QGNvZGVhdXJvcmEub3Jn
PiB3cml0ZXM6Cj4+Pj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+Pj4+IE9uIDIwMTktMDktMTggMDU6
MTAsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4+Pj4+Pj4+Pj4+Pj4+IFlpYm8g
WmhhbyA8eWlib3pAY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKCkd1eXMsIFBMRUFTRSBwbGVhc2Ug
Y29uc2lkZXIgdXMgcG9vciBtYWludGFpbmVycyBkcm93bmluZyBpbiBlbWFpbCBhbmQKZWRpdCB5
b3VyIHF1b3RlcyA6KSBUaGlzIHN0eWxlIG9mIGRpc2N1c3Npb24gbWFrZXMgcGF0Y2h3b3JrIHVu
dXNhYmxlOgoKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTE0NzAxOS8KCi0t
IApLYWxsZSBWYWxvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYXRoMTBrCg==
