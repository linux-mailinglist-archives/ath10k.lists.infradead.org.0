Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09EDC36D5
	for <lists+ath10k@lfdr.de>; Tue,  1 Oct 2019 16:17:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLO2V8l39ZYSkevID3jXXkyylcxC8zOKlLJnevqLnCE=; b=OIvzYUNd/h1GmJ
	p6mS+d3xDH57ZW7xGY7bO6icojc8DqEqF0dqJrwhiCuiF76jmYv+irIflySr+Q6TF9wkcqGxf7rA2
	YQeoYv+CbsNpoyrps4c0NyeufZmnl0a9EwZj6sVG/fAlPUjmQoKn2kCyi/2okxiqfOdtIcX4tmV+i
	n43JEMlFFFFVOIPM75BALzdyKWWMy/jS6KQGHAgV8BuidH2qaRyh15aagtkZmnuGtbTp0MTLRjQYD
	cXtt+TqFJSf+uMSuIgiAH0wvOdMfg5hzf7c1n6XOpLaIuiEFCxnIPTTL7TyF5l/f9ZAcKiiE2gSvu
	gwmA804sjHsF5IOtthQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIxn-0005mo-Kx; Tue, 01 Oct 2019 14:17:15 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIxi-0005lO-J4
 for ath10k@lists.infradead.org; Tue, 01 Oct 2019 14:17:11 +0000
Received: by mail-ot1-x341.google.com with SMTP id e11so11666350otl.5
 for <ath10k@lists.infradead.org>; Tue, 01 Oct 2019 07:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=V8Ovfrmd9Zy/EmVmcIBDSkZhTGDOxYcQ2By3bCQClGY=;
 b=Ateh8h5sPaCIt4vZg66zEzwRwII6ZC3cwAyvfTob7XOTgfF2xbA1zOIUB353xrLPsh
 CrEHWvjzEoNFwmNRZSCQAKpIRaE6rXAHpRJ2Ftc9vqP8xIDYKB2TV+BCLOlK0ZMg+/5C
 eyYlfjO9d/cgsMv+u2mbgcMVEJP8LPU0g5XBNk6pbc3dtIgbaNW2q6pUoXH31scUsOr/
 sRffCnzkug2GLV9WhaekXownziApPHjUkgL3qyGAYLt2BYBBdulUT+CfJpy/ex4bNRNP
 JlvViIv36mA671fvPGZrz/T8VRLa/Lve1phTcXqBknSJERUrgg4i2061eRmUwXX1UYCK
 B/Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=V8Ovfrmd9Zy/EmVmcIBDSkZhTGDOxYcQ2By3bCQClGY=;
 b=btR/I3w+TpcIK92Z1UfI4VgciztHH6+dlDS7VjqDYadeQbj9/CZ1SkFEy+B3+Ln//l
 RiymTVL13xjE/U+kRs2pQr8FnjdiGdcu6E2PCGeG4hhZ6EwHV8cI7kA87RUqrZ5CRNpk
 Ba9qV9TMFXRXuTE41/02tD31NlUNOZlFrRPjVXkmA/7lNtFNC4o+WVKc2Wh1ym0D/Bua
 MHN174Gx+WkrS/u/Js6ltM0Sz0u80R+66Km8PZnRDdoXrNQWl+D3pHwjDnOxcclhKV8h
 OWwWSPWj0guBgSDDut6tZQ6kEv5GdtKynWmHPJ7K4AqL2g+0SW6zx22tNFXm7Qyk2Cu0
 yMFg==
X-Gm-Message-State: APjAAAXmOd4zuKQn3eRWflr9dhfOz0qTXtvxmaxG7FEK4Ty9ktVZOCHY
 47lmVBY6RDWTv+YeLfu7Ix0ESViPQ+IhdPT5D1k=
X-Google-Smtp-Source: APXvYqwwo57gGZdyFYVWff1jy8W/vBFcWGcpBZeT2vcMwvt/9tqebd0I+bUaMoI2/hDTkJryLZJptMM+sqUUSVKt9Ww=
X-Received: by 2002:a9d:5f9a:: with SMTP id g26mr17435383oti.27.1569939426613; 
 Tue, 01 Oct 2019 07:17:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:2286:0:0:0:0:0 with HTTP;
 Tue, 1 Oct 2019 07:17:05 -0700 (PDT)
In-Reply-To: <87imp84nzn.fsf@kamboji.qca.qualcomm.com>
References: <20190906215423.23589-1-chunkeey@gmail.com>
 <20190917064412.C2E0D61572@smtp.codeaurora.org>
 <2099574.gZacamft7q@debian64> <87imp84nzn.fsf@kamboji.qca.qualcomm.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Tue, 1 Oct 2019 16:17:05 +0200
Message-ID: <CAKR_QVKVFLacWA+qS1=Tyaew-r_J1y--9N2V+eTCOvn3g=5iUg@mail.gmail.com>
Subject: Re: [PATCH] ath10k: restore QCA9880-AR1A (v1) detection
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_071710_628819_7D898BF9 
X-CRM114-Status: UNSURE (   6.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?Q?Micha=C5=82_Kazior?= <kazikcz@gmail.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hey Lamperter, I'm sorry if you feel like I hijacked this thread but
it was in an obvious attempt to prove more can be done than just
returning unsupported message.

However, as the company itself is unwilling to provide firmware and
everybody mention this chip variant in such a negative context there
are obviously some internal reasons to keep it unsupported with
silicon bug or two being used as an excuse. Most chips have some hw
bugs and workarounds for the same are available, but this didn't
result in dropping support for their drivers. So, you can go with this
change, but it won't be that useful or required as few others who
switch to different card in their router won't need it. For the rest
of us 700Mbps with factory TP-Link firmware will suffice.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
