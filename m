Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0721019F9F9
	for <lists+ath10k@lfdr.de>; Mon,  6 Apr 2020 18:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YXfqolJ36dOoeaon76Iibmnn+1R3kNx1zrS2kGu2EA4=; b=fJNwalH8Nc7JPe
	aX6Y7kEROQ8323MhGIXNzxA2XfAfRdLM3vbwGpPY1TFgTNAvFk3iotS0iqAoTl/T0SWox3u+aH5P5
	XxAFFNJ5AKfPM5VoRicoEkyUh7HsJcCsu0l88ZOBwPb7ue//0TxWeb7uARqMtESJgmhz3yBHhnX1u
	UQ+tSIS//D9kawnN7cdL5+nOBXcc1HbD7x3mUSfE/6kfF6Z1YyDxEGs/8B9wDa3rBsIY3eG5mk/74
	F7M9M24JNA5HJe0Os2hN1ziAl1LTxU/QG5OlvPaibC5pUG8Z+/tJNr2agiabneDvxcTaNEwy90zky
	PMayhBQLzOKRD1lh7Ebw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUPd-0005FO-77; Mon, 06 Apr 2020 16:15:49 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUPX-0002h8-1x
 for ath10k@lists.infradead.org; Mon, 06 Apr 2020 16:15:46 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586189744; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=R+Q0VQ+Lxe495OE3/cv8b8RjoRexBxIsVjg2HvlPqtc=;
 b=j9iUZbcKwDjQ8UwL5NCW5PKDFnCLjJgZSBO6MKACsoatC4OHaTBOVtPRIilTHqD6lV8JzZVW
 UTsxPYI3vF0p6AiBQJmERa6MIXzBreaVUophCYbBS2jOZC/vbluKwNQUxHkiMnIlIueQeIqH
 Lva15q7iet+jp+hy8ufURl9XWGA=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e8b559d.7fade389a880-smtp-out-n05;
 Mon, 06 Apr 2020 16:15:25 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 5C6C9C43637; Mon,  6 Apr 2020 16:15:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 87BD3C433D2;
 Mon,  6 Apr 2020 16:15:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 87BD3C433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: Fix the race condition in firmware dump work queue
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <1585213077-28439-1-git-send-email-mkenna@codeaurora.org>
References: <1585213077-28439-1-git-send-email-mkenna@codeaurora.org>
To: Maharaja Kennadyrajan <mkenna@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200406161524.5C6C9C43637@smtp.codeaurora.org>
Date: Mon,  6 Apr 2020 16:15:24 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_091544_613407_C32B597F 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 Govindaraj Saminathan <gsamin@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Maharaja Kennadyrajan <mkenna@codeaurora.org> wrote:

> There is a race condition, when the user writes 'hw-restart' and
> 'hard' in the simulate_fw_crash debugfs file without any delay.
> In the above scenario, the firmware dump work queue(scheduled by
> 'hard') should be handled gracefully, while the target is in the
> 'hw-restart'.
> 
> Tested HW: QCA9984
> Tested FW: 10.4-3.9.0.2-00044
> 
> Co-developed-by: Govindaraj Saminathan <gsamin@codeaurora.org>
> Signed-off-by: Govindaraj Saminathan <gsamin@codeaurora.org>
> Signed-off-by: Maharaja Kennadyrajan <mkenna@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

3d1c60460fb2 ath10k: Fix the race condition in firmware dump work queue

-- 
https://patchwork.kernel.org/patch/11459703/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
