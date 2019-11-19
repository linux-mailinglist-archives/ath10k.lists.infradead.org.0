Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 654691022FE
	for <lists+ath10k@lfdr.de>; Tue, 19 Nov 2019 12:28:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPHBIAtX48O60xNhuMluWjVt3Y8BNXHwPK9ZTaENRBw=; b=Zl4EW3IH78QOGW
	Ww8nl9hmfBSiuO8YN6bhV1xG2XF8eXVeF1QB+K/hS7svBGKEKtVBfO4GwzCqJjETPffbrwsLEi0oQ
	VKpmzVvHlQ47hoK1cQgtuFrv7KhqkF+MIoqrrfK9zJpJP8HbNzEVRfaR0BugfpKWozGiWzqsWEplG
	i3tdB9KLcgZOruU7YLVCBEob7/aKq2aYMzmk7vkrMOl/cU4BJ0V9D5CDDYvXP4DNmgdpOFw/61mjU
	vlOXS3DrDJlF3h5iiOuKrWfTm1W/NMX3L7n+WYKrzXyGoZZND4EfbpjeAhsyqR0Gd/v5kAf5bICug
	Jl1yefLNxuTv8mRGA24A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX1gB-0007cP-R4; Tue, 19 Nov 2019 11:28:19 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1g6-0007be-RY
 for ath10k@lists.infradead.org; Tue, 19 Nov 2019 11:28:17 +0000
Received: by mail-oi1-x22b.google.com with SMTP id y194so18586128oie.4
 for <ath10k@lists.infradead.org>; Tue, 19 Nov 2019 03:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=qZUkdERa19XKUHv80zulygyvcAoPf+8g3SFD9wVndiw=;
 b=BbkxAtojGMrSxzzQtT2l/irzAdSDy3jzSPOCo5u1jME2Ix1NSF0sWuHdZHoz0tbziJ
 TWc3loecKUK+HDBjyXl4Ms0jeNMdbp36ZJmoDnHfHLUNF+p4htT5zwLzKvzLDs0UeOjH
 11BEGqVN0a/3vWgYLtcDRGdKdVWVth6LvkhG6n9FIs+e0R0QOZUZ8CMCvQM/mjgPXV6Y
 YYFwjmjN55b3ygitYTtF+EMXTQm3ja7x0NDf9cAETc+qwK6AAJRIpKMh0UK4ylOVhFXa
 wdJ03hD8SkrBZwH4anS9y7s5Iq5jKigCCDRwPBuOuqz3m9FtKkixInkl+bDBhkoSHlHr
 VYdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=qZUkdERa19XKUHv80zulygyvcAoPf+8g3SFD9wVndiw=;
 b=gpNuU1d5IIxH7DjOTw6+p4u+mOfh+WTCLFv86z/McAdggd+2a0KCh/7XWA6IzTRt+0
 HnaqYQY3D4Xmsc5XyFuRolZYbR9lC9HRR2DYyHMoh48oerIFwwgtYdTA0a8aVVRr31j3
 cJW6Er6pEHn/gZtOimzNPYFF445R6Bt6Lbsqf5wMgOrdCW/qg7rWxkVR/03JJB2y+sfn
 Giqrx5oevby3Ko6jZtBkudZFDz4IfQXgoDvxFGf+G2t3w83eqCbqZ4tiht4jHPFnCedy
 cTeByz3VDYlcnWNsOf5mbBbKdMDyPvbEFsctsyhjz7U/d48AHQVKwuvLFFrMuJD0I2H1
 L7YA==
X-Gm-Message-State: APjAAAXZWFEDJLKX+zvel0gdvIv2xhncgyMORpPyK3AE/Ka6raIQJI26
 JTZYLN03hGPGzoTm6k0T1SyOMArp6HubV/lxpGEE9mV1
X-Google-Smtp-Source: APXvYqzoNhANHNLwQ8tXNr5IBkCINE4vq7zkLOvPJYexaypZ1nqJyMHEp2PZqcpwNfeIws5D4nVmgw0W5pHtmLZZlRQ=
X-Received: by 2002:a05:6808:d:: with SMTP id
 u13mr3661214oic.155.1574162892563; 
 Tue, 19 Nov 2019 03:28:12 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:384:0:0:0:0:0 with HTTP;
 Tue, 19 Nov 2019 03:28:12 -0800 (PST)
In-Reply-To: <CAKR_QVLaRKOc0OapvhppCZzYYO+w8h8t+B1amiWGGEiH6FmnjQ@mail.gmail.com>
References: <CAKR_QVLaRKOc0OapvhppCZzYYO+w8h8t+B1amiWGGEiH6FmnjQ@mail.gmail.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Tue, 19 Nov 2019 12:28:12 +0100
Message-ID: <CAKR_QVKxoy+2Nt0SB42nm2Js-V4Cy8PdqEO3w2-xJUt7yR8bJQ@mail.gmail.com>
Subject: Re: [BUG] ath10k: CPU scaling related performance issue
To: ath10k <ath10k@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_032814_890963_97D69DE9 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

quick update:

could not reproduce this on another machine; setting all cores to
lowest state (1.40GHz) and measuring at speedtest gives about 25Mbps
(ubuntu 19.10 live boot defaults), same rate is measured on win10 or
any other ubuntu version with ondemand governor

the machine this has been discovered on is compaq 6735b (it is running
turion x2 ZM87 CPU)
i can reproduce download results difference with ath10k card
connecting to an ath9k 2.4GHz AP directly (without litebeam as bridge)

one more thing discovered: while testing this on ISP's bandwidth test
site the dl speed increase was only reproducible when loading SSL
version of the site

On 14/11/2019, Tom Psyborg <pozega.tomislav@gmail.com> wrote:
> network topology:
> 80211g uplink - 30Mbps is brought into litebeam-5AC that is running AP
> (WDS) mode on 5GHz radio. client device is a laptop (dualcore 2.4GHz)
> running QCA9880 card on ubuntu 10.04 with kernel 4.9.
>
> description:
> booting ubuntu defaults to performance governor (personal
> modification), opening speedtest.net upon boot and measuring
> throughput gets me about 25Mbps download speed.
> setting lowest CPU scaling freq of both cores (600MHz) and repeating
> the speedtest gets about 29-30Mbps in download. i have verified these
> speed differences while downloading several iso files.
>
> confirmation:
> identical results have been observed on a live booted ubuntu 19.10
> identical results have been observed on ubuntu 10.04, but using
> ethernet connection from archer c7 that was connected in client mode
> to litebeam5
>
> ruled out so far:
> -using regular AP-STA instead of APWDS-STAWDS interfaces does not change a
> thing
> -switching to Ben's CT driver and firmware had no impact, the bug is
> present with it too
> -using different card QCA9862/QCA9880 behavior is the same
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
