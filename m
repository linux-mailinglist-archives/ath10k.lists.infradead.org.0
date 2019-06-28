Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7495F59D0E
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKDUEWyHz+Fd2BRVhcgHSdAESfdQX+FNJBleh611UWM=; b=Q5LIYAAkL6SQrq
	v9t2Te9YntuN0GdU8q9XJtyqGaRtIUUpDAP4SBoBcUNe8Jmtzt9unaTmayzCx3eFcuSSL+XpIpw5X
	JubTuu1PaERKlUUYXv8qCsOHPApjQm3ll0kZ2NnY+HQThZXboQFUf3J6LUZtAiQPjKM2bWZa0kqsU
	qaXK0yF8ABbrkTsll/jEZEv78Z73LRP9xlajdjAspN9E7v1kIeEAdJiByedp5SAsNIDY6EyefT2Q5
	sVD2rk7eqdkgYKJ5mPx6/Z23pcZ1hAmlpIULWxue2otjsXpMwRmVnZKOqX4mkDST91Acdmyrk/mjj
	dp4wOGrfDpwQS8qtcdMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgr4u-0007D1-HP; Fri, 28 Jun 2019 13:38:12 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgr4o-0007CU-6a
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:38:09 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id E6E17607CA; Fri, 28 Jun 2019 13:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729085;
 bh=TvJBkk/GkPXdN52aV0NPGCDQsFcMmLdRyyJs1QIFUXQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Dzm67YpmoLCOAY1ccAnFQsdr3PeBXlRHpHa7dFgmdC1KvgG8+HQ5ZLnuOCBGVQiS6
 hnbZ74r9pEXBoSzTnMgnJTwkfJmwfzo5hT+NfoObVNfOQ9K4a0oC5ZTulb593niYJj
 CSNh79LLAXdufOsQ6m6IXWXWUF+uDuVSFX6kD4R0=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C279460256;
 Fri, 28 Jun 2019 13:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561729085;
 bh=TvJBkk/GkPXdN52aV0NPGCDQsFcMmLdRyyJs1QIFUXQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=Dzm67YpmoLCOAY1ccAnFQsdr3PeBXlRHpHa7dFgmdC1KvgG8+HQ5ZLnuOCBGVQiS6
 hnbZ74r9pEXBoSzTnMgnJTwkfJmwfzo5hT+NfoObVNfOQ9K4a0oC5ZTulb593niYJj
 CSNh79LLAXdufOsQ6m6IXWXWUF+uDuVSFX6kD4R0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C279460256
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Sven Eckelmann <seckelmann@datto.com>
Subject: Re: ath10k-firmware: QCA4019 hw1.0: Update OpenMesh A62 specific BDFs
References: <2795259.fejyDvFH3e@bentobox>
Date: Fri, 28 Jun 2019 16:38:02 +0300
In-Reply-To: <2795259.fejyDvFH3e@bentobox> (Sven Eckelmann's message of "Thu, 
 10 Jan 2019 13:59:14 +0100")
Message-ID: <87zhm1de4l.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_063807_629605_615B7B40 
X-CRM114-Status: GOOD (  17.84  )
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sven Eckelmann <seckelmann@datto.com> writes:

> The OpenMesh A62 AP requires three special BDFs to get the Wi-Fi PHYs working 
> (correctly). The  bmi-board-id='s would clash with one of the the IPQ401X 
> AP-DK boards because QCA doesn't provide special IDs for customers and seems 
> to use the AP-DK board-ids in the wifi firmware to change its behavior. This 
> request contains the two files for QCA4019. The QCA9888 one will be submitted 
> in a different request.
>
> This update contains:
>
> * add of the antenna gain
> * adjustments of the antenna sensitivity (see minCCA power threshold and
>   configAddr)
> * CTLs for DFS channels
>
>
> Now to the questions from the wiki page [1]:
>
> * description for what hardware this is:
>
>   - it is a QCA4018 based module (based on qcom-ipq4019-ap.dk04.1)
>   - one QCA4018 radio is used as 2.4GHz radio
>   - one QCA4018 radio is used as 5GHz radio
>   - an additional QCA9888 5GHz radio is attached via PCI
>
> * origin of the board file (did you create it yourself or where you
>   downloaded)
>
>   - it was created by the ODM and QCA for the OpenMesh A62
>   - was provided by the ODM to OpenMesh for this product (this includes
>     distribution)
>   - it is the latest release from 2018-11-28
>
> * ids to be used with the board file (ATH10K_BD_IE_BOARD_NAME in ath10k)
>
>   - QCA4019 hw1.0
>
>     + bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=OM-A62
>       md5sum: 8c4ab812be4c62d4f5eae26125efc407
>     + bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=OM-A62
>       md5sum: 170400a46d78f2adf82f16ac3fac0abf
>
> * attach the actual board file (board.bin)
>
>   - The name of the files are equal to the id string in the board-2.bin
>     (minus the ".bin")

Thanks, added to QCA4019/hw1.0/board-2.bin:

https://github.com/kvalo/ath10k-firmware/commit/12ce541d08fc6a7ffbc7850cec5209bbf123033e

New:


Changed:
bus=ahb,bmi-chip-id=0,bmi-board-id=21,variant=OM-A62
bus=ahb,bmi-chip-id=0,bmi-board-id=20,variant=OM-A62

Deleted:

0 board image(s) added, 2 changed, 0 deleted, 41 in total

https://github.com/kvalo/ath10k-firmware/commit/12ce541d08fc6a7ffbc7850cec5209bbf123033e

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
