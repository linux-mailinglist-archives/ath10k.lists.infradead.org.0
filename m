Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2461234D4
	for <lists+ath10k@lfdr.de>; Tue, 17 Dec 2019 19:29:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVqRk4xZo9Mdc33em/lvg9k878z3TWLwzqLIe+hcZQ8=; b=OtkoBNVmUIPu/1
	DgmiE/kYeJKfj2Bv5WzzKxxX1mpImooDlyWG9L8P1S+uPgK2EtuWDAua5uMOTJSNzFICruhw3Gmc3
	Y41DKL2/9aUHeXJfUqv3/cJq3ABkiCrpFCCJ2LLZ5ZgSo9TGNxXbzLJHu8JeCYmcfX5OkRGpPQGdN
	uv1L9rIves9KTwO3LW2QHjAeAnhck0vx3U2IF/8uTTl7H1s+neJ7ifJRZfuI+dG62b7Zw09/f3WVt
	0bsPFxUJiHICoVpFQNGEePPOWiarftW0YR7lF76RuPb63a55g1d8y2UUvF9FSajKWhLBFduSVTHV+
	cLOltRy88FpNm1TG+t/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHbE-0004a3-WF; Tue, 17 Dec 2019 18:29:37 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHbB-0004Zh-MS
 for ath10k@lists.infradead.org; Tue, 17 Dec 2019 18:29:34 +0000
Received: by mail-ot1-x341.google.com with SMTP id 66so14787503otd.9
 for <ath10k@lists.infradead.org>; Tue, 17 Dec 2019 10:29:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=gTOUNDLMfirBGIuETviNmermg4Fi1PWX+tOT/7hhvC0=;
 b=HCogmDGH1vErIrcO/0X0IdNF6JHKjW5zPogCgd35FNJj5PAjwcDi/+NhNzlnC1qrXF
 ufCa9kZHBoA4dik5bQEqQVpEHvC5LqQrxXUnZtIpDzGXhP9kiw8lxjEbOu/5mF6GWvyg
 bdsuvPoGYH4+1SCN40PB/mRqHicgxmOrFBDu7D+eC298H8FDoShzKD2NNJ2wAhRgCt0x
 OZ9t84hjSown1ZQSpyqpcbHEO7Jl+gpAdZ48Y+61qiQ1GuDtm3weh0VLm1O6kyVdkVs8
 GtkZOdvZ1DSwpKhRj5pCURJnDaMu/iIE7G/EHedtqifXgYwhw0sfVjZnd6EPAVDRQcic
 wBMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=gTOUNDLMfirBGIuETviNmermg4Fi1PWX+tOT/7hhvC0=;
 b=Ozd5yJnV5lfgvAbTZzUFsnljBVnb2nIVOOqrKsI+ctJ20JbbwId9r2+ABH0/W5OFPv
 jFTqN4GuoSp+2OQIscwiEfVEJTzsUAJHrbZZeq8Blz1xA1M+CW1is+TNaJebmmxJgKd2
 L5KRDH2/a0wYWs0Ay2QwpzT5+oCQSMlFGL6NyQ+2UyNMXPSfsaTjfAETqPhaxTXCLnEX
 bgjR7nLUDP+GXCSO8GD/GOi5du32kygWH468BSE4pdHjeyGBD/1z7D4XyF/htMcyXmyj
 Afdh7186V6SgKou9f75XrNguzPtQZ1rNIdnKBsJGd9ap1SShfiiB0ll0rC88GGIVgAeI
 jtOQ==
X-Gm-Message-State: APjAAAVk2Sk4lB+79o3pUQIMRQc5jUFoQKi0gPe29spUYhmSbt4GtjrB
 UDxzq07e1vUyjVTxGVBETMYIsHlMgF5TId8iV1E=
X-Google-Smtp-Source: APXvYqwry9Qqb/tMBd9NQXiRW6IUbVnkQ42Yo1XaO3JezrZKIEL+EgLZXum4NEtRUb5Kunlua8Rf3EJLMFWVSllRP1M=
X-Received: by 2002:a9d:6b17:: with SMTP id g23mr37678551otp.265.1576607372289; 
 Tue, 17 Dec 2019 10:29:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:350:0:0:0:0:0 with HTTP;
 Tue, 17 Dec 2019 10:29:31 -0800 (PST)
In-Reply-To: <11290a30-46e8-638e-4110-86e6b2eb3d3f@candelatech.com>
References: <20191216220747.887-1-greearb@candelatech.com>
 <a2af03e9-8b53-b297-467b-d0f07b8a002b@newmedia-net.de>
 <b5d63d96-4ba6-bbab-bf1c-a61c6c437f37@newmedia-net.de>
 <80700614-679a-336e-bd9a-e88622e75c9a@candelatech.com>
 <4775d91a-9719-46f8-b0f2-979b8d86cf9f@newmedia-net.de>
 <CAMrEMU-vGB8uR-JZbD2vj4vXgWNHfFqcbsqB=gOqBBDZWGkzQA@mail.gmail.com>
 <11290a30-46e8-638e-4110-86e6b2eb3d3f@candelatech.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Tue, 17 Dec 2019 19:29:31 +0100
Message-ID: <CAKR_QV+xNbAzzw12x3Ku49bHnERTxYRAK8AfUSwp_uOgNMbY4Q@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
To: Ben Greear <greearb@candelatech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_102933_734060_CD4666C7 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>,
 Justin Capella <justincapella@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 17/12/2019, Ben Greear <greearb@candelatech.com> wrote:
> On 12/17/19 8:23 AM, Justin Capella wrote:
>> I believe someone recently submitted a patch that defined noise floors
>> per band (2/5).
>
> I looked at using the real noise floor.  Our radio was reporting a noise
> floor of around -102,
> where the hard-coded default is -95.  This of course would make the reported
> RSSI lower by 7db
> in that case.  I am not sure that is correct.
>

Hi

I am getting similar NF values with all my ath10k devices, I thought
default was changed since ath9k from -95 to -115 just like in the
vendor driver? There were some discussions about it on mailing list.
On some channels (5Ghz) the value goes down to about -107, even saw
-110 once.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
