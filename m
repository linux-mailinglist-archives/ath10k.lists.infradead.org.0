Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C831EBB27C
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 12:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pMPaxoLpilKlmzsJK91IAbrkW1S/uEPZ6cGOwOQRYY=; b=kbXKjvnpTcAyts
	mO9Ow6SNwiY249W5gaGuwgc14zcTxoviAlSfzKM2UDAKvSN1oKjv2sYj4x0MyXvV6Ue25R4fxn9VO
	pT1KgIrP0iUs3endMnG8zaGDoebznd06vfOp+OWck7y8JcSeNRoiN6Cbn2bP4JBTjhrVaXHEl6yDp
	PfxPg1yC8nG+mhmhAGluctCJ1lwRjPJ+TldXluMD+B7AdVa8+PipouMHwXy/EoX8UNX6/3TJkqxA9
	P2YKii6WtKR2jjcZV3fk+oXc/j8wSoBeabz6/HBy00y0Mafb4Pn+YC86JRIcu/zRFtlmYRtF7INsL
	Bm3TKoJ7FvNWH9jpuVuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCM01-0003jl-AM; Mon, 23 Sep 2019 10:55:21 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCLzw-0003iw-DC
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 10:55:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1569236114;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qgSd5XyhrTBCh6mH0xPVPxKjNLWCTpEGm8lvV82pLjQ=;
 b=FP+Hp5O/g0nr2Yatzp5HiWTLgyrCbNIUT6QXOOD87vmZLIX/PGpEkksb3v3qrwD6rZ1WMr
 nzmum/gkaX0qCaGdKUTKtXVxHRDMIriYTVddshcLeNfOpIce3oLtgTtkhawMXfFXpyflJy
 SqzLOMWGGHMaWZgUqfKQLkjdKxkd9mI=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-14-Xb5_8__QNzaTsMTUCmYwXQ-1; Mon, 23 Sep 2019 06:55:10 -0400
Received: by mail-lj1-f198.google.com with SMTP id y28so1510983ljn.2
 for <ath10k@lists.infradead.org>; Mon, 23 Sep 2019 03:55:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=dp/8v1kY8WibzgYAotpvlGIts7++DL5I4lUP8JdBwZM=;
 b=W1sS7LpXkAPqeaDOA6quKTk1h4OVRmfUiEgBqSvP6uEgGwDOTEI36YSjfxHeQvDSg+
 EVtMhOs9+YKMeNLnspx6sSWrtkrM9UIhb27B9t6tlcd74YZzE6zBd+0NnI+wqlJfPwyW
 wCJlzN0dKi9K7HuhCKIFq7xKWWXc8NYmkfgsMU0nGyIV0vddhlXtitrgU33bDv3IkF1Y
 LqPM+0bVa1pB8IkE2JXCYxcygZ0+5Cj1/oSkGz60I/kVnnomsnyYOc7N1hKhU6w35TAw
 yo4/Bgf4Hyvnd1zCwi4CDOTo+DBU60DLOWgU69PfXf46WjLU0Et76UZHtwhvLQLP8uy4
 A42A==
X-Gm-Message-State: APjAAAXSXFGRBEC7UpUx8Kdhzo+ffGWdLkErp5n0rCNGVRbnSqmaBvto
 n3vJysFnDzdosI7wy4fGhIaJik3uGx/STZEHmPMG72zhPE5KbrcriJHq+Dk5GFCsf8vQME2zrih
 hljmLcuCFD6eyiPhT0nedHA==
X-Received: by 2002:a19:488f:: with SMTP id v137mr15820082lfa.26.1569236108461; 
 Mon, 23 Sep 2019 03:55:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzG5rXvdXpKnrY4+X9uf6+n/TDpVH/AImywvrkEdQ134pOr6fM53G1QHsMmwsDTwPYdJM6Euw==
X-Received: by 2002:a19:488f:: with SMTP id v137mr15820075lfa.26.1569236108308; 
 Mon, 23 Sep 2019 03:55:08 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id f21sm2333132lfm.90.2019.09.23.03.55.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 03:55:07 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id F1E3E1804C8; Mon, 23 Sep 2019 12:55:05 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Yibo Zhao <yiboz@codeaurora.org>, linux-wireless@vger.kernel.org
Subject: Re: [PATCH V3 3/4] mac80211: fix low throughput in multi-clients
 situation
In-Reply-To: <1569223201-1490-4-git-send-email-yiboz@codeaurora.org>
References: <1569223201-1490-1-git-send-email-yiboz@codeaurora.org>
 <1569223201-1490-4-git-send-email-yiboz@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 23 Sep 2019 12:55:05 +0200
Message-ID: <87impj5lkm.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: Xb5_8__QNzaTsMTUCmYwXQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_035516_521531_AA396E2E 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yibo Zhao <yiboz@codeaurora.org>, ath10k@lists.infradead.org
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
> 1	256	2048		12800	2048	2000	N
> 2	256	2048			2048		N
> .	.	.			.		.
> .	.	.			.		.
> .	.	.			.		.
> 50	256	2048			2048		N
>
> After this round, all the stations are not valid for next transmission due to
> accumulative deviation.
>
> And if we add a new #51,
> STA	weight	Tx_time_round  wt_sum	s_vt	g_vt  valid_for_next_Tx
> 1	256	2048		13056	2048	2020	N
> 2	256	2048			2048		N
> .	.	.			.
> .	.	.			.
> .	.	.			.
> 50	256	2048			2048		N
> 51	256	1024			2524		N

That's better :)

> Sync is done by:
> max(g_vt of last round - grace period, s_vt)
> and s_vt of #51 = max(2000 - 500, 0) + 1024 = 2524, and it is more than the final
> g_vt of this round.
>
> After this round, no more station is valid for transmission.
>
> The real situation can be more complicate, above is one of the extremely case.
>
> To avoid this situation to occur, the new proposal is:
>
> - Increase the airtime grace period a little more to reduce the
>   unexpected sync
>
> - If global virtual time is less than the virtual airtime of any station,
>   sync it to the airtime of first station in the red-black tree
>
> - Round the division result

I can see why we need the second part (basically, this happens because I
forgot to add a check for "no eligible stations" in may_transmit(), like
the one in next_txq()). And rounding up the division result doesn't
hurt, I guess. But why does it help to change the grace period if we're
doing all the other stuff?

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
