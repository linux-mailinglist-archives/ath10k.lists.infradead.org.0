Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41592149A20
	for <lists+ath10k@lfdr.de>; Sun, 26 Jan 2020 11:35:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NVQUOzCBV73AbHYvWomn+KuVMFl14muxAhKbihFo12k=; b=ntjHklsnsm4x9q
	6dWQn2+OuGYM0AK9AoPAQK2IBFKmSmDJ/tvLBzZuGzjgHOGzVtyD30IRf8n3ogyEwm/jYG6O65kXo
	DegsyZJDjGTJtUHs5ZHG1+Emvf/L4vhetLCJloZdUiE26guVq9FsGMidScj42b9bb6zfm3+03Tys1
	3rIMHIRGwV5P9I39cMVSr5jEcP2zJ11wytV3IHBmSwiY84cEWDvrr7J4WttzuudCoK7o3NQiZvNB3
	hQ8RxOObKbRc6M9M562i4zol2HVFc8Byrs/QSVuqb+qqQ3R2MsKYKsegcVGPs2c7YyFHsOmGym4Ia
	gSQyJ5MS1pHJr90M8Swg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivfFr-00063y-Ii; Sun, 26 Jan 2020 10:34:59 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivfFm-0005oR-RW
 for ath10k@lists.infradead.org; Sun, 26 Jan 2020 10:34:56 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580034894; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=pihjqQSpN0i26N9eBw/aDLtknwEWAo/7uSI8Y1MDipk=;
 b=vvWqmkSSqpxqXzDv2q55kCe6aIyEWM3Ok47SreGwYq5xRc3c5Tah4xtUfoAsbOKBxlkx+Ux5
 xAfoDaxbcKTJnklxTV6Yxkr+O/p/DoVl+0GRYgQx6aXu9YtPG5kLkX5Sss8TkpdqtQ0kTkNP
 OAqrHiJPidldARo8r283Hlxf4iM=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2d6b4d.7feba2a79ed8-smtp-out-n02;
 Sun, 26 Jan 2020 10:34:53 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C3709C43383; Sun, 26 Jan 2020 10:34:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 6EEFAC433CB;
 Sun, 26 Jan 2020 10:34:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6EEFAC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH,
 v4] Revert "ath10k: fix DMA related firmware crashes on multiple
 devices"
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1578976521-6104-1-git-send-email-zhichen@codeaurora.org>
References: <1578976521-6104-1-git-send-email-zhichen@codeaurora.org>
To: Zhi Chen <zhichen@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200126103452.C3709C43383@smtp.codeaurora.org>
Date: Sun, 26 Jan 2020 10:34:52 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_023454_952447_C65EE9E1 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Zhi Chen <zhichen@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Zhi Chen <zhichen@codeaurora.org> wrote:

> This reverts commit 76d164f582150fd0259ec0fcbc485470bcd8033e.
> PCIe hung issue was observed on multiple platforms. The issue was reproduced
> when DUT was configured as AP and associated with 50+ STAs.
> 
> For QCA9984/QCA9888, the DMA_BURST_SIZE register controls the AXI burst size
> of the RD/WR access to the HOST MEM.
> 0 - No split , RAW read/write transfer size from MAC is put out on bus
>     as burst length
> 1 - Split at 256 byte boundary
> 2,3 - Reserved
> 
> With PCIe protocol analyzer, we can see DMA Read crossing 4KB boundary when
> issue happened. It broke PCIe spec and caused PCIe stuck. So revert
> the default value from 0 to 1.
> 
> Tested:  IPQ8064 + QCA9984 with firmware 10.4-3.10-00047
>          QCS404 + QCA9984 with firmware 10.4-3.9.0.2--00044
>          Synaptics AS370 + QCA9888  with firmware 10.4-3.9.0.2--00040
> 
> Signed-off-by: Zhi Chen <zhichen@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

a1769bb68a85 Revert "ath10k: fix DMA related firmware crashes on multiple devices"

-- 
https://patchwork.kernel.org/patch/11331293/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
