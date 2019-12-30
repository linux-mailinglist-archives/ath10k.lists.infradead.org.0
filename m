Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A0112D30C
	for <lists+ath10k@lfdr.de>; Mon, 30 Dec 2019 19:02:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uw72BMI6JZM8hvVSOZSX5f1IH87euHGMI7Q1LIJcuT8=; b=QJoWID+qtODUCe
	ZxtJ7Gs3vY32OR/djjEJbVsEB0mNNCTVTYVZmGeDGdp4YHGUtTok0huz0rVs7Z2oloDxtBb2UwPvl
	b5dzhPx5HAwXAwAz9GsdonqgXvkZW722uTVgjDWEb4aRD1yERuHbMB7/79SduwvGpHLxsbzbn0LCi
	lbzN0WQfolg0aDw7jIahtQBUWxkOY+CbuZUbfjVQQtTF7Tdn/WLN8+mv5bnUAoZyGxN8+f5Ma0RcG
	gyI5SucU/ew5yj7r8+HA7DqOtSvRmv4Cg0tU5DVDYhEA/rDV0Yui91VVEMMQv++JMrBTPUdPFDpm6
	ntWyzOiRv1IFAMWZ6oVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilzMw-00009i-43; Mon, 30 Dec 2019 18:02:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilzMt-00009P-07
 for ath10k@lists.infradead.org; Mon, 30 Dec 2019 18:02:16 +0000
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E3B02071E
 for <ath10k@lists.infradead.org>; Mon, 30 Dec 2019 18:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577728934;
 bh=mmLEN5EVhqLVybqcxDuhfGriciuvTU6AmdSNL96/umg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Bc4RjaEDQ1ETswDQYyXiPwv76AKYwd/0t9BG0JWxVixpXvfl41zF0xXKTgUNwatnZ
 4Ehht6ai6mWNwzzvk7vA8L2KLFoZrZ5qF1vKaUzGzu32X22nl3rbzAQgjF5kWonh2j
 cY0epFe+rpWNCBlbvPFab1ZWvffD5T3CrOo10Li4=
Received: by mail-qk1-f172.google.com with SMTP id x129so26777733qke.8
 for <ath10k@lists.infradead.org>; Mon, 30 Dec 2019 10:02:14 -0800 (PST)
X-Gm-Message-State: APjAAAW0he1IxvxjowrG6Q3E0GXmkhKwTCIYKbxaep/MSl+8H4bG9lzz
 TADKUb+76N5fg2PffpLrpMvhZkaOMw4XLf6QTA==
X-Google-Smtp-Source: APXvYqxnbEUjGyxvCU4ntE7buUgy18mz5Tni7Bm9/X322VaakU+9YenlJraMm5LyISnrzCBgzdGBaqVdjNI50V7PeH4=
X-Received: by 2002:a37:85c4:: with SMTP id
 h187mr56849186qkd.223.1577728933710; 
 Mon, 30 Dec 2019 10:02:13 -0800 (PST)
MIME-Version: 1.0
References: <1576496415-23064-1-git-send-email-tamizhr@codeaurora.org>
 <20191226185132.GA31120@bogus>
 <62b9e7b140a96401469f7075811d0d67@codeaurora.org>
In-Reply-To: <62b9e7b140a96401469f7075811d0d67@codeaurora.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Dec 2019 11:02:02 -0700
X-Gmail-Original-Message-ID: <CAL_JsqKspnQ50Muw-jeq+uE1+vj5nuzpxmYcOSFwY+n2Gj3tXA@mail.gmail.com>
Message-ID: <CAL_JsqKspnQ50Muw-jeq+uE1+vj5nuzpxmYcOSFwY+n2Gj3tXA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: ath10k: Add new dt entries to identify
 coex support
To: Tamizh Chelvam <tamizhr@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_100215_064274_5F6B48E3 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-wireless <linux-wireless@vger.kernel.org>,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Sun, Dec 29, 2019 at 10:07 PM <tamizhr@codeaurora.org> wrote:
>
> Hi Rob,
>
> Thanks for your review comments.
>
> >> This adds new dt entries qcom,coexist-support and
> >> qcom,coexist-gpio-pin
> >> which will be used by ath10k driver to identify coex support
> >> of a hardware and notify wifi firmware the gpio pin number.
> >> This pin number information is needed for the hardware QCA4019.
> >>
> >> Signed-off-by: Tamizh Chelvam <tamizhr@codeaurora.org>
> >> ---
> >>  Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt | 6
> >> ++++++
> >>  1 file changed, 6 insertions(+)
> >>
> >> diff --git
> >> a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> >> b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> >> index 0171283..a41e936 100644
> >> --- a/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> >> +++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> >> @@ -87,6 +87,10 @@ Optional properties:
> >>      Definition: Quirk specifying that the firmware expects the 8bit
> >> version
> >>                  of the host capability QMI request
> >>  - qcom,xo-cal-data: xo cal offset to be configured in xo trim
> >> register.
> >> +- qcom,coexist-support : should contain eithr "0" or "1" to indicate

typo

> >> coex
> >> +                     support by the hardware.
> >> +- qcom,coexist-gpio-pin : gpio pin number  information to support
> >> coex
> >> +                      which will be used by wifi firmware.
> >
> > What combinations of these 2 properties are valid?
> >
> > Is qcom,coexist-gpio-pin required for coexist support? If so then it
> > alone should be enough to enable/disable coexist.
> >
> qcom,coexist-gpio-pin is required for QCA4019 devices. And other ath10k
> devices doesn't required that value.
> So only added two fields to enable/disable coexist and another for
> notifying the gpio pin info.

Okay.

'qcom,coexist-support' can be boolean instead. Unless you need it to
override a default setting.

Rob

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
