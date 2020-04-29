Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D88A31BE88D
	for <lists+ath10k@lfdr.de>; Wed, 29 Apr 2020 22:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+w54GNyGwQV4WjNDZDIUaqFMkb2P/xO1PyGuUYHW00U=; b=Xbo49dSUZ+en8s
	YTyNTU6RcFa7dYGLC7YB99xKMW1z+tUXAp7ArlV6dCxrBSqvJjiWclKJ1GAOg328wK1sPqg5XXvZt
	kkTdQ8ifbDcy8w6iyGS+ovzl1wJEugQWTdkrNq8RiDsNEr0OBnlE0igQy3GFKYqQqFwpITcPufHMn
	aQyfpVCUAWCvEbcNcpn1UolxT3MViGwByB7oAFSLeeGNrgMrB8xxYf/OUNDTw1Txl6KXNLii3LZjk
	HmV/WhmoA2ANT/6SGUIj9W5VluErn/UAEMX6Iw08h6k+4QxiSGz5/ayDIHhCuOuIAZITBX8Jqs+cO
	KvuYcu19h0u/xLhWvFfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtLc-0002g4-KX; Wed, 29 Apr 2020 20:30:24 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtLZ-0002fU-1T
 for ath10k@lists.infradead.org; Wed, 29 Apr 2020 20:30:22 +0000
Received: by mail-il1-x144.google.com with SMTP id b18so3810389ilf.2
 for <ath10k@lists.infradead.org>; Wed, 29 Apr 2020 13:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=cVNscrtZI7WRjRtQhzuulh74NVoW+nitjgHhXZjgZqE=;
 b=L6rcQ4nCkp19co1yNmC/Ka99v1ZJ8/baOWolV53bJvfauxmRXOgFuTZIkZrBFNX30i
 45xkGFrg86/ta8jwJ9SBg71dm1jKN6g/+YHkXCnwCeE2iJ2SER64zUPjL1iFRZ4FU1DV
 ElQpWTYNez264z+1WznXu48vamjrs05DPEMmWq3qtxR3SoVgDgGhmGrHmu9q6rNMuEYt
 F5ArufGjLxuI1KEUUn1eMdU7nT4cVQ240CIenkLSmb/cOCDcA8c9LwUNYXzpO6Rl/IO3
 b2F4e970e3yeAQI5T96Em+z8wiCLDoEvGYOVjNaoURe+lZLGtn3RtCKYD5SaHJ5oT0To
 Fffw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=cVNscrtZI7WRjRtQhzuulh74NVoW+nitjgHhXZjgZqE=;
 b=CbCZ1livspfqAw41AMKkVxVXfT8QUEE0O3qkxdxf286ZOE5n/nZjPvFxldPgY9N7OX
 VYClI1RLuptHt51V7K28QGeo2us4pkZM2H/MSUon/jzRKC2jRLKkWX4rW16lf4gBwfdw
 IbysIcBOnOr1pbjtwYsV+Njk9x1Y4Zjfh6JyMposFxhFo4pmOlTW/c8ahdsrDJydGeTk
 OvOaG4EPDn944Dr+nxRKTQ9+nw+wX9aJXeVkEbPGG2/7CklvTWo19Z38IvbSaqDk7gaY
 o6DWZ1k7np0vqDSDLSSDTgoqHscbUMfOQBKuHIGepDA12OQezSWam6Yi2WxsfLyTE7TZ
 xzmw==
X-Gm-Message-State: AGi0PuYmhvTuYpO2eoPID4RvXw3JUTAYAnZFSJycFkLi5R0lB0YtCsQu
 PdZVBkyFN4QDyB8wmn4goJ8PDSrttZ5bWRv5g0U=
X-Google-Smtp-Source: APiQypJnF6ApLPSh5Ry4PXaB6tlbnSjfwkHnIAs+zpuuyfnh53Fb1jDdjS/5ByKi313tfzTXS4uuUFGWP8E5N7no7IQ=
X-Received: by 2002:a92:d7c6:: with SMTP id g6mr147172ilq.51.1588192218974;
 Wed, 29 Apr 2020 13:30:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5e:9503:0:0:0:0:0 with HTTP; Wed, 29 Apr 2020 13:30:18
 -0700 (PDT)
In-Reply-To: <87blnbizws.fsf@tynnyri.adurom.net>
References: <CALY5VB38LT_FNRj5mdvgSJ0YVb6fHyOSM5dJfN8Kdzsuk5wTvA@mail.gmail.com>
 <87blnbizws.fsf@tynnyri.adurom.net>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 29 Apr 2020 22:30:18 +0200
Message-ID: <CAKR_QV+yETmzf5Fgfbx_g8RxdfDbT0Uikvt8mUtstT0N0-p7hQ@mail.gmail.com>
Subject: Re: Poor link speeds and signal strength on Qualcomm QCA 9377
To: Kalle Valo <kvalo@adurom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_133021_108868_C04CA17B 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pozega.tomislav[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ath10k@lists.infradead.org, Arvind Bakshi <arvindbakshicool@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 28/04/2020, Kalle Valo <kvalo@adurom.com> wrote:
> Arvind Bakshi <arvindbakshicool@gmail.com> writes:
>
>> Getting 1 mbps link speed and average signal strength, even on
>> standing next to router on every linux distro whereas windows 10 gives
>> 150 mbps link speeds and excellent signal strength even standing quite
>> far off from router. Tested on Fedora 30/31 and ubuntu 18.04/20.04.
>> Turning off wireless power management : sudo iwconfig wlan0 power off
>> doesn't make a difference.
>> Turning off all power saving options using TLP also doesn't make a
>> difference.
>> Software (OS, Firmware version, kernel, driver, etc)
>> Tested on Fedora 30/31 and ubuntu 18.04 LTS
>> Wifi card: Qualcomm QCA 9377
>> Device: Dell Vostro 3468 (shipped with ubuntu 16.04)
>>
>> Hardware (NIC chipset, platform, etc)
>> Qualcomm QCA 9377
>
> My first guess is a problem with calibration data, for example using
> wrong board data file (which are device specific). Unfortunately I don't
> know what would be the correct board data file for your device, ath10k
> is supposed to choose it automatically but we don't always have all
> board data files available.
>
> --
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
>
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k
>

There's nothing wrong with calibration data. Board and firmware
checksums are the same as on my system. Probably kernel problem
again..

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
