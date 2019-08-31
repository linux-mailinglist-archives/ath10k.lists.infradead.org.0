Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B2DA44CF
	for <lists+ath10k@lfdr.de>; Sat, 31 Aug 2019 16:50:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D/2HnZuDNaK9UOKDLlA6ekjbsjI4kngma6aeZiMLxTw=; b=pS2bEUAHH0xhjNo4XLBK9vK/a
	DkruHmrVmpO3ltzkF8+RnMZuG8WkejLN7pYR+96M0GdFKausSq21q3qnFPsO7cL6a+al0a/KGn9zs
	mbtotT25plodnsOU0ILg2w6DhEl82w+HXtwSSVUPNy3SyCz/BpvrYZsWOQjsa5PnU0biw7XBB5hAP
	JEP3lINXecO4U0ZCVnbpEg4DYuPe2MK2GyCE71uh9D2zqIjGaJYRSHlygLDTYTTk50O0RCGA/hdhv
	+X6xodSuD7TbHuwO+jkTGEpfW51Bg6Dt1//5jqEXzRPaRtsLoiLHJP+dOqmAYci0/3iQCrYFrHQWY
	XQzsTcRCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i44hf-0007lZ-2X; Sat, 31 Aug 2019 14:50:11 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i44hZ-0006WC-Ac
 for ath10k@lists.infradead.org; Sat, 31 Aug 2019 14:50:07 +0000
Received: by mail-lj1-x231.google.com with SMTP id e27so9019871ljb.7
 for <ath10k@lists.infradead.org>; Sat, 31 Aug 2019 07:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fs9FLd/4LVEkf1gfm04LQ9EZVYysgt1S0g8W7R42w08=;
 b=ELXNS4aISKeC9e0S3uCnevSCbpW8Z1sQQpc7Q14hImGJblx82FLJ7dGJc2VxwwFUKi
 x3FeuDsZ0+TeEylIs2qzIc2wS4kyg6OLmvGKOLNyU1mYYuuSKxdzrJkwiSzsgC53jrJO
 MBN6YMnQTUxjvRiopUbjNnuAzQ1aCHZhNPlH4RDf1n+ld91H2EWvxNMVW1ZF6AOiNDqJ
 /Kxb+khQhn48i2MjfoZFfkK2wbv/vKlGzrtNoYCrQDTSYTErpSVvkWoDxWgpfD16ADVt
 Bdpjk8G2BMyXB7DoYbGPAo4T3TFVWFLqzRwXvZ0PBEkSohPuGhOKn2sR8/8tLKHEQ3/k
 0YUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fs9FLd/4LVEkf1gfm04LQ9EZVYysgt1S0g8W7R42w08=;
 b=Cd3pADGhRx1/hrj8lxDoSfAkERaaWco1K9En+Deh21XtZS8k2XBVEHglXj48jBi9Sa
 OSiR477H5RThfNZtOPp1VLo+OHGARO3HTizFKC7+BPu24bqycVlW8IckJhrCBu78jZJr
 J1L2Z/ZsqvbunvT0O1rbGDORfl/JJ/RdhWsF7lnZM9qV2Suy4x8gZ0eXKYOh41K0gjK0
 Kk7ePHm2oYBaL+sPI95NrVr3HSS9n7tszfO0QWwIg1oirsxpa+cNt1xZPr4Noa/bdx0w
 jiSA/rRZ1PvsFVl9Gk27VHKHL3ZJjm3DKJPII34U7br4eHJT766Sr18Cw34mGyNk//bF
 xwZQ==
X-Gm-Message-State: APjAAAWVJHnz3mg87KhLvu2PhvBSNMYdmUVyhc/dKWlv1lI3YN6jRIha
 a9ANkVgoqmN8RlnUjhWlTmImH+uZ
X-Google-Smtp-Source: APXvYqwqCqkY+VSqtMcJu1VfEdYCG3ivbSN+tUrACAAvx+dqvsITc40gGHnShN4RO0bgQreNmw3/Eg==
X-Received: by 2002:a2e:6a04:: with SMTP id f4mr11708609ljc.150.1567263000668; 
 Sat, 31 Aug 2019 07:50:00 -0700 (PDT)
Received: from [192.168.1.244] (81-233-89-221-no75.tbcn.telia.com.
 [81.233.89.221])
 by smtp.gmail.com with ESMTPSA id b205sm1698653lfg.72.2019.08.31.07.49.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 31 Aug 2019 07:50:00 -0700 (PDT)
Subject: Re: problems with a 9377 based SDIO module
To: Greg Ungerer <gerg@kernel.org>
References: <176a3a2d-ff81-3b72-86af-73c70df729f4@kernel.org>
 <a97cd0d2-e53e-ef3c-63e3-0d4d352c7994@kernel.org>
