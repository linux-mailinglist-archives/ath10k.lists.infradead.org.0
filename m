Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92784F2679
	for <lists+ath10k@lfdr.de>; Thu,  7 Nov 2019 05:17:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qrz8YT5WZ/XCw1syd6WtUHbToTSJ9PH6k4b4b+WOzm8=; b=t09TQ/PvfWjhw4
	BYTZAts//MyTPe9mJjUe9XNMyvkF8ht66+RzQYmJN9ihfjV4no3qPpS7UmMW34sF3yVIeSpWYAyPV
	ms+oyj717/v+AcAprJF2TmO720uqbeTjU7zBh0qXyN2xvi1awspG248fYQfoWmk5wR/efCTQIz8zu
	xOJM8WFI4qQqPkaJZdlIAJvvUehvIzwx4BT30x7Vp+xA88TTadGw6FPTEqqwNMYrIWZLc40xlCDex
	CgyK7zldW0roYBzpU4OCnc6EF1CvkvFW5VcoZwjmz3/S7OqZ4ybOUzLJSs9M5CeyLXsoMcb4R+1oe
	ExoIz33H2f9E3GtBBlDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSZEF-00066H-O3; Thu, 07 Nov 2019 04:17:03 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSZEB-00065C-WF
 for ath10k@lists.infradead.org; Thu, 07 Nov 2019 04:17:01 +0000
Received: by mail-vs1-xe41.google.com with SMTP id y129so393629vsc.6
 for <ath10k@lists.infradead.org>; Wed, 06 Nov 2019 20:16:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LzF6jJl50QUKrzPAcp1BtDAHHTNuNTHTqpvlK0Y3t24=;
 b=If1p9UVVHbMT3OMrRjX6TZFEEaZIstvxpkIGc+J3eG+t7D9eaOQd+EJ9TUQR5C/SDf
 yj7ert6J1aSel7bNYUWjAQwAzESIRkq+ogInQv/yiqKAweakTEn811k3YMwfeOwOYKL7
 ZGWYtHxByLb/c9z1Vi/rBi0wJgfh1LUnYhR34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LzF6jJl50QUKrzPAcp1BtDAHHTNuNTHTqpvlK0Y3t24=;
 b=h7xUdhimT0bWsNaTdMNixaIe2D3di3fAPBpS77CgWRW6nutfJt4bswQv9ri/TFI+k2
 7703aN2abV7MBkPFJM5DVK4NzYJSpnm/0rYxnFSnB7/joRX14nA13ExrmMITqXMW9cZM
 fe0ZHXBc/eqKgEI0rzAI4nmKJnXiqoMoJZ4PUBV0hT69wbbk9PkGmccsQcv7nWLAYzYo
 1Wu9vvfooUfXhKQ17lZpVQSTKMqNFuW1AfmsM+0Uw/Ow38nvmpxi0l9Xn066mn8bqdL+
 WTQzpEl9krwqe6SvMzCdTt3CUPQuRWkt9OZV311jnyZ4P7DzyF2nHRV7RMDvOIEmzrPR
 9NQw==
X-Gm-Message-State: APjAAAWGby05rC+1wTHZZeMMT4D5Aqs7nqlCvyA/UyDIH8SlWDA27IN9
 l+eexuEJjTjDcgqDpQBqcyCA+dnOumKcBcNWzQSCPw==
X-Google-Smtp-Source: APXvYqyWoK9jREMyy8vyY43cMb0kasmyVW+I0hWsxZz0YGbqht5M4oAStGMyGw23UCirgUqEvwgbjD/YfpkA627rwok=
X-Received: by 2002:a67:edce:: with SMTP id e14mr1297463vsp.182.1573100216052; 
 Wed, 06 Nov 2019 20:16:56 -0800 (PST)
MIME-Version: 1.0
References: <20191101054035.42101-1-ikjn@chromium.org>
 <87y2ws3lvh.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87y2ws3lvh.fsf@kamboji.qca.qualcomm.com>
From: Ikjoon Jang <ikjn@chromium.org>
Date: Thu, 7 Nov 2019 12:16:45 +0800
Message-ID: <CAATdQgDhYWgHkujo9m1iUrhSu1Bt9A4C8eS82TD=W22_eaF80g@mail.gmail.com>
Subject: Re: [PATCH] ath10k: disable cpuidle during downloading firmware.
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_201700_059254_BA5E30AB 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu, Nov 7, 2019 at 2:23 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Ikjoon Jang <ikjn@chromium.org> writes:
>
> > Downloading ath10k firmware needs a large number of IOs and
> > cpuidle's miss predictions make it worse. In the worst case,
> > resume time can be three times longer than the average on sdio.
> >
> > This patch disables cpuidle during firmware downloading by
> > applying PM_QOS_CPU_DMA_LATENCY in ath10k_download_fw().
> >
> > Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
>
> On what hardware and firmware versions did you test this? I'll add that
> to the commit log.
>
> https://wireless.wiki.kernel.org/en/users/drivers/ath10k/submittingpatches#guidelines

Thank you for sharing it.
It's QCA6174 hw3.2 SDIO WLAN.RMH.4.4.1-00029
on ARMv8 multi cluster platform.

>
> --
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
