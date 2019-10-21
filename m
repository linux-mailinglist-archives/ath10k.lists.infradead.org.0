Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E43FBDEFA7
	for <lists+ath10k@lfdr.de>; Mon, 21 Oct 2019 16:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwiDriHZwJb1Q37DAzcrvWF19Ak0Xq93GvKQyUyh7jQ=; b=FCaVfhrDLFL9Q/
	Qyel/BnVjli1VtSKWvMx7qrAMgOJJffbsw9FsPsMufmxNGicj8+WFZlphIHPBY0CWGAeNbVbCaqxD
	Bm+TwTejV29zYwCOZiAoBCBPr/AVKU/iojO+0st3ZT8aMf0BkrqMBg9y+O5mOtQTqwvL7cPpyjqdc
	mAW7QiuXj/zTKBjAilq9QZJLyvatqHXpJaOh84mgAljyoA5/J3tqz7vurmgnWa4BKx3ae3oYOFxmY
	XTLbLxOy2/ShsSnlJYDAd4UyNBG5cm1pYtJvy/MvhFIZDOtC1BG48Lxc84M9+w1CK4hUPgJMt2wiB
	JAuwqhqHAwDwBI23UERg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYkR-0002ce-Ru; Mon, 21 Oct 2019 14:33:27 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYkO-0002cF-0t
 for ath10k@lists.infradead.org; Mon, 21 Oct 2019 14:33:25 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 45BEE60A73; Mon, 21 Oct 2019 14:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571668402;
 bh=KMDUFdljanvngNy/CGgHd1p8m9cZpuOnap9ONx+d/w0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=aGlfK+8zWdswIC4SU5Kgfp/WTNc05V6AGioyM94xmz+OsQBHbniYWi+SvAUmz83uQ
 DpmSMDY4l+7xdHKlexyh0yXghTUktTC283IUkrwy65HAX1GhNuGNUKd5HV0NzwNmc1
 L6+/rmxpVtArKoOeyk4s6Ga1gA+9d57kkhHGnJWQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4E4EA6081E;
 Mon, 21 Oct 2019 14:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571668401;
 bh=KMDUFdljanvngNy/CGgHd1p8m9cZpuOnap9ONx+d/w0=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ISBcQlbWwowObyPEsmQ2QV5k7VSgxhYZRffAlnYpxxS4kP/GfvD0nmIeFSuixIKW9
 0Kud269HqJ90exG3gg52fxXxWPuIvPdiIY+SUOYSiNfG5J/MVqW2R2BUJNEp8lRBtF
 GAIMcaa/7943cK5XO5iS2gEPmdn7RCnl36uk5ipY=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4E4EA6081E
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v4 0/2] Implement Airtime-based Queue Limit (AQL)
References: <20191011022413.176208-1-kyan@google.com>
 <87wod7y9ui.fsf@kamboji.qca.qualcomm.com>
 <87sgnvy9c2.fsf@kamboji.qca.qualcomm.com>
 <CA+iem5uLYFVQjPaE1QDKc6c+eKz8Xd4LbwczYXOBKP3q+HHdBg@mail.gmail.com>
Date: Mon, 21 Oct 2019 17:33:16 +0300
In-Reply-To: <CA+iem5uLYFVQjPaE1QDKc6c+eKz8Xd4LbwczYXOBKP3q+HHdBg@mail.gmail.com>
 (Kan Yan's message of "Mon, 14 Oct 2019 16:58:04 -0700")
Message-ID: <87r236tbgz.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_073324_089653_A49E02D9 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: make-wifi-fast@lists.bufferbloat.net,
 Toke =?utf-8?Q?H=C3=B8iland-J?= =?utf-8?Q?=C3=B8rgensen?=
 <toke@redhat.com>, linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Yibo Zhao <yiboz@codeaurora.org>, Johannes Berg <johannes@sipsolutions.net>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

(please don't top post)

Kan Yan <kyan@google.com> writes:

> I believe Toke will integrate this with his version and move the
> estimating pending airtime part to mac80211, so maybe in the next
> version, ath10k change is no longer required.

What do you mean? Are you saying that I can drop this patch:

[v4,2/2] ath10k: Enable Airtime-based Queue Limit (AQL)

https://patchwork.kernel.org/patch/11184783/

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
