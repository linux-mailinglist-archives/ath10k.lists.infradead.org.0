Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F13BF134082
	for <lists+ath10k@lfdr.de>; Wed,  8 Jan 2020 12:31:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elxFBU0afxArHlScwkWN719ZsHR3AW0Oh+mW3NJAM4Y=; b=HnQyA/kwAzaLTP
	9q4t+c76/TTmSiSZpPWwhwfFrZMvn4k9UAiwGmrk4QyeC4u3DCsZK94w2r5Cn54q+Bqm6CNaG4Hdr
	9S4l0fuv716SgMC9u2gv+PbJQCFZrycWdIhKxxxzBpSPk+ZZs3Zf1MvHJb1dd7q183vDqqjb+Ri6Q
	7pn3Gog8B2iJRcEQVWi5+BeGeFA4A4P+k7ffCRasJZJUq7+2HccqMzgYNSgpI8b3oYSoLAdVfGMSD
	sDP7my78b/6eeupjdWYUKuZ2PlkL6wjA7OoDYN8RmaWAakK3sjKtRVv8ULezHMFVUON1L+WFjOv1w
	+geeEQ26/9KFqP/3DTHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip9Yl-000138-0q; Wed, 08 Jan 2020 11:31:35 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip9Yh-00012S-BE
 for ath10k@lists.infradead.org; Wed, 08 Jan 2020 11:31:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578483088;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/OageDLG6RxUzUD9TkM1rFJAKj/7G8+QteYbgN68XfI=;
 b=BruRO2DhbMXyzkUcb2UwCX9u2ZdUS9IdSN6ku0RfSPgzyQA+zXZ2Wz/gDcuOxIZ5yORIOp
 YaM3ZhsjSwLoTjV8uXKLmLvJc58/G789VVQvighzqGr0xHblkGhe2WxWKOTMANZE7f2Pw/
 jNKrx3Ir1uQSDvfBm0HVdDDFqoIvXyw=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-52-JNbKSLXxNY-Bj0kA4Jg4ow-1; Wed, 08 Jan 2020 06:31:26 -0500
Received: by mail-wr1-f70.google.com with SMTP id d8so1310853wrq.12
 for <ath10k@lists.infradead.org>; Wed, 08 Jan 2020 03:31:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=/OageDLG6RxUzUD9TkM1rFJAKj/7G8+QteYbgN68XfI=;
 b=eRgyKd2ojJYBQJt3y00jRcSCQ/gm4uFzGRopU/cAiJ7xnvLwDG4I8pTo22/lEoyAq9
 8mD4CNVM6rhZx8kk5Z0Ibjbm8zjfj7QbJCAJ4QxX9OqF3UeB2ZzvLhdryKk3m9KERKqK
 lGZsjcfyR2Zum5FVR9pK3jnC/16Sair8TM7x7C8+hMQ8QmdhBpUbjnzxiX112U4w0Os3
 AKOajnIk2sa65KeTSV4pMZh20t99iXxroZVYsHYkSnPxpLAzizfuiFGiQ+Gt/ENrb4AN
 WcUgaj4eCugQxgLnTt32r+GX7uPmNx82CRC6BnQybRUVZBiyUCZu9it9FS8wjgOpPZwj
 H5vQ==
X-Gm-Message-State: APjAAAX73T6TvURxWuXlOOnx7GvmimRbgxDwhRG63rjEYxuXScCjZNy6
 v99JoKuDmAg4dHF6nr4EyTFlTKrRX66WOKnzT568La3ta/Xjnh34fhhwJvBOW1cT5wkFZc8nr3J
 s7PWTwS0ovmcw1o/ukCEj2g==
X-Received: by 2002:adf:fe8c:: with SMTP id l12mr3756689wrr.215.1578483085474; 
 Wed, 08 Jan 2020 03:31:25 -0800 (PST)
X-Google-Smtp-Source: APXvYqwxnyhVvM1qxOyT6o22YoHnbJyuSgKx5ARe0pjQgUYQ/msryfsiIFlJWyzmn/XVugpWCzMPLQ==
X-Received: by 2002:adf:fe8c:: with SMTP id l12mr3756671wrr.215.1578483085267; 
 Wed, 08 Jan 2020 03:31:25 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id t131sm1413947wmb.13.2020.01.08.03.31.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 03:31:24 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id F1C4A180ADD; Wed,  8 Jan 2020 12:31:22 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Justin Capella <justincapella@gmail.com>, Yibo Zhao <yiboz@codeaurora.org>
Subject: Re: [PATCH 3/4] mac80211: fix low throughput in multi-clients
 situation
In-Reply-To: <CAMrEMU8qoD=-45sePbp+W+F+5mQmviMQaZjzXe_Ph2cNjan+OA@mail.gmail.com>
References: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
 <1576221593-1086-4-git-send-email-yiboz@codeaurora.org>
 <CAMrEMU8qoD=-45sePbp+W+F+5mQmviMQaZjzXe_Ph2cNjan+OA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 08 Jan 2020 12:31:22 +0100
Message-ID: <87sgkqgp6d.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: JNbKSLXxNY-Bj0kA4Jg4ow-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_033131_462489_C12EBFE2 
X-CRM114-Status: UNSURE (   5.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Justin Capella <justincapella@gmail.com> writes:

> Is there a risk of division by zero?

No, weights are always positive.

> I'm curious about IEEE80211_AIRTIME_QUANTUM in this multiple sta
> scenario, should weight maybe be the depth of the queue or something
> like that? Using real time delta I assume is not performant?

Eh?

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
