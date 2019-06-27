Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE15B58AD6
	for <lists+ath10k@lfdr.de>; Thu, 27 Jun 2019 21:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTmpKSOx05mhBKo1AA4kHSqvpPe9GyNwEx9WxkWeqpM=; b=TMwielsweos+pZ
	jQ/yDCpwGPTnYQgQPYiYUU4tw3ZuBB/5YMK0U1dqkJLswIDNWHNTu+TCDd3dSUQIEdAJAxlVX3v6Z
	mgBwWD0nEEdf0v0E1OIomWaYcLUlg8ims+hfFnuV9V8C5gid+0rY+pCHWgGQaBEHKpHewUfGHqvv/
	9le4Fd9loz8N4w01yWC+EDbIue74AY8LecgGPC1PiYo6pcZkI6EVajd/oHWF4pB1JwrBOOZ1OODIE
	SQ32mXjeWTzWlhluyTikPVB2m2/SJ92DUwZDEFqF0B9uI8qtKooUtZIDh4PnwRMe9HdcQpKcxdU28
	/JONbgpIKvDqm7EwAJ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZsF-0000FX-2P; Thu, 27 Jun 2019 19:15:59 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZsA-0000F2-J2
 for ath10k@lists.infradead.org; Thu, 27 Jun 2019 19:15:55 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hgZs8-0003jz-Va; Thu, 27 Jun 2019 21:15:53 +0200
Message-ID: <a6c87741bc3e992bf61d2706834e069917018745.camel@sipsolutions.net>
Subject: Re: [PATCH 2/2] ath10k: pci: remove unnecessary casts
From: Johannes Berg <johannes@sipsolutions.net>
To: Kalle Valo <kvalo@codeaurora.org>, ath10k@lists.infradead.org
Date: Thu, 27 Jun 2019 21:15:48 +0200
In-Reply-To: <58e8952b87c8aa533c15fe5650f3f71288377f36.camel@sipsolutions.net>
 (sfid-20190627_211239_098282_F39328B4)
References: <1561661250-30528-1-git-send-email-kvalo@codeaurora.org>
 <1561661250-30528-2-git-send-email-kvalo@codeaurora.org>
 (sfid-20190627_204740_465294_470A1055)
 <58e8952b87c8aa533c15fe5650f3f71288377f36.camel@sipsolutions.net>
 (sfid-20190627_211239_098282_F39328B4)
X-Mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_121554_634675_BF759579 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Thu, 2019-06-27 at 21:12 +0200, Johannes Berg wrote:
> On Thu, 2019-06-27 at 21:47 +0300, Kalle Valo wrote:
> > Fixes checkpatch warnings:
> > 
> > drivers/net/wireless/ath/ath10k/pci.c:926: unnecessary cast may hide bugs, see http://c-faq.com/malloc/ma
> > drivers/net/wireless/ath/ath10k/pci.c:1072: unnecessary cast may hide bugs, see http://c-faq.com/malloc/m
> 
> I think you cut off the link there, did you mean
> http://c-faq.com/malloc/mallocnocast.html perhaps?

Which I should've read before replying ... WHAT? We consider calling
undeclared functions an *error* in the kernel, this is quite pointless.

johannes


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
