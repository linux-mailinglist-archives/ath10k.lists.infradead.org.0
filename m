Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8E7D5DA6
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 10:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4kqvqGFIy57+dSZg7fKtBgPr031i8rGg6H8AvSWPnA=; b=s6n1KWH9pyolbd
	HV0vRIkL/cMwAC1i8U3ov/kErn6pc8oDAzpw1qgpEhxcUWY98u9IGQHRlTx0M05I32cBsCwybRDYN
	TvwnsC+6h3DrFfflsyP4X7ERdx4eo6t2IEPsjLIpSMMg3rztG1s6R8QdwSJAPcSoI+7HpJ1q6Lz0x
	8QswnQzh6uboM7hV5tYmuH2grx16cSKToe3cZS6OdvIHMr1a+6kfJiNrFUeuk/XbFrXWz5kYr9Aiz
	6VtHJrSnI5dl0gTwR+Wqye4uFT7HiY9FGKnkRI/78abjkIUhpgfKsJFZuWLis890YSdaqQCi+GcGp
	C6xWUrZav1Zb9m/VtgKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvtM-0001Xp-RY; Mon, 14 Oct 2019 08:39:48 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvtJ-0001Ww-Fd
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 08:39:46 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DFA3760790; Mon, 14 Oct 2019 08:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571042384;
 bh=3pmd2/Dg2zjuK4TND60bIyRKaMBttWSoVmjkAXloajk=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=m91MrAjwNfhomQ06Y8rG621sPLYdAx9LvcxGhREHQhpt/IxFMR6/rHlrY1qNglgGO
 EqwlyD1w/5HCINIfvdLUGyq1Vi6NEf1tSNW7PgWodeJKWlvLExuyzAgxRex0JAze42
 YqiocEJe5CMjG1y0+iUL1VYk/FhZwvgaGhuwTurg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID,SPF_NONE autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BCFCD601E7;
 Mon, 14 Oct 2019 08:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571042383;
 bh=3pmd2/Dg2zjuK4TND60bIyRKaMBttWSoVmjkAXloajk=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=U8uk+O+dLlnNFiAc9iOrZaA4D6Hi/SSigRV099puvznMY+eC7qKJpPw5dh7HTru5c
 1pfM3FxC1as/ZKRD9g3fv1ap5RQti88XLDrwQrrXiOqebHpowXT7cCOsY0G0TPjTps
 hY+2G9JW+OJoRCD20tJAedcfR+V4rvu620IPY6lE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BCFCD601E7
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath: rename regulatory rules
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1570740795-12522-1-git-send-email-pozega.tomislav@gmail.com>
References: <1570740795-12522-1-git-send-email-pozega.tomislav@gmail.com>
To: =?utf-8?q?Tomislav_Po=C5=BEega?= <pozega.tomislav@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191014083944.DFA3760790@smtp.codeaurora.org>
Date: Mon, 14 Oct 2019 08:39:44 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_013945_543780_E19F2FED 
X-CRM114-Status: UNSURE (   6.08  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

VG9taXNsYXYgUG/FvmVnYSB3cm90ZToKCj4gUmVndWxhdG9yeSBydWxlIGRlZmluZXMgaW4gcmVn
ZC5jIGFyZSB1c2VkIG5vdCBvbmx5IGJ5IGF0aDlrIGJ1dCBhbHNvCj4gYXRoMTBrIGRyaXZlciAo
aGF2ZW4ndCB0ZXN0IG90aGVyIGRyaXZlcnMpIGFuZCB0aHVzIHNob3VsZCBiZQo+IHJlbmFtZWQg
ZnJvbSBBVEg5SyogdG8gQVRIKi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUb21pc2xhdiBQb8W+ZWdh
IDxwb3plZ2EudG9taXNsYXZAZ21haWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEthbGxlIFZhbG8g
PGt2YWxvQGNvZGVhdXJvcmEub3JnPgoKUGF0Y2ggYXBwbGllZCB0byBhdGgtbmV4dCBicmFuY2gg
b2YgYXRoLmdpdCwgdGhhbmtzLgoKZjQzM2FiZmMyZjc2IGF0aDogcmVuYW1lIHJlZ3VsYXRvcnkg
cnVsZXMKCi0tIApodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMTg0NDM5LwoK
aHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0
aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYXRoMTBrIG1haWxpbmcgbGlzdAphdGgxMGtAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2F0aDEwawo=
