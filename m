Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7732759CFF
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rb1mHchFE4pQWBOG3d27UvBvxxQi3qNiGaUdvcYWSwA=; b=dwGZr3Rh00cLyM
	JtVpuaGFZ5ISapnSV+jFItyVdh1pOuql5kia/lGDUVSkYrd5D8Wb/jC9a/LPQkIMZqEisEBxOyLJ5
	RC/4RURGsRGe3Ghu49PkGXhgF1Ox8WikSom6zkVAYdmrTN1rtKVRKqr0Ip3Bn63hDbxLWaZoBcC3m
	7qUJ16Z0n9JbhW5pplPCp6B83JC8ZWLYGSZS4GnhISuAjiYEcevjATk7uI6+5jRp/szNI3XlSHgQR
	bLmkZJUarMxgZZL1qj16lZpnvEoYCjkIw3taQnaiV2TVrs04I+IqpM8d1ZHMJ2LsoUwPjj6pCRqR6
	5hsfxITXSD/u2z02gnmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgr2y-0006uZ-00; Fri, 28 Jun 2019 13:36:12 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgr2s-0006te-1j
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:36:07 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id BD09760A97; Fri, 28 Jun 2019 13:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728965;
 bh=dCdOeCtvtO0Nt/DkBVM9j//E47E+fC7PxIPwN+EpYo0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=m+L0qhtMj+iFwmPlrakWc3/J3gMbvG/y8V490N/Qm8peh1mZF7fRUIZh9WDihV7j4
 fGx9tHJVuAyzrJnKvX6D3OwGgIJKAi+GE/R9zrJi2FbvrU5W+iJe4mZgtZi3rWc/bh
 niyv1q0qvLxOTOf2ew5n3l3fNP+bL2k1V7U5peuQ=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 95AE36070D;
 Fri, 28 Jun 2019 13:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728965;
 bh=dCdOeCtvtO0Nt/DkBVM9j//E47E+fC7PxIPwN+EpYo0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=m+L0qhtMj+iFwmPlrakWc3/J3gMbvG/y8V490N/Qm8peh1mZF7fRUIZh9WDihV7j4
 fGx9tHJVuAyzrJnKvX6D3OwGgIJKAi+GE/R9zrJi2FbvrU5W+iJe4mZgtZi3rWc/bh
 niyv1q0qvLxOTOf2ew5n3l3fNP+bL2k1V7U5peuQ=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 95AE36070D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: "Theone" <1805692831@qq.com>
Subject: Re: ath10k-firmware: QCA4019 hw1.0: Add Qxwlan E2600AC specific BDFs
References: <tencent_C743F5CF1BF1E399A55CAD3C5B4B40F87805@qq.com>
Date: Fri, 28 Jun 2019 16:36:02 +0300
In-Reply-To: <tencent_C743F5CF1BF1E399A55CAD3C5B4B40F87805@qq.com> (Theone's
 message of "Mon, 7 Jan 2019 10:49:49 +0800")
Message-ID: <87a7e1essd.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_063606_112943_7C78F2FA 
X-CRM114-Status: GOOD (  14.67  )
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

> For the questions from the wiki page:
>
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
