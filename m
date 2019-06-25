Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A9554FF6
	for <lists+ath10k@lfdr.de>; Tue, 25 Jun 2019 15:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jwag27mMZJSW7cfehm/qAhhevf3CO/1XpYnv5TfhjhI=; b=Ax9VKl+zyOACgv
	jHf/YtXkimP4lo0wwcmrQDg+EKdeA6T9IaZUDOAl41XCQ28aJtTwJJglKfR2B/z4rwa27NcBfYTA4
	8V2KrtholTyLig6BoEJrmGidjrcHgYYbngyceFD2Hnj2XWdFymqdLXMQklC/IB4Mu0FQGs1PImI35
	Yfmoen2Zid3ZPjssNIs88BE3rIvOsoJ/RmDiT7PPopGR9Z1wrzZcVE4m6CZir/21HnkZmlvIwkvFa
	mOnhDtpxzt1wabX1czJQt+W8g6RiSt2D33sMDW3qs4qWOG2iKoRpoFiugw6hoi9qyHR6quaE1oaOB
	XBaNfx+z7yNk9S2CC2aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflGU-0001lJ-J2; Tue, 25 Jun 2019 13:13:38 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflGN-0001gx-49
 for ath10k@lists.infradead.org; Tue, 25 Jun 2019 13:13:32 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 13D96616D3; Tue, 25 Jun 2019 13:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561468410;
 bh=zjou1/WnfU1huNpIrswarKMERzdgOIeCb4I1Jwojw0s=;
 h=Subject:From:In-Reply-To:References:To:Cc:Date:From;
 b=T2Y3/YKse19ubmhp1Ki6L9kh5+lMws1Fk45et9eo9o8fS4eOs/hRZQcB91Vo7lvg6
 ATbReDqutoNK4ucvp0+WHiNg6tNWncu51TKhj9BMspMGsC/0hkbmNnyKQdhPw/Og0j
 DOk1OUe/YFXqUse9o1pMsT7B7TFoJ541HKx1/TeE=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DEA4761633;
 Tue, 25 Jun 2019 13:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561468409;
 bh=zjou1/WnfU1huNpIrswarKMERzdgOIeCb4I1Jwojw0s=;
 h=Subject:From:In-Reply-To:References:To:Cc:From;
 b=oTRIOfvoS7WaotVJX8qZtiG3t0LGUk8D+p5AjglO8Cap85dlXqC35oil+XLVi5E5V
 C6eAZ0ymtwzYZblLdaxkjRDod16HsUvFpCWFVc6XIfaqb3E/U/FSfIFYt/Uow0Dfee
 uqnMzxgyABf2blzSAK2LxuAmS0ZsXsH6ppxNtB20=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DEA4761633
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Add peer delete response event
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1550673001-8779-1-git-send-email-pillair@codeaurora.org>
References: <1550673001-8779-1-git-send-email-pillair@codeaurora.org>
To: Rakesh Pillai <pillair@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20190625131330.13D96616D3@smtp.codeaurora.org>
Date: Tue, 25 Jun 2019 13:13:29 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_061331_215823_EC33D4BC 
X-CRM114-Status: UNSURE (   8.28  )
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
 ath10k@lists.infradead.org, Dundi Raviteja <dundi@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Rakesh Pillai <pillair@codeaurora.org> wrote:

> Peer creation in firmware fails if last peer deletion is still
> in progress.
> 
> The firmware sends a peer delete response event if it advertises
> the service WMI_SERVICE_SYNC_DELETE_CMDS. This peer delete response
> event is used to synchronize the peer deletion.
> 
> Add peer delete response event and wait for the event after
> deleting every peer from host driver to synchronize with firmware.
> 
> Tested HW: WCN3990
> Tested FW: WLAN.HL.2.0-01188-QCAHLSWMTPLZ-1
> 
> Signed-off-by: Dundi Raviteja <dundi@codeaurora.org>
> Signed-off-by: Rakesh Pillai <pillair@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

c6f537a11b81 ath10k: Add peer delete response event

-- 
https://patchwork.kernel.org/patch/10822207/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
