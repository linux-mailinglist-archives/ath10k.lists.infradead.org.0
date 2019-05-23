Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D29028DB4
	for <lists+ath10k@lfdr.de>; Fri, 24 May 2019 01:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cK0cIKTTekwCFaXEZhN+OQdAwkm8N4hvIpD2PsLcnCg=; b=sMTU8yx5KfrFug
	BhmlJchNCPzwIxzMAF73NTL/2j7hng4aLBQY1EQFGGNcdeKHKdJY2wS78Fc57HUyFiZA81P1ubB1s
	Abl5eT9AG6Il3GgIZVeIKyUYYPCU8R/BK0pIa6zMV1IGQu51p+NWR8QYr+Tgj0zPPYZClOBKLLP9n
	tF3ThNCKU9A30N5aqp+wEvE5YTRyzAItLBW/VD4G8+fJPX7/i+ulP1rZn54vAo0i3Rt29+pqed9Ws
	H/3ltzzm6t9UTiX8jOBqsd5s44DkmxqGGmw/03oWoYPiA17kIgQcYIALsbvxsWhf0WuWQiWsU55lD
	/OrOKqeCqXISiZjhsvOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTwyl-00019M-9J; Thu, 23 May 2019 23:18:31 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTwyh-00018n-70
 for ath10k@lists.infradead.org; Thu, 23 May 2019 23:18:28 +0000
Received: by mail-lj1-x242.google.com with SMTP id h19so1538243ljj.4
 for <ath10k@lists.infradead.org>; Thu, 23 May 2019 16:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C2BTRxtLLw78fa6kno1i9B0/BXhxWW4AzWK5CCqXNE8=;
 b=NfOm5pkktYdxYTbFoiBlpz4z5rB5egdzlT1fh+Q4OtzA9ZT/k3fC/AD0iOPnBmiaVK
 0WGZxfHoR1cwJUDilgEm7Q6p9eCbJXzhzxikXfdglcu7yisAsZwmBwojvr1mq20W1ime
 n7bXgYgqrqA98cTQ5W13KizyuLQZNJ0xQnmMU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C2BTRxtLLw78fa6kno1i9B0/BXhxWW4AzWK5CCqXNE8=;
 b=mODt5OJ5yCJ3zukj0pLmYjtwvJOZfZSm6Sz6IJfOIK42vE7UN8AVdhBc/fUNRZAARE
 uuz+5n1hmlNlEmsIArzTh8DOFc1OnhpexppuEASAAbKNR4OJUiHt84QRgjRlLAcqGyzO
 t4AAaT3WD53MbCUvMGQwCcsUo+tU7tKIFRCPoCWfQSU4d3h+5a25O0vH/qBBLRcLLjoX
 Bl9L+7jlQQxouAHJHQq6edbGZhM2Gk0CiBGg3i/RF6KLzlpH0YyZLzSvBomqZ7s6ja/c
 SBB34f7FD4jDqfzeUtdfYiEJ9qW0UlzvHj4nDWzoyTzFMBq58RLBaffyE7I8mZqILGW+
 6GFg==
X-Gm-Message-State: APjAAAWNcg4Q8M8BEoUM6gqjyH2Xp9YvUNxELvn0rTkoUMgd9bTeR8sE
 8kOrBYJz/1FkFRLgYFmv5soNsVNRv4k=
X-Google-Smtp-Source: APXvYqyt/CitsaYZJP30yhAn90xGMt/tkaq2r9y5WUTm0fOEepLj6gsY4odjUHiZJitBjegVo1ePDA==
X-Received: by 2002:a05:651c:1056:: with SMTP id
 x22mr29589015ljm.45.1558653504604; 
 Thu, 23 May 2019 16:18:24 -0700 (PDT)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com.
 [209.85.208.175])
 by smtp.gmail.com with ESMTPSA id z129sm235282lfd.81.2019.05.23.16.18.23
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 16:18:23 -0700 (PDT)
Received: by mail-lj1-f175.google.com with SMTP id q62so7007607ljq.7
 for <ath10k@lists.infradead.org>; Thu, 23 May 2019 16:18:23 -0700 (PDT)
X-Received: by 2002:a2e:9849:: with SMTP id e9mr1249837ljj.185.1558653502848; 
 Thu, 23 May 2019 16:18:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190523071534.254611-1-tientzu@chromium.org>
 <CA+ASDXMaKpMWnLnKxeft-8eKfpM6qGDsmEzvh290JCCjeRRtxQ@mail.gmail.com>
In-Reply-To: <CA+ASDXMaKpMWnLnKxeft-8eKfpM6qGDsmEzvh290JCCjeRRtxQ@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Thu, 23 May 2019 16:18:11 -0700
X-Gmail-Original-Message-ID: <CA+ASDXPn4fJeqnupzXqJqqCiSZfKqD827OUHg+VFrENfjrLzqQ@mail.gmail.com>
Message-ID: <CA+ASDXPn4fJeqnupzXqJqqCiSZfKqD827OUHg+VFrENfjrLzqQ@mail.gmail.com>
Subject: Re: [PATCH] ath10k: add missing error handling
To: Claire Chang <tientzu@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_161827_280812_8A2B665D 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Erik Stromdahl <erik.stromdahl@gmail.com>,
 linux-wireless <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>, Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 9:42 AM Brian Norris <briannorris@chromium.org> wrote:
> IIUC, you have basically the same failure case a few lines up, where
> ath10k_sdio_mbox_alloc_pkt_bundle() may fail. Do the same there?

Oh, I see Erik Stromdahl already got that one:

ath10k: sdio: add missing error check
https://patchwork.kernel.org/patch/10906009/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
