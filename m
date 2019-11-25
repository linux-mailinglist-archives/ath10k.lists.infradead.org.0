Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A43F108D4B
	for <lists+ath10k@lfdr.de>; Mon, 25 Nov 2019 12:52:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGh6hGcqqDJ/TCNv8HlE2yPXkGEKMDttBUDcZFbwtlY=; b=OhaAEYVKDLR/aN
	TyYQZcRKfJQlolNdkUt1XJU5ujZo5Tv2UHFoW8WFYQR0EbPP0srMFY1zDfEFGU4Pc6ANJwbEWY36i
	xhvtq3y8m0h+shXjpv60WpwvvjTozvRV8XgiGwmbxTGZC3vwDVPQOr2E3K4wam0Rw9AMQiKp+u6YZ
	mjiCS7pbrwLmBPgaYRaCn8F1N7U5lAOkhbCnL/ZCLxL9bf1X6NhWlxGrag0rnC5AbfPAfaK7JvVNT
	IE5Hfj53nDNaUk1toaH8785xtwbBM5JnS/ZNTFZhzIbNtU8MlkUOsZvsnIluFeMJIwWITg7UaGmUF
	1bN3h1eSEyzvghasz3Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZCvJ-0004pG-LD; Mon, 25 Nov 2019 11:52:57 +0000
Received: from a27-18.smtp-out.us-west-2.amazonses.com ([54.240.27.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZCvE-0004ml-GS
 for ath10k@lists.infradead.org; Mon, 25 Nov 2019 11:52:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574682770;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=uWtxVtS/eSocGqMTSWcaIGLD0hEon0BJRNZIcLgytwk=;
 b=oLu/ZUXY561iZwUxgzLPqkUUnT/LCRFjHlel303XKQRacoV0w3GWT2CCMTC2uF89
 /evJnCp4hMLGajuV+rCxcNN/bYHH12hv2rJR6Qdxu9IUnbec1vJoU4X2oNo0u0Tm7yU
 NP4P5Fz1yaqpt6g7ZzbooknGzaRXQyBYXCk29AI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574682770;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=uWtxVtS/eSocGqMTSWcaIGLD0hEon0BJRNZIcLgytwk=;
 b=LbHiPvzVlN5CafSgo/V5bOiIWVUQZscAuNvb7uJ7AO24B+S2Z20+GoFFH2zY45lC
 6b8SyI3vwkrQ9NkS0eGaBalE4YwI94QEC6LlAVZOc+aJGVjA5KVthzsAUJLYXexB8mI
 /pAoSuI72oIlh2ndV1pE7UxmXDoLatvQV8fbFLy0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 12F9BC76F44
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: correct the tlv len of
 ath10k_wmi_tlv_op_gen_config_pno_start
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20191107093031.24131-1-wgong@codeaurora.org>
References: <20191107093031.24131-1-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016ea2683bf1-d3eb71cd-3511-4c90-a46a-f6e42d02656f-000000@us-west-2.amazonses.com>
Date: Mon, 25 Nov 2019 11:52:50 +0000
X-SES-Outgoing: 2019.11.25-54.240.27.18
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_035252_591135_3BDC021A 
X-CRM114-Status: UNSURE (   4.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.18 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> the tlv len is set to the total len of the wmi cmd, it will trigger
> firmware crash, correct the tlv len.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00017-QCARMSWP-1 and QCA6174
> PCIE with firmware WLAN.RM.4.4.1-00110-QCARMSWPZ-1.
> 
> Fixes: ce834e280f2f875 ("ath10k: support NET_DETECT WoWLAN feature")
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

e01cc82c4d1e ath10k: correct the tlv len of ath10k_wmi_tlv_op_gen_config_pno_start

-- 
https://patchwork.kernel.org/patch/11232379/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
