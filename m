Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB9CC322B
	for <lists+ath10k@lfdr.de>; Tue,  1 Oct 2019 13:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyrYgC/lCoW6/n5ZjVdPibF6J25+iniHJpmd27u/LJU=; b=QA/y/O3vN+F0Gt
	fCA39x0b2NDpR+roDVJqP//3GwK9aA2K6G9H90lXLGCx1GhKoOuaBHe6qW4JQ5AwAGwPnCJLz+x1J
	GnM8p0F9L6kn1r6Ap3HYSrW+I3c9xLqclFZCN/aG2/jF16BcLwhNSOSR0h+a+MGxHNyNQLmDsq9cZ
	5+09u58c4fOvLgW+jlSop7TrhZaTYic+8bhMI1fmUswsWeCzaCIf9i+XIpD53hK8Sgmia6PK9iuEC
	4Ahm/EkBIf8j9sssMcdeOyVSZbj4+QrfGWy11icgC4U8ZXAvPNFfq+S6MuI5XJbBposh+bIR6/L+O
	AF7hVmn/ofiaiFP4vDLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFG8A-0006Ly-R6; Tue, 01 Oct 2019 11:15:46 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFG86-0006LM-O5
 for ath10k@lists.infradead.org; Tue, 01 Oct 2019 11:15:44 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 894C460A05; Tue,  1 Oct 2019 11:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569928541;
 bh=1iaNgMpqvf1SlTf13O5y/DXKAT+h8Zcuc4V/7Zi8Qnk=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=W2gTtpuI/EmV/TGNvNTJIH1QQ5sa9qE1HmbYTwkmbDN0EmcMR/yXMD+Y+DYl+rFxK
 Qn8w7RGDayTGXhqLJD+upmHcwarqHVMsDhtzxS7Vve+8ZDZ+OTnXcYVNG0tYPR5Rsd
 pCGlMxUk+K1wGYmGAjz2Zchp4iCGIBaMRojahP+k=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 04EDB6014B;
 Tue,  1 Oct 2019 11:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569928540;
 bh=1iaNgMpqvf1SlTf13O5y/DXKAT+h8Zcuc4V/7Zi8Qnk=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=R7Qr3Iyk3i8/C0xvBZKoF/wMxZxYX/DtHeGwBEyZ22xqlLRaB5990OxQPbEmwtM/c
 MdjOOu8T9f1Z4axYbNde9rkNNKs+5EjwzCGM9ZRkCE+/VYsl5qf2uZnhomsaMjPUVN
 Qp6iXzhMGKI1f233CUEcGNi4ArJGJVVaTxM6b89E=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 04EDB6014B
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/5] ath10k: add 2ghz channel arguments to service ready
 structure
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
References: <1569268165-1639-1-git-send-email-pozega.tomislav@gmail.com>
To: =?utf-8?q?Tomislav_Po=C5=BEega?= <pozega.tomislav@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191001111541.894C460A05@smtp.codeaurora.org>
Date: Tue,  1 Oct 2019 11:15:41 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_041542_807889_234BE22B 
X-CRM114-Status: UNSURE (   5.74  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

VG9taXNsYXYgUG/FvmVnYSB3cm90ZToKCj4gQWRkIGxvd2VzdC9oaWdoZXN0IDJnaHogY2hhbm5l
bCBhcmd1bWVudHMgZm9yIHVzZSB3aXRoaW4gV01JIHNlcnZpY2UKPiByZWFkeSBzdHJ1Y3R1cmUu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogVG9taXNsYXYgUG/FvmVnYSA8cG96ZWdhLnRvbWlzbGF2QGdt
YWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBLYWxsZSBWYWxvIDxrdmFsb0Bjb2RlYXVyb3JhLm9y
Zz4KCjQgcGF0Y2hlcyBhcHBsaWVkIHRvIGF0aC1uZXh0IGJyYW5jaCBvZiBhdGguZ2l0LCB0aGFu
a3MuCgpmYTg3OTQ5MGU0MTIgYXRoMTBrOiBhZGQgMmdoeiBjaGFubmVsIGFyZ3VtZW50cyB0byBz
ZXJ2aWNlIHJlYWR5IHN0cnVjdHVyZQoyNzVlYTFiMjZmMzggYXRoMTBrOiBwcmludCBzZXJ2aWNl
IHJlYWR5IHJldHVybmVkIGNoYW5uZWwgcmFuZ2UKNzM2OTBjNDg0M2ZiIGF0aDEwazogcHJpbnQg
c3VwcG9ydGVkIE1DUyByYXRlcyB3aXRoaW4gc2VydmljZSByZWFkeSBldmVudAo3YjMwODczMjNm
YWEgYXRoMTBrOiBjaGFuZ2Ugc3cgdmVyc2lvbiBwcmludCBmb3JtYXQgdG8gaGV4CgotLSAKaHR0
cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTE1NzUxOS8KCmh0dHBzOi8vd2lyZWxl
c3Mud2lraS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1lbnRhdGlvbi9zdWJtaXR0aW5n
cGF0Y2hlcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmF0aDEwayBtYWlsaW5nIGxpc3QKYXRoMTBrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9hdGgxMGsK
