Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95118164D9
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 15:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsQcGWuKV5uvDmpc7+BDRKMkjQ5d50LgV6sGQlnpD+o=; b=YZpHvTnNuMrEYd
	MrZoW1VWKBi4sFBSEfjgciP5YTn7lvhsCzzb862hSKMBOZi5+Sfjy3uENXRae3oUgKaB0GYwMlFoM
	JgzsmnBZOU93N7qhrc5DDN2GOKq1T6U6plraWdUEPwwOrpTJ9/z9P+eHx1+RtzN9S4QF1SEEbwg1s
	oUm8Z0ga5kovb0mJTDSzhdRMvbiA0OaC2Tz4iOajKKYXQMNM2cUsTNBRgKGvsnzIRHU+W4yle2ByE
	tnSnDoWgpO8h0AopG3NRdW1Hddc6r0ypuNFEn/QbgMBpx2zDmX4wbLR+SYuLnm5aP34+48zVphidl
	Q3tVl480LWz/eeJlL5UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0Oq-0006FY-Gt; Tue, 07 May 2019 13:44:52 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0Ol-0006Em-Se
 for ath10k@lists.infradead.org; Tue, 07 May 2019 13:44:49 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8F8E1609CD; Tue,  7 May 2019 13:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557236687;
 bh=5+/CuPZbzgEEDoJkq+RXNhVRlIWuk3/hjSsNj+NCNLA=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=DCKo2cEOR9hK/0XqV98hMP0MIM3SsMvJEsWdizALA/5nWvrMBXtwxnzOlFHw+KX20
 7rWx9KbCw+s81K/Z4tSlr4vI2oGZPpfir/C4mFk9LOlrhEnCn1TJD2hUMft1hqGFoD
 39YwJL68BEpKO2gJvbIowjqRYykpU+mo/tUF/rl8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,MISSING_DATE,MISSING_MID autolearn=no
 autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 395B2608FC;
 Tue,  7 May 2019 13:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557236687;
 bh=5+/CuPZbzgEEDoJkq+RXNhVRlIWuk3/hjSsNj+NCNLA=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=D9cEawQDeV4pNIzwfwMWBVd6wEO5UF3N/kVdQ4mOVJgcjC0xPGwrmYM3mw+O3Wvaf
 BDbNmFOWXyF6djE22GiZyU2WmR30LlE9AAjBLAgdVH/4FBzx7zOilZGqkaovzBhdGc
 4DLt7vj1TuPIpaykG9fT0BMU/1IvFTaKE+EWMlDg=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 395B2608FC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: rx_duration update for fw_stats debugfs entry
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1552389470-28405-1-git-send-email-bpothuno@codeaurora.org>
References: <1552389470-28405-1-git-send-email-bpothuno@codeaurora.org>
To: Balaji Pothunoori <bpothuno@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190507134447.8F8E1609CD@smtp.codeaurora.org>
Date: Tue,  7 May 2019 13:44:47 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_064447_941003_939D6E36 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
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
Cc: Balaji Pothunoori <bpothuno@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Balaji Pothunoori <bpothuno@codeaurora.org> wrote:

> Currently instant rx_duration always fetching as zero
> in fw_stats debugfs entry if extended peer stats event
> supports.
> 
> This patch updates instant rx_duration in fw_stats entry
> based on extended peer stats and maintaining backward
> compatibility for 10.2/10.x.
> 
> Tested HW: QCA9984.
> Tested FW: 10.4-3.6.0.1-00004.
> 
> Signed-off-by: Balaji Pothunoori <bpothuno@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

5c51875c0943 ath10k: rx_duration update for fw_stats debugfs entry

-- 
https://patchwork.kernel.org/patch/10849119/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
