Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA13F27885
	for <lists+ath10k@lfdr.de>; Thu, 23 May 2019 10:53:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2ns/LFVjLQwTbhv9VfrZJcPm4eK8P2KlyV5v7gy4io=; b=A12r+Lv3CdSZn8
	e4f4MgH8CWXrzDBxmbQ58n270M9m30lKBCaLUzEDeXXB2hdaGx0DDUEw1TjcfcpXWF3ciHDXSpWCM
	A/dld21WCOn6kcUCbi8WbIxBbeI8N6fxtvGLqUjbaJPfwqmYqZ0r3nHH3LxauYs6twf7BAdBpla+d
	Dn/Mp8DOunQQEqVybDMkgV+gNgeeEoZZRF2ju5XjUUUZAppSGMoONh9kqhaDs8OUVfKxCT02ebjZX
	jbE3rt7xK4RPdtnQjBZuycSNSKlniPQw/sTxDQgsbm7k+6eCbeSDiGhNFt5QVKbXU/ikqxQf4qar9
	yy6QE7MT5uZhj6YYh3Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjTs-0004nf-40; Thu, 23 May 2019 08:53:44 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjTp-0004n0-1V
 for ath10k@lists.infradead.org; Thu, 23 May 2019 08:53:42 +0000
Received: by mail-qt1-x82f.google.com with SMTP id l3so5800349qtj.5
 for <ath10k@lists.infradead.org>; Thu, 23 May 2019 01:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a918TbQKiXTWWro1Ti01zuEc74Pim9HFxITVNep8AuI=;
 b=hKsn6lGfmCISU9R1io0EPOvcvS+l9/IQGa7i8/5F9CgZGA+tJz5j33wRPSUJq0/O27
 VRl2of9JtqR5hnxJgY6B6+vyl4WXLxWpBMbMlf3YSwo2CUJtOQxMoAT6bu6CCaetINio
 8KrMGHw6zCNRCKAuGh1YPRt0yibSF48Mywha00NlpumbOiW+88Cb6wGr/O/2QHW4quEa
 lYWfW+phFm5RgKi3+x1SHFhbfJZIgwDBVLwDvlU7s/7qJH7VLhD4M+XYLYvc0lX0OBT/
 IOgWKeiZX36O+B31Axokl9a6OhDTBO+MOAJYWTK7Kmkc/dD64EwBqZvDrWzwYLaMqc/t
 e3/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a918TbQKiXTWWro1Ti01zuEc74Pim9HFxITVNep8AuI=;
 b=ErWD1edaZtJ7QkX17JsxeKd/cjnA2gldzjVPoVhYEhZDntRdmDF6EJckmkbLPQZ3Ou
 zxQ9XANINjUvGmwqc2goH1Ge7qd/MxSLOZbSaiZHrYj8BNpUaNgUJLmrwTB2dYxJLyra
 GQ1Kvfac8zcrdecvprDSB3tiqZRiwGK4kwwtvcAXJQY5L5HX1WY44TzDNo3lWYFyGAEd
 f1KGp359iEK4gxNE6L+oX1kC97fKDVBZEvmZApFzaE9VIkcejjK3RYnqWo8hiUrg0mdm
 ycJRBX17nCLF7Pfa7VVZw60AVVwjd2Dvnz1Dg7XjYNJ8gG6yxDJekMFXxiEgk8dfh1pM
 XV0Q==
X-Gm-Message-State: APjAAAXhlHxyrLXo8H8IatMvq4liE6EGIBkWO7Vkx8OtvvChtplDmwll
 V8QyUUaR4rwqEiwIkOBvrIqyNRpNczdaGzzTfARh7g==
X-Google-Smtp-Source: APXvYqy4Te1ZIo17lwxK9LnwTqwPOEJqIH0FwKntgAhg7pT4qeEx2k0DDYZpseAM0PxTTiYKCdTnT+VmFUZbWDoMnog=
X-Received: by 2002:ac8:3862:: with SMTP id r31mr78685121qtb.26.1558601617190; 
 Thu, 23 May 2019 01:53:37 -0700 (PDT)
MIME-Version: 1.0
References: <1558506776-19702-1-git-send-email-wgong@codeaurora.org>
In-Reply-To: <1558506776-19702-1-git-send-email-wgong@codeaurora.org>
From: Claire Chang <tientzu@google.com>
Date: Thu, 23 May 2019 16:53:25 +0800
Message-ID: <CALiNf28PQFtAM6uZVPhh-_ASnYeeAtm8kWpP0b8k_P6zGwxbcQ@mail.gmail.com>
Subject: Re: [PATCH v3] ath10k: add support for firmware crash recovery on
 SDIO chip
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_015341_111250_912BF7FE 
X-CRM114-Status: UNSURE (   4.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82f listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: "open list:NETWORKING DRIVERS \(WIRELESS\)"
 <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Tested-by: Claire Chang <tientzu@chromium.org>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
