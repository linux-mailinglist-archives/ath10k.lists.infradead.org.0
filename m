Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E55B21EC640
	for <lists+ath10k@lfdr.de>; Wed,  3 Jun 2020 02:27:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OrxqgTzj8oO8JOa6FNYK2GoQmhyDS/TMfwn3O2IWtYU=; b=hi9yauim5+pooX
	AcmBKE2+lecD0JuPZ/jVZEpsLKTgnkmhcCDC3wyFUsLcQxfQq9Mrgjxsh2HdTbCWC2PscBLkAgI14
	jJKGZqYtQAwycp1dtV1xVTy2G7siRnznnfAoJ04gbqQ263bfuC2oF/E/FS87KU4c8Z/TYv83Cc+Zf
	eMlFWHE/vOnPjHaW8RAzJZZvjkgXquosYBV2662ziH5ycL0pTRXGNbxhZuyYzdxmpbKWhCN90wQiK
	rT9tG2xKWgJFBIVmBdP6zqfIAV0BIIsJX7k3ud3eMCNZm7hNdS/uJFAqWfYyLWnz66VLyOe47hcQX
	KfSwA4sTqgLK/WQqB3EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgHFk-0007n5-8s; Wed, 03 Jun 2020 00:27:32 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgHFf-0007mV-9a
 for ath10k@lists.infradead.org; Wed, 03 Jun 2020 00:27:29 +0000
Received: by mail-pg1-x541.google.com with SMTP id 185so454223pgb.10
 for <ath10k@lists.infradead.org>; Tue, 02 Jun 2020 17:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ME+J2XgncrkU0A4OBlYAXUXEjouusqpGzoZTVSrmwQw=;
 b=S4vuMAVB6G9qrlvGBq6XTFn0smHYgZQ59s07EGefADs8D56CQbqplctsoBCC4PDC7s
 JeL3PZp2BtOGp9VeIpuAX23boGbvgCKmfT+nBQHUVz4XOBFJKuaNrthT9Ag3iDmjUdta
 xFhxQNaKwDDOZHnD6CMepNCxC3ebUm4eBzDksT0zuRfUjRd4V/0OizUEHMqP/cCNMJ92
 6XF6smSZTYK0Ztkp6DbN6JqDVt5aoREZ9jq7jF6pOlxI54b9vS9C4rYyEF/TVbexiLXy
 Y55soAIfOJYoFOUHCL4LVHXI72IMgW7KkqR8vUx01Li0Q0+ncsqmNSo3f5zZ9w8/wr6H
 hCmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ME+J2XgncrkU0A4OBlYAXUXEjouusqpGzoZTVSrmwQw=;
 b=koYPKq134aL/C6GSKXB+8LxYE8h4HA1lpgzLCdePEubKJA7e4NezYZPjRQ7dmXn3m4
 +8cnHoOOhDqWCBBuhBYc29iAYX7Wt7U8TfQFX6yO2Eirs0zu1zYufjdVqJiSERVOWga3
 4peeuOlGaEqEPCbTbn6BVxU8MZiSO2ArpenecfUICOroYJft77+68mI/Vmr3jwnLYWr1
 bxU4m5ntkCt8MqEP0Y236jH4p6dfDAqz85no+Mm17c3HUFKpYcv2SHnKaYIxsZvXlCIv
 SYVBHvDvxWQIsopX62xhnBcIqnEnnGTDlmkhL8x1wr6ntWRjTmlslxLRUEqOpIYVwVyV
 FwRQ==
X-Gm-Message-State: AOAM531lOlJ9TPnKELse5/OouruZeCcZn9j7BYufNfEGd3G3AsTUIt5h
 lceyy1+3QLjx3InfVphWhhG+
X-Google-Smtp-Source: ABdhPJzZvG3si+pcjptk9lE4DT9UohBXFUnhVpKpLi3UNRBawg7bgDJ2V8v6PiM99TbovUk1Bc/CkQ==
X-Received: by 2002:a63:d307:: with SMTP id b7mr26895913pgg.219.1591144045661; 
 Tue, 02 Jun 2020 17:27:25 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e1f:d46:97b:c5ec:c70b:6998])
 by smtp.gmail.com with ESMTPSA id n2sm133759pgv.65.2020.06.02.17.27.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 02 Jun 2020 17:27:24 -0700 (PDT)
Date: Wed, 3 Jun 2020 05:57:15 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH] wireless: ath10k: Return early in
 ath10k_qmi_event_server_exit() to avoid hard crash on reboot
Message-ID: <20200603002715.GA5349@Mani-XPS-13-9360>
References: <20200602052533.15048-1-john.stultz@linaro.org>
 <CA+ASDXMbNvbBdsC11dzUPX7RkMFYhJev2npPsRD_SnGQB+1hag@mail.gmail.com>
 <CALAqxLVA1ZQjwEdbX5KGbSyLnMBAzm9PoN_Ta_Z7rBf4w3GOvQ@mail.gmail.com>
 <CA+ASDXPddgOvEX___unx7N2YsQctsZN+1vkwPbi8Ab_zfwFfzw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+ASDXPddgOvEX___unx7N2YsQctsZN+1vkwPbi8Ab_zfwFfzw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_172727_400651_45A1454D 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Amit Pundir <amit.pundir@linaro.org>, Govind Singh <govinds@codeaurora.org>,
 Rakesh Pillai <pillair@qti.qualcomm.com>, lkml <linux-kernel@vger.kernel.org>,
 ath10k <ath10k@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 John Stultz <john.stultz@linaro.org>, Sibi Sankar <sibis@codeaurora.org>,
 Niklas Cassel <niklas.cassel@linaro.org>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 01:04:26PM -0700, Brian Norris wrote:
> On Tue, Jun 2, 2020 at 12:40 PM John Stultz <john.stultz@linaro.org> wrote:
> > On Tue, Jun 2, 2020 at 12:16 PM Brian Norris <briannorris@chromium.org> wrote:
> > > On Mon, Jun 1, 2020 at 10:25 PM John Stultz <john.stultz@linaro.org> wrote:
> > > >
> > > > Ever since 5.7-rc1, if we call
> > > > ath10k_qmi_remove_msa_permission(), the db845c hard crashes on
> > > > reboot, resulting in the device getting stuck in the usb crash
> > > > debug mode and not coming back up wihthout a hard power off.
> > > >
> > > > This hack avoids the issue by returning early in
> > > > ath10k_qmi_event_server_exit().
> > > >
> > > > A better solution is very much desired!
> > >
> > > Any chance you can bisect what caused this? There are a lot of
> > > non-ath10k pieces involved in this stuff.
> >
> > Amit had spent some work on chasing it down to the in kernel qrtr-ns
> > work, and reported it here:
> >   https://lists.infradead.org/pipermail/ath10k/2020-April/014970.html
> >
> > But that discussion seemingly stalled out, so I came up with this hack
> > to workaround it for us.
> 
> If I'm reading it right, then that means we should revert this stuff
> from v5.7-rc1:
> 
> 0c2204a4ad71 net: qrtr: Migrate nameservice to kernel from userspace
> 
> At least, until people can resolve the tail end of that thread. New
> features (ath11k, etc.) are not a reason to break existing features
> (ath10k/wcn3990).

I don't agree with this. If you read through the replies to the bug report,
it is clear that NS migration uncovered a corner case or even a bug. So we
should try to fix that indeed.

Govind: Did you get chance to work on fixing this issue?

Thanks,
Mani

> 
> Brian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
