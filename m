Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5E7126488
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 15:22:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cj+WhkShZLPQoiceA8DGHRnOkcKu3rj8WqCM/wpB75A=; b=TyzwwjLB/Gou0t
	t+l96HqWXE8wlY4Ej9se7jedI4oTO1AIP3XBFUEDTiTRq1Iwq7KNCiy18BhdxNKMuibsvHRzVgRqk
	j2hvu0xPPR+C0Y/qstWL6ZWfkSG0NTVpNiDUldyqYOALF9l79yvvsWKAs6npli68SZqzuI5vySNtA
	q8LS6MotR/U3xYTiiJDBCGSGX1s4V3Wz2LGimqOYr3aJ25NPdKC9smN680K2XeFMkmBHFqFAhHNF0
	dITAyuJBcl9Ue8u+z2D0/Q4a9Lv4B2ADDv2Li6KM/uthSjec4appVLYWgm8ThDh4SlRElhH8fXvjO
	MrfXzfWGoYNyCJ+/I3hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihwgq-0007eY-CC; Thu, 19 Dec 2019 14:22:08 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwgk-0007dj-IF
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 14:22:05 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576765323; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=UmveuUtZWLgWspyGtVGArhySgeISuX0U1mjzVzlm+5c=;
 b=qootuDX6DAtEWJ/EM4wz0D2+ctkC+nYZO4qq5/7dg2aj1T3yB2Es1+/7FbRcZ7mrLdKUPFSG
 BCbjQQQKLEyWZfXSgUl1gOE/5zeUkiT8buSDyYYS53gBzVr0izP+YxxwoiqYr0S25Gx/zWVb
 jFhXE2tEgv6W1gyn53iERQeX4DM=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfb8787.7fc0332e6068-smtp-out-n01;
 Thu, 19 Dec 2019 14:21:59 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 58DF6C5380E; Thu, 19 Dec 2019 14:21:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A5340C5380C;
 Thu, 19 Dec 2019 14:21:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A5340C5380C
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH 1/2] ath10k: pci: Only dump ATH10K_MEM_REGION_TYPE_IOREG
 when safe
References: <20191219131539.1003793-1-bryan.odonoghue@linaro.org>
 <20191219131539.1003793-2-bryan.odonoghue@linaro.org>
 <87woas5slt.fsf@kamboji.qca.qualcomm.com>
 <38bf1f75-0554-920a-0f29-354e70cfc077@linaro.org>
Date: Thu, 19 Dec 2019 16:21:55 +0200
In-Reply-To: <38bf1f75-0554-920a-0f29-354e70cfc077@linaro.org> (Bryan
 O'Donoghue's message of "Thu, 19 Dec 2019 14:15:37 +0000")
Message-ID: <87sglg5rb0.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_062203_730716_1C218EE6 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
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
Cc: akolli@codeaurora.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Bryan O'Donoghue <bryan.odonoghue@linaro.org> writes:

> On 19/12/2019 13:53, Kalle Valo wrote:
>> Bryan O'Donoghue <bryan.odonoghue@linaro.org> writes:
>>
>>> ath10k_pci_dump_memory_reg() will try to access memory of type
>>> ATH10K_MEM_REGION_TYPE_IOREG however, if a hardware restart is in progress
>>> this can crash a system.
>>>
>>> Individual ioread32() time has been observed to jump from 15-20 ticks to >
>>> 80k ticks followed by a secure-watchdog bite and a system reset.
>>>
>>> Work around this corner case by only issuing the read transaction when the
>>> driver state is ATH10K_STATE_ON.
>>>
>>> Fixes: 219cc084c6706 ("ath10k: add memory dump support QCA9984")
>>> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>
>> What ath10k hardware and firmware did you test this on? I can add that
>> to the commit log.
>>
>
> HW = QCA9988
> FW = ??
>
> Not quite sure how to find the firmware version TBH

'dmesg | grep ath10k' should show it.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
