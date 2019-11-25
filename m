Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5BA108D80
	for <lists+ath10k@lfdr.de>; Mon, 25 Nov 2019 13:03:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnYt1JvpNiBy+LcDZ7jjU+X6OUJSjGdhsf4gvoF91LY=; b=SzdVwoPkWtv5fH
	mzEVJRjnK7rHPhiK3NjGYMSDo1Cz+e6xp3oJhKDnlvZu6Vsexa6mHzw/Rzdd0XR4cem4YoEn0Etg5
	V8UID7BM7cy89iEEBjghSHyFZi7INdIUhLO4uPwly13ls88WnsYLEsyJIWM4fAtpCMef6Y92NFObq
	VoYAa3/bHD0uKJrlL6yXIE9fKergPsZcRmoCHOoZ4Sku7krvWAkaHwUBxx1XsDqjlDHsFbH8UhS55
	MsDW7Q8e+YYRfwCAeWrH82gmAZaVin29CkYMjwxTm99hesk4XI6k5FwCqQVSgvcppCJTAY573rrAF
	rU9TYi+Re59tauth9QiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZD50-0000DT-L3; Mon, 25 Nov 2019 12:02:58 +0000
Received: from a27-21.smtp-out.us-west-2.amazonses.com ([54.240.27.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZD4w-0000Cn-V8
 for ath10k@lists.infradead.org; Mon, 25 Nov 2019 12:02:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574683371;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=z05eV/FaCW+MjIgQc7d1cmaIUFV3/DRVHnHkzXMroCA=;
 b=fWC87o8s3mR8WfIQWRlunCvchwyvTBCnbWy+ZtcZTsD0ZR2anIDGr37jAQMIOWCf
 hweaa3J2HLlFQ0LhnRMe8LUqLzqLNQAOGJTfcBWXPVqN5kDsLA1vLI9afRiy1Fx2dwL
 vLBziuWPzE6FbtcDmZikUd1FuzrSPjiIYpMSel0w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574683371;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=z05eV/FaCW+MjIgQc7d1cmaIUFV3/DRVHnHkzXMroCA=;
 b=Df6XcoC4yO1d2XO6VjHenTVJSVRHcOlRt5LmfVF2bDFZbFFxaF5Ijw/bZ5OHmvmO
 omXCogVU23rldGvUbnOy3m2yXOY0QJ9z8xGx5rXzNXL1TVkmNS2pTjJ3mNY4RYpt1C6
 /r04lscaESJfe0XrYjil5hVAiTcELs8Du/rcq0ic=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 01470C447B6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH v2] ath10k: Fix qmi init error handling
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191113154016.42836-1-jeffrey.l.hugo@gmail.com>
References: <20191113154016.42836-1-jeffrey.l.hugo@gmail.com>
To: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016ea2716693-2c1d0904-0688-4154-be0b-505808ecbe9c-000000@us-west-2.amazonses.com>
Date: Mon, 25 Nov 2019 12:02:51 +0000
X-SES-Outgoing: 2019.11.25-54.240.27.21
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_040255_027583_BEE8C289 
X-CRM114-Status: UNSURE (   5.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.21 listed in list.dnswl.org]
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
Cc: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, linux-arm-msm@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Jeffrey Hugo <jeffrey.l.hugo@gmail.com> wrote:

> When ath10k_qmi_init() fails, the error handling does not free the irq
> resources, which causes an issue if we EPROBE_DEFER as we'll attempt to
> (re-)register irqs which are already registered.
> 
> Fix this by doing a power off since we just powered on the hardware, and
> freeing the irqs as error handling.
> 
> Fixes: ba94c753ccb4 ("ath10k: add QMI message handshake for wcn3990 client")
> Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

f8a595a87e93 ath10k: Fix qmi init error handling

-- 
https://patchwork.kernel.org/patch/11242133/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
