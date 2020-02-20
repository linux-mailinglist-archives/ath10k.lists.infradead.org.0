Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E7A16568E
	for <lists+ath10k@lfdr.de>; Thu, 20 Feb 2020 06:10:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0dxa5gnPLnkeM+nX+ilXGCT1BhRXvgRjdAZKWKvAaQ=; b=PQ7GGX5BznX2u7
	JD4uFkS9ww2OaEvaG9ZW4qFMnjL5dc1v7IoCzyljMctfa+E+8VqAdD0oP0uqZpJB0JNTjFAHR2b2T
	DFZhs5X+oP0vYtmzOEv9msuk/ZwJHq59NrjEeSHhvWPCmKveX0WpBbkPw4WFFbXvR5MZjBie7MFtx
	tbKP4fLLXY5s+g6pkGHt9xR+KqPQlHrrHd3rwyf4FmFrT4l3+BW2B65hxLglhfbHC8x78HwAu+6Np
	2SsDuzZyloQhKPaYCqTWFMcqgjmKNO8KiEJYp/dDXfatWLoL8nVk2druF1IFgRdrv4QtR7a8Snk+g
	GuC0mpe0jkQ78tgPt6cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4e6j-00050l-RS; Thu, 20 Feb 2020 05:10:41 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4e6g-00050F-CX
 for ath10k@lists.infradead.org; Thu, 20 Feb 2020 05:10:40 +0000
Received: by mail-vk1-xa43.google.com with SMTP id u6so824650vkn.13
 for <ath10k@lists.infradead.org>; Wed, 19 Feb 2020 21:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yvsJMPuJMhWdY3UrvCeVbfZ3qnixQuVFhEPUtGkCIb0=;
 b=Da4OZtqXMqH34dsg5MLmWZ5DQozYoooLnRFDmiTK3L/8IBJTAMI6BKMh1rmcrkfkW+
 NEH+7DM5Cm+9W9yD9ooJhVL8pXFot0R8OsyhY8Gjoo9oUzTjVE9bZLBV1ISysZYScMHl
 98D+rp4YX22/NeFN212HCSiihKy9lJuM90s39Ili6V/snbEC98uqu7GwMTQYcymVjKF3
 7CpEfLeLFY4GODCmb/oHpI2aQR5/p3yHc5Ifg/QGJrx02yTZv1xZs66YKlD9Gmodiy55
 XvF3b2e7/7rqOmp/fcdotGxmn5lyGiyKAsWKbiKAGR81FcUgX7UvCLazG7wLvENFxKfM
 Iznw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yvsJMPuJMhWdY3UrvCeVbfZ3qnixQuVFhEPUtGkCIb0=;
 b=EgBugffqnAif/oiidN4/ncYrIGKiyq0umuvLkUO7oYTQ9Rw8U+N4eJF1HNxTZAADyy
 AKifaxtBlt0mLwI1aprXRb0nWDzFdHOS3fLwSI5ZALJy/aEXPQ3Nad8XQ8QKg2ujDaYj
 qXY64iS81D5sqykT5sRbpWpqsxGohMdl04XJyEMgn/j0aaRZsdhR5c61qVgsfQYJG5Tu
 tA5LAh//BL1enhjUiXSuiVU1srEd+99trwi0uwTx33F/cEU+sVbEcvL0+rOVd69xQakW
 hwawjxW4ei7+zh/oNGmV+jVYmkUrzZd56qPW/CHdhXlW0EW/UsKOIXDBgAEz1AHqzchu
 TyvA==
X-Gm-Message-State: APjAAAX/hPpQRTnQSeogJ3/v7aMW+cpG2crOblAQecy+we7ufYjq0F+N
 n+msLpPre/8e4OLuGTY8l4vPJVhdzFhuY3UQFyE=
X-Google-Smtp-Source: APXvYqzPobRCq9DJi47Blgu4T8c46ciqAA0tTQG9z2eUTXA6ca0XvPtabGMq7X97na3gIcHb05wv3E5c/6ilmu4PC8Q=
X-Received: by 2002:a1f:b6d7:: with SMTP id g206mr13498964vkf.8.1582175436461; 
 Wed, 19 Feb 2020 21:10:36 -0800 (PST)
MIME-Version: 1.0
References: <1582171405-27236-1-git-send-email-yiboz@codeaurora.org>
In-Reply-To: <1582171405-27236-1-git-send-email-yiboz@codeaurora.org>
From: Justin Capella <justincapella@gmail.com>
Date: Wed, 19 Feb 2020 21:10:26 -0800
Message-ID: <CAMrEMU9FvFm5eFP3YfAap238s+x0hz9kKUO6cEizeR_5KY4F2A@mail.gmail.com>
Subject: Re: [PATCH] ath10k: fix not registering airtime of 11a station with
 WMM disable
To: Yibo Zhao <yiboz@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_211038_525583_24FB30FC 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [justincapella[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

ieee80211_sta_register_airtime uses ieee80211_ac_from_tid(tid) which
already applies a mask, so should be returning IEEE80211_AC_BE = 2
already, there has been recent changes to some of this so maybe I'm
looking at the wrong decision but I don't think this change makes a
difference

On Wed, Feb 19, 2020 at 8:02 PM Yibo Zhao <yiboz@codeaurora.org> wrote:
>
> The tid of 11a station with WMM disable reported by FW is 0x10 in
> tx completion. The tid 16 is mapped to a NULL txq since buffer
> MMPDU capbility is not supported. Then 11a station's airtime will
> not be registered due to NULL txq check. As a results, airtime of
> 11a station keeps unchanged in debugfs system.
>
> Mask the tid along with IEEE80211_QOS_CTL_TID_MASK to make it in
> the valid range.
>
> Hardwares tested : QCA9984
> Firmwares tested : 10.4-3.10-00047
>
> Signed-off-by: Yibo Zhao <yiboz@codeaurora.org>
> ---
>  drivers/net/wireless/ath/ath10k/htt_rx.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
> index 38a5814..f883f2a 100644
> --- a/drivers/net/wireless/ath/ath10k/htt_rx.c
> +++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
> @@ -2744,7 +2744,8 @@ static void ath10k_htt_rx_tx_compl_ind(struct ath10k *ar,
>                         continue;
>                 }
>
> -               tid = FIELD_GET(HTT_TX_PPDU_DUR_INFO0_TID_MASK, info0);
> +               tid = FIELD_GET(HTT_TX_PPDU_DUR_INFO0_TID_MASK, info0) &
> +                                               IEEE80211_QOS_CTL_TID_MASK;
>                 tx_duration = __le32_to_cpu(ppdu_dur->tx_duration);
>
>                 ieee80211_sta_register_airtime(peer->sta, tid, tx_duration, 0);
> --
> 1.9.1

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
