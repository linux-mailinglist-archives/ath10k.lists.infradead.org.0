Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E31F132C
	for <lists+ath10k@lfdr.de>; Wed,  6 Nov 2019 11:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ogLppIrH2PfDqfYhgjGcNN+Y8pyrsPlmrAQRsZMreE=; b=Oy0zuDaqLswARr
	NlOci9t8aIDS+AAF0XeDERMl2Q+UIZKnHGKNvF0NLdO9OmZUWp2vbVgcxA+sC3KiShQNVTcjoC7Wn
	TOCVVkqZUIkRTxoll7eIge9jkaFAi3BiU+xleLIEFXGKVpa0s2h05OuT2Kth1TwUeon0mQnZOac/s
	hojiaeJ58jYNZyM6G/Q/UHEcI3PWIsV6JUOTfqliMMj8Nx4v1p+bGju71qhvxx06ld1vo/eGd0LA9
	Ai7SyEeEldzENhzmNNqrLxe+26l3cG2nw61ttGD87f8Mnprug5smIhGNcmtHFxJsF7wMHOi1oW5wP
	aWYwvV9tNi2clR5bZpZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSI8H-0006Bc-9m; Wed, 06 Nov 2019 10:01:45 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSI8D-0006BG-QI
 for ath10k@lists.infradead.org; Wed, 06 Nov 2019 10:01:43 +0000
Received: by mail-oi1-x242.google.com with SMTP id v138so20419083oif.6
 for <ath10k@lists.infradead.org>; Wed, 06 Nov 2019 02:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=6EGX28wEFZgUP2ViykHhowm1UZd+iCJ5kGWB7RqLO4I=;
 b=cze9xOjKjae6ndO91v7yCelIYgKCcUEG1jKrdVfJN8rrivk0/ztpPnRmgRs19lBHbd
 Xc6YUjknUdd2ur0TXgHntHW5k2tjqBUmLhzhKYLqqnNUX196/W2uqARpFio6wMKaMAE3
 ++pKayavbRONNUo0L/ccOK7bzUrXRoUIg56BkPn0JYGWqFxX0FHoopOVWuwlXFfTGX6K
 594+bJ/KWPUsmKCZ3HKoTVc5R2b+PQmEpeoNxmTvwxCjhIgv62Uro/5/r70SSWgJp1GZ
 K80ynAh0nOfz2ZOebvtY7mCh4BASNe5PX6eSjJksreCpvQc8FrF/jFgAXLEqv1e8tacV
 QsAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=6EGX28wEFZgUP2ViykHhowm1UZd+iCJ5kGWB7RqLO4I=;
 b=je+qOaZb9+PwXHfQ7X7bPJmUfRGo6HfIskX4+9qqD8lodMNENJHhsIYnthXP6gwci5
 GVV7P2QJUqkz9ylsutMBwyRMydZBZK4sL1klFMDciIEBn9jxXVIQNVzuvWyiY2AxaiY/
 bn5s9lu5prgvgGAX4ekSbAShW1653HneKIBvyEt0Kjkg4qxG7x6iRNnP96/UZq8C82lG
 ekoezZKln9tqMcuA7VvsyeapfFW6J6SXmi/IalR+qw4ee3i/z/bI0FZUtQz8ikijHjVk
 cswrXLjfNC1FQS4lHuj7JGn2wOStEggfXSyMAnZdd97Rgl/pD8MExjxS74g1eMmECq+Q
 rLZA==
X-Gm-Message-State: APjAAAXWruJpkMRc5HcNS0DKxUnE6i1cUtH18+bVOUKhjRy2qzrkjz0P
 hBSzJAIulxZ6e59LeTY5dGvcf3QWjMjsJLBgQvg=
X-Google-Smtp-Source: APXvYqyApwUy7IhVKtaGYyAk/3krLYde4B27R95zSTjANWbyG7AVqhn4RAL+NtjCz+xBqBUAZHjFIXvCQ+FLiF0wW5k=
X-Received: by 2002:a54:4f83:: with SMTP id g3mr1523053oiy.24.1573034499461;
 Wed, 06 Nov 2019 02:01:39 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:384:0:0:0:0:0 with HTTP;
 Wed, 6 Nov 2019 02:01:38 -0800 (PST)
In-Reply-To: <9bb484b94c43f7c9aa08345ad89d7b2c@codeaurora.org>
References: <1571734629-18028-1-git-send-email-zhichen@codeaurora.org>
 <CAKR_QVLDFBVMDDP4mPYVNdpT9TA3podNeQMpVJQwE7A5eG=0kA@mail.gmail.com>
 <9bb484b94c43f7c9aa08345ad89d7b2c@codeaurora.org>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 6 Nov 2019 11:01:38 +0100
Message-ID: <CAKR_QVL9QLE72y0HBD_miLYAD4qx73u3FK33=oNCHp_S8H6JOw@mail.gmail.com>
Subject: Re: [PATCH RFC] Revert "ath10k: fix DMA related firmware crashes on
 multiple devices"
To: zhichen@codeaurora.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_020141_852031_A76E91E8 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 30/10/2019, zhichen@codeaurora.org <zhichen@codeaurora.org> wrote:
> On 2019-10-22 18:07, Tom Psyborg wrote:
>
>> What about main and 10x firmware branch?
>
> There is no code changes in firmware. It's a configuration change of
> host memory access.
>
> Zhi
>

Please change it for main and 10x branch too. Dumping hw1.0 regs with
QCA driver shows DMA burst value set to 1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
