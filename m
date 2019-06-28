Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C654359CE8
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/elf4rMnfBS5Z2BXC5SqapTEjQUbe2wX3ncSPdKC1g=; b=nPI1EUkbQ5npm9
	G26fCMfda+W0VumJxgW2JSg7bLCH+BgADjXp2j9p9N26cq5rhhN4+NyL+8bcu9hFM6P5s+wKWkSv4
	aTERwzCciw0iwSpudrWpwi2dGiktugJykxGkARJVPiPGC77pXbofiW/UxyE8NxFMnkS1JwEmsWBge
	Zvt2CTQDgZvU+mgXM5EcdZaJTs2bg89x5TZT7xreDQ0bz7QSYJjgg5DkRF7f4uT4dkB6pvyBtloYx
	ezB2bE+5gZ56JkFx5AwfadN43N13YJfYaFGMB651DAzVUVCj9lGoDaCrB99n8P2FWfsJROAdCboOI
	LGg3WQBT2uJ2NuAFx/rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgqtL-0003WZ-Rc; Fri, 28 Jun 2019 13:26:15 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgqtE-0003VX-K2
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:26:10 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 673CD607CA; Fri, 28 Jun 2019 13:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728366;
 bh=PA6IseeEwTNhskThp7RRUnc07961H5UdUl6w7n7TYLE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=XWF4kA6Kpaz0ZP4DYq0aNLcEY12NJ53TeAIBavboDWn8vlgpsVxzMzex5t4+0zEOs
 IE4IBt0RHuWMzaL3vqrzZqqRaciwHGE+vAP2wMN/jI+CwI3Q8Us7gtOTb8LZio6cbn
 O3t7QTDBaY77/tEJBMf6OHx9f3Tz2FibP4x3jeXQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1C3716028D;
 Fri, 28 Jun 2019 13:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728365;
 bh=PA6IseeEwTNhskThp7RRUnc07961H5UdUl6w7n7TYLE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Ewy6FTOmRZSxuSZOhCigEp+Yf44vj7sC6zohSR4RbCod/bBvV+4AIjZZtqr+2PqwD
 NDLYG5cLapkFv8TU0BEv/0J3c3TwSP3vcA+SQ6JT6mgZXSlvegEFkY3qCbyyDJyR46
 zPXAVcpNDv1g3lJF4wzYoeyI0KffVi9XLxN64Xks=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1C3716028D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: <steven.lin@senao.com>
