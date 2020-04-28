Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D02F61BBCF5
	for <lists+ath10k@lfdr.de>; Tue, 28 Apr 2020 14:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMwQxVweZth4vG91J+Uc3VcECnpFxmIcAcKhv69hPGs=; b=eWa5avmuwHcKm3
	0u4yHpA+SIzbe0SSx2KvsNGuK1ICa/N+Qz6D9MDSbXdYeHFTGBoAlrQFTz/YKN1en8y5ksnI8Nvvl
	x7yd5CIfAyvBxbAyWD4oPjpKnIAg+RlJ813EBxvg7LIWDX08z1xncKCA7jjM2P/oWGxJeAnbblqvk
	SED5RjPBo0gACaDBoJo8VEtx3+Z85J+cJEwbRdiQxHb29MIYhSu5EdnRg5D+7LEY7cISqN1WSkvsa
	lt3uvvKZz/MZ2/9KpeS6Fv2QbkYZqxgN4xRgJWGcJNNnu7qljRXa8xmGtcgvFQLMW8qNDqFAi/bLk
	ZJjRwdiDIn8vQGdEIEog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOwI-0002fq-U6; Tue, 28 Apr 2020 12:02:14 +0000
Received: from tynnyri.adurom.net ([51.15.11.48])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOwB-0002dn-RA
 for ath10k@lists.infradead.org; Tue, 28 Apr 2020 12:02:09 +0000
Received: from localhost ([::1] helo=tynnyri.adurom.net)
 by tynnyri.adurom.net with esmtp (Exim 4.92)
 (envelope-from <kvalo@adurom.com>)
 id 1jTOtv-0007nK-4L; Tue, 28 Apr 2020 14:59:49 +0300
From: Kalle Valo <kvalo@adurom.com>
To: Arvind Bakshi <arvindbakshicool@gmail.com>
Subject: Re: Poor link speeds and signal strength on Qualcomm QCA 9377
References: <CALY5VB38LT_FNRj5mdvgSJ0YVb6fHyOSM5dJfN8Kdzsuk5wTvA@mail.gmail.com>
Date: Tue, 28 Apr 2020 14:59:47 +0300
In-Reply-To: <CALY5VB38LT_FNRj5mdvgSJ0YVb6fHyOSM5dJfN8Kdzsuk5wTvA@mail.gmail.com>
 (Arvind Bakshi's message of "Sat, 25 Apr 2020 05:39:08 +0530")
Message-ID: <87blnbizws.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Spam_score: -1.0
X-Spam_bar: -
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_050208_159059_709B595D 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Arvind Bakshi <arvindbakshicool@gmail.com> writes:

> Getting 1 mbps link speed and average signal strength, even on
> standing next to router on every linux distro whereas windows 10 gives
> 150 mbps link speeds and excellent signal strength even standing quite
> far off from router. Tested on Fedora 30/31 and ubuntu 18.04/20.04.
> Turning off wireless power management : sudo iwconfig wlan0 power off
> doesn't make a difference.
> Turning off all power saving options using TLP also doesn't make a difference.
> Software (OS, Firmware version, kernel, driver, etc)
> Tested on Fedora 30/31 and ubuntu 18.04 LTS
> Wifi card: Qualcomm QCA 9377
> Device: Dell Vostro 3468 (shipped with ubuntu 16.04)
>
> Hardware (NIC chipset, platform, etc)
> Qualcomm QCA 9377

My first guess is a problem with calibration data, for example using
wrong board data file (which are device specific). Unfortunately I don't
know what would be the correct board data file for your device, ath10k
is supposed to choose it automatically but we don't always have all
board data files available.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
