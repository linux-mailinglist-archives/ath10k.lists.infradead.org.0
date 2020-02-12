Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E34CD15A20A
	for <lists+ath10k@lfdr.de>; Wed, 12 Feb 2020 08:31:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0IpzbJ014wE9O7r043W1lC2RjzhRy3aHqWEJaC9ZhgY=; b=ly0l0vQ8OJG68tbvuKfxgWXF+
	wo6vYK7slNeIrHWGlJAIUSwlmeMb8YtV1w9PpHBodUkbXlS0nQpJasFwKMgk1xPsNTcNWHGYBYoDZ
	d9L8dbZzjWDMznpS8FsRaGGobWh5VPn7fax1eSRs+uF+Mk56KwW1wwzUhAYe/PXSJ9YRy+UBR0xt5
	tJ5Pj0cGUW6+Z2NWcmHSfKTlJidQ5jq+moKnkQrePKtmTb0xPMY02nILOspK2/ombmfp3ky4sJw5G
	6Puy8+uAnOd2gd/WFh3G7hsa2fruIfuUBTL3O8udap4FMTj+32Ikb+J+lmhWok3wo7w2ZTNF0E6MZ
	mG0GW3xyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1mUz-0003GF-Cj; Wed, 12 Feb 2020 07:31:53 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1mUv-0003FQ-At
 for ath10k@lists.infradead.org; Wed, 12 Feb 2020 07:31:50 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581492707; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=VbEzakpUw0G5nEnWnKZFHFj2LUPr/n3gkuwRYq/wYVA=;
 b=u+g18yJvRL9tRBmdQeaZO5n4iJU4gB3zv4Yf4BJfy6+3+N91N6txGgg9y4NkDdQRCJ4jDC5R
 Qlk6l1fY2Qikd1jLjtzPQ5vMblJz8K5BUKtrM3RMdybmoNf7CKqwxumgvlD04KLSDHg5w2EG
 TK1uWnwDU6rOCGsYeK5uqO99U2A=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e43a9e2.7f2b87233490-smtp-out-n02;
 Wed, 12 Feb 2020 07:31:46 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D3C29C447A0; Wed, 12 Feb 2020 07:31:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 89633C4479C;
 Wed, 12 Feb 2020 07:31:45 +0000 (UTC)
MIME-Version: 1.0
Date: Wed, 12 Feb 2020 15:31:45 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Pi-Hsun Shih <pihsun@chromium.org>
Subject: Re: [PATCH v8 1/4] ath10k: disable TX complete indication of htt for
 sdio
In-Reply-To: <CANdKZ0fOEZ-Ng1p4FUy6WDC2DKGUMmTQE+JhcTwrf9TjACborA@mail.gmail.com>
References: <20191128103030.6429-1-wgong@codeaurora.org>
 <0101016eb1903db0-ef7063b4-0f42-4a01-8886-327541e6c1a4-000000@us-west-2.amazonses.com>
 <76bce8e3-e05b-ace6-3edd-54f522be3fe6@chromium.org>
 <25fd4f59b39c56b2fee208713c7cbc57@codeaurora.org>
 <CANdKZ0eWJtSuOdZp6Djne21maoBtmSsEm9Rmq9HbLfriY1goWw@mail.gmail.com>
 <47925cde59e1b94766720d20ddbb4191@codeaurora.org>
 <CANdKZ0dtnvL66jps41UC+dkybuXA0NMEu=9p2N2T08YDLHb2UQ@mail.gmail.com>
 <222dd9c33e2afa94cd1ee80c03c7b00d@codeaurora.org>
 <CANdKZ0fOEZ-Ng1p4FUy6WDC2DKGUMmTQE+JhcTwrf9TjACborA@mail.gmail.com>
Message-ID: <e2afd62c108d66fdb3aa590f5ded61a4@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_233149_431941_72E1D26C 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-02-12 15:08, Pi-Hsun Shih wrote:
> Tested that the patch fix the kernel panic, thanks.
> 
> For the fixed version:
> Tested-by: Pi-Hsun Shih <pihsun@chromium.org>
> 
Thanks Pi-Hsun's quick test,
could you also give me the message log:
dmesg | grep ath

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