Subject: Re: ath10k-firmware: QCA4019 hw1.0: Add EnGenius EAP1300 specific BDFs
References: <77B9977A4169C341AD4CDD465CB1B812B52B128F@snex01.senao.com>
Date: Fri, 28 Jun 2019 16:26:02 +0300
In-Reply-To: <77B9977A4169C341AD4CDD465CB1B812B52B128F@snex01.senao.com>
 (steven lin's message of "Mon, 22 Oct 2018 10:38:44 +0000")
Message-ID: <87y31let91.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_062608_684431_AEE73BA9 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

PHN0ZXZlbi5saW5Ac2VuYW8uY29tPiB3cml0ZXM6Cgo+IFRoZSBzdXBwb3J0IGZvciB0aGlzIGRl
dmljZSB3YXMgYWRkZWQgYSB3aGlsZSBhZ28gdG8gT3BlbldydC4gVGhpcyBBUCByZXF1aXJlcyAK
PiB0d28gc3BlY2lhbCBCREZzIHRvIGdldCB0aGUgV2ktRmkgUEhZcyB3b3JraW5nIChjb3JyZWN0
bHkpLiBUaGUgIGJtaS1ib2FyZC0KPiBpZD0ncyB3b3VsZCBjbGFzaCB3aXRoIG9uZSBvZiB0aGUg
dGhlIElQUTQwMVggQVAtREsgYm9hcmRzIGJlY2F1c2UgUUNBIGRvZXNuJ3QgCj4gcHJvdmlkZSBz
cGVjaWFsIElEcyBmb3IgY3VzdG9tZXJzIGFuZCBzZWVtcyB0byB1c2UgdGhlIEFQLURLIGJvYXJk
LWlkcyBpbiB0aGUgCj4gd2lmaSBmaXJtd2FyZSB0byBjaGFuZ2UgaXRzIGJlaGF2aW9yLgo+Cj4g
Tm93IHRvIHRoZSBxdWVzdGlvbnMgZnJvbSB0aGUgd2lraSBwYWdlIFsxXToKPgo+IO+BrAlkZXNj
cmlwdGlvbiBmb3Igd2hhdCBoYXJkd2FyZSB0aGlzIGlzOgo+IC0JaXQgaXMgYSBJUFE0MDE4IGJh
c2VkIGJvYXJkCj4gLQlvbmUgUUNBNDB4eCByYWRpbyBpcyB1c2VkIGFzIDIuNEdIeiByYWRpbwo+
IC0Jb25lIFFDQTQweHggcmFkaW8gaXMgdXNlZCBhcyA1R0h6IHJhZGlvCj4KPiDvgawJb3JpZ2lu
IG9mIHRoZSBib2FyZCBmaWxlIChkaWQgeW91IGNyZWF0ZSBpdCB5b3Vyc2VsZiBvciB3aGVyZSB5
b3UgZG93bmxvYWRlZCkKPiAtCXRha2VuIGZyb20gc3RvY2sgZmlybXdhcmUgaW1hZ2UKPgo+IO+B
rAlpZHMgdG8gYmUgdXNlZCB3aXRoIHRoZSBib2FyZCBmaWxlIChBVEgxMEtfQkRfSUVfQk9BUkRf
TkFNRSBpbiBhdGgxMGspCj4gLQkgUUNBNDAxOSBodzEuMAo+Cj4gbWQ1c3VtIG9mIGVhY2ggbmV3
IGJvYXJkIGZpbGUgdG8gYWRkCj4gKyBidXM9YWhiLGJtaS1jaGlwLWlkPTAsYm1pLWJvYXJkLWlk
PTE2LHZhcmlhbnQ9RW5HZW5pdXMtRUFQMTMwMCcKPiBtZDVzdW06IGQ3YTdjYjExZmRiNDM1Mzgw
Y2I3N2E1YTJkNWM4ODVkCj4gKyBidXM9YWhiLGJtaS1jaGlwLWlkPTAsYm1pLWJvYXJkLWlkPTE3
LHZhcmlhbnQ9RW5HZW5pdXMtRUFQMTMwMCcKPiBtZDVzdW06IDNiMjg2ZTRlNmRmODNmMWNiNGE5
MjQxYmFkZDkzOTYxCgpUaGFua3MsIGFkZGVkIHRvIFFDQTQwMTkvaHcxLjAvYm9hcmQtMi5iaW46
CgpOZXc6CmJ1cz1haGIsYm1pLWNoaXAtaWQ9MCxibWktYm9hcmQtaWQ9MTYsdmFyaWFudD1Fbkdl
bml1cy1FQVAxMzAwCmJ1cz1haGIsYm1pLWNoaXAtaWQ9MCxibWktYm9hcmQtaWQ9MTcsdmFyaWFu
dD1Fbkdlbml1cy1FQVAxMzAwCgpDaGFuZ2VkOgoKCkRlbGV0ZWQ6CgoyIGJvYXJkIGltYWdlKHMp
IGFkZGVkLCAwIGNoYW5nZWQsIDAgZGVsZXRlZCwgMzkgaW4gdG90YWwKCmh0dHBzOi8vZ2l0aHVi
LmNvbS9rdmFsby9hdGgxMGstZmlybXdhcmUvY29tbWl0Lzk0NTNlMzRlMTY4OWUxM2U5MTk1NDdj
NWYzMWY0MWU3MjVjMjdmNzEKCi0tIApLYWxsZSBWYWxvCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYXRoMTBrCg==
