Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF6B15A25B
	for <lists+ath10k@lfdr.de>; Wed, 12 Feb 2020 08:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/5S5GMP22Jxj2+6DH2UEYuSeD5W2eDtSMTl1PKPXb0A=; b=Vub3JSPgm7tYER
	pklFvvrbnHTHIh80pVY6jQWNKLhwFpjOxCXa7OUGzaObWI284034qyLBNb7BhApOVKZRd0xJSb8p8
	KGN+Hw+vwCfry21CBz2eDaIrejFJZL6yff8khatuZC+zdt9ar+rfTC3Y1/spzAN3Q5xiRJy3/U5Af
	NzvlsXNG11Rd1+ImbLNy/E3hacOD5JzfcrcYDkhuUqNBmmcB2nWbop5YRl3C9sZbGeWGj06wp3d9d
	FIm75AXWo55xEMRwUTEjclZRDkPVDt9xNO7Y4fU6BBR5FkyUTyXpNVqJBKBLc8wIsbKDPGAAHYGzP
	Q19fXrQfxoO2YEKIrWIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1mik-0001pm-Td; Wed, 12 Feb 2020 07:46:06 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1mig-0001pL-Oe
 for ath10k@lists.infradead.org; Wed, 12 Feb 2020 07:46:04 +0000
Received: by mail-ed1-x542.google.com with SMTP id p3so1316526edx.7
 for <ath10k@lists.infradead.org>; Tue, 11 Feb 2020 23:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BU8l4vAmAKTeTD0QT9iL9wOBya4IH7jqnzK3wQNaFME=;
 b=Qm02zGwHi4fflp000hXUPa2zAY/wifsLNfAwAflHgtPFCa6uWROwGXiF/u13gk8uqX
 JQieJcY1n0K3xdeXf2ehfJJUJuCG/gEptqqJfxEqMCuMVxSBqT1w8KyE57DlsjcyN4YG
 Bc2J8R/cRUcmTQK1GJ6xn0hOVL2BNXI1LSUGE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BU8l4vAmAKTeTD0QT9iL9wOBya4IH7jqnzK3wQNaFME=;
 b=qkFu3rz1ROG/7y73QsOZqRDJWbXnBS+Xi4bLEgPV2a92Qrc5C77SpHdPJCZlJ1Ac3Z
 kzElCT0+T8Uz5bH4ze9BgLBbeaUNnMSfQTj4FzOxGWL3xC5aCza4CNQCrhyLiCN1Eg1n
 27O07/ccM10zX1PQh4/nUIqxhHTiN/4xYc8Bsd/R+5W5mEB5bZQDWoPhscnFi5k6risE
 rHXReoKcf+LeLo4FfM9g06MiZL5wiQcn04BMs19q3uW7t+yXlX6gHOkKV5v8W1vQB9gh
 Alemd/b+pqeGyFkqouubdk/Se2eqdZ2EIIl0ErPPWUKIAsCHMU16JyV07LJnppLa9X5c
 3A0Q==
X-Gm-Message-State: APjAAAXzUHVauL2YK0Mq42xELq+FK3xJlbQUpdya15LgDphm7X4tHjK9
 XJ7uQCfUj4ar+pozwO6QDHxG+a/tmuGneOT2HlDpu0ZFLsSLJw==
X-Google-Smtp-Source: APXvYqztmbguEsE0G7pcUgY7JGpLSKrJp00pBhITptlLjZHEzRs7+7l5Zoo4XatDNMEBr2rVAf5gV19NAt2QeYrEeSw=
X-Received: by 2002:a17:906:b7c4:: with SMTP id
 fy4mr9962864ejb.139.1581493561147; 
 Tue, 11 Feb 2020 23:46:01 -0800 (PST)
MIME-Version: 1.0
References: <20191128103030.6429-1-wgong@codeaurora.org>
 <0101016eb1903db0-ef7063b4-0f42-4a01-8886-327541e6c1a4-000000@us-west-2.amazonses.com>
 <76bce8e3-e05b-ace6-3edd-54f522be3fe6@chromium.org>
 <25fd4f59b39c56b2fee208713c7cbc57@codeaurora.org>
 <CANdKZ0eWJtSuOdZp6Djne21maoBtmSsEm9Rmq9HbLfriY1goWw@mail.gmail.com>
 <47925cde59e1b94766720d20ddbb4191@codeaurora.org>
 <CANdKZ0dtnvL66jps41UC+dkybuXA0NMEu=9p2N2T08YDLHb2UQ@mail.gmail.com>
 <222dd9c33e2afa94cd1ee80c03c7b00d@codeaurora.org>
 <CANdKZ0fOEZ-Ng1p4FUy6WDC2DKGUMmTQE+JhcTwrf9TjACborA@mail.gmail.com>
 <e2afd62c108d66fdb3aa590f5ded61a4@codeaurora.org>
In-Reply-To: <e2afd62c108d66fdb3aa590f5ded61a4@codeaurora.org>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Wed, 12 Feb 2020 15:45:25 +0800
Message-ID: <CANdKZ0dTwO7XQQjJ+NKO5jO4qBRJxZPNQu=-UEQOiRPc+dpd=A@mail.gmail.com>
Subject: Re: [PATCH v8 1/4] ath10k: disable TX complete indication of htt for
 sdio
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_234602_826716_A7EA44F1 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Wed, Feb 12, 2020 at 3:31 PM Wen Gong <wgong@codeaurora.org> wrote:
>
> On 2020-02-12 15:08, Pi-Hsun Shih wrote:
> > Tested that the patch fix the kernel panic, thanks.
> >
> > For the fixed version:
> > Tested-by: Pi-Hsun Shih <pihsun@chromium.org>
> >
> Thanks Pi-Hsun's quick test,
> could you also give me the message log:
> dmesg | grep ath

[   11.462398] ath10k_sdio mmc1:0001:1: qca6174 hw3.2 sdio target
0x05030000 chip_id 0x00000000 sub 0000:0000
[   11.472131] ath10k_sdio mmc1:0001:1: kconfig debug 1 debugfs 1
tracing 1 dfs 0 testmode 1
[   11.481490] ath10k_sdio mmc1:0001:1: firmware ver
WLAN.RMH.4.4.1-00042 api 6 features wowlan,ignore-otp crc32 ac2d4918
[   11.667020] ath10k_sdio mmc1:0001:1: board_file api 2 bmi_id 0:4
crc32 e74847dc
[   12.035056] ath10k_sdio mmc1:0001:1: msg_type: 0
[   12.036919] ath10k_sdio mmc1:0001:1: htt-ver 3.73 wmi-op 4 htt-op 3
cal otp max-sta 32 raw 0 hwcrypto 1
[   12.039878] ath10k_sdio mmc1:0001:1: msg_type: 2
[   12.053816] ath10k_sdio mmc1:0001:1: msg_type: 5
[   12.235403] ath: EEPROM regdomain: 0x6c
[   12.239895] ath: EEPROM indicates we should expect a direct regpair map
[   12.247223] ath: Country alpha2 being used: 00
[   12.251973] ath: Regpair used: 0x6c

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
