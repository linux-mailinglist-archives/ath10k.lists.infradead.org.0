Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C74F210E837
	for <lists+ath10k@lfdr.de>; Mon,  2 Dec 2019 11:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXXRCfZg4n1QVdIsovU6NiJ6njuT4+Or/FV/IgbqxO4=; b=jc00rYr6wVzSxX
	RPR1qHTtCqZjnLcKIBo5KviyvGvZqtdT4fwxiSBhE5ssnL5E2mRt2XvuvK/Y7x8MfMLw4//aQqc+g
	QK7ktOTB7eHLU7me2C+PZsHEXYUAkaMmH8ivR6IyQav1/hlcMuD7Flvfj6jAshYqKTODyMHvWu2k4
	EjF6s3xQMmS2HSM0Wk34QXngVIVhZPBd2ScUaPCAhNzCIXCVg7cXCiPMLik5N99tGLEuHcw4tMh0A
	S1xQc+OtoNlkrq0M2Ceu2pJguzV8RPxKO46AAnPd6xYTgK2yHazeCY0RGNG+HPXqNVGaRF3K15+50
	bUhuQJCETJAdqCM0z/LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibicH-0005fP-97; Mon, 02 Dec 2019 10:07:41 +0000
Received: from a27-185.smtp-out.us-west-2.amazonses.com ([54.240.27.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibicD-0005dD-5n
 for ath10k@lists.infradead.org; Mon, 02 Dec 2019 10:07:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575281254;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=cLeNu81ClBU0podQJ9rpP21GnCcW8uTo3of4/Ze/v9M=;
 b=DLXe1EeMew8UQFPdzHkdjMqk8QGU9cIB00+6oVFM1dNr+szcsDn6sFs+/k0syIDd
 688fniywBF5pEVqc/pHag/N4i5tR4A2SYbxp8zkdxlyvqfj3nU2rrVDpqVkTWHiTCwR
 gOwCrSUQe2PR9RtXcbZZ0aqyAvB9zBlgdtPRBSdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575281254;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=cLeNu81ClBU0podQJ9rpP21GnCcW8uTo3of4/Ze/v9M=;
 b=JPF+FACy7JE8bLsvlJTk1OuaNZTwHTEtaQH4M4on14r+IiTAJCR7jaUzP5sk/L8h
 wLAGDUiHeaY1BPhgmORgOSgooKbupKrq3t3XqNo6hB8QmmbzmCBz7AZDEWVk+7s13pV
 995+FpT5ubB/LNkaYovz8hijUCD2hZBcObv5flps=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 592DBC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: change bundle count for max rx bundle for sdio
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <0101016ea72cd3fc-d998517d-4033-4659-b1f8-2b6dd2717682-000000@us-west-2.amazonses.com>
References: <0101016ea72cd3fc-d998517d-4033-4659-b1f8-2b6dd2717682-000000@us-west-2.amazonses.com>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016ec614610c-2702f676-611d-4d34-b5e5-cb4f665a87aa-000000@us-west-2.amazonses.com>
Date: Mon, 2 Dec 2019 10:07:34 +0000
X-SES-Outgoing: 2019.12.02-54.240.27.185
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_020737_248847_1C4D92A8 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.185 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> For max bundle size 32, the bundle mask is not same with 8/16.
> Change it to match the max bundle size of htc. Otherwise it
> will not match with firmware, for example, when bundle count
> is 17, then flags of ath10k_htc_hdr is 0x4, if without this
> patch, it will be considered as non-bundled packet because it
> does not have mask 0xF0, then trigger error message later:
> payload length 56747 exceeds max htc length: 4088.
> 
> htc->max_msgs_per_htc_bundle is the min value of
> HTC_HOST_MAX_MSG_PER_RX_BUNDLE and
> msg->ready_ext.max_msgs_per_htc_bundle of ath10k_htc_wait_target,
> it will be sent to firmware later in ath10k_htc_start, then
> firmware will use it as the final max rx bundle count, in
> WLAN.RMH.4.4.1-00029, msg->ready_ext.max_msgs_per_htc_bundle
> is 32, it is same with HTC_HOST_MAX_MSG_PER_RX_BUNDLE, so the
> final max rx bundle count will be set to 32 in firmware.
> 
> This patch only effect sdio chips.
> 
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00029.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Fixes: 224776520ead69e ("ath10k: change max RX bundle size from 8 to 32 for sdio")
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

4a9912451630 ath10k: change bundle count for max rx bundle for sdio

-- 
https://patchwork.kernel.org/patch/11261779/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
