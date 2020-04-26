Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B131B9338
	for <lists+ath10k@lfdr.de>; Sun, 26 Apr 2020 20:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0I6/pG27Hi73NDee71P44sI1jBVEHDX2vXdNBg9c6I=; b=uOMO+wblHeOpIF
	SM/sfCehPKMsVVIVdjlxZYqJlSwtJUjKdGmXKMYENRJA0fdljL9oc0wUkB2fPWsD9k2XTcXzI6Mkc
	K06dz5haS0KJguK2RBlLKBB4I88h+VrnsKnEzdcI31biZSUV1BDeVlUDYsqTNtdLeLCokRi/cWrWE
	jIySJFcKyHKoky7Y+XrW2XoH6Yj6aWyPTYUwpsHCRpC9cIYsoCDcADyuSLvJWYHDnY4kUVIe0YHf4
	z3bqJoHF2uJkIEH2aZ14GFL2wVHkHxS0miVk28FQmhwR7TM7Vmu7yKS/FC4ql7kQ6cddR2sz2mXNE
	X+onnssfY+CxGLg2mI9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSmQv-00050W-Gf; Sun, 26 Apr 2020 18:55:17 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSmQq-0004DJ-R9
 for ath10k@lists.infradead.org; Sun, 26 Apr 2020 18:55:14 +0000
Received: by mail-il1-x142.google.com with SMTP id f82so14591191ilh.8
 for <ath10k@lists.infradead.org>; Sun, 26 Apr 2020 11:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=ID+s/kIuQffbtVD2bVpoEDE/eYurufYVKWM8/nLhDEg=;
 b=tO2QPnOrOpKc2Nt93V/nwRWdC0wZae8rge7GXer1KEEHeFOSknsfdGBnaS3XEOGxBH
 cwlarRj42+ffEjdlQV3WOFtYBuIHBjdAdG8ZqLpx3LCMNF3VGm7ejuaVBQm6lGNd6RCe
 vZ529OB7HboPNKaqJevoVRZbN10jBCVMcxIs/HmPOyq2Uol+yu6iOHl3uotWTbfd48o0
 1UxbkLhKCXvJdYzya2pFPUPvr/ilraaQurNGruSXfDVq4T01hsHExTiluCdEE3wJ7PIs
 njR0+FdxEfIPUZ3PXoqMFjChhbJB9m4LF43ccfxURKJQTSd1XnlZW2KXs4RQSUZmnKsv
 U8cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=ID+s/kIuQffbtVD2bVpoEDE/eYurufYVKWM8/nLhDEg=;
 b=dDKrJW2NPQRmMeDbvu6kqvLtuMFc/baLpYhlVng5gTIwl14Mb6PAl7TiN2GU48+97h
 dg1KHt3p36Nl1VWZPeDJcrXW3gxFY4sdOmbk2FCGpEv+g43Foz0C0QtXLP7y4lGaoZdA
 DQmzBXpeG1qnrXkNmloy+dEbqzvKoO6l4+m/KbAdKyIPq/0sNG8gHmvCR4nLAOfti8I1
 +NgVAxUgXQqbL2Gcmhx4E0+GWw3h4Z0PPx1CB+dddYz4iEu+fpkZWxcreDpF9pYL+MXC
 IWndeoOAMPRPkfcUUWKdOCOawUMHzaG7OAWDQgWf5kerb2vSc9jsZWZ2E9ZpxLTMPY/u
 LRpg==
X-Gm-Message-State: AGi0Pua9iPHmdIWp/qfkxgbrLGdIu7TkWS/4vm9QikHw6fXAR1rlMXRf
 dchHThHS2xSjqMVna6UzlfiZQsnOrlyOf2lqVgnZKK2/
X-Google-Smtp-Source: APiQypJP4m+Scjl5MZa206Hfc0KLpCxr+Gx1atkkXk/SjWIUyZ/E3RRI0M7U5JbzvEiOSlLa5n5kJ3ov7Qf8LJpz2Mo=
X-Received: by 2002:a92:4b10:: with SMTP id m16mr18404581ilg.107.1587927311254; 
 Sun, 26 Apr 2020 11:55:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:91ce:0:0:0:0:0 with HTTP; Sun, 26 Apr 2020 11:55:10
 -0700 (PDT)
