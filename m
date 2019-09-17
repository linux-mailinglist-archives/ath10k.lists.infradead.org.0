Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE0AB47A4
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 08:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOgq76O829JJwh5ovxPNcQmsoKVt3MMcW/j4kKy/hTs=; b=Ou0GEktuQX1PyB
	8Tm2MTFSNUPHE4Kf5CtKO+rpSNRXqARE+JXglNWO1zb6FLO2z3e50u6Ei2BX47e+gNM+SUGQ4Hc2l
	qlM1Xmrqf0xTC6kvBQveT9kBxwXmwfVShaM1vtwoNcq1xCvChtAz8TDEliwV533u+D6uCln17+Rmx
	+fIxDEjh8b+VVp0DlTM+KZOLwOyQHHJiQtpIKAQQEXag/wJ5Um32c4zsWV9zLFfyd3QvpVfK8mw+6
	pAQyTsj5QuS4dNC2K2Mk5MgusOrgtT5QdeiVtrkcskr4wGA8j9FglFncSEiPqks40tKwhAcpCtXUK
	YNnFsQiyzdB6CmgnVkXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7Dt-0006w1-9X; Tue, 17 Sep 2019 06:44:25 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7Dh-0006ru-K4
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 06:44:16 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B376E61576; Tue, 17 Sep 2019 06:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568702652;
 bh=XOGjgZr+LKfe7TJSeX81ayFXlkoRYJg8kD9pa3v0y0o=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=hHjwk3DykCmXNhPPM/jZWBftN5aNOMZ6SRxV7iUI1/zojpoJEk20owyBxMfZCFSle
 U58s7w/U/aPUHcE7DEtrWa5SYyUCCBOVJWlcMFZ1TfdNf2/YSMtI9oKwjrYWJvqA6V
 kiFBKfP3Y4w05Svq6MWTrBhQyqS92KhlfUgaJrf8=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A0609611DC;
 Tue, 17 Sep 2019 06:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568702652;
 bh=XOGjgZr+LKfe7TJSeX81ayFXlkoRYJg8kD9pa3v0y0o=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=FfMsWvpo4s9+BpSAs2QkflnUgXyJmp+LDKNBSEkUV+EtqwU5q11C9BHQyL7ITNrQh
 fmYJ4MURt6sxG21zgR6JF0GprOAXMh3WZqw+g+bsds2jYpdlEZ3UQMpV21NSF208ni
 2ly+oDmMJxNea5yF5iy8IoHNIahF0GBPbZeFa4UQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A0609611DC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: restore QCA9880-AR1A (v1) detection
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190906215423.23589-1-chunkeey@gmail.com>
References: <20190906215423.23589-1-chunkeey@gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190917064412.B376E61576@smtp.codeaurora.org>
Date: Tue, 17 Sep 2019 06:44:12 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_234413_827883_ABE15FCD 
X-CRM114-Status: UNSURE (   9.00  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Christian Lamparter <chunkeey@gmail.com> wrote:

> This patch restores the old behavior that read
> the chip_id on the QCA988x before resetting the
> chip. This needs to be done in this order since
> the unsupported QCA988x AR1A chips fall off the
> bus when resetted. Otherwise the next MMIO Op
> after the reset causes a BUS ERROR and panic.
> 
> Cc: stable@vger.kernel.org
> Fixes: 1a7fecb766c8 ("ath10k: reset chip before reading chip_id in probe")
> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>

I'll drop this as there's no plan to support QCA988X hw1.0.

-- 
https://patchwork.kernel.org/patch/11136089/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
