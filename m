Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50757DFE7C
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 09:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63OY/yG4sTB/06KA32ImzUHzOSEG7p5XEAe8RNnw7Aw=; b=P8/cXmOzeRqftU
	W7X14PyRsO/BgisQpkxYKX9DNTczF/9jii3GsP/CThBxCIpVmXVC9+eDtKJ4fKD3sVi/+qBdAZQHu
	SlhsNslsV3tnrob5Idjhff5QqMxxoePqMPvm+nMglYSOZ0O+ntJn/K1mwSVkCddQojfXkFROQ081l
	kmnuHuRD/CBxYEg8BVfRS5lhDcX5KdqCKGHVxiFHAnsxzSb77ncosXorit540Zt/Zf+i6zNMaWn91
	QcEkJgpUpA5gv28+vzF4kfZ6JltfmbHubtBNuPIcLNbeXHiTn/FSEgdztqVyv5icC5u4xIc36EzUm
	nk6FyQXCNBwB1keWUxcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMonj-0001nF-TK; Tue, 22 Oct 2019 07:41:55 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMone-0001jv-HC
 for ath10k@lists.infradead.org; Tue, 22 Oct 2019 07:41:52 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 92D6760A66; Tue, 22 Oct 2019 07:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571730110;
 bh=5kAA4mT4aDnapzUXO5WJEhUXAaVmmYUWJy95iQGq4f8=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=kPzqYq0WIRT0D43Eu9p8b5IgTeAN5fy9mb1PYMh3aPzxTIqZ/X9R37WoysINk8FpI
 R6FqgYZH4+Trj54scbas23fegsVXXStvyEtNeGRCSRbuVQ0/6ibD3mc4lm5VisP1RJ
 oABdLg641YT34eey0C0P+2dWi9SZ/CDtG30jOpH0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EA5A3607C3;
 Tue, 22 Oct 2019 07:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571730108;
 bh=5kAA4mT4aDnapzUXO5WJEhUXAaVmmYUWJy95iQGq4f8=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ikhToIN9IbxSHfDqmzh4SWMj8nxa0czwF9LJxO/RiXtE3Hmc+ZwrcHZ780BoXzMnI
 8ZNT0SY+ccHvWQwOSr80/12xXYLNtx4e0H0ejSGhplIV1L5x4YuODJGEVcon434W20
 tKLNy3MXX5eqiStmJfY8cASRetZsdEj/mWfhyENs=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EA5A3607C3
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Subject: Re: [PATCH v4 0/2] Implement Airtime-based Queue Limit (AQL)
References: <20191011022413.176208-1-kyan@google.com>
 <87wod7y9ui.fsf@kamboji.qca.qualcomm.com>
 <87sgnvy9c2.fsf@kamboji.qca.qualcomm.com>
 <CA+iem5uLYFVQjPaE1QDKc6c+eKz8Xd4LbwczYXOBKP3q+HHdBg@mail.gmail.com>
 <87r236tbgz.fsf@kamboji.qca.qualcomm.com> <878speqh75.fsf@toke.dk>
Date: Tue, 22 Oct 2019 10:41:43 +0300
In-Reply-To: <878speqh75.fsf@toke.dk> ("Toke \=\?utf-8\?Q\?H\=C3\=B8iland-J\?\=
 \=\?utf-8\?Q\?\=C3\=B8rgensen\=22's\?\= message of
 "Mon, 21 Oct 2019 16:57:50 +0200")
Message-ID: <87zhhtjkg8.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_004150_659268_8E15D398 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kan Yan <kyan@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Yibo Zhao <yiboz@codeaurora.org>, Johannes Berg <johannes@sipsolutions.net>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyaXRlczoKCj4gS2Fs
bGUgVmFsbyA8a3ZhbG9AY29kZWF1cm9yYS5vcmc+IHdyaXRlczoKPgo+PiAocGxlYXNlIGRvbid0
IHRvcCBwb3N0KQo+Pgo+PiBLYW4gWWFuIDxreWFuQGdvb2dsZS5jb20+IHdyaXRlczoKPj4KPj4+
IEkgYmVsaWV2ZSBUb2tlIHdpbGwgaW50ZWdyYXRlIHRoaXMgd2l0aCBoaXMgdmVyc2lvbiBhbmQg
bW92ZSB0aGUKPj4+IGVzdGltYXRpbmcgcGVuZGluZyBhaXJ0aW1lIHBhcnQgdG8gbWFjODAyMTEs
IHNvIG1heWJlIGluIHRoZSBuZXh0Cj4+PiB2ZXJzaW9uLCBhdGgxMGsgY2hhbmdlIGlzIG5vIGxv
bmdlciByZXF1aXJlZC4KPj4KPj4gV2hhdCBkbyB5b3UgbWVhbj8gQXJlIHlvdSBzYXlpbmcgdGhh
dCBJIGNhbiBkcm9wIHRoaXMgcGF0Y2g6Cj4+Cj4+IFt2NCwyLzJdIGF0aDEwazogRW5hYmxlIEFp
cnRpbWUtYmFzZWQgUXVldWUgTGltaXQgKEFRTCkKPj4KPj4gaHR0cHM6Ly9wYXRjaHdvcmsua2Vy
bmVsLm9yZy9wYXRjaC8xMTE4NDc4My8KPgo+IFllcywgd2UncmUgdHJ5aW5nIHRvIGRvIGl0IGFs
bCBpbiBtYWM4MDIxMS4gU2VlCj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0
L2xpbnV4LXdpcmVsZXNzL2xpc3QvP3Nlcmllcz0xOTAzMzMKClRoYW5rcywgSSBkcm9wcGVkIHRo
aXMgcGF0Y2ggbm93LgoKLS0gCkthbGxlIFZhbG8KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9h
dGgxMGsK
