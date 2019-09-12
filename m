Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DD9B1098
	for <lists+ath10k@lfdr.de>; Thu, 12 Sep 2019 16:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QMBI7tQ7SNH8AnjiBSKsLgroAOsGGiKL91oxsYIRVk=; b=SglTkatyedZ6N+
	e3N5mG+DgUQNJLbA7ewaY0r+RttMTSW4wdg0b6YfgHceLGWheoqUc2aRfqdGFGT0Dlokms6Dha5sV
	0u2bgiOPYKPO9w4rRkyzKvucuU4kw9cokKzmX3P9YHVWB3CusYBi5WoP/O5We5E+jLR8PlaYTZHhd
	saB+FNQEWV65pzfQ8uzYUc2wkvcWDLZp7S81vhLqI6nw0qT+dT+9qXybAgl4tlm4qZoZ4prKsr+9Q
	W5mMCTevuj2rZ3LnOKpp+HnlTpOHLUAfcP9n54/VpIGZeaOxm76Tv2SGJrehv72EyxdAk3ZIwXU0o
	TeoF7nEZIM4HKrlMhYOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Pgj-0000Bn-9L; Thu, 12 Sep 2019 14:03:09 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8PgU-0008VN-BN
 for ath10k@lists.infradead.org; Thu, 12 Sep 2019 14:02:56 +0000
Received: by mail-qt1-x842.google.com with SMTP id j10so29643784qtp.8
 for <ath10k@lists.infradead.org>; Thu, 12 Sep 2019 07:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n90yZxJuFn/P2yV9U4wP1BsuAX9RAT3gtP/Ag3qa1Ms=;
 b=gEaD+BLFJDBDctu4O44cmuNr/6TwifIRuLbLCXrLL1GBGtVyVPIv8x2cPjJpOQmter
 S4G/f2ebFZLWlaZWFv0VkLgf1z6RPUOMjUv/PDsmUnlvTPy0rt2qAoVw2zpGz3TyRKKl
 3FWCz4DNBoW9/5IDuP9qpa4W/7Y9Vo7vgY+KM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n90yZxJuFn/P2yV9U4wP1BsuAX9RAT3gtP/Ag3qa1Ms=;
 b=pPPamQzJrtVTnhVWn/ZccXjrLSsXXqmcrE17RuulDirmz2spao1MpBSzwWqTVbB0uq
 7wcTWQ0AvVt0ETyapxr3ghgrroV38/iexKFXJqJ9PXAuBjEsoqWhoUjgxR8G5+Js88ai
 1iQ29VBV7DKjRd+BtmdFC7P2EPQ0bMCZ8DtnB81M+qFKuzxCb9jOcfWDLbiAjY9cjVKA
 qNEK0lEa3sSFeNRlW0lx1wGQFeobW9o8DMdB2RZq6YycrJQ2rqShGUltn79g4W45VYjh
 3EAJef0EZW0P5CQ/bJGy8AFPL+Bc/uG4wBs4C8T7g6K6BWThJ1V6wh0AaReeNT/5Sg6E
 KeOg==
X-Gm-Message-State: APjAAAV2m6AYIpkzRu7tds2tD8GluGhGVsE/zM9Lw9dSbpfuQZ+LVNBS
 uRCvS5hxVzOxWIjHH9VsFmzwVtsacAWqI8wlRzr0wA==
X-Google-Smtp-Source: APXvYqwr6xn++fubxEcQE9iCc6eLYMMHQwbv8MMGjujGJIQ+ynDzp+pDHax/jMNw8pUZetWBIifGViJXBAbU59W9JkU=
X-Received: by 2002:ac8:2732:: with SMTP id g47mr34855592qtg.221.1568296972480; 
 Thu, 12 Sep 2019 07:02:52 -0700 (PDT)
MIME-Version: 1.0
References: <1567679893-14029-1-git-send-email-wgong@codeaurora.org>
 <1567679893-14029-2-git-send-email-wgong@codeaurora.org>
 <87muf9k4pq.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87muf9k4pq.fsf@kamboji.qca.qualcomm.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Thu, 12 Sep 2019 22:02:41 +0800
Message-ID: <CANMq1KDWN3NAuNh98QTgELqetyGQEGOkz90xeRNi74d==gU6Tg@mail.gmail.com>
Subject: Re: [PATCH v5 1/8] ath10k: adjust skb length in
 ath10k_sdio_mbox_rx_packet
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_070254_453227_A3CC999F 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Claire Chang <tientzu@chromium.org>,
 "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu, Sep 12, 2019 at 9:46 PM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Wen Gong <wgong@codeaurora.org> writes:
>
> > From: Nicolas Boichat <drinkcat@chromium.org>
> [...]
>
> I simplified the error handling in this function to follow the ath10k
> style, please check carefully that I didn't create any bugs:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=6e4d2cc5

Thanks, that looks right.

> --
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
