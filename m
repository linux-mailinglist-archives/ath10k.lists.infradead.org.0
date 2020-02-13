Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0598915C03A
	for <lists+ath10k@lfdr.de>; Thu, 13 Feb 2020 15:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xv3eXrVLxfdGsMWhyRQ9q+WoLz9hYTPtwxnu4PQPMQ=; b=XCttqL1Hqn8Drr
	F6mjRHMwO6vXxBWuNan03Yrce8RlhEYv14gMK70AXcV+qGVzFmo4Pu2LN7gPBSwhct3DekqI24pgh
	YBRvIoUdFK/pnKzQVqIj54xVFj0DdM8pTEjX2oFUxOvX3LdB/l3tqnN02+OUnAcP+K3n47kNiq6Of
	Jm67O2C7lFN9fGj/B3utFIu3+B4iKTfIH7ZxAQokbZY2KfAlD3DiR/UduqbxjpI3hZeGdHRqrOLmt
	oC5G3aqKP46gsR+jMC1OqSjuzxWP1saav+svJ4/Sw4ld3fLeS5I4qLsFsY00+yHRZTTUG8D2M/4cg
	/NOAPsrNfa7TBtkBbkqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2FNK-0005Ou-Qr; Thu, 13 Feb 2020 14:21:54 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2FNG-0005OS-RH
 for ath10k@lists.infradead.org; Thu, 13 Feb 2020 14:21:52 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581603710; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=3ChKMBjWuhy0UyOMKIb2CHcEO65hmfD5x5PGNNh0WGA=;
 b=kyinJnr7PR0I9zFgaFBH8iJ3dhy4SmhYCk4kraDW8uZ+PnJVQJfc8qoWOSn6UkWuaplLatG/
 cwcPeoyBm3AsR7UwvnGFJo8mUMaJ490G4YFatb86GWzVJNKgQyk1Zut+3S7qGmpDwax3nt9F
 5kJQ+qZuANMpMgA4vOIahIXwTFM=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e455b7a.7f8bffcdf538-smtp-out-n03;
 Thu, 13 Feb 2020 14:21:46 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1FC37C4479C; Thu, 13 Feb 2020 14:21:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EEE6EC43383;
 Thu, 13 Feb 2020 14:21:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EEE6EC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: fix unsupported chip reset debugs file write
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1580887644-21061-1-git-send-email-yintang@codeaurora.org>
References: <1580887644-21061-1-git-send-email-yintang@codeaurora.org>
To: Yingying Tang <yintang@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200213142146.1FC37C4479C@smtp.codeaurora.org>
Date: Thu, 13 Feb 2020 14:21:46 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_062150_947055_5A69B193 
X-CRM114-Status: UNSURE (   8.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Yingying Tang <yintang@codeaurora.org> wrote:

> Before this change, after writing "warm_hw_reset" debugfs file, host
> will send chip reset command to FW even though FW do not support this
> service getting a warning print.
> 
> Though there is no FW impact before this change, this patch restricts
> chip reset command sent to FW only if FW advertises the support via WMI
> service bit.
> 
> Removed the redundant check and ath10k_warn() print as well.
> 
> New version FW will report chip reset service bit to host. Host allow user
> to trigger WLAN chip reset only when fw report this service bit.
> 
> For older NON-TLV FW, since it do not report chip reset service bit, host
> will not send chip reset command. For older TLV FW, since it report chip
> reset service bit, host will send chip reset command.
> 
> Tested HW:  QCA9984, WCN3990
> 
> QCA9984 FW version: WLAN.BL.3.9.0.2-00042-S-1
> 
> Signed-off-by: Yingying Tang <yintang@codeaurora.org>

Fails to apply:

error: patch failed: drivers/net/wireless/ath/ath10k/wmi.h:367
error: drivers/net/wireless/ath/ath10k/wmi.h: patch does not apply
stg import: Diff does not apply cleanly

Patch set to Changes Requested.

-- 
https://patchwork.kernel.org/patch/11365857/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
