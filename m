Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C1BAEAFB
	for <lists+ath10k@lfdr.de>; Tue, 10 Sep 2019 14:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rwI3HkzaovPloKRaD7zEO+NHTZW02uV9VJjdwv6+mU=; b=EBYJxzk1umuK5v
	7zNo8bNfK4pHPYKgvWxkGHdOmtqj/0suhZv4efdn1USJhtD5ui0yajZIu1z73fstLDfkTJNw+R4bF
	lfWj9K70CKIEAoPtnpjIPPoHl/7p8meafW3hmk1tgHT/RmVLpAO9mS5Rju0Sex9JFSEdfV/sEhlU8
	8NMtwLouRNFffhKmjYClE0cXw2bPmWpmIkKxMO7uV8iCfAL0A2vmhia3gDuH/SFyE187YkwQUtouH
	HIcoZE3V8UOOclMaaS4llT3ZttVxWE0hCZEhgbxEcc3fe76RvriFqdDsn5UP8kgN2KusuiyzFxz3G
	UZctRPN8R1+qqqjYwqOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fkL-00051b-Lt; Tue, 10 Sep 2019 12:59:49 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fkF-0004tP-UN
 for ath10k@lists.infradead.org; Tue, 10 Sep 2019 12:59:45 +0000
Received: by mail-ot1-x341.google.com with SMTP id y39so18455915ota.7
 for <ath10k@lists.infradead.org>; Tue, 10 Sep 2019 05:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=jqek9cTuxOVyyem7HaT7VFiIzPh0AIP2n48z7Rb1qmA=;
 b=Dkkt1GTc2eajU+J+J+R4hnNQMJzi6EgshdS3myxu6JYLTLnFbDw3XKlP8DsYcoLJmJ
 JXPvjAWz+YL2kiyQ7Ii62ecTwo/2G2sDwR2xD58k3zgo1Cye1Y3GViwbvkW6mURGAMFF
 tEK55XaSwTMYAFaKfmbEqBInGd3S2PAQlCiNihHGphMrlBl3AADDio69gp+DiUxo4ZzB
 Rjufng5XymZhpX0QU0To3EIminv3qPZL8Lg6eoiS83DqsTqWf0jedsU3f8JOOhuzQgPg
 rRPYqvltHjuFjlURNRhBx12GTlSrHyWb0piki0D442lpxt8WAVmSrUcHwjDuN4lFanG/
 mSHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=jqek9cTuxOVyyem7HaT7VFiIzPh0AIP2n48z7Rb1qmA=;
 b=A6JWL40VQbYdXBxTfG7ylyIAJVNuPrshR/Mjq+CoqxiE9dyDp7lW5bKCEdOZIh5p3d
 Bw8Pn+9HHBsrpXJS/Zn9XnyYnGrFz2uJdzfAmUbJoEerz/S5lob4Otnjm/SX6tZZOgQ9
 voMaQd1nXXcgFpp8ak1rjCISes+8HVpYgi2ERxD0cGqBMLB3+cb6WOGAGHVM+9gKg4ON
 sraNsw6QXrKf+vXfT2xMCTamx3d0ZNu/l8wSRqr7tFmb95zYD9G5Q4BtDgD95eqpF62u
 7IjhToSmDalXKVaD2Y9z0RR8Jt/GvzVCVtJ+NWmUc9ZEAdJoeGtXz7b6sjm+0+aqkk5e
 eiXg==
X-Gm-Message-State: APjAAAWnSUmM/XtA4G/2qVyQxeqXJHAD6Hr74qlJhP6PzbzK9UT6n34O
 W6hx8ruMHKHvfHeFnCj84e6ljogF5n4X52bVxtk=
X-Google-Smtp-Source: APXvYqyX7NKFXkv1ChR/FaEEzbd9XYAjINqR1jnnsqiWInRfuPzyhU/HLE8lu90CV18CG5xzGnpErJWhxu35cHZOWzY=
X-Received: by 2002:a05:6830:18f3:: with SMTP id
 d19mr13675533otf.256.1568120381700; 
 Tue, 10 Sep 2019 05:59:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:2286:0:0:0:0:0 with HTTP; Tue, 10 Sep 2019 05:59:40
 -0700 (PDT)
In-Reply-To: <87h85kfwfn.fsf@codeaurora.org>
References: <20190906215423.23589-1-chunkeey@gmail.com>
 <20190907214359.1C52A21835@mail.kernel.org>
 <CAKR_QVKv8kgXSSCwd8esw28hARA61Pah3usRi+ZZG6ss2CcS=g@mail.gmail.com>
 <87h85kfwfn.fsf@codeaurora.org>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Tue, 10 Sep 2019 14:59:40 +0200
Message-ID: <CAKR_QVJpGZCBaE3hW6FShykYa=T6hy2dHn22daQVodWGL_-Afw@mail.gmail.com>
Subject: Re: [PATCH] ath10k: restore QCA9880-AR1A (v1) detection
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_055944_004992_96F767C9 
X-CRM114-Status: GOOD (  12.31  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 10/09/2019, Kalle Valo <kvalo@codeaurora.org> wrote:
> (dropping stable list)
>
> Tom Psyborg <pozega.tomislav@gmail.com> writes:
>
>> According to this very old post
>> http://lists.infradead.org/pipermail/ath10k/2013-July/000021.html
>> seems like you've been misinformed on amount of these cards that were
>> put out in the market.
>>
>> At least digipart only have >40000 units in stocks
>> https://www.digipart.com/part/QCA9880-AR1A and other retailers
>> probably few thousands more.
>>
>> With that large amount of cards I think it is justified to request
>> firmware support for the chip. And probably a lot easier to make few
>> firmware modifications than go hacking a bunch of API calls so it
>> works with v2 firmware.
>
> I'm very surprised that QCA9880 hw1.0 boards are still available, after
> six years. Did you confirm that it really is hw1.0 and not just some
> mixup with hardware ids or something like that?

Print on the chip clearly says QCA9880-AR1A. ID same as for v2 - 003C.

> old hw1.0 firmware to see if it works.

I don't know which fw blob version that is. I could not find it
online. All files are v2 related.

>
> But if it's really is hw1.0 I doubt there will be any support for that.
> I recommend to avoid hw1.0 altogether.
>
> --
> Kalle Valo
>

That would be too bad, even worse when you find out that
qca-wifi-10.2.4.58.1 driver fails to load firmware too. The only one
that works is qca-wifi that comes with tp-link firmware, some very
early version 10.0.108 or somtehing like that that has no available
sources..

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
