Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DEE59D02
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 15:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4rBZvc4MIQovC+3+mz8euyeOxNTciH4MNP6wd/bQx4=; b=iaQPXemgvaFb+D
	AsZbGg0AWwc384gzq12bJlXpHgRmbPN1ox2OpFHus4pDKahEYyQl/dUraPpURE6/6y0FTlKViFzXu
	T2ONPi3ZN36WxxSZmezKVTsLgHqZQy+gGRuSuc3gl6A7Q6tR4VbHT3Q0HR1IVdUE3Dys/qvLqTcQ5
	M9Bj55g+9mgAKZ7oit8BE9RLFf93hAfC+OB11aQfMpotDiCBA6m7ZtVpBEf0qwsZECBVidEFAhIds
	SAwuVRUByZ5RpG4cdsTCKW29G2IO2oxuByl81/XKCFW9RwHfKSJkmjbZJ+Qa8SCl3Ep+faB1gB+LK
	0rIQ+WdXWXMfyhYlsfQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgr3N-00072O-CN; Fri, 28 Jun 2019 13:36:37 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgr3I-00071g-Ka
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 13:36:33 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 48CD0607CA; Fri, 28 Jun 2019 13:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728992;
 bh=IRoBTMvLG5woLsZlE31IkaBV+jMjNz5bYkk+ktL8GxU=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=TJcMHBi55ANmaEVmvuoCx5Syon+21uy0NJgiDsq6Q2aARbs+xnWa+h2L0IvlsyR76
 3AOUpTwf0E19Z8u6d06CWJ7xE7zNvjsAue3x3h77W8wW6/qrDN2wFDFNkuKmcKhz9x
 PJdqsKdan4+dWr8E7Nh5LOvz6MwY3A7jo4+7Zj/c=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CA07060CF1;
 Fri, 28 Jun 2019 13:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561728981;
 bh=IRoBTMvLG5woLsZlE31IkaBV+jMjNz5bYkk+ktL8GxU=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=hWfycg96egxhIBDvfeEy4OjX7ffEzoNi+LcWZ5L9k2vQLBmLadW33Tt9CZvBQaxs8
 mc3S9gO4/GfGE0/wBdoN6405CmKCMszZiAnhnmOuJa2DDCDCiAgC3JgfoFoOYlnOpW
 1M6ARlEUPBonBIkv2mcp4tBWUxkI2I5/+Rqj+A+Q=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org CA07060CF1
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: "Theone" <1805692831@qq.com>
Subject: Re: ath10k-firmware: QCA4019 hw1.0: Add Qxwlan E2600AC specific BDFs
References: <tencent_65F0DF86E55F2622C233457975F99096AF06@qq.com>
Date: Fri, 28 Jun 2019 16:36:18 +0300
In-Reply-To: <tencent_65F0DF86E55F2622C233457975F99096AF06@qq.com> (Theone's
 message of "Thu, 10 Jan 2019 18:18:50 +0800")
Message-ID: <875zopesrx.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_063632_690280_E2AB461C 
X-CRM114-Status: GOOD (  14.96  )
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
>   - it is a IPQ4019 based board (AP-DK07-C1)
>   - one QCA40xx radio is used as 5 GHz radio
>   - one QCA40xx radio is used as 5GHz radio
>
> * origin of the board file (did you create it yourself or where you
>   downloaded)
>
>   - The board file(s) where extracted from the Qxwlan firmware. 
>   - The files in this email are:
>     * board-wifi0-5g.bin
>     * board-wifi1-5g.bin
>
> * ids to be used with the board file (ATH10K_BD_IE_BOARD_NAME in ath10k)
>
>   - QCA4019 hw1.0
>     + bus=ahb,bmi-chip-id=0,bmi-board-id=29,variant=Qxwlan-E2600AC
>       sha256sum:
>       6706954c7b363911bb84d4b70f90312e665701acca2dba40f2397e6cd6d6c000
>     + bus=ahb,bmi-chip-id=0,bmi-board-id=30,variant=Qxwlan-E2600AC
>       sha256sum:
>      70dd461cf1dd44b443d903ea5d3aa4efbaa376dfbb3d7983dcbcf9b125e8a9d5
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
