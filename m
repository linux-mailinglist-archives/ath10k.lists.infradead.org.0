Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CABFBC441
	for <lists+ath10k@lfdr.de>; Tue, 24 Sep 2019 10:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZS7PU1V25eExEcdZJtW08LYHZvxSg6HIOV84sQZo4Q=; b=K2i8BM4Tc3t+3M
	KIcuJApshybWOFoUyohg62kVjNsPKbxSidfCP0+5tEWmlCw5tLTzlOaT6i/Yb8srtnRk4KfxsEhb1
	AWxrA9eSjYv5sopzANMs0IZYkmvGr+r3uG0O5KEzEumsn4zDshyEuRYy7IdsAuOictA+rTS8bn8Gv
	lGYjnpffc91Z7daFYqzgkYGBMfBMRxg2d5KtZpYvu3mzfNl2MPbCDoMeZp3WPSKXD4R0QfEj24iLh
	nWNkTohq14NWAjUMfKsAXCnCs4Uc7Doic6CMNK39byU6d5uKhAiy3qL9c8KxZaFO1zjoo2oIypnNx
	Do0xZzU0DQbPFoXYEdvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCgVR-0005YR-M8; Tue, 24 Sep 2019 08:49:09 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCgVM-0005Xc-Ax
 for ath10k@lists.infradead.org; Tue, 24 Sep 2019 08:49:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569314938;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vX1x3OwxVW1gA9DDAeV4qit7OavOIJKGn/Wr1PtPc04=;
 b=YJZ+HZrHuuzJOSvQJlVxNLK6H+LPsaidsPxSMBLOV6R9LdmZXaOufl2SpZ3GyT7XNb/WjC
 V+QBG1UlTO4Eo91RloAp+O01ox3ux2mM11P41rpuhPjoYP9dBjjHWQWFjRUpr6BcO44lwC
 8eI9ACdKdQwKKhPQCOnwWRxzn4FhS9A=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-255-m5UBsxV_PQK2tf_4km59Uw-1; Tue, 24 Sep 2019 04:48:56 -0400
Received: by mail-ed1-f69.google.com with SMTP id s3so626499edr.15
 for <ath10k@lists.infradead.org>; Tue, 24 Sep 2019 01:48:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=TKN7mJbs5ICiKXTXySTCfkZ4/+HSLF+fQVqMVK7B8kI=;
 b=GZdu/tbNZL51TK8W1XagetpFUgI9qyxPRjQVBE6v1t7TibmmUpd9LtjDQLXmPSwAtJ
 y6Wt5Yz0hhefIZl6r4uTc86K1FOpb6onELgv3NDp9jLlaPDkexxFdrz0hMxETXfDzcVL
 vJA57QlJE9OWkls0Tkw+1gQLMv+0H10FFDjsKBK9G9TaQRvDR0+23nbS3ZqhedOvU3J/
 o5e0X+88BZ7mn+kABUNO9PYxR52upjsUbMZZhu01gJoS1z4eRk2/FlptL5rRkVXExrk1
 8oWxMFwJ0XMM0k2sCINwvNRkNCypp4+x0UgvKMwApQY2kLCD+H0JlimJDNGbUFppIDAu
 Ww1w==
X-Gm-Message-State: APjAAAVggkqC6YicgdIFHvY6R2qn8bDvh/8x1ocLALcNk/R8IdTNx+b9
 gDhNS9/AKuCvgSIEYpwuezk0IxXRWIRJIkYuJ2QY64WKIYVXRDfzz7GsixIt6UdC9v+pS2jwux4
 AQqns107LTof/h8EiAoHKdA==
X-Received: by 2002:a50:e791:: with SMTP id b17mr1408513edn.11.1569314935241; 
 Tue, 24 Sep 2019 01:48:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxZpr7o9y+z4g1i/DDY9nWdtJYS8D6BJlhn8xZVR+d5IMWf5V+rMVb0EskxpmiqhLjRP4VskA==
X-Received: by 2002:a50:e791:: with SMTP id b17mr1408500edn.11.1569314935067; 
 Tue, 24 Sep 2019 01:48:55 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id y29sm242525edd.7.2019.09.24.01.48.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 01:48:54 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id E974318063F; Tue, 24 Sep 2019 10:48:53 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>
Subject: Re: [PATCH V3 3/4] mac80211: fix low throughput in multi-clients
 situation
In-Reply-To: <2aab0bd944ee34751304a5f92b885113@codeaurora.org>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
 <1569223201-1490-4-git-send-email-yiboz@codeaurora.org>
 <87impj5lkm.fsf@toke.dk> <2aab0bd944ee34751304a5f92b885113@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 24 Sep 2019 10:48:53 +0200
Message-ID: <87d0fq3wqy.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: m5UBsxV_PQK2tf_4km59Uw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_014904_460356_488F68F2 
X-CRM114-Status: GOOD (  10.50  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Yibo Zhao <yiboz@codeaurora.org> writes:

>> I can see why we need the second part (basically, this happens because 
>> I
>> forgot to add a check for "no eligible stations" in may_transmit(), 
>> like
>> the one in next_txq()). And rounding up the division result doesn't
>> hurt, I guess. But why does it help to change the grace period if we're
>> doing all the other stuff?
> In multi-clients case, it is possible a TXQ sometimes gets drained due 
> to FW has deep queue and few packets in TXQ at that time. So the TXQ is 
> removed from the rbtree after dequeuing. When it is about to added back 
> very soon after the removal, the g_vt might have gone a little far away 
> from sta vt where sync is needed. With this sync, the station is forced 
> to catch up with the g_vt, however, its chance for transmission has been 
> reduced. I think 500us is quite a short period in multi-clients case.

That's a good point, actually: Having the grace period be too small will
allow stations that leave and re-enter the queue to "skip ahead" and use
more than its share. However, I think it's a separate issue from what
this patch is about; so how about I just increase the grace period in
the next version of the base patch?

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
