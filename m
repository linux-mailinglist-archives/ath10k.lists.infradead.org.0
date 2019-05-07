Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5CD1654F
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 16:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+iCA4kQgUVvPcHAxqCrllqeJpe8g7El5QB4CAFIr//Y=; b=fQN8KatHySd3BV
	JUwleUbprKFycz3qsDo2MHpaooQGwymfWuVhldKMRpdwRSRdniZCskcIq0XwuzjWSC11ZSWxFahjM
	FtfJZOOdfavP/CsFPtVVbUyRLVfLNjntj1gE7DOsdXBh+NVXZIDrsNGzrRa5jZG9/qEQALitYq5iv
	EnqjLof95mAB+FLqNMGvJ5SIlRPNziy8zVtUeopXcba1ad2lDloaeVQRTviFEpPP25jCuDYqyVhRR
	zfhC7a0GSQ96Nce+djdjKrZQImMTVMvNKdwbjUiMr6wgUrPY7CDJziSlKE8XssmIv8KwNRZWs3Pt5
	IxDHOX8xEuGcEGx5Vxyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO0ff-0007uJ-UM; Tue, 07 May 2019 14:02:15 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO0fY-0007ts-IW
 for ath10k@lists.infradead.org; Tue, 07 May 2019 14:02:13 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D214060350; Tue,  7 May 2019 14:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237727;
 bh=/hVlbXyQQMjDGxfdnaO6GMk/i/CPNdy0bGA6g5+p8MU=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=XzPzc0CbrtyMTXrT98hjmMKNnB0JGzOvtNeU3AQgAfPYOrznKpj3HsmDaBPhCTgLD
 7Job7ZRtmkKverycSu49cenU0tE2FcJySUK9w2HooeNCK6yBx7NnPS6UL2p5CBYlIM
 ck8vP9AbjWcJdgqRreN3Zkbd9rOGfDcnFvUnvxs8=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 56CE26016D;
 Tue,  7 May 2019 14:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557237727;
 bh=/hVlbXyQQMjDGxfdnaO6GMk/i/CPNdy0bGA6g5+p8MU=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=TJfZ4KbGz/dcV6dG6VXKhpgw6pxAZIyfxS1lRsd3c0Wt940c9MsC9Jb16oe+X1DdA
 l3sZCXEbPwTKNRjTxbfUEuDqp2xxN3Gntzxoe0nA+bC5S4dwFdVkx3psFhGbODhxYN
 dbgIH0lHoO74t4u+cTgzqB4p8Bf9GKwZ9iOdNYd0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 56CE26016D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH 1/3] ath10k: Add wmi tlv vdev subtype for mesh in WCN3990
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1555489907-30117-2-git-send-email-svishnoi@codeaurora.org>
References: <1555489907-30117-2-git-send-email-svishnoi@codeaurora.org>
To: Surabhi Vishnoi <svishnoi@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190507140207.D214060350@smtp.codeaurora.org>
Date: Tue,  7 May 2019 14:02:07 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_070208_631078_80CC92E4 
X-CRM114-Status: UNSURE (   6.71  )
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Surabhi Vishnoi <svishnoi@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Surabhi Vishnoi <svishnoi@codeaurora.org> wrote:

> There is a disparity in wmi and wmi tlv vdev subtype
> enum for WMI_VDEV_SUBTYPE_MESH_11S.
> 
> Add different enum for wmi tlv vdev subtype to support
> vdev of subtype mesh 11s for WCN3990.
> 
> Tested HW: WCN3990
> 
> Signed-off-by: Surabhi Vishnoi <svishnoi@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

3 patches applied to ath-next branch of ath.git, thanks.

a7368c395fc3 ath10k: Add wmi tlv vdev subtype for mesh in WCN3990
97354f2c4327 ath10k: Do not send probe response template for mesh
7835d8f8792d ath10k: Add wmi tlv service map for mesh 11s

-- 
https://patchwork.kernel.org/patch/10904959/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
