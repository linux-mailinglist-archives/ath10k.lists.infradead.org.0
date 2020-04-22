Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D06C1B38A2
	for <lists+ath10k@lfdr.de>; Wed, 22 Apr 2020 09:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCefK7GebfzWd97sOWVDO/hu9/wHgJkVKVxWNqpOOV0=; b=riX7IT8FYRUDcV
	d6G4dHYW78pNbisr6V64uhAnCTdb7bTRnFSSVz1Wb7RYpbOj48XTX97s0iS6TQFhKraoRDtOLJ1AC
	YlUyLG+IWMR5iI+6Qe4yVYwvzVRg5T31Ab4HntgTuKDTCoo/jveOgPqL88o0KQcJ85WDXEC2pnMka
	LPaS/M5diY6VsAF55iBHcc4Jp/j6LMmsCDv7pKgltL0iwNuwvmO8TGSMKWQeyIz31tY/8zmuqQd5T
	SvzwYss3NI6WFSMV34MZU8jOQ6jTbcflJg8s1D9IA6eQDbgymdOicCjV6k6Y42TW1mlczwui767mN
	Q0Ys6741gpfO6P0VMlaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR9b9-0006Oy-RD; Wed, 22 Apr 2020 07:15:07 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR9b4-0006M2-3v
 for ath10k@lists.infradead.org; Wed, 22 Apr 2020 07:15:04 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587539702; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=KPqBm9R1857cQ9lpE9nyDGaLdTyzl6lcMd+6kkTBafs=;
 b=fZi8fq3nWdQY998CoIiL+EPwIvzxXf3loELKlGJ50DkMUobumPAlnzepkfB3XtBP4NHSCGh/
 jTQCHyspnu7+mAtr1rjO3sUlunKWIJG5+2iKwI5Um7WBbn/PSiRiaPl+G1l8S7YBoFcl6c5I
 aYqqsfNVc8pAqAzYCSIZ5TbiHJs=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9feef3.7f930ebadae8-smtp-out-n03;
 Wed, 22 Apr 2020 07:14:59 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 765F2C433CB; Wed, 22 Apr 2020 07:14:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C11FDC433D2;
 Wed, 22 Apr 2020 07:14:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C11FDC433D2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Nicola Mori <nicolamori@aol.com>
Subject: Re: Killer WiFi card keeps disconnecting due to latest firmware
References: <b07a7ea1-7ab2-8ce3-95d7-6726e7708749.ref@aol.com>
 <b07a7ea1-7ab2-8ce3-95d7-6726e7708749@aol.com>
 <87ftd3r4lt.fsf@kamboji.qca.qualcomm.com>
Date: Wed, 22 Apr 2020 10:14:53 +0300
In-Reply-To: <87ftd3r4lt.fsf@kamboji.qca.qualcomm.com> (Kalle Valo's message
 of "Thu, 16 Apr 2020 15:34:54 +0300")
Message-ID: <87k128ng9e.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_001502_661536_A05D5D13 
X-CRM114-Status: GOOD (  14.58  )
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
Cc: ath10k@lists.infradead.org, Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle Valo <kvalo@codeaurora.org> writes:

> Nicola Mori <nicolamori@aol.com> writes:
>
>> Hi, I have an issue with the WiFi card in my laptop, that keeps
>> disconnecting from the network in a strange way: randomly every 1-2 
>> hours I can't access web pages or even ping the gateway, but existing
>> connections (like existing ssh sessions or Zoom videoconferences)
>> continue to work. The only solution is to restart the network
>> connection.
>>
>> The fix for me has been to downgrade the firmware by removing
>> /usr/lib/firmware/ath10k/QCA6174/hw3.0/firmware-6.bin so that
>> /usr/lib/firmware/ath10k/QCA6174/hw3.0/firmware-4.bin is used; with
>> this, I have no issues.
>
> These firmware filenames tell nothing to me (-6 and -4 are just
> interface version numbers), I need the exact firmware versions of which
> works and which doesn't. 'dmesg | grep ath10k' is the best way to get
> them.
>
> Also adding Wen to the loop.

For some reason I don't see Nicola's reply in the list, I'll copy it
below just in case. So it looks like WLAN.RM.4.4.1 has a regression.
Wen, what do you think?

----------------------------------------------------------------------
Hi Kalle, thanks for replying. This is the output of 'dmesg | grep
ath10k' when using the firmware file that works:

1448:[    3.485923] ath10k_pci 0000:3b:00.0: enabling device (0000 -> 0002)
1449:[    3.489776] ath10k_pci 0000:3b:00.0: pci irq msi oper_irq_mode
2 irq_mode 0 reset_mode 0
1480:[    3.845150] ath10k_pci 0000:3b:00.0: qca6174 hw3.2 target
0x05030000 chip_id 0x00340aff sub 1a56:1535
1481:[    3.845151] ath10k_pci 0000:3b:00.0: kconfig debug 1 debugfs 1
tracing 1 dfs 0 testmode 0
1482:[    3.845545] ath10k_pci 0000:3b:00.0: firmware ver
WLAN.RM.2.0-00180-QCARMSWPZ-1 api 4 features
wowlan,ignore-otp,no-4addr-pad crc32 75dee6c5
1487:[    3.909684] ath10k_pci 0000:3b:00.0: board_file api 2 bmi_id
N/A crc32 4ac0889b
1507:[    3.986187] ath10k_pci 0000:3b:00.0: unsupported HTC service
id: 1536
1508:[    4.007720] ath10k_pci 0000:3b:00.0: htt-ver 3.26 wmi-op 4
htt-op 3 cal otp max-sta 32 raw 0 hwcrypto 1
1530:[    4.459620] ath10k_pci 0000:3b:00.0: unsupported HTC service
id: 1536

And this is when using the faulty firmware file:

1411:[    3.161194] ath10k_pci 0000:3b:00.0: enabling device (0000 -> 0002)
1413:[    3.163852] ath10k_pci 0000:3b:00.0: pci irq msi oper_irq_mode
2 irq_mode 0 reset_mode 0
1446:[    3.544236] ath10k_pci 0000:3b:00.0: qca6174 hw3.2 target
0x05030000 chip_id 0x00340aff sub 1a56:1535
1447:[    3.544237] ath10k_pci 0000:3b:00.0: kconfig debug 1 debugfs 1
tracing 1 dfs 0 testmode 0
1448:[    3.544560] ath10k_pci 0000:3b:00.0: firmware ver
WLAN.RM.4.4.1-00140-QCARMSWPZ-1 api 6 features wowlan,ignore-otp,mfp
crc32 29eb8ca1
1461:[    3.636783] ath10k_pci 0000:3b:00.0: board_file api 2 bmi_id
N/A crc32 4ac0889b
1469:[    3.711916] ath10k_pci 0000:3b:00.0: unsupported HTC service
id: 1536
1470:[    3.730945] ath10k_pci 0000:3b:00.0: htt-ver 3.60 wmi-op 4
htt-op 3 cal otp max-sta 32 raw 0 hwcrypto 1
1534:[    4.378847] ath10k_pci 0000:3b:00.0: unsupported HTC service
id: 1536
----------------------------------------------------------------------

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
