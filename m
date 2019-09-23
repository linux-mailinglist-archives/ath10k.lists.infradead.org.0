Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B311BAF2D
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 10:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZXP4eZK36AVY9+rcQeTKBwSeI0P8sYGW8fCq7Lmu9I=; b=F1kv7d+ngRf/U+
	vXA4LpYfzoubMbpzsnzrSPKlUfFXw1Dlmb/BXtjaQWR43J/8DIHKDk2XGkYF61UoIvR3xCRwh+HpT
	JtiE+7OdacX3O6JLtDwBQ5xpf38BPxfuFunow+fiiAxaReZGtVnhJFDyt0YzpnsGdpH0gXBiR8nfK
	6ydHUcLQUjoAO477M1mtRGOpYKcXL2AoFWQMPw4opTdGkKMKpNTa6K4tsxiTiAuTFC2j4+A1J6fQX
	5tQaZVFqQ7cE0Dk7o0xYlFmY4gZTA2zfOjyAv9DG5THbzFKx/uCaX4a2su68Lqq02wQHdPzFkijQ0
	vaUslU9jKe+nw5OJBbpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCJYF-0000WV-Vj; Mon, 23 Sep 2019 08:18:32 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCJY8-0000Uj-Ai
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 08:18:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 5D2CF614DC; Mon, 23 Sep 2019 08:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569226703;
 bh=hCFtq0Hduj+GSZ4QJISxD796u8FCyLei2WkNAVrpMZc=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=Mcesa2PaA3ZATTtfXSeIW0qOUYwmQ/SmyvJmlrfdpc0BmfUFbGohEktkEK0VSO0P+
 3BlMNxWr43wLZHnVsWWx/7tYOQLPGFmrdpZ5t6syAB3kEhvaBRBJRQQWCIFMKNBlSh
 OaUb+q+3CBbRTqsllXoAkbvL/K2rhRPOGaqrrInY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8DC44613A3;
 Mon, 23 Sep 2019 08:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569226702;
 bh=hCFtq0Hduj+GSZ4QJISxD796u8FCyLei2WkNAVrpMZc=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=fbuXb4R/xelTzedmuzN6takNHv6R6KN5wJ7grdno6N81GPaBNd3Wb5U7efETa3aJ4
 ZpzYJNvXC+Tp/X6l9ir8MEe0VGyw7yHGe8LQgM8073URl6of5Xg2KSz2SFeDWNFmNY
 gJfh/lxqWlIvbxcqmi+1/qSU+09ckXryWJx0bCYc=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8DC44613A3
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] net: ath: fix missing checks for bmi reads and writes
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20190315051903.10664-1-kjlu@umn.edu>
References: <20190315051903.10664-1-kjlu@umn.edu>
To: Kangjie Lu <kjlu@umn.edu>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190923081823.5D2CF614DC@smtp.codeaurora.org>
Date: Mon, 23 Sep 2019 08:18:23 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_011824_465933_370DD361 
X-CRM114-Status: UNSURE (   5.52  )
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org, pakki001@umn.edu,
 kjlu@umn.edu, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kangjie Lu <kjlu@umn.edu> wrote:

> ath10k_bmi_write32 and ath10k_bmi_read32 can fail. The fix
> checks their statuses to avoid potential undefined behaviors.
> 
> Signed-off-by: Kangjie Lu <kjlu@umn.edu>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

8da96730331d ath10k: fix missing checks for bmi reads and writes

-- 
https://patchwork.kernel.org/patch/10854069/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
