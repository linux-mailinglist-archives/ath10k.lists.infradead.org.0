Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3634BB3DA1
	for <lists+ath10k@lfdr.de>; Mon, 16 Sep 2019 17:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrkQZYUV8yd0oPkp6uR0UZBl46I9bUFkXLPlCzNaKwc=; b=TIgey71XP6O/QU
	6yDDY4VJf710egWHvHRKxLEEiCc3c6JHJtMBIXq4/mcJrhJ8CnvSscb7eRJjlrZIxf07wLQ5ts16H
	cqQc6dH0l1/DiIo/I+x+tRl5gOf1rJ35xiTBex5/I7f1HRlQXCl9xEytHECDPxxARBPblBhiG6ARh
	8ElatZO7Z1Djgr+YllfX9XtcfM2AVQxK0LfKtVUN/3S9DkyOQH288qKbAlzFThYWnn/m0I4y8b1mh
	VIMbC7sQ1gQzYcEsNxf/CvO+keCQ8gySmEMOGmTXnXXDPSvWrtp/Jd6/6uAPqTXoWw8yxNkFmuZw1
	jqZToq2UBCu871txH+Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9suz-0008Ig-W7; Mon, 16 Sep 2019 15:27:57 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9suu-0008IC-AM
 for ath10k@lists.infradead.org; Mon, 16 Sep 2019 15:27:53 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1i9sug-0006AE-Jf; Mon, 16 Sep 2019 17:27:38 +0200
Message-ID: <6684ceecde399edeb31c594f889a403440c78142.camel@sipsolutions.net>
Subject: Re: [PATCH 3/4] mac80211: fix low throughput in push pull mode
From: Johannes Berg <johannes@sipsolutions.net>
To: Yibo Zhao <yiboz@codeaurora.org>, ath10k@lists.infradead.org
Date: Mon, 16 Sep 2019 17:27:37 +0200
In-Reply-To: <1568639388-27291-3-git-send-email-yiboz@codeaurora.org>
 (sfid-20190916_151039_049848_BE125514)
References: <1568639388-27291-1-git-send-email-yiboz@codeaurora.org>
 <1568639388-27291-3-git-send-email-yiboz@codeaurora.org>
 (sfid-20190916_151039_049848_BE125514)
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_082752_509797_8DCCB8E9 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@toke.dk>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Without really looking at the code - 

> If station is ineligible for transmission in ieee80211_txq_may_transmit(),
> no packet will be delivered to FW. During the tests in push-pull mode with
> many clients, after several seconds, not a single station is an eligible
> candidate for transmission since global time is smaller than all the
> station's virtual airtime. As a consequence, the Tx has been blocked and
> throughput is quite low.

You should rewrite this to be, erm, a bit more understandable in
mac80211 context. I assume you're speaking (mostly?) about ath10k, but I
have very little context there. "push pull mode"? "firmware"? These
things are not something mac80211 knows about.

> Co-developed-by: Yibo Zhao <yiboz@codeaurora.org>

That also seems wrong, should be Toke I guess, unless you intended for a
From: Toke to be present?

johannes



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
