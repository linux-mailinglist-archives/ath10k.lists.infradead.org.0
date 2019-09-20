Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A24B8FED
	for <lists+ath10k@lfdr.de>; Fri, 20 Sep 2019 14:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyYi81kP7rzmjKx410bQ+t3gKpEFbxWDlie7Y2k2s6U=; b=qrGBbHUwe2idmi
	vU1zJIQTH5A2dhrlqRQeR3yKQ34WTtvB3pZsNtRE4jBQK4Kj6BMBo+2lSgGP09nSxSACL0kwCuS6n
	HLvcJlT3xiTGDDRDwmFaZWPLlsJ/ijTYnAhj2U0NDpOBMld3voiONwGvpcyPc0DwgGLvwezGosYXl
	XPwtapCpxXhRfRiqEdtb5AIRNKHA2L46ubSLlKY7w9MSMuvB4UuYSdZar3uMPt8To7N0ZSc1bY/oP
	ywlrznpvCnTklU69SwMTxuRU7266w5v6o4DbeYhkI2QtqwfRAHC7xdoYu7yr86vHq00ST1MsxPagb
	ntmvM79qfSZ54pu9ADQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIHe-00048a-Kt; Fri, 20 Sep 2019 12:45:10 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIHZ-0003V4-IN
 for ath10k@lists.infradead.org; Fri, 20 Sep 2019 12:45:07 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B5754614DC; Fri, 20 Sep 2019 12:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568983504;
 bh=vGllR88P9hEZE+i0twWfEPOok8AM3MexNj8GcIjzAwQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=FuC3zhZgA2QjEAFiqt/D0exGT9WWA7mGL2uoFj1D5Tdf+9Q7RdZ9l0sA5uGA0pLMK
 TUL1GE6z6xcfP9M0UfE0+RNsZRlGxzEx9ndMl3l0gdKVCXI2uMKIQsnMxXP6Jk3/Xb
 grtMuM7LoNLFw262qq8soPMl/3XHXb7RLq2e10ek=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-106-186.rev.dnainternet.fi
 [37.136.106.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 40B5060A60;
 Fri, 20 Sep 2019 12:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568983503;
 bh=vGllR88P9hEZE+i0twWfEPOok8AM3MexNj8GcIjzAwQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=P0LswFBtKy4swZy+f/Wrw2EiCFXrPZoNu4pDPpFDSWs3AC9zv4ewGfpSNzXEkbucx
 yF+0YQIqLPTKAceL67pBakc/y8jC0C9dZrWyW1Rwuhk2J5N1JjJ4SSYEYtTc9vvtP9
 nusCYOBBBOG2jWXInjahLKYEpnEJ2KV06isaiU0w=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 40B5060A60
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@qti.qualcomm.com>
Subject: Re: [PATCH v5 0/8] ath10k: improve throughout of tcp/udp TX/RX of sdio
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
 <87tv9hikwe.fsf@kamboji.qca.qualcomm.com>
 <87d0g5h07v.fsf@kamboji.qca.qualcomm.com>
 <1568346854209.29270@qti.qualcomm.com>
Date: Fri, 20 Sep 2019 15:44:59 +0300
In-Reply-To: <1568346854209.29270@qti.qualcomm.com> (Wen Gong's message of
 "Fri, 13 Sep 2019 03:54:14 +0000")
Message-ID: <87tv97b0hg.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_054505_645465_564F6040 
X-CRM114-Status: GOOD (  13.59  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@qti.qualcomm.com> writes:

>>>> The bottleneck of throughout on sdio chip is the bus bandwidth, to the
>>>>patches are all to increase the use ratio of sdio bus.
>
>>> I tried to apply patches 2-8, patch 2 had a conflict due to my changes
>>> and patch 8 didn't apply at all. Also I saw few warnings with the
>>> patches I was able to test:
>
> Hi kalle,
>
> i see some warning is from patch "ath10k: add fw coredump for sdio when firmware assert"
> and this patch also have change in sdio.c, so maybe it will have
> conflict with the 8 patches.
>
> patch 8 didn't apply at all, is it means each change of the patch is
> conflict?

Patches 1-7 applied fine, but patch 8 didn't apply. I didn't investigate
what was the conflict.

> I used command to check each patch.
> perl ~/opensource/checkpatch.pl --strict --no-tree
> --max-line-length=90 --show-types --ignore CONST_STRUCT ./*
>
> I found it not check Wunused-but-set-variable.

checkpatch only checks style issues, unused-but-set-variable is a
warning from GCC.

I use ath10k-check script to check all ath10k patches:

https://wireless.wiki.kernel.org/en/users/drivers/ath10k/codingstyle#checking_code

And I use latest GCC and sparse with that. crosstool is a simple way to
install a relatively new version of GCC for kernel compilation:

https://mirrors.edge.kernel.org/pub/tools/crosstool/

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
