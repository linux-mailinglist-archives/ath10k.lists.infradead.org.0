Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFA6108D50
	for <lists+ath10k@lfdr.de>; Mon, 25 Nov 2019 12:54:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bm2NtoxxHHeRHQqDwpNTT5Lngi+lB4kvQBX0kWYWHEg=; b=IOJcUVhk1AMzjb
	xAVyaXVlVbNvwc/IosDdqP6fWB8LdxXCHxagcEzutdANdlRpdGYz0KbvyGvnh0Q8EkyDieH2pOaoA
	/nrQqiNBXwdsHPMel8A76c0+R6l/vD1pQEqcHX8nMSKj6rGEc/1pc8wRmUlH048ZgVZGxnSBx8bDi
	JkvXHeibrce2Anevo+5sMEOHFD6mF6EmxRGhckM9a3YhJrW0rMOpJScjdPpQdqTecvRpaakT79i/2
	Qt2Knxy0NInmCsz4C8zyKJOFX3a5mTUHtL3mROXSs612lciIM376tcH7B4FaE99S1QbSdhhUgn/Vm
	98IUVlWaGK5pKF9L78xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZCws-0004zJ-6q; Mon, 25 Nov 2019 11:54:34 +0000
Received: from a27-188.smtp-out.us-west-2.amazonses.com ([54.240.27.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZCwo-0004yi-VU
 for ath10k@lists.infradead.org; Mon, 25 Nov 2019 11:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574682868;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=RPWz9nO9IZFXf6ojtnISMP4vkbdmgCzEn0pao2zsMrc=;
 b=l8NHwRzngSkrOxHQs76s2gx3W1WjiG1bGMiAnjpYyrR0hMoR69pvGerg/NE4RUwp
 7snlMn9ydrQXzUqkdGXKYfQR1n830HPodOdyN5ih9eOYmTAuHJTYr/BcmZrYVSHXV9O
 Xlwovgpkqa3VKWpTA6RNlfDztnrha6ykMC6DLSRo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574682868;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=RPWz9nO9IZFXf6ojtnISMP4vkbdmgCzEn0pao2zsMrc=;
 b=T7stF1bOxfTbuNEJjOYhEbtJ8VCgR15P/RX8lU1AD74nE4Leleg95fKGtPQf51ur
 IXfH2Nf+HIMn78kdI+olaPLO+sp42Uv+mtFES1vZmpquZZ+cVuJn7WnSL6SvXzTFbcp
 cY8crumEHjgtCg7tgXKs7/L0EpGZe6Zf6Ylt3gB8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EC002C447A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: add large size for BMI download data for SDIO
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191107100809.17982-1-wgong@codeaurora.org>
References: <20191107100809.17982-1-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016ea269b8df-d13c2173-799f-4f69-a1e7-43709bb9a2c2-000000@us-west-2.amazonses.com>
Date: Mon, 25 Nov 2019 11:54:28 +0000
X-SES-Outgoing: 2019.11.25-54.240.27.188
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_035431_040530_686451CF 
X-CRM114-Status: UNSURE (   4.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> Download firmware time cost of SDIO is too long, it is about 480ms,
> add large size 2048 bytes for BMI download for SDIO chip, its time
> cost will reduced to 240ms.
> 
> This will optimize the download firmware time cost.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

d58f466a5dee ath10k: add large size for BMI download data for SDIO

-- 
https://patchwork.kernel.org/patch/11232449/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
