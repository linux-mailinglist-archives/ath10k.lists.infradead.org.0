Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 609F5B47FA
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 09:16:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xf/45cplhB9RaO2V5VnYAVodAQjp/XjIOWZz6F5xGI=; b=oknTwPUVsiz1QD
	gNo8lfcZaTKi4KUaCy2s0jIID3tUG34a+INtwhAeyB8rxgwL1g2SU2EQp1ZC8BnJ0Kh0UTMJwl29t
	0IkKUiNy+5rEv+INU6x7Tc8Wu5NOHrXDndY3Kp7Kvg2kThVMUYBq4/wSRLIgp0qSzLALSp3gzihgT
	5Lj8Ov5se9asT4gedx/I6hh7RCcYGTQxGsTENcdbJiCl6YccRomLvJfqGxooy63CD4JFIqtpyTmb6
	0w2bGT8BSaHx7hcWxQu0Ue5dAFA4QPXu5FafDpTGPFhveKGm0vHAtVWayeDwQT8DFOId/yBt23COG
	d9TqcGcNgWAcWzR6LgCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7jA-0002QD-J3; Tue, 17 Sep 2019 07:16:44 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7iy-0002Po-CA
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 07:16:34 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DC02F6156F; Tue, 17 Sep 2019 07:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568704591;
 bh=GZZTS5JwXBklyWYN0ChgnYdm/WVY6X3Z75O2fGgHcPY=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=Wst9X47t1DlUG+H5QCa8V3gHZ4JOaqB4JjYRvAjxyx+tzRxV68kWY6Ko6ppL1fqfr
 mRlWmi4RI3J1b0QDr0qNGopUUepxsaUMx3Gy78IypjxKdQge+ZGDwuEevduRzwKE/y
 ZfV4byxdtqAyFtFFmlVE1SQg+W7hBcsCsyOWHaWo=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7FD2061528;
 Tue, 17 Sep 2019 07:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568704591;
 bh=GZZTS5JwXBklyWYN0ChgnYdm/WVY6X3Z75O2fGgHcPY=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=nTIpmkiW0DG6OSrf5w0qyOszg7275rTei1E0UhXDgjZr061oGKA3Xjt0+29qubP0P
 8df+N9z6tNnYataWv5KHc7DCn3ZJJs1XCqI5+JJeC8aZrPt0fNSxz/4O0QAHietuEd
 wTxxZUVljrHn1BNNyUxbBtvWTquoZ/em852YM46w=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7FD2061528
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Use ARRAY_SIZE instead of dividing sizeof array
 with sizeof an element
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1567582878-18739-1-git-send-email-zhongjiang@huawei.com>
References: <1567582878-18739-1-git-send-email-zhongjiang@huawei.com>
To: zhong jiang <zhongjiang@huawei.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190917071631.DC02F6156F@smtp.codeaurora.org>
Date: Tue, 17 Sep 2019 07:16:31 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_001632_562379_1881C892 
X-CRM114-Status: UNSURE (   7.00  )
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 zhongjiang@huawei.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

zhong jiang <zhongjiang@huawei.com> wrote:

> With the help of Coccinelle, ARRAY_SIZE can be replaced in ath10k_snoc_wlan_enable.
> 
> Signed-off-by: zhong jiang <zhongjiang@huawei.com>

I already got an identical patch so dropping this one.

error: patch failed: drivers/net/wireless/ath/ath10k/snoc.c:976
error: drivers/net/wireless/ath/ath10k/snoc.c: patch does not apply
stg import: Diff does not apply cleanly

-- 
https://patchwork.kernel.org/patch/11129531/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
