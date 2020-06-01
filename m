Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B731E9C81
	for <lists+ath10k@lfdr.de>; Mon,  1 Jun 2020 06:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQC8kThnTKOF8jGuQotxrC7NnJMWwlrz4qBqPa0qAvI=; b=dYJv1g9oRkUQJL
	13WCYv5cHRtValQMQBO7rNyYZobhpGxAe26CnKProb/SI96ljLNzXdynP7JGS/OdiyIW1u1C+Q9r4
	tBjjrI7fBvDMfLX21oH21G8g/DTSPR7yKq+4Wim9gpwC76YI5iHdJVzmD8TSnuKV21RtKItTFicg5
	X1emnZFwBVRItPrVP2u2IS0QA/td0ncxN7aLKXqff43JdGOlnZ7fJs3RBtPGN98Lgyqw++q9H+ft0
	4mxABNIu15/xdBSsVSI3OvriBAj1Br+o826E7Ek5XBVkbmy+ozmbKETl9eDQUOx9DymeeHUMXfYw6
	uBADBIXBB2xGVNI1/Wlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfbzi-0000pI-Gs; Mon, 01 Jun 2020 04:24:14 +0000
Received: from mail-qv1-f52.google.com ([209.85.219.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfbze-0000om-IR
 for ath10k@lists.infradead.org; Mon, 01 Jun 2020 04:24:11 +0000
Received: by mail-qv1-f52.google.com with SMTP id g7so3869583qvx.11
 for <ath10k@lists.infradead.org>; Sun, 31 May 2020 21:24:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LEgNxIXqPtmbg89bFCyQQcY4OfFh0TLKWX3E1EmaJUA=;
 b=TIzZ5YwC0mlj/1DisoBnevF24zqh7jbbMTXD8PPppoJimSaw7wAGg7pS9/HiBupMB9
 B9+1RHJKg6qwQF8PDEJmzFzsg9PM2pUSM/03JVDrVKI8MSlBXR/GfQdeENjVhh8YDTAb
 mUBG51whPfrhrJnId6bLngds//ubPtnU5LC9bd34FsopPf1Nri9zwrWk00e9xUMiCdhw
 FSVWLdmVg+exg+qXZUXCotuMm86fHRj5nCG5DYaeM5EDradXem3ZXNmh+teInTh0qKPb
 SLuxJbFdyKXm0HAg8S2nZW+3mIt3r1hXbUFlIggBQolY28e0FWXAzofl9uixex2EfSdr
 aZvw==
X-Gm-Message-State: AOAM532zsL3Y9hA0ixymH7O71UtCcj0dfrg2rJjFr6048Yu/W9zyeazE
 +c69v7aNTRr90PdxT5D4mGw14D0AcMEk7GcvQrs=
X-Google-Smtp-Source: ABdhPJzKKxUJ0KnZ1BYVTA7YwCGBa2avQXMi+HbK1T5RTAxd1RVaBd+BACvF585b0jnMtHf413MGHRtBtlqgTPgHHxE=
X-Received: by 2002:ad4:5282:: with SMTP id v2mr18252962qvr.167.1590985447844; 
 Sun, 31 May 2020 21:24:07 -0700 (PDT)
MIME-Version: 1.0
References: <75f092e3-b667-341a-e810-61edd8f089ac@candelatech.com>
In-Reply-To: <75f092e3-b667-341a-e810-61edd8f089ac@candelatech.com>
From: Adrian Chadd <adrian@freebsd.org>
Date: Sun, 31 May 2020 21:23:55 -0700
Message-ID: <CAJ-Vmo=-w=mvKB8=8g+jn3sE6vwJLOfq0SarMpeJq8OdgMApuQ@mail.gmail.com>
Subject: Re: Un-recoverable ath10k 4019 NIC lockup.
To: Ben Greear <greearb@candelatech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_212410_610648_72056304 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [adrian.chadd[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.52 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, 27 May 2020 at 11:30, Ben Greear <greearb@candelatech.com> wrote:
>
> While doing a torture test on OpenWrt using ath10k-ct drivers/firmware, the 5Ghz AP fell off the
> air.  After debugging, I found this in the console logs.
>
> I am guessing that the only way to recover in this case would be to reboot, but in case someone else
> has ideas on additional ways to kick the 4019 chip to have it start responding again, please let me know.


Hm, i haven't looked at the Dakota datasheet in a while; does the
platform support or ath10k actually power off/on the core fully, or
just the RTC/MAC/PHY path?

Chances are there's a reset controller somewhere that lets you put the
bus and tensilia cores in reset..



-adrian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
