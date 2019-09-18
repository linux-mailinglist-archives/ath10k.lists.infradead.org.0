Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AC7B6EDD
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 23:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4hbJENJUDWMeVjdR0iJW3a1EWZjP5VqTlAk8r8UyX4=; b=b6BfbG0B9ywwe3
	2B4/4XOugMJYq271Xnd0T7NX/2t/uqDxw/OT/Pfc8mK3jOE1XUk4pJ4savUmiHOHGpnkWi0TyFzRd
	A+bPPFvPMUDrwpxTWt5xRWdU7PQULq1Gike25NDNQ+xa2/9MTIv7qqiMqShRuHYaLIKZTc53Znpzh
	jYE1SlfcOJzXJY2/86PBscrZuqtgsqqaM1J0KEM4ITIJNnKtJhMfc/2tI4QsQmt0zXbsFBt+vr2Pu
	DuRWmDrsUU4uMbB8RU/O6IbXJ/UlYNg8aUluD6oDnBr0fZbxWqykC8c9/DiXh3F2yy0/jj24+WMga
	BiahPpq11Zq81F3gsJQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAhXH-00078X-Rm; Wed, 18 Sep 2019 21:30:52 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAhXA-000788-2F
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 21:30:45 +0000
Received: by mail-oi1-x244.google.com with SMTP id i185so877643oif.9
 for <ath10k@lists.infradead.org>; Wed, 18 Sep 2019 14:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=yM5Syc3VnAc9IR5XhYvLeJT9r7yth9/BSoIvBzcggVU=;
 b=AUI17j1pRCtj8Ooa2DEm59w1qpc+NRc9fjIHApG0XLkU1/YdGkO1EF6rHS4CGifq8j
 06vuZILbaG029vRbhT8ZUeO/tmMr6b0o/vJ0WCeI4R9RzZJj1Ha8i22QgVffSfa/9A9e
 HL5ffrprLmkeEgaG1zSvKbt2r9Izi7O81uo194a3eM7zNGDBIeNHrp74gDcUkS1BR7C3
 Eb7Z9jKQfeRotQMYh0z8oh9PPmrza9pjS7jKTuB5vtatfj6wTQrxTk1c3c2oUnvSKgWp
 3dhHnP7HlwOYwq+o9PyM1Yx8f5OAcoXvw7G2ujBEQPYnzikpU1+F9ZPx1KiYAb7EB4O+
 rm4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=yM5Syc3VnAc9IR5XhYvLeJT9r7yth9/BSoIvBzcggVU=;
 b=D3nZpI5UWeNB8RecVSxBh2XFxxMCclMNlqlRdD2GK47rgGgBkS15RIK1QHUIIAL2Ik
 WXov3Q6KfPkTH93BDITSRUXJLcEHTW4k3XLV+k+VFo9cqWz2221pXYPhJex8FuEi5A94
 sUe7KN8MGcRdl+N7qry0KnAQoiYBqyiJkNGxLHVq0DISiidWPQxBzLljwYlj8Nr9k6V/
 +TGXkGAeytNV9Oey2l6Txyol2fEbwGu6uoO49IgL48fN4pxTBZedPuxT3xTkJqqqwEz8
 HQYpeORVVR3L96TVZlEKY4Izp0Z+9yDfibs1PJyhgNa+eM8849RKffKRhcqLQZBRbIzQ
 55gw==
X-Gm-Message-State: APjAAAWepfuytRnz+eZtZTOMTXBWI3BnTFLhT2u2ZDGQDInJ/m7+j7bn
 VUEhx/omK84ov7WhPr6t7Em3Xka+BhdEwXjGCIA=
X-Google-Smtp-Source: APXvYqwkk/N7ggoZ0ODVVJWifcmyxSkjLHCFK0jOwg0LUZzoshNVCDO8KY3FCHMz6mxJgNBROjC2LFduVgVwzigOeW0=
X-Received: by 2002:aca:d841:: with SMTP id p62mr14431oig.128.1568842242887;
 Wed, 18 Sep 2019 14:30:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:2286:0:0:0:0:0 with HTTP; Wed, 18 Sep 2019 14:30:42
 -0700 (PDT)
In-Reply-To: <20190917064412.E237C61577@smtp.codeaurora.org>
References: <20190906215423.23589-1-chunkeey@gmail.com>
 <20190917064412.E237C61577@smtp.codeaurora.org>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 18 Sep 2019 23:30:42 +0200
Message-ID: <CAKR_QVJ09gsbvvutDjDU4tR3VdkQRyYveCnAZ-gU9qByERb-=g@mail.gmail.com>
Subject: Re: [PATCH] ath10k: restore QCA9880-AR1A (v1) detection
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_143044_112572_B5C99E7A 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 17/09/2019, Kalle Valo <kvalo@codeaurora.org> wrote:
> Christian Lamparter <chunkeey@gmail.com> wrote:
>
>> This patch restores the old behavior that read
>> the chip_id on the QCA988x before resetting the
>> chip. This needs to be done in this order since
>> the unsupported QCA988x AR1A chips fall off the
>> bus when resetted. Otherwise the next MMIO Op
>> after the reset causes a BUS ERROR and panic.
>>
>> Cc: stable@vger.kernel.org
>> Fixes: 1a7fecb766c8 ("ath10k: reset chip before reading chip_id in
>> probe")
>> Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
>
> I'll drop this as there's no plan to support QCA988X hw1.0.
>
> --
> https://patchwork.kernel.org/patch/11136089/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
>
>

Maybe the whole subject on QCA988X cards should be re-evaluated? Since
at this point it's not for certain whether the card is difficult to
support or whether it is damaged.
There was at least one report of QCA988X hw2.0 failing in an identical
way as QCA988X hw1.0. In case it turns out to be hw damage, a fallback
driver mechanism could provide extended lifetime for these cards. A
link to the hw2.0 failure:
https://forum.openwrt.org/t/is-it-possible-to-brick-the-wireless-card-qca988x-irreversibly/32615

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
