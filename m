Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 270C921AEF
	for <lists+ath10k@lfdr.de>; Fri, 17 May 2019 17:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nr4fQGzmhDVTjtERBKvMeCHJKarZNRk9/f1Uomp0UZM=; b=qUAVjz10OplJcZ
	7NPxzzIq7KU3GwfS6uiJcna3gszVqve5srnQcscjWukIPiblEq2KR5zegCr5TCHNHI5qxxm4C44Xy
	XXnflxf7tYlZhkcVuhLb6v+/1Iw6yfmeqX2cpxkahyB4at57a0DHsrS4b7eC0oR2a2xzBKSPSkfOn
	MHMjP47fcKa3vnXCgA3z/j+DdAru+MjzvZFSczmt2/9cft6RWZVBxaJJ5Jb9YDA3kc1FdmwXXic0t
	PFdGCoZPe9ycDKm2DWDSPvFfdeQXiPT5+2gGs2GuaFOH11q44xqwm9R32hh85J4GXGIAl4Q9uMFps
	EeqCf/3+D9+XRPMqm1Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRf5M-0004zB-IW; Fri, 17 May 2019 15:47:52 +0000
Received: from mail-wm1-f47.google.com ([209.85.128.47])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRf5J-0004yr-L0
 for ath10k@lists.infradead.org; Fri, 17 May 2019 15:47:51 +0000
Received: by mail-wm1-f47.google.com with SMTP id i3so7393702wml.4
 for <ath10k@lists.infradead.org>; Fri, 17 May 2019 08:47:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Aj4ubhO1gd1JLtotu+bS3QcMDHXXflWrUOeLCObd0QY=;
 b=P6bIZ2U7MLR9UDBJcJ7zxT0ZfQCluQdptTUKRnW1BMTuQRHC46iW7+e2NBYpxTvhM7
 teRCM2UH9WK6dkSscug63sXgUmva5ST2+9Appt3LoWtm4HDPoXlOG8H1rGFK7rld6kwl
 Y7ydM1hDrP7eI0pmNS0isnQwm0IZdWkoEulA4xT4Vuu6R1bVhcafHF0VFUazGu5Ehw7O
 WFoe0a6VOUo78d9HKkzo2KkeolQBSMfD4FAin7VvNm29araRF+pkSPwn7WfEpBeIQ7k5
 Fei+1ZG+WXfJf2wSo4U3wucpIceX9HP5odkCq8GpRfb5eYFBA7Dj717/9gFsN4ItWzwp
 J/XA==
X-Gm-Message-State: APjAAAW/lmseZhEv4hek/NrmU8bAYLbK95yxaXs8q3zN9VYfnTBgwcI7
 zpNt7Cqmu3tK4C/iFcR171uujClhkkwwcPFbMWs=
X-Google-Smtp-Source: APXvYqxI54qpbEl9m9+EWitZ5OWS1Xk2JRgZE66nH4vyVt2w8TRqPqzTmaOhqvz5lglZ8zh7Mp8ioOq987z+N89j65U=
X-Received: by 2002:a1c:c5c3:: with SMTP id v186mr27062114wmf.60.1558108068022; 
 Fri, 17 May 2019 08:47:48 -0700 (PDT)
MIME-Version: 1.0
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
 <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
 <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
 <55b50a9a-49f4-d669-22d4-84e2efabf451@candelatech.com>
 <2ef800e2-5ce6-f579-ded5-65dc82827e4d@newmedia-net.de>
 <cdfa7b09-4e32-a62d-1bb6-d6128ba6594b@candelatech.com>
 <eae17245-eec2-96fe-34ff-f3800fae44d8@newmedia-net.de>
In-Reply-To: <eae17245-eec2-96fe-34ff-f3800fae44d8@newmedia-net.de>
From: Adrian Chadd <adrian@freebsd.org>
Date: Fri, 17 May 2019 08:47:35 -0700
Message-ID: <CAJ-Vmo=xhBvLmzec5mzf-gcFm1h6cQBLUOdVhuQjvbUWFjP-AQ@mail.gmail.com>
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_084749_687404_45CC7BCF 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (adrian.chadd[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, 17 May 2019 at 08:06, Sebastian Gottschall
<s.gottschall@newmedia-net.de> wrote:


> personally i think going back to basic rates like 2 mbit makes no sense
> anyway. its that dead slow that a connection must break and has to be
> broken if this doesnt work.
> still a shame that beacons are still transmitted in this way and
> multicast/broadcast packets as well which causes a hell of problems. but
> thats for backward compatibility of cause

It depends on what kind of channel you are. Not everyone is deploying
super dense enterprise APs. :-)

The 11ac and 11ax chips that do constant frequency readjusting work
better in things like moving drones, where you have constant doppler
shift. I know some people doing drone work that just don't bother with
MCS and aggregation because they need a super reliable channel and the
conditions constantly shift.

That said, they're very sad that they can't hack on the 11ac/11ax
firmware to fix some err, less optimal decisions in their use case
space like they can with ath5k/ath9k.

ISTR back at QCA days there were some people on the systems team that
could demonstrate CCK was more stable in some use cases and so didn't
like the Linux rate control behaviour of not falling back to CCK in 2G
11n mode. There was .. pushback against the linux upstream rate
control in this respect right until the linux folk totally deprecated
the QCA rate control in ath9k. :)

(And then bugs like what ben is seeing :)

Ben - did disabling CCK/OFDM fallback rates help? Did you fix the bit
that tries to send AMPDU frames in non-11n rates?


-adrian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
