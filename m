Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D73D295E51
	for <lists+ath10k@lfdr.de>; Tue, 20 Aug 2019 14:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5bx3dUTp5TfKWrFDpmipcLZpY9mp4hBnA8JN1PoxW8=; b=hmXGLtY0iYkIyq
	I46doKpzz+bZNrCzoFwPUCYHusQkZBAbWUGMMKKh7LMJ7Rk+o68k8CTQV7uJdQGXGKq19rtfHdIkD
	kMbZWKGhGM1wZODkjPQ2XxkT9MxBV+OqHTsQ30n7pMoXmecX4gkuZtjrni3HjbwJ8DJE6GzovStCE
	zAb5GpuHI0q+54stRwDc94pQxxPbqX34Daqiuqg4Ps2i1NVX6HRC4KecxxyS8ed+BFSUzNoONblcG
	wveZKHY509UFaL55AvZR12becibwwxHz7IPaALCbaN1Xid0kQRK9RZ9ku1zNtF/EJ94ivnkrd3III
	9gIXe22PLgdDHifPC9hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i03AZ-00027w-3u; Tue, 20 Aug 2019 12:23:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i03AR-00027V-LC
 for ath10k@lists.infradead.org; Tue, 20 Aug 2019 12:23:18 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 81B16C08E2BD
 for <ath10k@lists.infradead.org>; Tue, 20 Aug 2019 12:23:14 +0000 (UTC)
Received: by mail-ed1-f70.google.com with SMTP id x40so4060380edm.4
 for <ath10k@lists.infradead.org>; Tue, 20 Aug 2019 05:23:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=iSdS+7DcgO9sZjEWZf2j9AguesTvtM0dsT3F9qr+OE0=;
 b=LfyShr7G99h2ySiqacFy9KMxo0v6lnFjzjxMSc5Eq9O5KXfwBawQ/XC3Lf0KfBepwy
 RTdvowCsmThBYGsAIx0c+m9OxkKPXhsHfAQ8sD2OHkcHLYu+H4AySE7CB9TdZW9QDhsT
 Qb6x1+Nnf21WPh+yap+1SOPCJrOvwdO5keTmuRUXFzGwoz/q5RwHYVHTdus2uENpyen4
 3YIiH1FVdUr0ZyXuQoOPDCoeWLodD0bNQ+/bTqa/O7vswczqnHTaz3gVc8Y67ImSl4ua
 96S7RzZFerd7XJ1P6DV+kGf32v00WUUiRshqkwXZ/e1JPEYQv8e0vvO81AHfwxNcGjQL
 x3eA==
X-Gm-Message-State: APjAAAUDXRm5kq7dAYzcw6p/BBcDGpXozc0R4czpR7bmXp2XrMEIym13
 dgvCo6j3pma6RDpSF6SQ2gcYFjVRw2h8TlWtYw39aMfxpwUdWo6PZQXNXotUxEWMP3n2qkFvjtU
 b08ajCVIeZoGRauw7V1B3Hw==
X-Received: by 2002:a17:906:30d8:: with SMTP id
 b24mr23012338ejb.33.1566303792568; 
 Tue, 20 Aug 2019 05:23:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqybUcJ8v+8z3nxTgQG72iDhsNy6in985LhX0wTWPhraEs+1qQR1uF9cJOarTnXMnIOJCbwVXw==
X-Received: by 2002:a17:906:30d8:: with SMTP id
 b24mr23012294ejb.33.1566303791951; 
 Tue, 20 Aug 2019 05:23:11 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id h13sm2338338edw.78.2019.08.20.05.23.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 05:23:11 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id BE34A181CE4; Tue, 20 Aug 2019 14:23:10 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Wen Gong <wgong@codeaurora.org>, ath10k@lists.infradead.org
Subject: Re: [PATCH 2/7] ath10k: change max RX bundle size from 8 to 32 for
 sdio
In-Reply-To: <1566302108-18219-3-git-send-email-wgong@codeaurora.org>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-3-git-send-email-wgong@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 20 Aug 2019 14:23:10 +0200
Message-ID: <87ef1gt49d.fsf@toke.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_052315_716367_C1E3541E 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> The max bundle size support by firmware is 32, change it from 8 to 32
> will help performance. This results in significant performance
> improvement on RX path.

What happens when the hardware doesn't have enough data to fill a
bundle? Does it send a smaller one, or does it wait until it can fill
it?

-Toke

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