From: Erik Stromdahl <erik.stromdahl@gmail.com>
Message-ID: <8748427f-c4cd-a223-d635-2b628ee2cfb3@gmail.com>
Date: Sat, 31 Aug 2019 16:49:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <a97cd0d2-e53e-ef3c-63e3-0d4d352c7994@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_075005_378882_610CDBF7 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:231 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (erik.stromdahl[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Greg,

On 8/30/19 4:52 PM, Greg Ungerer wrote:
> 
> On 29/8/19 4:33 pm, Greg Ungerer wrote:
>> I have a Compex WSD377 WiFi module with SDIO interface on a new
>> iMX6 based platform. I am trying to get the module going but am
>> having problems with it at probe/init time.
>>
>> Ultimately what I see at ath10k_sdio module load time is:
>>
>> <4>ath10k_sdio mmc0:0001:1: WARNING: ath10k SDIO support is incomplete, don't expect anything to work!
>> <6>ath10k_sdio mmc0:0001:1: qca9377 hw1.1 sdio target 0x05020001 chip_id 0x00000000 sub 0000:0000
>> <6>ath10k_sdio mmc0:0001:1: kconfig debug 1 debugfs 0 tracing 0 dfs 0 testmode 0
>> <6>ath10k_sdio mmc0:0001:1: firmware ver WLAN.TF.1.1.1-00061-QCATFSWPZ-1 api 5 features ignore-otp crc32 7746e551
>> <3>ath10k_sdio mmc0:0001:1: failed to fetch board data for bus=sdio,vendor=0271,device=0701,subsystem-vendor=0000,subsystem-device=0000 from ath10k/QCA9377/hw1.0/board-2.bin
>> <6>ath10k_sdio mmc0:0001:1: board_file api 1 bmi_id N/A crc32 78c48ff6
>> <4>ath10k_sdio mmc0:0001:1: failed to write to address 0x828: -84
>> <4>ath10k_sdio mmc0:0001:1: unable to disable sdio interrupts: -84
>> <3>ath10k_sdio mmc0:0001:1: could not start HIF: -84
>> <3>ath10k_sdio mmc0:0001:1: could not init core (-84)
>> <4>mmc0: queuing unknown CIS tuple 0x01 (3 bytes)
>> <4>mmc0: queuing unknown CIS tuple 0x1a (5 bytes)
>> <4>mmc0: queuing unknown CIS tuple 0x1b (8 bytes)
>> <4>mmc0: queuing unknown CIS tuple 0x14 (0 bytes)
>> <3>ath10k_sdio mmc0:0001:1: could not probe fw (-84)
>>
>> Tracing I can see that a fair bit of IO has gone on when it finally
>> gets to the "failed to write to address 0x828: -84". I assume the
>> bulk writes up to that point are the firmware download.
>>
>> I am using a linux-5.2 kernel with your patches at
>> https://github.com/erstrom/linux-ath.git, v5.2-ath10k-sdio branch.
> 
> Problem mostly solved by also patching with the changes at
> https://kernel.googlesource.com/pub/scm/linux/kernel/git/kvalo/ath.
> Applying the v5.2-ath10k-sdio changes on top of them.
> 
> Now it successfully probes the device. But after configuring wlan0
> and sending/receiving a few packets I started to see:
> 
> ath10k_sdio mmc0:0001:1: msdu_id allocation failed -28^M
> ath10k_sdio mmc0:0001:1: failed to transmit packet, dropping: -28^M
> ath10k_sdio mmc0:0001:1: failed to submit frame: -28^M
> ath10k_sdio mmc0:0001:1: failed to push frame: -28^M
> 
I was actually trying my v5.2 branch with my QCA9377 SDIO device today,
and everything was running without any problems.

I don't recognize your errors.
The error message you get is because the driver is not able to allocate an
MSDU ID for the TX MSDU.

It looks as if your hardware does not notify the driver that it has consumed
the MSDUs (with a TX_COMPL_IND). Then the MSDU ID never gets freed and the
driver will run out of IDs.

> 
> 
>> My primary concern is if I am using the write firmware.
>>
>> I have a firmware-sdio-5.bin which is the QCA9377/hw1.0/untested/firmware-sdio-5.bin_WLAN.TF.1.1.1-00061-QCATFSWPZ-1
>> file from the ath10k-firmware tree at https://github.com/kvalo/ath10k-firmware.git.
>> And the board-sdio.bin which is the bdwlan30.bin from https://github.com/boundarydevices/qca-firmware.git.
This firmware should work. I am using it as well.

>>
>> I ended up with those from comments made in
>> https://ath10k.infradead.narkive.com/lgpFutCZ/patch-00-11-sdio-support-for-ath10k
>> But maybe I am off-track here?
>>
>> Does the kernel trace give any clues as what the problem may be?
>> Any other ideas?
The only thing I can think of is that something is wrong with your SDIO/MMC setup
(device tree?) or your actual hardware.

--
Erik

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
