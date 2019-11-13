Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D631FFB8F9
	for <lists+ath10k@lfdr.de>; Wed, 13 Nov 2019 20:38:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ms29564+jZ1bNg6Dt/lc/c0T83XARyHEvqxagke1sJU=; b=ksp3eJ0p7U5QOL
	uf3TdBn/6soTKBOs1sGfxDmkYsIg0+BNC8gTvSkvSrslkthlZesAQ+rx4Oo2V6RZF2qWNgjGFt1oj
	sSt0z+dAv9geGzydTSb+ZKPdWPeDtVfJ31jNJYVGBRC5SJQDoL0itLQMb7nzcgocpiKFP+7ubgJLW
	508L2cujEaHO55fTwuTZGOeNVFJISDKQUE3Zc/Io6fYoMM8ZNcBB6gD6yz+NOJ6COXi4y/fR/LeQg
	DIEuAB/QYrdhf1TRvVg+Ui0jxWJZjFN0XKDy/d/wBDiJ0xOJcct9+md23W332I/EJ5CKpSiUhCw9P
	9bemmvFWHDp5K06zf/gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUySp-00025M-5R; Wed, 13 Nov 2019 19:38:03 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUySl-00024P-3U
 for ath10k@lists.infradead.org; Wed, 13 Nov 2019 19:38:00 +0000
Received: by mail-io1-xd43.google.com with SMTP id j20so3873877ioo.11
 for <ath10k@lists.infradead.org>; Wed, 13 Nov 2019 11:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qzwujp8rTgTl9+3sAbPrswzrZfz1gfQWPbEg9+4F518=;
 b=ozjH8/ZUfQ2cn2Shup6m3S6r23+l600p3IQKlEwI/WV41WNVyzYTOXRhSmhi9cSaU8
 8C2MfrQNRoEBF2iuxNSsfOWM3FrWzd/0BYYi/DNbr+VvXJ1loO6FOwer0u3b+nTzmYfN
 cliWX/v+W+IB14U2s4Jd+EktLLph+ba1wDP2kT9ZB0l4q/A6EnDfmrqkp24SO8IyCkUH
 Hay6Eq4pLvDpOWl2x8BoFpXSIRSrwuVREz7SUaJy3YsUMRQAZvHjSu+1uV8lbr9vOh6U
 /y+NHQpCoGFhBM4eYxEAM/4H51tXI6O2acTKYOG4YhFF728sXGpqWkMgW5uFQ4tWv2nM
 jkzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qzwujp8rTgTl9+3sAbPrswzrZfz1gfQWPbEg9+4F518=;
 b=Kwgbe6ziz3D/hXr6hPSU3wrrVADFPyeV/kOZUxkDUk6VzOohY7TxF1IINF+6oPnw3I
 zUkdCALeNcHkswV7GVzFq22goCHLWkLDflixMsV8juPzacT2fcO8Zine1FFKccJpmh6v
 ACIxp++EeBnH2Oqa6bz0R7Yi9Sy9O+Fk6z7iTk/uqrZ8zDYoKgmHFAgPsWTBJr8eCsKD
 0OP9bdIkh45oBmxjDLxx0c1x+KkqbtwhdFa6KPJAfpFIqm7Y7uCV7huQIQlR8glwak4Y
 0eShx3fCLr//3HHRX/NpffWfzZnM6adfwddr7sx2kkbawwWBDbeQm6M7eoco2422Xntz
 5RZQ==
X-Gm-Message-State: APjAAAU/YJSFDidSTWzxXiHqYg1kjP5MfPnNR359Q0aXmIaKVVIbdOK0
 hRixrC1c7q7jZDB3pVDbfasv88l53Ke7wy/rZbrWSg==
X-Google-Smtp-Source: APXvYqxni+hm9YE3cMiiBsq+tA2kd4YY3cEWlU1jikSd8uLb3c2eNIA4I/pha8dG2m3lQDNH4a37yhjSSHETvVXpYtI=
X-Received: by 2002:a02:9a02:: with SMTP id b2mr2194449jal.15.1573673877724;
 Wed, 13 Nov 2019 11:37:57 -0800 (PST)
MIME-Version: 1.0
References: <1565903072-3948-1-git-send-email-wenwen@cs.uga.edu>
 <20191113192821.GA3441686@builder>
In-Reply-To: <20191113192821.GA3441686@builder>
From: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Date: Wed, 13 Nov 2019 12:37:46 -0700
Message-ID: <CAOCk7NpoQ_JEQj61BvU4HLzxSOQtxUuB-nyrXRKQTxjZ7infbQ@mail.gmail.com>
Subject: Re: [PATCH] ath10k: add cleanup in ath10k_sta_state()
To: Bjorn Andersson <bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_113759_145328_37ECA81A 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffrey.l.hugo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Wenwen Wang <wenwen@cs.uga.edu>, govinds@codeaurora.org,
 "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
 "open list:NETWORKING DRIVERS \(WIRELESS\)" <linux-wireless@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QUALCOMM ATHEROS ATH10K WIRELESS DRIVER"
 <ath10k@lists.infradead.org>, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 12:28 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Thu 15 Aug 14:04 PDT 2019, Wenwen Wang wrote:
>
> > If 'sta->tdls' is false, no cleanup is executed, leading to memory/resource
> > leaks, e.g., 'arsta->tx_stats'. To fix this issue, perform cleanup before
> > go to the 'exit' label.
> >
>
> Unfortunately this patch consistently crashes all my msm8998, sdm845 and
> qcs404 devices (running ath10k_snoc).  Upon trying to join a network the
> WiFi firmware crashes with the following:
>
> [  124.315286] wlan0: authenticate with 70:3a:cb:4d:34:f3
> [  124.334051] wlan0: send auth to 70:3a:cb:4d:34:f3 (try 1/3)
> [  124.338828] wlan0: authenticated
> [  124.342470] wlan0: associate with 70:3a:cb:4d:34:f3 (try 1/3)
> [  124.347223] wlan0: RX AssocResp from 70:3a:cb:4d:34:f3 (capab=0x1011 status=0 aid=2)
> [  124.402535] qcom-q6v5-mss 4080000.remoteproc: fatal error received: err_qdi.c:456:EF:wlan_process:1:cmnos_thread.c:3900:Asserted in wlan_vdev.c:_wlan_vdev_up:3219
>
> Can we please revert it for v5.5?

I observe the same, and concur with this request.

>
> Regards,
> Bjorn
>
> > Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
> > ---
> >  drivers/net/wireless/ath/ath10k/mac.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
> > index 0606416..f99e6d2 100644
> > --- a/drivers/net/wireless/ath/ath10k/mac.c
> > +++ b/drivers/net/wireless/ath/ath10k/mac.c
> > @@ -6548,8 +6548,12 @@ static int ath10k_sta_state(struct ieee80211_hw *hw,
> >
> >               spin_unlock_bh(&ar->data_lock);
> >
> > -             if (!sta->tdls)
> > +             if (!sta->tdls) {
> > +                     ath10k_peer_delete(ar, arvif->vdev_id, sta->addr);
> > +                     ath10k_mac_dec_num_stations(arvif, sta);
> > +                     kfree(arsta->tx_stats);
> >                       goto exit;
> > +             }
> >
> >               ret = ath10k_wmi_update_fw_tdls_state(ar, arvif->vdev_id,
> >                                                     WMI_TDLS_ENABLE_ACTIVE);
> > --
> > 2.7.4
> >

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
