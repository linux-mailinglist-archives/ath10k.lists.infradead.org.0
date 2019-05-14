Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2B51C4A3
	for <lists+ath10k@lfdr.de>; Tue, 14 May 2019 10:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXW/JcJFKIFDp3wjayt6qT4lxq7i6R/ZZHQk3CJDAyQ=; b=DwMUV9mD/s7xvJ
	ms7fNMBsZG4rEqcbsCx3sJ1tU7CrcDyWffGSZevPqwng+Kj7TgXMt6IPoR/SIoiQ8NAUZ63ZXDMLZ
	r7LK6denyoDik7IuGCGRonJPujEyIBDwNDKKrLX7E1YSSH9fJkJVVW/gE6JaADiTSv2FAlBSnAPI0
	G891638XM0YrSQS5kxGWzI6oDCVsZUCYLjrHryGL0xGBUEzFChfmCP+j9F7Mp3d/GlNfCuV5b/zuD
	Hhbutkee+2+VJYW+45optzxrQVEFYqKZIRvh/f7t8eGY7ila7CznvYRtWxVeLInNGE0TScyvSdPwL
	n6ta8D70/aHGuYpp7fgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQSm3-0004VE-NV; Tue, 14 May 2019 08:26:59 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSm0-0004U4-7r
 for ath10k@lists.infradead.org; Tue, 14 May 2019 08:26:57 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6FEC36076A; Tue, 14 May 2019 08:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557822415;
 bh=DENfI1QoYlBOlTdA04kUck6q+bYYxxRvT4f5izDYQ+0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=X74wt8n0UOM4fZ27Rymvzuu/K4XEba5XS8mmxI7OCyiZ6/D4mePo8XOaT5YUFDn6c
 loo37RAtI817/hTdQDysljHki2+v0WlkK+2w0fadEuJGpDzvReP8hhSgUbNggjkoxT
 0ow0TZhm7+ndY1HZdqYMAxS8EhbjVI386LE5VcRM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 2ACEC60128;
 Tue, 14 May 2019 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1557822414;
 bh=DENfI1QoYlBOlTdA04kUck6q+bYYxxRvT4f5izDYQ+0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=FNE1vJtum1WVCnI96x+RT//midFAkhvnIp3vaACthIUtJYRUVLHsNateaJCyQOWiL
 yafCzyYHBJZbuqv1UrR0kE3+n9RSyGulKmrGarx8DGVTJv5bEkC7DttT7YhIEIL8WK
 yN9LyU5piyI6bL9ZikkEU7iVp/s/RHiM0I0qZ8qY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 2ACEC60128
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: ath10k: wmi service ready event not received
References: <CAHk-=wim_asb1MRpis39SDghBNN5SpKDvUvF6cTtwa9w8cS8_Q@mail.gmail.com>
 <87r296jsj4.fsf@codeaurora.org>
 <CAHk-=wgUdQ+7-EHWHh-QMdMKNJKN9c_fmCgKHNUY6SOsFnDGeg@mail.gmail.com>
Date: Tue, 14 May 2019 11:26:51 +0300
In-Reply-To: <CAHk-=wgUdQ+7-EHWHh-QMdMKNJKN9c_fmCgKHNUY6SOsFnDGeg@mail.gmail.com>
 (Linus Torvalds's message of "Fri, 10 May 2019 07:44:43 -0700")
Message-ID: <87a7fpfnlg.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_012656_322218_A396CAEA 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Linus Torvalds <torvalds@linux-foundation.org> writes:

> On Fri, May 10, 2019 at 7:25 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>>
>> Can you post dmesg log when ath10k starts so that we know what hardware
>> and firmware you are using? "dmesg | grep ath10k" should tell that, I
>> assume this is a QCA6174 PCI device. Even better if you can provide full
>> dmesg so that we could see what was happening before this timeout, even
>> if just privately to me. Did this happen during laptop startup or after
>> resume?
>
> This was during bootup. Kernel log attached

Thanks, so this is QCA6174 hw3.2 PCI with firmware
RM.4.4.1.c2-00057-QCARMSWP-1. And the failure happened when ath10k was
loaded and it tried to start the firmware for the first time:

May 10 05:07:59 xps13 kernel: ath10k_pci 0000:02:00.0: enabling device (0000 -> 0002)
May 10 05:07:59 xps13 kernel: ath10k_pci 0000:02:00.0: pci irq msi oper_irq_mode 2 irq_mode 0 reset_mode 0
May 10 05:07:59 xps13 kernel: ath10k_pci 0000:02:00.0: qca6174 hw3.2 target 0x05030000 chip_id 0x00340aff sub 1a56:143a
May 10 05:07:59 xps13 kernel: ath10k_pci 0000:02:00.0: kconfig debug 0 debugfs 1 tracing 0 dfs 0 testmode 0
May 10 05:07:59 xps13 kernel: ath10k_pci 0000:02:00.0: firmware ver RM.4.4.1.c2-00057-QCARMSWP-1 api 6 features wowlan,ignore-otp,no-4addr-pad,raw-mode crc32 e061250a
May 10 05:07:59 xps13 kernel: ath10k_pci 0000:02:00.0: board_file api 2 bmi_id N/A crc32 4ed3569e
May 10 05:07:59 xps13 kernel: ath10k_pci 0000:02:00.0: unsupported HTC service id: 1536
May 10 05:08:05 xps13 kernel: ath10k_pci 0000:02:00.0: wmi service ready event not received
May 10 05:08:05 xps13 kernel: ath10k_pci 0000:02:00.0: could not init core (-110)
May 10 05:08:05 xps13 kernel: ath10k_pci 0000:02:00.0: could not probe fw (-110)

I can't immediately see what could cause this and I have not seen these
kind of reports before. Some kind of regression in the firmware's
initialisation or problems with PCI bus/interrupts are something which
come to my mind first.

Is there any way to check if PCI bus is having problems so that we could
rule that out? When this happens you could also do "modprobe -r
ath10k_pci; modprobe ath10k_pci" to see if the firmware initialisation
works without cold reboot, that would give some hints.

Also something you could try is the new firmware which I'm planning to
push to linux-firmware:

https://github.com/kvalo/ath10k-firmware/raw/master/QCA6174/hw3.0/4.4.1/firmware-6.bin_WLAN.RM.4.4.1-00132-QCARMSWP-1

Just copy that to ath10k/QCA6174/hw3.0/firmware-6.bin in your firmware
directory and reload ath10k_pci. I'm not expecting this to fix your
issue, but I did receive one weird crash report on Dragonboard which was
fixed by that release.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
