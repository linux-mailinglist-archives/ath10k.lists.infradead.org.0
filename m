Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4231E1D7F59
	for <lists+ath10k@lfdr.de>; Mon, 18 May 2020 18:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJq57cMqvckNJML4n9/RIVztACAJ2S+8Nx2xowk7llM=; b=eqqibaa/yXQX1g
	WZcp4Z09D415T5JybaqMQswtHPBCNGPWxzuP0+KUxj7PwlqfDnP9UmG5dRhk/FJeSWh73Qi1GhUH5
	p4W/0cGo8zpG41N5tOdK+ya3vOqpea7LlmwQaF56OgjeJaw5jfQ0NcuOV+7nbqKfSC8XEcjD7T29y
	zFVjrLcUpKFVQDTUHf8+Kt3incOf3TKyq3DpFat5H36RPX3Y9GF9sqIBvg4sk6IyUG2LZHwCYvnEp
	c+cLzt7feIsSU68RdREOU/AovpVhnCxhfMPFdjjh+/emNDj/h1FBSu69iPXknJftJc33FN+4NZlC7
	OX916DxTHvLdWt7iUK8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaj4Y-0004a1-HX; Mon, 18 May 2020 16:57:02 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaj4U-0004Xs-79
 for ath10k@lists.infradead.org; Mon, 18 May 2020 16:56:59 +0000
Received: by mail-pf1-f196.google.com with SMTP id y198so3642239pfb.4
 for <ath10k@lists.infradead.org>; Mon, 18 May 2020 09:56:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fadZDuoe+7AVNrQLbu4k5XSzeRSuXHu/qP/CkwjvY9U=;
 b=maIe7F3ZiIEzyNw7fniDzIYionrpvliP2K72aSoF30niCC4U8eaMKibmJxU33FR9Ib
 2NcV4gTYXdtr0ViVXd67sXXya82RZw8akbBEOynnJh5IUq9V4VMrbw8KU44qexnI8LvX
 vN4L6sVCqhDUOY5uMiI0xBgoT13qlwwA+2DkhgvACEQQeZv2+nDlzH/82jlQQbEscV7m
 GB1eC9lDfgRxXnsO74wkVJC2L66Sue9tIsU6eDszroILatNydo9n0x9eHV5BkXTlnRBv
 YZaxPTMa3DK8hdWtmY4yB5VYuMb+Izel1NcgFcX2VQeXOUxHUq3c+Xcouz9JWX1pqDHp
 CGFw==
X-Gm-Message-State: AOAM5314DgPig2O/Sg2tJFFAohYG8ktCqmA/zRo3HSzC1gJ8G0Cb9m0D
 vFlOHl3HOthKWEg4YaFvx/w=
X-Google-Smtp-Source: ABdhPJy1SvMSYcbQtF+WbvyuU0bth54j13rmWQ4x/1qKYO9fVM8DA3PZp2Z8WiQfvW2V1CXjHF+MFw==
X-Received: by 2002:a63:444a:: with SMTP id t10mr2296637pgk.149.1589821017135; 
 Mon, 18 May 2020 09:56:57 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id y5sm3561281pff.150.2020.05.18.09.56.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 09:56:56 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 5D7F7404B0; Mon, 18 May 2020 16:56:55 +0000 (UTC)
Date: Mon, 18 May 2020 16:56:55 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v2 12/15] ath10k: use new module_firmware_crashed()
Message-ID: <20200518165655.GI11244@42.do-not-panic.com>
References: <20200515212846.1347-1-mcgrof@kernel.org>
 <20200515212846.1347-13-mcgrof@kernel.org>
 <2b74a35c726e451b2fab2b5d0d301e80d1f4cdc7.camel@sipsolutions.net>
 <7306323c35e6f44d7c569e689b48f380f80da5e5.camel@sipsolutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7306323c35e6f44d7c569e689b48f380f80da5e5.camel@sipsolutions.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_095658_254474_74ACD6EC 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-wireless@vger.kernel.org, aquini@redhat.com, peterz@infradead.org,
 daniel.vetter@ffwll.ch, mchehab+samsung@kernel.org, will@kernel.org,
 bhe@redhat.com, ath10k@lists.infradead.org, tiwai@suse.de, mingo@redhat.com,
 dyoung@redhat.com, pmladek@suse.com, keescook@chromium.org, arnd@arndb.de,
 gpiccoli@canonical.com, rostedt@goodmis.org, cai@lca.pw, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, kvalo@codeaurora.org,
 netdev@vger.kernel.org, schlad@suse.de, linux-kernel@vger.kernel.org,
 jeyu@kernel.org, akpm@linux-foundation.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Sat, May 16, 2020 at 03:50:55PM +0200, Johannes Berg wrote:
> On Sat, 2020-05-16 at 15:24 +0200, Johannes Berg wrote:
> 
> > Instead of the kernel taint, IMHO you should provide an annotation in
> > sysfs (or somewhere else) for the *struct device* that had its firmware
> > crash. Or maybe, if it's too complex to walk the entire hierarchy
> > checking for that, have a uevent, or add the ability for the kernel to
> > print out elsewhere in debugfs the list of devices that crashed at some
> 
> I mean sysfs, oops.
> 
> 
> In addition, look what we have in iwl_trans_pcie_removal_wk(). If we
> detect that the device is really wedged enough that the only way we can
> still try to recover is by completely unbinding the driver from it, then
> we give userspace a uevent for that.

Nice! Indeed a uevent is in order for these sorts of things, and I'd
argue that it begs the question if we should even uevent for any taint
as well. Today these are silent. If the kernel crashes, today we only
give userspace a log.

> I don't remember exactly how and
> where that gets used (ChromeOS) though, but it'd be nice to have that
> sort of thing as part of the infrastructure, in a sort of two-level
> notification?
> 
> Level 1: firmware crashed, but we're recovering, at least mostly, and
> it's more informational
> 
> Level 2: device is wedged, going to try to recover by some more forceful
> means (perhaps some devices can be power-cycled? etc.) but (more) state
> would be lost in these cases?

I agree that *all* this would be ideal. I don't see this as mutually
exclusive with a taint on the kernel and module for the device.

> Still don't think a kernel taint is appropriate for either of these.

From a support perspective, I do think it is vital quick information.

  Luis

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
