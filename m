Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F2410D1F8
	for <lists+ath10k@lfdr.de>; Fri, 29 Nov 2019 08:44:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8S6Dzv6UWtjmPd9cgbgrEDayrgfAJmUh88B+RTRn84=; b=QD6z+1Wtccfawq
	gU9llJAnK1nRRTKECiLK/8DkEH8xmd55gjyuqDGJv2ayGrtAvbDDBpoYcC8jCFuwzis7VSdgQ7SMx
	jYSAGf2JYzcvx++vfeMvCBj3iCayfURhGS71ggnYLtLGS6S/V0PYaqG10huiRTZngrLnpTMDEF9Wi
	1ZSeol3mQWggreo93AVewacWGv0qTRLY8busXAWWKAhfNeHlrua2HwjrIUxoPKEh/IqJ5nqCz3/nd
	8e+yYNEUphJFq4mqZWX4hIeqr2khbFzOEj6wYyS+bmZ1L/Q7pcjibyqWA56XsPIjgwHlqyCVoAtCv
	llSC8rTWGJj7j3ENJLiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaaxG-0005mh-Ce; Fri, 29 Nov 2019 07:44:42 +0000
Received: from a27-18.smtp-out.us-west-2.amazonses.com ([54.240.27.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaaxC-0005mM-MS
 for ath10k@lists.infradead.org; Fri, 29 Nov 2019 07:44:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575013476;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=p+y1rMEnDjbDzSRwv+hNOFPILx85VSeZxDrYtcqO7ag=;
 b=NeyDy11MuO0nBPprfSlopUwpuMwyXoAeP8rUa8EmqAnio+cB5VGQFGstAilCFlz2
 j7+I7U29w7D3SVzqb1t315ogaARQeMnloxadzprZ/+X/7wvJrP41Xm1/Nd6839HzZgW
 UI3WP8kH5hshldKkkI1Ez7nlbUcZSIUdazjVMsVA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575013476;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=p+y1rMEnDjbDzSRwv+hNOFPILx85VSeZxDrYtcqO7ag=;
 b=Yl2Gw/Rc+c5fGrpJujP5GJRu/8QlixRfxW4XCoQ77QTSKpQi3rKIo2/SVstDNoWU
 QVC9kFQh91pZmJZEE0eGhvqOwV+NbpExc8lYbw/LYtdX5B/5T9qj4OG3133k+/qCPh/
 Auxr3lW3P1NtIEfZ+HFJOkvzFGS0RFpxwDP57hxM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5234EC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: change log level for mpdu status of sdio chip
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <0101016eaaeb8dba-59b83dae-1133-48b3-8aab-a51f765322bf-000000@us-west-2.amazonses.com>
References: <0101016eaaeb8dba-59b83dae-1133-48b3-8aab-a51f765322bf-000000@us-west-2.amazonses.com>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016eb61e6758-6214d37a-5887-432a-ae09-573b2fb33bb1-000000@us-west-2.amazonses.com>
Date: Fri, 29 Nov 2019 07:44:36 +0000
X-SES-Outgoing: 2019.11.29-54.240.27.18
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_234438_759927_BC0105C4 
X-CRM114-Status: UNSURE (   2.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> Change log level from warn to dbg level of mpdu status
> of sdio chip.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00007-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

5d2467299a17 ath10k: change log level for mpdu status of sdio chip

-- 
https://patchwork.kernel.org/patch/11263361/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