In-Reply-To: <CALY5VB3=0=M-QjHquL8GpU=Mw5d3v+EjE2zYv_rqEp5vOFZ5EA@mail.gmail.com>
References: <CALY5VB38LT_FNRj5mdvgSJ0YVb6fHyOSM5dJfN8Kdzsuk5wTvA@mail.gmail.com>
 <CAKR_QVJvko9VidtC-uR2XdwmYV_e3sm4rN-0162gpnkj7hFgZA@mail.gmail.com>
 <CALY5VB3=0=M-QjHquL8GpU=Mw5d3v+EjE2zYv_rqEp5vOFZ5EA@mail.gmail.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Sun, 26 Apr 2020 20:55:10 +0200
Message-ID: <CAKR_QVKaENYxa3-8cBr7Oypu6t-JW+_qb1d-gSyw8GV0f4x-ww@mail.gmail.com>
Subject: Re: Poor link speeds and signal strength on Qualcomm QCA 9377
To: Arvind Bakshi <arvindbakshicool@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_115512_920210_9A5712C2 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pozega.tomislav[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 25/04/2020, Arvind Bakshi <arvindbakshicool@gmail.com> wrote:
> Output of dmesg | grep ath10k:
>
> [   17.064613] ath10k_pci 0000:01:00.0: enabling device (0000 -> 0002)
> [   17.081365] ath10k_pci 0000:01:00.0: pci irq msi oper_irq_mode 2
> irq_mode 0 reset_mode 0
> [   17.437946] ath10k_pci 0000:01:00.0: qca9377 hw1.1 target
> 0x05020001 chip_id 0x003821ff sub 1028:1810
> [   17.437948] ath10k_pci 0000:01:00.0: kconfig debug 0 debugfs 1
> tracing 1 dfs 0 testmode 0
> [   17.438532] ath10k_pci 0000:01:00.0: firmware ver
> WLAN.TF.2.1-00021-QCARMSWP-1 api 6 features wowlan,ignore-otp crc32
> 42e41877
> [   17.510771] ath10k_pci 0000:01:00.0: board_file api 2 bmi_id N/A
> crc32 8aedfa4a
> [   17.587956] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
> [   17.606733] ath10k_pci 0000:01:00.0: htt-ver 3.56 wmi-op 4 htt-op 3
> cal otp max-sta 32 raw 0 hwcrypto 1
> [   17.695763] ath10k_pci 0000:01:00.0 wlp1s0: renamed from wlan0
> [   22.040673] ath10k_pci 0000:01:00.0: unsupported HTC service id: 1536
>
> Output of uname -a :
>
> Linux ubuntu 5.4.0-26-generic #30-Ubuntu SMP Mon Apr 20 16:58:30 UTC
> 2020 x86_64 x86_64 x86_64 GNU/Linux
>
> Thanks & Regards
>
> Arvind
>
> On Sat, Apr 25, 2020 at 12:37 PM Tom Psyborg <pozega.tomislav@gmail.com>
> wrote:
>>
>> On 25/04/2020, Arvind Bakshi <arvindbakshicool@gmail.com> wrote:
>> > Sir/Mam
>> >
>> > Getting 1 mbps link speed and average signal strength, even on
>> > standing next to router on every linux distro whereas windows 10 gives
>> > 150 mbps link speeds and excellent signal strength even standing quite
>> > far off from router. Tested on Fedora 30/31 and ubuntu 18.04/20.04.
>> > Turning off wireless power management : sudo iwconfig wlan0 power off
>> > doesn't make a difference.
>> > Turning off all power saving options using TLP also doesn't make a
>> > difference.
>> > Software (OS, Firmware version, kernel, driver, etc)
>> > Tested on Fedora 30/31 and ubuntu 18.04 LTS
>> > Wifi card: Qualcomm QCA 9377
>> > Device: Dell Vostro 3468 (shipped with ubuntu 16.04)
>> >
>> > Hardware (NIC chipset, platform, etc)
>> > Qualcomm QCA 9377
>> >
>> >
>> >
>> > Please provide driver fix for this wireless card.
>> >
>> > Thanks & Regards
>> >
>> > Arvind Bakshi
>> >
>> > _______________________________________________
>> > ath10k mailing list
>> > ath10k@lists.infradead.org
>> > http://lists.infradead.org/mailman/listinfo/ath10k
>> >
>>
>> Hi
>>
>> Show output of "dmesg | grep ath10k" and "uname -a" on ubuntu
>

I have exact same card, works fine on recently installed and updated
ubuntu 19.10 with kernel 5.3.0

How did you end up on 5.4.0 with ubuntu 18.04? From update manager?

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
