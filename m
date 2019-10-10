Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C63D31D3
	for <lists+ath10k@lfdr.de>; Thu, 10 Oct 2019 22:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FpN2l96BmDyHwa4yixDQwUZyI8nfCmPZmm/Uj2uAwj0=; b=S7gBExX1dckqso
	g8zMzksodEW+CN+hYr9vgm2YZQ51Mh7cl8qfn/NUth5MVEWNYgmSsUv0LiuiIuPV8aRw3rYcCKLqq
	0g7WgIeg7dln8KeM7vDRoPu7gGRtPFFCA/YlkZ89BjY8gCNLB31YGSDeU9I9Qz/MKrEcZl+ov4ypb
	/J+dAlRsjR1B4G6YyAqNKShSGpm+S91Z7h0jrcAzJtD/x+ReP2kcbfDiVRvtEKvU+rxwl1Zn09JF9
	0mGLR9AqicAMNj3eBZkTTjinhRZY0jcbbg0vUeAStJFFkSugbarayrq+VSjDyzR6IEGTGfShsyRMd
	feIYrNiVhjVNZ+/+et9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIenJ-0001xZ-HQ; Thu, 10 Oct 2019 20:12:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIenF-0001x5-0F
 for ath10k@lists.infradead.org; Thu, 10 Oct 2019 20:12:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1570738331;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Hhyg87nnGfeTsVzFBM5AQicPju/uAVCwWvYhzmC0GBw=;
 b=YWqaimhRlR1xZf9mYoNdXyfeQSqIVRbCrdrkcI8yLwO5ioFq+oMmR5A8wMWEBk0vuasCOV
 TaSZVM5A0iAbCzDMV43J/G3EyD/olMR0mPgqpidV4rggnfC7MA6/WeWDaVTRfnbkGrfszP
 owMJKqcrnTC5i/gtCBKpPNC0wslW+RA=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-353-nAOqnjqYNoaLqzpJCS4JPg-1; Thu, 10 Oct 2019 16:12:07 -0400
Received: by mail-lj1-f197.google.com with SMTP id y12so1247441ljc.8
 for <ath10k@lists.infradead.org>; Thu, 10 Oct 2019 13:12:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Hhyg87nnGfeTsVzFBM5AQicPju/uAVCwWvYhzmC0GBw=;
 b=B63jnNrm1P8Tl5kXUCB2ScISEjaD7qI2QxdeKAZKIDkqYEh+kTgx83dNkMbl13K8f2
 PkiLlyykFZpeK7gB6xVWB9qOIIoPru2fMeztOeGW1DjDKtjPtUviSGapib1ULCyInRX4
 6nf3le3NLZRf3dgyMPnnupTJGee8rkmH0tEmKkhKsyloUS5YjFhbRF2hut0Z2LNo/XWg
 cDu0lgh03zACJsXqY4dq3lu18BsdwbtOgtsU0SVl1nUa5tRzWBgNbD8Bs7FjYPjJ47qH
 938obhfwX3oATt4dIlZfB5MFmSO/evFCUVphC4Ciuo+jDx1zrqqjy5n9oolNgEnH5Mb7
 pPiA==
X-Gm-Message-State: APjAAAUetluMQdQZ6pQPRr72SKO/3vA9JpEQkOWb07ZofUnwuU8srr+1
 H7RZG75AfoUH8ik5QtWFzYeRwg538Bgr2wy56OSxx1cb/rsig1h+MimXT1wyTFzweN4sAg4fhA+
 5pMlapC2YxNsvpU+QvrvWeg==
X-Received: by 2002:ac2:43d9:: with SMTP id u25mr7258263lfl.142.1570738325646; 
 Thu, 10 Oct 2019 13:12:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxttgSBDbiQ/AtjJb2ynuVWRmt+n7NwNsTfIRQfQEa39kbak+pVlQfDx4wA8MD0fn3vPX2tJw==
X-Received: by 2002:ac2:43d9:: with SMTP id u25mr7258254lfl.142.1570738325476; 
 Thu, 10 Oct 2019 13:12:05 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id y22sm1590921lfb.75.2019.10.10.13.12.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 13:12:04 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id B6EEF18063D; Thu, 10 Oct 2019 22:12:03 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>, Kan Yan <kyan@google.com>
Subject: Re: [PATCH v3 1/2] mac80211: Implement Airtime-based Queue Limit (AQL)
In-Reply-To: <a2cc0ebecfb055c8b667db57d0469fe69054a69c.camel@sipsolutions.net>
References: <20191010022502.141862-1-kyan@google.com>
 <20191010022502.141862-2-kyan@google.com>
 <a2cc0ebecfb055c8b667db57d0469fe69054a69c.camel@sipsolutions.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 10 Oct 2019 22:12:03 +0200
Message-ID: <87ftk0jr70.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: nAOqnjqYNoaLqzpJCS4JPg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_131213_128915_476E0011 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: make-wifi-fast@lists.bufferbloat.net, yiboz@codeaurora.org,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Johannes Berg <johannes@sipsolutions.net> writes:

> Hi,
>
> A couple of points...
>
> First, I'd like Toke to review & ack this if possible :-)

Sure, I'll look at it. I'm away the rest of this week, but should
hopefully get some more time next week. It may be that it will take the
form of another submission that integrates this with the previous patch
I sent that put more of the calculation into mac80211 itself...

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
