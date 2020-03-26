Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1711193C7C
	for <lists+ath10k@lfdr.de>; Thu, 26 Mar 2020 11:02:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XdDroLmaZjy6Cr9kYL7bgQFPRY8pfU5oPThYmId6U1Q=; b=STNUrHjBQMbaV9
	A9cI0iYytbzHSNuBgRN3loP1ebrHSNY3Yo1UmlhkX602EyM2z57An4O5YmyH+6hHOOvaFv2/+RdbT
	f2cVD2tQRPYHpwCtLAy9s5T6B0IhMPWmNpu0oAYJ6ge8DKJhq0DF3PVEsihHQRZ2KreGrbLd8FY33
	2W1uipgvlbOVDVz2h+3quUzL4sTXPeBSG+ItRMZbTmkC/Ug2uXi6ALxXXWzzwhNKgNOkBTJk5GA7K
	CWVx3GdF62Ssn/JrdEdgj1TzQdd6GtSq/H5cQvDmSjMXG8e2/drhhmofXsGwDJV93kuUu4Gg11R5s
	8edVWXLTFV4SPowMHUlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHPL0-0006uu-A4; Thu, 26 Mar 2020 10:02:10 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHPKu-0006u9-4z
 for ath10k@lists.infradead.org; Thu, 26 Mar 2020 10:02:07 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585216925; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=7t2Dog26pvcb3O3Aa25F/QRFArl9Jk526CpQdfEfOM0=;
 b=p/hfodBEZTNZcm7SeOyvQ1xb9cJyxkhs89mbFuOMJLrtICqQe7uWkn2VQk3hDCOF0NuLAcFz
 1IeeyeVU5rhm3ZwfDjwvNVskIWlrhuDAH7zaWnwA4iF9zFH/utHo3+yPCwzspTQVQKVRRiPz
 d2botzXOb1pyasG70R0SQ7D4z4E=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e7c7d84.7f4ec4536c00-smtp-out-n01;
 Thu, 26 Mar 2020 10:01:40 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 5BC86C433BA; Thu, 26 Mar 2020 10:01:39 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B14F1C433F2;
 Thu, 26 Mar 2020 10:01:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B14F1C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: enable radar detection in secondary segment
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1585158041-11740-1-git-send-email-ssreeela@codeaurora.org>
References: <1585158041-11740-1-git-send-email-ssreeela@codeaurora.org>
To: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200326100139.5BC86C433BA@smtp.codeaurora.org>
Date: Thu, 26 Mar 2020 10:01:39 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_030206_076702_CAF0E82A 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lei Wang <leiwa@codeaurora.org>,
 Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sowmiya Sree Elavalagan <ssreeela@codeaurora.org> wrote:

> From: Lei Wang <leiwa@codeaurora.org>
> 
> Enable radar detection in secondary segment for VHT160 and VHT80+80 mode
> on DFS channels. Otherwise, when injecting radar pulse in the secondary
> segment, the DUT can't detect radar pulse.
> 
> Tested: qca9984 with firmware ver 10.4-3.10-00047
> 
> Signed-off-by: Lei Wang <leiwa@codeaurora.org>
> Signed-off-by: Sowmiya Sree Elavalagan <ssreeela@codeaurora.org>

Failed to apply:

error: patch failed: drivers/net/wireless/ath/ath10k/wmi.c:1717
error: drivers/net/wireless/ath/ath10k/wmi.c: patch does not apply
stg import: Diff does not apply cleanly

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/patch/11458405/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
