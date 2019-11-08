Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A18E4F4256
	for <lists+ath10k@lfdr.de>; Fri,  8 Nov 2019 09:43:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Qdu6avm8rKNQMgJM+HDa3IGvWH4yhtfLZyuBlpfi98=; b=WppVqxEdbwSAor
	cKuA4rpOcPCTlGB1qDMrorjRLDZVpiy14uo41IG/PX2S1T62Eiwd5LkKaXjTNnGJY4cDXDqAYxUo/
	5clkolhXSue1nBYxHpS66KApZ2ZZNW7bUjpG7Hi+A+Vrk9aNfb/vgEVmTtCOHxJOui7WFdcjMAXHk
	3glr6Pvl6/D+FKs0kl95n9FlL9emlZ6rys4CD7m6qNanZmzOz2IYX5uV5yJ04Ww/+9BVCd9gJAH1Z
	8mNtorgYYl8MlMuMFrhy0IZyLwBYmMye96ZQyPPqowcAfqZUvKiQKxtPs4l8D5DJtxMmSEBOq97lR
	YlP0Flqp52eeImGRsEfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzrR-0003jr-Af; Fri, 08 Nov 2019 08:43:17 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzrN-0003jF-Kn
 for ath10k@lists.infradead.org; Fri, 08 Nov 2019 08:43:15 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 420DE6087D; Fri,  8 Nov 2019 08:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573202593;
 bh=WhxqsAeTYD0pXN4EMoNIgBxzPCQEBMKIOLxKIgOLbAA=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=F8PidCTeRHs6r2a82OJ8jxiJWaPOA9Sjk1uSL6FIkOy1JRf2GiV7bVQIQH4QUr2rU
 7Fn8MiMHewIEqEATVyXzNHAf/Thx9kVexBMkicj3LWpuKIuV529D3zqZQ4609NkEJg
 zfSwzDyQBjWk3wfeHDYA4VaDkrv+4WdwT67/8Pno=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 9389D60591;
 Fri,  8 Nov 2019 08:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1573202593;
 bh=WhxqsAeTYD0pXN4EMoNIgBxzPCQEBMKIOLxKIgOLbAA=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=KVBp3Z0ClLJpDQb/mFEwiBgarsXC3yVQpBEC1XvbaBFL6ZlPb6S9gSGnm04YHEBZw
 yH5eekiQtOHoPKc4ZmqGbrKSeHbVOI8kmBCdUVTu+MFT/WCOSMktibJaFkwF2QuvD9
 +kz1sf+LnheShw+Q7nXqyP0YOgkkSyNjENnoQVVY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 9389D60591
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: fix get invalid tx rate for Mesh metric
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1572329537-27728-1-git-send-email-miaoqing@codeaurora.org>
References: <1572329537-27728-1-git-send-email-miaoqing@codeaurora.org>
To: Miaoqing Pan <miaoqing@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20191108084313.420DE6087D@smtp.codeaurora.org>
Date: Fri,  8 Nov 2019 08:43:13 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_004313_704228_A7845466 
X-CRM114-Status: UNSURE (   5.88  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hou Bao Hou <houbao@codeaurora.org>,
 Anilkumar Kolli <akolli@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Miaoqing Pan <miaoqing@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Miaoqing Pan <miaoqing@codeaurora.org> wrote:

> ath10k does not provide transmit rate info per MSDU
> in tx completion, mark that as -1 so mac80211
> will ignore the rates. This fixes mac80211 update Mesh
> link metric with invalid transmit rate info.
> 
> Tested HW: QCA9984
> Tested FW: 10.4-3.9.0.2-00035
> 
> Signed-off-by: Hou Bao Hou <houbao@codeaurora.org>
> Signed-off-by: Anilkumar Kolli <akolli@codeaurora.org>
> Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

05a11003a565 ath10k: fix get invalid tx rate for Mesh metric

-- 
https://patchwork.kernel.org/patch/11217003/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
