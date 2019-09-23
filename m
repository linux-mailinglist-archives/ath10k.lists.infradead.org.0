Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC519BAE7F
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 09:29:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEt22gPUfDcjwyNz//Hu+FQ5BG2ymynVh+8cS3NVlMg=; b=rtZYDdBPsrfEri
	cdzXZZWJbXBZ40JytdoplFA2W5KRLSVJ5I3KuqNSxVpi846HwUgpZ1SLnWiB1bXw1cnWH6OjdazgY
	ZIxYY3grAegsxw7tIIjhcAb4SE5PEHbqJtQduSTWeu6UU5nkh3mTy3Tl/zLBbXo9Yx/cYokeIQno1
	ctIe3elSM1rJJoCUPKsVTocA1iKjD3fHbpctVhN+Ch1gh4wIVQs0PghLl5v8FJU7fY9pRMaY0g8w/
	gR5dPVGDicyVmPF6zb4Vb46gEA3txbHk73kjZOm1YXWOekKSMMlabPKsCshqXhXs0Q7O4wW2RGMlx
	SzdJSUQ/UW8ViQaqIyDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCImY-0006bj-Pd; Mon, 23 Sep 2019 07:29:15 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIm3-0006Wz-6A
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 07:28:45 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9CE6761528; Mon, 23 Sep 2019 07:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569223721;
 bh=p7bArJ23MTwi+07gdxra/vS5ObDsiMQ36sC5zCsrcZk=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=SqPUf0KH52oFh3h9YlP5Am4jyEYo4aPvD8T2jFS/xokq4hDNvqB4B+Oi+l+3CqeT/
 d1CQBIGaqDwG4H7bxEmIcoUrBLRRPSxWV3gCxDJmlbeSU2cv4Vkd5tGPqcCm99rEr8
 f65WDEeIjskcKg79OAcfEsS9onVyn/p2UXZf5KFY=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 02CF060A97;
 Mon, 23 Sep 2019 07:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569223721;
 bh=p7bArJ23MTwi+07gdxra/vS5ObDsiMQ36sC5zCsrcZk=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=CM0fJGoClbEMOsb4lASLgnMEavYoZfvx+IH6r2SeSsA81DmzxqjFhh3rwUVN9bORA
 vBoIxyGFOopKDTy2/x/ezhU9eLVBLP3kpDIeNpDK6O4sDXObIbj9HQPkr23ohFDAVT
 ilunzo8iD1ckVdMTqY3YSjXvFohZ65BL9yiVe92Y=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 02CF060A97
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Add peer param map for tlv and non-tlv
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1550556576-19803-1-git-send-email-pillair@codeaurora.org>
References: <1550556576-19803-1-git-send-email-pillair@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190923072841.9CE6761528@smtp.codeaurora.org>
Date: Mon, 23 Sep 2019 07:28:41 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_002843_591204_24E1BAF8 
X-CRM114-Status: UNSURE (   7.78  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rakesh Pillai <pillair@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Rakesh Pillai <pillair@codeaurora.org> wrote:

> The peer param id for PEER_PARAM_USE_FIXED_PWR
> is different for tlv and non-tlv firmware. This
> causes incorrect peer param to be set by the driver
> to the firmware(tlv/non-tlv).
> 
> Create seperate peer param map for tlv and non-tlv
> firmware and attach the peer param id based on the
> firmware type during the init.
> 
> Tested HW: WCN3990
> Tested FW: WLAN.HL.3.1-00784-QCAHLSWMTPLZ-1
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

c0e33fe6fb0f ath10k: Add peer param map for tlv and non-tlv

-- 
https://patchwork.kernel.org/patch/10819255/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
