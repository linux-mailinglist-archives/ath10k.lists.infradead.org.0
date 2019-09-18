Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5739BB60EA
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 11:59:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1eozUZ/ZkLPuoEV4JpqQc7puXoE5xaP8Db+vwHhPdk=; b=hXg9bmhYUgAtTT
	Na4GBx2u5jRXTcsKbZ9enlPBdibNtmORkWusZxkXHuigz/22SEwnQ5Tm9Mer2FPs4gZXPsgF5m0Wu
	c9CKiSavRA94FiSfu+4GudwqKjBI2p7lSKBG3JE7CSctbcaDNg5bLvxGOlNoevLVJuEc7KZ02aZvU
	sz7vtCzd1TN9fMJYlqp9YoOXXWbOjOH5EO5xp8Uw4u/rGL6IRkDS+i1ciMwx5NyWoE6CYQHxEaIvE
	dLsG/alrMH2eoBa/HGRGUfoHxseln7Kh7GJFi+DvS131iL2OoGAoNQbGe/Wj1PgkzizoGzeqHV0Yi
	dCYNzI8s9TQl6iW4rHIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAWkM-0007nx-Hh; Wed, 18 Sep 2019 09:59:38 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWkI-0007nV-D6
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 09:59:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1568800772;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=P9WqcH2Kq+9XpONyBW69IEnKIdCefcbhq4jZ2yFV0Kk=;
 b=HgvGAJY+BJYZAfMKcv9VWWvLYJLpblE/125QOCxn50uu0cLZ4ttDDHaNeSyaFN1dIfqwj6
 kmq0B85wMCMmM1hRTaZO3SFyiKFd0L2mduwxnsOegYh9NidMFcP1V61urr+46PIrHgvSM+
 UcryBuOVNZmbWWtCAqVlDhZVsHpKzn8=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-361-oGwIMEu-NaiVksdRh---bQ-1; Wed, 18 Sep 2019 05:59:31 -0400
Received: by mail-ed1-f71.google.com with SMTP id d7so4036149edp.23
 for <ath10k@lists.infradead.org>; Wed, 18 Sep 2019 02:59:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=ZD8uA0HGF7NCYNdZxFWIEW/HS+gtn7eLpXQdH0FQyJo=;
 b=BV+hUPSuR2GB32oiwq9FOieSGdjuwCXaVrrEmjE2h7IDvTVQE3vokQyg+nYWpYVKFE
 ftLCuf6Fn7Q8g+4bUHETIWnIihzXusC5DUTgQevkIWV0XDBkk/M97PZcDNfEQhxGp6fa
 ql7illJCTJHAJR+wvidhehlOHe77zx7CBtYpE00G9MTDIQ+U7ufYArU60sy/8DnJdwYc
 8V1r5GiQbqR2V9lyKLpgUURiAxskP2SvyHVqtdAhIIS3l88cihBTcmDVGpc0hjRL0npQ
 URQwMr2GWDv44wVs4Deii2yjoIdgyVe+Hw/tVKMeCJaLPskfKze41HKQAqdylpdfavjf
 UzBQ==
X-Gm-Message-State: APjAAAXZf+Ml5DdWxWPlxgz0OIbIXrf8yG8pFJBL9fJ2iflCbF6+2+P1
 6D6cMHpqoNzFd9g5n6jVLwkb2s5ywg0JtDf+ruV7zmLwxBKqq/ohLi6f0W4sBhGbBpe2pS76DSH
 eKlPC1Nzy8s9C4KL3ET/EDw==
X-Received: by 2002:aa7:c743:: with SMTP id c3mr2800706eds.241.1568800770653; 
 Wed, 18 Sep 2019 02:59:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxSAT4/blEd1fCDSc8brt8jBNV6q/lz7K4YCcjE3EOT0gfkud9Iv/moo/hX+IrNDXuI1fvGFg==
X-Received: by 2002:aa7:c743:: with SMTP id c3mr2800691eds.241.1568800770529; 
 Wed, 18 Sep 2019 02:59:30 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id a11sm951945edf.73.2019.09.18.02.59.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 02:59:29 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 5A39818063E; Wed, 18 Sep 2019 11:59:28 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>, ath10k@lists.infradead.org
Subject: Re: [PATCH V2 3/4] mac80211: fix low throughput in multi-clients
 situation
In-Reply-To: <1568800033-17297-3-git-send-email-yiboz@codeaurora.org>
References: <1568800033-17297-1-git-send-email-yiboz@codeaurora.org>
 <1568800033-17297-3-git-send-email-yiboz@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 18 Sep 2019 11:59:28 +0200
Message-ID: <874l19j56n.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: oGwIMEu-NaiVksdRh---bQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_025934_525153_4B7FD0BA 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Yibo Zhao <yiboz@codeaurora.org> writes:

> Not long after the start of multi-clients test, not a single station is
> an eligible candidate for transmission since global virtual time(g_vt) is
> smaller than the virtual airtime(s_vt) of all the stations. As a result,
> the Tx has been blocked and throughput is quite low.
>
> This may mainly due to sync mechanism and accumulative deviation from the
> devision calculation of g_vt.
>
> For example:
> Suppose we have 50 clients in first round.
> Round 1:
> STA	weight	Tx_time_round  wt_sum	s_vt	g_vt  valid_for_next_Tx
> .	.	.			.		.
> .	.	.			.		.
> .	.	.			.		.
>
> After this round, all the stations are not valid for next transmission due
> to accumulative deviation.
>
> And if we add a new #51,
> Round 2:
> STA	weight	Tx_time_round	wt_sum  s_vt	g_vt  valid_for_next_Tx
> .	.	.			.		.
> .	.	.			.		.
> .	.	.			.		.
>
> Sync is done by:
> max(g_vt of last round - grace period, s_vt)
> and s_vt of #51 = max(2000 - 500, 0) + 1024 = 2524, and it is more than the
> final g_vt of this round.
>
> After this round, no more station is valid for transmission.

I'm not sure I understand this. Was there supposed to be numbers in
those tables above?

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
