Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D51354F91
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 15:02:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ourc7MiNAk0kl+T+ZrUSQUw18Mfdh7mP52JM+CPe9Tk=; b=hMQBA9McGF/O9L
	lL69+3wz+3Nsnz6q57QmAHeCZwgx5I66LA6zrxVjx52SIxzpaWletOe4ZuWEjOZ82hGJHYg7i6tGl
	5revYVwe1ZXin48C4uS6YRoX6gV92G/FQ2tSKiJ2cxs2L0zBbFTIywCMqo6PSJY4BBBWnN0swFm86
	wo4gsj0gD/qW6QgDuRA5ENx+gKM/QE6m75Ib3cylzBrGfoJKtqgEzrVlfwIRaI4Vg4t8yShrDcBDq
	Xj2OnQCOYmvVgRQRaHH//YeP91PAyv/Yc9FKapsuN5P9jnVWsmqWJT4q+2z2OVxYYMJ6uckUx4eal
	XgVbcB4xXp7EMo+Ej4IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl5p-0000S9-1b; Tue, 25 Jun 2019 13:02:37 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl5k-0000Ri-I1
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 13:02:33 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 451AB6085C; Tue, 25 Jun 2019 13:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467752;
 bh=goyYnP7cy9ipwr1KfMe6m/clr8EHIElroEeXKJsdJfc=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=JG21v+zjk3kqYzQF2gVFpo7X+fkwF0+mtIVUpB8KB00hNYtX24sBNWB2ahXeiuo21
 WrC8zZhbl2orzADeSc2wiyN0f+PHlnhQIrGfXzu3GYSvNG3bixz0Eashd2SZzrbZA1
 6MSpAJnKdrSEuBWQqxvNJG6PN3SQPy3Sw4wQ49YE=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E59BE601B4;
 Tue, 25 Jun 2019 13:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561467751;
 bh=goyYnP7cy9ipwr1KfMe6m/clr8EHIElroEeXKJsdJfc=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=B2V+cB6nj33RpaDjy7APHFG83RyGsW9OkR77WdH6hG7d/o7E/1FOUn8tFl4Bv5jvO
 tPt/T2wkolZ0S5LS2bVxeclGVg0XwHQ5QDHQdTwyuaQE27LXgaBLiHUg8Re3CKAmrd
 1Gib72gS7qW19WmO78wHcaI4eYrS6O2y+gSOSRys=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E59BE601B4
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: fix failure to set multiple fixed rate
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1559117608-11117-1-git-send-email-miaoqing@codeaurora.org>
References: <1559117608-11117-1-git-send-email-miaoqing@codeaurora.org>
To: Miaoqing Pan <miaoqing@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625130232.451AB6085C@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 13:02:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060232_629076_7A56767C 
X-CRM114-Status: UNSURE (   9.85  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Miaoqing Pan <miaoqing@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Miaoqing Pan <miaoqing@codeaurora.org> wrote:

> Currently, below fixed rate commands are broken,
> iw wlanx set bitrates legacy-<2.4|5> ht-mcs-<2.4|5> vht-mcs-<2.4|5> \
> <NSS:MCSx>
> iw wlanx set bitrates legacy-<2.4|5> <legacy rate> ht-mcs-<2.4|5> \
> vht-mcs-<2.4|5> <NSS:MCSx>
> 
> There are two methods to set fixed rate, both failed,
> - Use vdev fixed rate command
>   This command only support one single rate, but it's broken due to
>   mac80211 change commit e8e4f5280ddd ("mac80211: reject/clear user
>   rate mask if not usable"), which requires user to specify at least
>   one legacy rate. So we can't use this command to set ht/vht single
>   rate any more.
> - Use peer_assoc command
>   This command can update rx capability for multiple rates, it will
>   work fine for ht mcs rates, as each supported mcs can be advertised
>   in ht_mcs index mask. But this will not work with vht rates because,
>   as per the vht mcs capability advertisement, there are only two bits
>   to indicate the supported mcs. E.g. only support 0-7, 0-8, 0-9.
> 
> So introduced new WMI command: WMI_PEER_PARAM_FIXED_RATE. After peer
> assoc, the peer fixed rate cmd will work for that specific peer.
> Remaining peers will use auto rate. If both vdev fixed rate and peer
> fixed rates are given, peer fixed rate will take effect to peers for
> which this cmd is given. Remaining peers in that vdev, will use vdev
> fixed rate.
> 
> Tested HW: QCA9984
> Tested FW: 10.4-3.9.0.2-00035
> 
> Signed-off-by: Miaoqing Pan <miaoqing@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

8b97b055dc9d ath10k: fix failure to set multiple fixed rate

-- 
https://patchwork.kernel.org/patch/10966425/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
