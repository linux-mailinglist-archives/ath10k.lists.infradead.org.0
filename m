Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F227254FED
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 15:12:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auDb5JK+QC0m8tLjp4Dyw4iwVyN2Z7mqqu/FnWmpgNU=; b=fEMjTum+MQJPpe
	2UmNLJ+XhHDINUcVWI7NADmTnXQ2IQL1qeYo+lq10G7kfvT5JYMuMV16+HgTMWYyBLJfWIZWpd54U
	gmYPGjUBAJS0L3xKdTOGyNMmuai54D20CcTut01b2rasH36XQQki6n5GjXBfdcZSTkesRs8lfXk0v
	ktHG/107xceyE+LBh+xt364w+ZFlGjKsfNAjS+w2pMSbFfuo3RmpX+WgA/lArTMgCQGFW5miEt7Qs
	MuShZeGYDeelU5QUDZVihcTLrtatjtABaFnK14V8b7fX/DP+7HTfo9/edUI7RVFyG1AAWVSXvz0QB
	cUOe5tOU1Utm+nToQI0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflF7-0001Ll-72; Tue, 25 Jun 2019 13:12:13 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflEV-0000jc-An
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 13:11:38 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0D6F661A7E; Tue, 25 Jun 2019 13:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561468293;
 bh=+2UpMqcLGW54KLTCIw1QJtWU/Gfje6EkNK0xBkaLM2I=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=e3goeRFmnUIp/N5Q9+rUqbIaaCCplqDetjE/uBaOpLHrGlrQj+OCGpsJClbnaCf9L
 advuP7x13JHlmVOhQnWUCCdc+9FBVCUop082MqhBQzQKvXfXX3qMdhf57bLcuUCIy9
 x9QOI8WD1PmFbJcLNHFrxh3xYFEDKi6EllkOKmmc=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 254A461A7A;
 Tue, 25 Jun 2019 13:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561468292;
 bh=+2UpMqcLGW54KLTCIw1QJtWU/Gfje6EkNK0xBkaLM2I=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=e+kT3sTyWdQFL0g14lBsvEYQuw0fJ3hlxGK3PQVKzR3wneGjIVm4flMxMD7IbqOCl
 6MbUGTz6IQI4r8pb2FCALvQVB4R864Agb0xb/KhhyNXbdxlPvB+MC7pzR+XZmb2tfp
 OWny185+tJ8GA49RPZ7tLX8t7Vpx6Fv8sENqBN70=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 254A461A7A
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: wait for vdev delete response from firmware
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1550411479-32253-1-git-send-email-pillair@codeaurora.org>
References: <1550411479-32253-1-git-send-email-pillair@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625131133.0D6F661A7E@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 13:11:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_061135_397648_F9D2F61B 
X-CRM114-Status: UNSURE (   6.98  )
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
Cc: Rakesh Pillai <pillair@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Rakesh Pillai <pillair@codeaurora.org> wrote:

> When we add an interface immediately after removing
> the interface the vdev deletion in firmware might not
> have been completed. We need to synchronize the vdev creation
> with the firmware.
> 
> Wait for vdev delete response from firmware when we
> remove an interface.
> 
> Tested HW: WCN3990
> Tested FW: WLAN.HL.2.0-01188-QCAHLSWMTPLZ-1
> 
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

fe36e70f766e ath10k: wait for vdev delete response from firmware

-- 
https://patchwork.kernel.org/patch/10817047/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
