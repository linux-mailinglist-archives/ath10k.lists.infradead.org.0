Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7843621B33
	for <lists+ath10k@lfdr.de>; Fri, 17 May 2019 18:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7euZe+NwazgHpKIzxOoiV7u5LDCsB8GaJYSd7TJrkk=; b=ZUGmqJtJUvxGlf
	FIrNUc0Mlco4Ak4hYj77j9iot4deFf0OoRoWHQd8BI2mqryRCKXKUM+f+Mu8lIh/6sZvlJ79HlBGi
	T1h1KCSgXbxuHGaznMTURFfG8PX19WbBc/vm7+QQitcm7FNIsUnbW0DwGTWC38zYqbWGK/5KdI/m+
	OVc+MpC0zzqNMCwqab+2BEL3bBLuxRKx1X0rX5aSW6wM88AKxMqnKBU/+CHrXwiBqzv7tJCJomKEJ
	RQWx3qmbidCGxfi/i8h5SM2jDD2qyxoMNnHj76gydPOADPCsLCxZPXU+Gs26qDGCxZLCBX5x59LCQ
	HdsW+iy5xwnzf+DmR2vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRfTU-0004A5-0m; Fri, 17 May 2019 16:12:48 +0000
Received: from mail-wm1-f49.google.com ([209.85.128.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRfTQ-00049k-9y
 for ath10k@lists.infradead.org; Fri, 17 May 2019 16:12:45 +0000
Received: by mail-wm1-f49.google.com with SMTP id j187so9650417wma.1
 for <ath10k@lists.infradead.org>; Fri, 17 May 2019 09:12:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oW9QgbiacRiQ3ySU45K7tyniHe0sj3ULJlZQQAhx3kg=;
 b=bUTkmL33ALFDJvGMlCDzGJqsPKnrq7E+bU3eaVLLqQeJ+5wup0sAVHOQDLZpA9q6vv
 mmPUqFOakCsGlTsdcYOV39o368+YvnpA7kkhjrczDEYdPWwGCsQ5L2xhPqLKMJvha1dj
 UtjoojfiNNPdgvEMz88Zp8GOXKg1RMGhvLXbQKh436/4qyEKkdJjqRIj4jtbX3ej0P27
 8cIWWZvG5C/mUkzo/qIa6+zpt9ZzN5Ls/zdmG9Fub1CjgJFku8i0+P2thd8eJ9+NFT53
 3If5N+rUXkVh+K6L+SVEEDPm2/n45o3C5Ay202oEVjMReKVyfA7+dxK2DZHeff4gufRY
 M0fg==
X-Gm-Message-State: APjAAAWRqiQ7vpurSFeutsSp7R8j7065JTQPXvn7k9yrWXJtI6QMu9K9
 eMk1Sk+r1UhoE7pJbQIXLny+T6TognxOUA7nFmo=
X-Google-Smtp-Source: APXvYqzDh+oQRsjcjjmevozHJkrebW6QHZ0qBVWg5KNL46FzeLsCi4NmsRIb4EP0hrKzn7YpBCjIM8evq36S0CRMA78=
X-Received: by 2002:a1c:c5c3:: with SMTP id v186mr27155887wmf.60.1558109562689; 
 Fri, 17 May 2019 09:12:42 -0700 (PDT)
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
 <CAJ-Vmo=xhBvLmzec5mzf-gcFm1h6cQBLUOdVhuQjvbUWFjP-AQ@mail.gmail.com>
 <6378a260-0441-b985-6421-091f46d871f5@candelatech.com>
In-Reply-To: <6378a260-0441-b985-6421-091f46d871f5@candelatech.com>
From: Adrian Chadd <adrian@freebsd.org>
Date: Fri, 17 May 2019 09:12:30 -0700
Message-ID: <CAJ-Vmokb1zrLjd3nkLeSUUuC8W7FNdZ8RE58h7r0jdkVMx5nrw@mail.gmail.com>
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Ben Greear <greearb@candelatech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_091244_349843_23FDF62D 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.49 listed in list.dnswl.org]
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
Cc: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, 17 May 2019 at 09:00, Ben Greear <greearb@candelatech.com> wrote:
>
> On 5/17/19 8:47 AM, Adrian Chadd wrote:
> > On Fri, 17 May 2019 at 08:06, Sebastian Gottschall
> > <s.gottschall@newmedia-net.de> wrote:
> >
> >
> >> personally i think going back to basic rates like 2 mbit makes no sense
> >> anyway. its that dead slow that a connection must break and has to be
> >> broken if this doesnt work.
> >> still a shame that beacons are still transmitted in this way and
> >> multicast/broadcast packets as well which causes a hell of problems. but
> >> thats for backward compatibility of cause
> >
> > It depends on what kind of channel you are. Not everyone is deploying
> > super dense enterprise APs. :-)
> >
> > The 11ac and 11ax chips that do constant frequency readjusting work
> > better in things like moving drones, where you have constant doppler
> > shift. I know some people doing drone work that just don't bother with
> > MCS and aggregation because they need a super reliable channel and the
> > conditions constantly shift.
> >
> > That said, they're very sad that they can't hack on the 11ac/11ax
> > firmware to fix some err, less optimal decisions in their use case
> > space like they can with ath5k/ath9k.
> >
> > ISTR back at QCA days there were some people on the systems team that
> > could demonstrate CCK was more stable in some use cases and so didn't
> > like the Linux rate control behaviour of not falling back to CCK in 2G
> > 11n mode. There was .. pushback against the linux upstream rate
> > control in this respect right until the linux folk totally deprecated
> > the QCA rate control in ath9k. :)
> >
> > (And then bugs like what ben is seeing :)
> >
> > Ben - did disabling CCK/OFDM fallback rates help? Did you fix the bit
> > that tries to send AMPDU frames in non-11n rates?
>
> Yes, disabling the fallback appears to have fixed my issue.
>
> I did not try to fix the fallback code because I think it will be quite
> complicated to do it properly (I suspect a different tid must be used for this
> to work).  I'm not even entirely sure of exactly why the transmit logic fails
> in this case, and by the time rate-ctrl logic is queried, I think it is too
> late to easily change tids.

Ok. I'll reach to you offline (irc maybe?) and let's see if we can get
QCA to fix this in their firmware. I know there's a LOT of things that
need fixing in the upstream firmware but this is a pretty big bug that
needs squishing for everyone.

Thanks!


-adrian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
