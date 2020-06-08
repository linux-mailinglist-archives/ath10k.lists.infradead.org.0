Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3E31F176A
	for <lists+ath10k@lfdr.de>; Mon,  8 Jun 2020 13:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQn+fPTCELeUEyC9whc17RhpEqlXt62S4564aE4Q8fs=; b=KIcZBhKetpH/n2
	n4+gj5nof1mQQBYayFGWxSoVXSIMaWTDp3J821GEN4JTTturd9scw16r56WVc/c2SoHV0Gi2ibWBk
	JPVDmOlJHv8zD/0wRrWGVkqbzHCHSjEdiQVIWQP9XdcukVYTHPdUFZ5YB3ejAFOkMMuvswAGc9ihl
	xpbthLfBj777jcn4fxKQIqkINMlbSRXjUD8hwtWr49qRRxoPwgpoQqdXwUGJds7E8bjvlgEV+DsC5
	/2oukBQ8oW0s6deIVJZA6q02IrNxn5a314NFAPhwQGoG2hRaOAqkOqWKo8tOtADqpFE/imeufJAlg
	r0NVdbBQZ3dCB7rdwztg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiFnG-0004MK-7O; Mon, 08 Jun 2020 11:18:18 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiFnA-0004EY-LM
 for ath10k@lists.infradead.org; Mon, 08 Jun 2020 11:18:16 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591615094; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=TKC0V/VIkd6m4e9NYPzBYE0dnQfWwnrnE4QzekjDAFc=;
 b=jCTR39PLGDfm/jwbhXFS+CB9q4LVrdXCGSt2D1MfnK3GpLvz+uyF098YELNyYRThXKKNSp2Y
 K56da7yQnn56Y9olzt7wRu+74pkeEYFAlBvHEzYmzMDYrHIpcGLBk49BILIrJUZ2hMRjQwd/
 yk4+B84Agi81L/x/ijk87efsC78=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n13.prod.us-west-2.postgun.com with SMTP id
 5ede1e706ecee74a4fe52991 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 08 Jun 2020 11:18:08
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9D72DC433CB; Mon,  8 Jun 2020 11:18:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 40286C433C6;
 Mon,  8 Jun 2020 11:18:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 40286C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Move msa region map/unmap to init/deinit path
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1591191231-31917-1-git-send-email-govinds@codeaurora.org>
References: <1591191231-31917-1-git-send-email-govinds@codeaurora.org>
To: Govind Singh <govinds@codeaurora.org>
User-Agent: pwcli/0.1.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200608111808.9D72DC433CB@smtp.codeaurora.org>
Date: Mon,  8 Jun 2020 11:18:08 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_041815_055300_C0966320 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Govind Singh <govinds@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Govind Singh <govinds@codeaurora.org> wrote:

> With kernel qrtr switch from user space qrtr, fw crash is seen
> during reboot. During reboot modem rproc shutdown causes wlan qmi
> service exit and msa region gets unmapped. Since pdev is not suspended
> hw still accessing the msa region and this results in  fw crash as
> msa region is unmapped.
> 
> Decouple msa mapping from wlan qmi server arrive/exit to init/deinit
> path.
> 
> Testing is pending with "0c2204a4ad71 net: qrtr: Migrate nameservice
> to kernel from userspace", only regression sanity performed with user space
> qrtr on QCS404/SC7180.
> 
> Fixes: 0c2204a4ad71 net: qrtr: Migrate nameservice to kernel from userspace
> Signed-off-by: Govind Singh <govinds@codeaurora.org>

Dropped as requested

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/patch/11585699/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
