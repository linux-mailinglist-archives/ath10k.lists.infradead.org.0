Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7BD10D1F4
	for <lists+ath10k@lfdr.de>; Fri, 29 Nov 2019 08:42:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7RSwdpOOki+jaJASi6M1pTKC82/obBAdn+DZZ7rgjc=; b=OjykBpDXK/JfuO
	+Cco9/bJB4X1evXx1km3vdKpJM9DuF5oUOQr9NGY4e11RjIWkZvtd1XPKmKaYFNM32nkeuB1rE/rp
	d3mLk+t8GYQfx4RpWLtO8l1BAP2BZ90ZJgDUGXcKPs2CCmJjsTMgVQs3Ao0eMpbglcEA/1bkvO1hR
	Y3SDwhs646plgwDmVDsYLH9rtGELD0gFOuP2VrcYx0oo1ZEQ6dKuRavUTzanjz5ECPV9l/G0VsrM9
	X3PRfEX3eEIamT8mJfVV+l+rwaalDqUWv32QbkA897J2OQv/+wAvG7dPskcwlbdxPIWi8l3If1xZz
	MZD5TEnSZQ7OhjpKQv9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaav4-00050h-Fz; Fri, 29 Nov 2019 07:42:26 +0000
Received: from a27-10.smtp-out.us-west-2.amazonses.com ([54.240.27.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaav0-0004zs-0g
 for ath10k@lists.infradead.org; Fri, 29 Nov 2019 07:42:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575013339;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=4XIwvUQih0yy7FiIkvN44JrdUnDIONJWQz0DnPJGZ9M=;
 b=BMkFHlg/vPIY7JckJiotHGtD9DRuaFGsAedXSI107wHQWF8LIkI1qQDE00Nqr2CN
 oCJjVj4Swo6OQrW1v1Znqx5NfBsnKp2s8awWZnUN/giK1yAiFkgjnPcslWmEsd89xr2
 +phNfP1bZSUudAAH3nTjBr3xXC4qodyr3BA12pb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575013339;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=4XIwvUQih0yy7FiIkvN44JrdUnDIONJWQz0DnPJGZ9M=;
 b=cZbZQKQ6c6maEoq9yM29rUqXeG3RQz35kNprfUlqhe3syWjtVVUPvOXTOGrcL6Iv
 S3R3KCdwZvCZycwzoQyajsasHgq2Nvk0fT9/YymdeAM/ykuEHur8egDwORyaiWqhtFo
 tZdHYi3/1D5Mi1GbV1aT7spe526D4bR3YUvFFmHg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3F3A8C4479F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: set max mtu to 1500 for sdio chip
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <0101016eaacca72d-a73d6fb5-0e3f-4fbb-9045-8363270fe25f-000000@us-west-2.amazonses.com>
References: <0101016eaacca72d-a73d6fb5-0e3f-4fbb-9045-8363270fe25f-000000@us-west-2.amazonses.com>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016eb61c5161-97752744-4206-4a8c-889a-12ae7523cc5c-000000@us-west-2.amazonses.com>
Date: Fri, 29 Nov 2019 07:42:19 +0000
X-SES-Outgoing: 2019.11.29-54.240.27.10
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_234222_085730_EB568924 
X-CRM114-Status: UNSURE (   3.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.10 listed in list.dnswl.org]
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

> For sdio chip, the max credit size in firmware is 1556, the 1556
> include payload, ieee80211 header, htt header, htc header. So it
> need to set the max mtu to 1500 to forbidden TX packet which exceed
> 1500 form application.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWP-1.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

376a30c7c9a0 ath10k: set max mtu to 1500 for sdio chip

-- 
https://patchwork.kernel.org/patch/11263345/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
