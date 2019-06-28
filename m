Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D6459CFD
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijHndqNAaJyuVLP+8HtoSSzOOcosuzPP9ZmiTE1nHcM=; b=lrAmXDitrgOuLv
	jv7BtjjkwpunFDBJiXIjw9/y75BXgWjELlbbpdQ0R0EWz4avHLU7EGzmM6znwzdAHTqrKhuRDegZy
	rW/kRUDQqR9dNXns5Z9nF7843SQgwUr371e2IbCwx2Vnho0EifE3A3+9IIIx24bECxFBgMGNfnbN8
	jJH+yrZrc0OQttCi2BkC5K2CoydI49FdZ1lrHVeW2ZORJfsM5fslWtRLW4ZeZi3DWf8f5l/k3Gs5Y
	Aj9vuY2WJDOj66f1Mr+FIW/sMyIgiV9qSsXUq/7+rxT4yOEBprv7qC5VXui219Pe/jb5gqUO+9fa1
	oua5GFhRxR8LbswTlLLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgr2h-0006oK-IK; Fri, 28 Jun 2019 13:35:55 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgr2d-0006o0-5t
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:35:52 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E3274602DC; Fri, 28 Jun 2019 13:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728950;
 bh=E4iuvxrhPqp/fQgXow6u9wJmgBjM4g9BI1mfC8tzpDE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Z4QvRrxtNDrKN68bj9mBuyZA3ZFl+uuTpP5a/tAts51TWgJ/m60g2Zc2iGAWdfmp2
 zwX/lBTw4cbIVclONJ/Ce8sa02qIMCSOz5H2Qmukvig7h8bNlXfDKFhnSL54ln9/TR
 So9asVPnSOGwHeIWdoDs+V5bfTRZcQosQMDfORfM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B8BEF60767;
 Fri, 28 Jun 2019 13:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728950;
 bh=E4iuvxrhPqp/fQgXow6u9wJmgBjM4g9BI1mfC8tzpDE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Z4QvRrxtNDrKN68bj9mBuyZA3ZFl+uuTpP5a/tAts51TWgJ/m60g2Zc2iGAWdfmp2
 zwX/lBTw4cbIVclONJ/Ce8sa02qIMCSOz5H2Qmukvig7h8bNlXfDKFhnSL54ln9/TR
 So9asVPnSOGwHeIWdoDs+V5bfTRZcQosQMDfORfM=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B8BEF60767
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: "Theone" <1805692831@qq.com>
Subject: Re: ath10k-firmware: QCA4019 hw1.0: Add Qxwlan E2600AC specific BDFs
References: <tencent_9DDF95DF96EF68F50B6B6DC8FE5D21E63C0A@qq.com>
Date: Fri, 28 Jun 2019 16:35:47 +0300
In-Reply-To: <tencent_9DDF95DF96EF68F50B6B6DC8FE5D21E63C0A@qq.com> (Theone's
 message of "Sat, 5 Jan 2019 10:26:44 +0800")
Message-ID: <87ef3desss.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_063551_239060_9B0700D9 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

"Theone" <1805692831@qq.com> writes:

> * description for what hardware this is:
>
>   - it is a IPQ4018 based board (AP-DK07-C1)
>   - one QCA40xx radio is used as 2.4/5 GHz radio
>   - one QCA40xx radio is used as 5GHz radio
>
> * origin of the board file (did you create it yourself or where you
>   downloaded)
>
>   - The board file(s) where extracted from the Qxwlan firmware. 
>   - The files in this email are:
>     * board_wifi0_2g.bin
>     * board_wifi0_5g.bin
>     * board_wifi1_5g.bin
>
> * ids to be used with the board file (ATH10K_BD_IE_BOARD_NAME in ath10k)
>
>   - QCA4019 hw1.0
>
>     + bus=ahb,bmi-chip-id=0,bmi-board-id=28,variant=Qxwlan-E2600AC
>       sha256sum:
>       4d8d5ca0f2de7bdf4dc6e3c65c381ffa7eea16bd42dd5b74b0a30f1a41b49e5b
>     + bus=ahb,bmi-chip-id=0,bmi-board-id=29,variant=Qxwlan-E2600AC
>       sha256sum:
>       07363a402ac058ddb96f2f4938bae88e89260b52df3af8a6fd6cd2575d93294f
>     + bus=ahb,bmi-chip-id=0,bmi-board-id=30,variant=Qxwlan-E2600AC
>       sha256sum:
>       8ba890b8b34f6ac0cd4c3504bcecad001c8c7bc329d19f4627ecddc5b099e586
>
> * attach the actual board file (board.bin)
>
>   - The name of the files are equal to the id string in the board-2.bin
>     (minus the ".bin")

I dropped this due to duplicate submissions.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
