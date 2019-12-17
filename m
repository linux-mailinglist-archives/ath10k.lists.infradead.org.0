Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31440123250
	for <lists+ath10k@lfdr.de>; Tue, 17 Dec 2019 17:23:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0e79bPFvnCTgHiDkJjdHR8hIKSG454dAW7Lslp8rnqs=; b=k96bzPzk1yQXQJ
	E0HRQlcFuid7vGXs+9LYqsTScvIh34yhJJFFgyM3jBJMqovXmsQj2cpxsVpXLmm7HGFh9XkxZdhg1
	GP9wGRSG84MGRWDUu0BxTpX6na/vS5cKsW7ePYmUXRxFsI4e3Vx4ZcazWMyaR2PEGVISD3ad4kQHo
	c8cMKHyQ5oOkfNbiN0vKMRrOsqSUWfyjgymEdZprbyLgJVCqBCnvjCeJmbbJrbGtV/Cnrl32z+dHy
	twf40Rs5XUPANbpBXHEy8agbnYC2fMSk6UbZn5nrrFoQU70iR7KcLJbRYxblJJikF+s9NfjeDLiME
	0ZKePOmFN21PXZExWDVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihFdA-0002SU-RO; Tue, 17 Dec 2019 16:23:28 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihFd6-0002Rt-Gr
 for ath10k@lists.infradead.org; Tue, 17 Dec 2019 16:23:26 +0000
Received: by mail-ot1-x343.google.com with SMTP id h20so14368387otn.5
 for <ath10k@lists.infradead.org>; Tue, 17 Dec 2019 08:23:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K3H12C+SygQfJoVwwFR5ByI1QMvjeQLqC2Ngz5U/neI=;
 b=gk+J6y3DhHmR32W49GTAiZvwcFiOuWmgzmGEsjgStsBTRjbsKLji/5QRUCzqGJpyus
 nPiG7OYs3V5BiRd7MIi329rd/ZTmcvk+GzWzJHeUghNouwEG7tmMiRDbNwk+QmN4R5+v
 O2s0+AileSvah4nR3ytW3h24ZjMe0M4DJn6AVhyV36VJ4rnTkUtUJjE7g/EHVw/NJCIX
 3xG3q9r47wGqztj2ntzuwpjxCnj2cEUmeKd/NeUSLEfwYufQlRFm2UK0/bJJQmA/rwfP
 IpS4MWgL56VCZos3jw4VdrryDeonohWYI6taS4D1LhH7Zd9/9kpvQq+xumj43UeaIXEp
 hlHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K3H12C+SygQfJoVwwFR5ByI1QMvjeQLqC2Ngz5U/neI=;
 b=fPvjUwvxMIQE+LibxAB8i2yoPvcASLArQHIPa0AUJNlbiM0jwr2yeqHJdoefRJTUlt
 m9uac9pYu8PDrQpCOSYf5isra5KErL1P+rlDLAzaH9P+Q4GX+uf/4ym5Qq/jIbQofu8H
 H3xXw2N/pVeX0WGFNH6UVyA07dYZi29j2jZjSH5NyVIw6IuDhVgE2vS+Oxx7IYpJBhJH
 R9jZzo8xMztkHJ/pNRaXkj4NFaBofPTA8E/bZDmFZpyX5EPWExiklVpUAdZPp0PePy1L
 BxccUUi296P7d1cLi4rvAaV1zA7kN9QRBuwVkJKlnQe3uATAwEYdjPLbSRE67CDfUlBn
 uS/g==
X-Gm-Message-State: APjAAAXp0AXkZBFsyLRmUW6gZPMg7z6eX1vp3Nwm3k2pC5bq4U6u+WM8
 L9dP0YCeIbEwZA0u635lxLf2DHLynVD1UaWe0aAGmhy207Gj7w==
X-Google-Smtp-Source: APXvYqzRfnMw0xscFHcs1CYLjh5EGdilE9HA1iOKfIiUDGElP5pzvAeAdUBTHz3AZzc3Bo3YW770TlgA4wrTjMxwBk0=
X-Received: by 2002:a9d:6c81:: with SMTP id c1mr39364148otr.39.1576599803320; 
 Tue, 17 Dec 2019 08:23:23 -0800 (PST)
MIME-Version: 1.0
References: <20191216220747.887-1-greearb@candelatech.com>
 <a2af03e9-8b53-b297-467b-d0f07b8a002b@newmedia-net.de>
 <b5d63d96-4ba6-bbab-bf1c-a61c6c437f37@newmedia-net.de>
 <80700614-679a-336e-bd9a-e88622e75c9a@candelatech.com>
 <4775d91a-9719-46f8-b0f2-979b8d86cf9f@newmedia-net.de>
In-Reply-To: <4775d91a-9719-46f8-b0f2-979b8d86cf9f@newmedia-net.de>
From: Justin Capella <justincapella@gmail.com>
Date: Tue, 17 Dec 2019 08:23:10 -0800
Message-ID: <CAMrEMU-vGB8uR-JZbD2vj4vXgWNHfFqcbsqB=gOqBBDZWGkzQA@mail.gmail.com>
Subject: Re: [PATCH] ath10k: Per-chain rssi should sum the secondary channels
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_082324_583958_2E75F06E 
X-CRM114-Status: GOOD (  19.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
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
Cc: Ben Greear <greearb@candelatech.com>, linux-wireless@vger.kernel.org,
 ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

I believe someone recently submitted a patch that defined noise floors
per band (2/5).

Can't say I'm a fan of the hacky code, in particular the if/else for
min/max // maybe abs(a-b)?

if (e40 != 0x80) { // whats this case about?

Are there reasons to not use log?




On Tue, Dec 17, 2019 at 7:59 AM Sebastian Gottschall
<s.gottschall@newmedia-net.de> wrote:
>
>
> >> currently debugging in your code, but i already have seen that the
> >> values are wrong now for this chipset
> >
> > Thanks for testing.  I'll add a check for 0 and ignore that value
> > too.  That seem OK?
> i tested already the 0 check and it works
> >
> > Were the per-chain values OK?
> on 9984 i see no disadvantage so far. seem to work and the values look
> sane. i will do a side by side comparisation later this day on 9984
> >
> > Thanks,
> > Ben
> >
> >>>
> >>> Am 16.12.2019 um 23:07 schrieb greearb@candelatech.com:
> >>>> From: Ben Greear <greearb@candelatech.com>
> >>>>
> >>>> This makes per-chain RSSI be more consistent between HT20, HT40, HT80.
> >>>> Instead of doing precise log math for adding dbm, I did a rough
> >>>> estimate,
> >>>> it seems to work good enough.
> >>>>
> >>>> Tested on ath10k-ct 9984 firmware.
> >>>>
> >>>> Signed-off-by: Ben Greear <greearb@candelatech.com>
> >>>> ---
> >>>>   drivers/net/wireless/ath/ath10k/htt_rx.c  | 64
> >>>> ++++++++++++++++++++---
> >>>>   drivers/net/wireless/ath/ath10k/rx_desc.h |  3 +-
> >>>>   2 files changed, 60 insertions(+), 7 deletions(-)
> >>>>
> >>>> diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c
> >>>> b/drivers/net/wireless/ath/ath10k/htt_rx.c
> >>>> index 13f652b622df..034d4ace228d 100644
> >>>> --- a/drivers/net/wireless/ath/ath10k/htt_rx.c
> >>>> +++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
> >>>> @@ -1167,6 +1167,44 @@ static bool ath10k_htt_rx_h_channel(struct
> >>>> ath10k *ar,
> >>>>       return true;
> >>>>   }
> >>>>   +static int ath10k_sum_sigs_2(int a, int b) {
> >>>> +    int diff;
> >>>> +
> >>>> +    if (b == 0x80)
> >>>> +        return a;
> >>>> +
> >>>> +    if (a >= b) {
> >>>> +        diff = a - b;
> >>>> +        if (diff == 0)
> >>>> +            return a + 3;
> >>>> +        else if (diff == 1)
> >>>> +            return a + 2;
> >>>> +        else if (diff == 2)
> >>>> +            return a + 1;
> >>>> +        return a;
> >>>> +    }
> >>>> +    else {
> >>>> +        diff = b - a;
> >>>> +        if (diff == 0)
> >>>> +            return b + 3;
> >>>> +        else if (diff == 1)
> >>>> +            return b + 2;
> >>>> +        else if (diff == 2)
> >>>> +            return b + 1;
> >>>> +        return b;
> >>>> +    }
> >>>> +}
> >>>> +
> >>>> +static int ath10k_sum_sigs(int p20, int e20, int e40, int e80) {
> >>>> +    /* Hacky attempt at summing dbm without resorting to log(10)
> >>>> business */
> >>>> +    if (e40 != 0x80) {
> >>>> +        return ath10k_sum_sigs_2(ath10k_sum_sigs_2(p20, e20),
> >>>> ath10k_sum_sigs_2(e40, e80));
> >>>> +    }
> >>>> +    else {
> >>>> +        return ath10k_sum_sigs_2(p20, e20);
> >>>> +    }
> >>>> +}
> >>>> +
> >>>>   static void ath10k_htt_rx_h_signal(struct ath10k *ar,
> >>>>                      struct ieee80211_rx_status *status,
> >>>>                      struct htt_rx_desc *rxd)
> >>>> @@ -1177,18 +1215,32 @@ static void ath10k_htt_rx_h_signal(struct
> >>>> ath10k *ar,
> >>>>           status->chains &= ~BIT(i);
> >>>>             if (rxd->ppdu_start.rssi_chains[i].pri20_mhz != 0x80) {
> >>>> -            status->chain_signal[i] = ATH10K_DEFAULT_NOISE_FLOOR +
> >>>> - rxd->ppdu_start.rssi_chains[i].pri20_mhz;
> >>>> +            status->chain_signal[i] = ATH10K_DEFAULT_NOISE_FLOOR
> >>>> +                +
> >>>> ath10k_sum_sigs(rxd->ppdu_start.rssi_chains[i].pri20_mhz,
> >>>> + rxd->ppdu_start.rssi_chains[i].ext20_mhz,
> >>>> + rxd->ppdu_start.rssi_chains[i].ext40_mhz,
> >>>> + rxd->ppdu_start.rssi_chains[i].ext80_mhz);
> >>>> +            //ath10k_warn(ar, "rx-h-sig, chain[%i] pri20: %d
> >>>> ext20: %d  ext40: %d  ext80: %d\n",
> >>>> +            //        i, rxd->ppdu_start.rssi_chains[i].pri20_mhz,
> >>>> rxd->ppdu_start.rssi_chains[i].ext20_mhz,
> >>>> +            // rxd->ppdu_start.rssi_chains[i].ext40_mhz,
> >>>> rxd->ppdu_start.rssi_chains[i].ext80_mhz);
> >>>>                 status->chains |= BIT(i);
> >>>>           }
> >>>>       }
> >>>>         /* FIXME: Get real NF */
> >>>> -    status->signal = ATH10K_DEFAULT_NOISE_FLOOR +
> >>>> -             rxd->ppdu_start.rssi_comb;
> >>>> -    /* ath10k_warn(ar, "rx-h-sig, signal: %d  chains: 0x%x
> >>>> chain[0]: %d  chain[1]: %d  chan[2]: %d\n",
> >>>> -                       status->signal, status->chains,
> >>>> status->chain_signal[0], status->chain_signal[1],
> >>>> status->chain_signal[2]); */
> >>>> +    if (rxd->ppdu_start.rssi_comb_ht != 0x80) {
> >>>> +        status->signal = ATH10K_DEFAULT_NOISE_FLOOR +
> >>>> +            rxd->ppdu_start.rssi_comb_ht;
> >>>> +    }
> >>>> +    else {
> >>>> +        status->signal = ATH10K_DEFAULT_NOISE_FLOOR +
> >>>> +            rxd->ppdu_start.rssi_comb;
> >>>> +    }
> >>>> +
> >>>> +    //ath10k_warn(ar, "rx-h-sig, signal: %d  chains: 0x%x
> >>>> chain[0]: %d  chain[1]: %d  chain[2]: %d chain[3]: %d\n",
> >>>> +    //        status->signal, status->chains,
> >>>> status->chain_signal[0],
> >>>> +    //        status->chain_signal[1], status->chain_signal[2],
> >>>> status->chain_signal[3]);
> >>>>       status->flag &= ~RX_FLAG_NO_SIGNAL_VAL;
> >>>>   }
> >>>>   diff --git a/drivers/net/wireless/ath/ath10k/rx_desc.h
> >>>> b/drivers/net/wireless/ath/ath10k/rx_desc.h
> >>>> index dec1582005b9..6b44677474dd 100644
> >>>> --- a/drivers/net/wireless/ath/ath10k/rx_desc.h
> >>>> +++ b/drivers/net/wireless/ath/ath10k/rx_desc.h
> >>>> @@ -726,7 +726,8 @@ struct rx_ppdu_start {
> >>>>           u8 ext80_mhz;
> >>>>       } rssi_chains[4];
> >>>>       u8 rssi_comb;
> >>>> -    __le16 rsvd0;
> >>>> +    u8 rsvd0; /* first two bits are bandwidth, other 6 are
> >>>> reserved */
> >>>> +    u8 rssi_comb_ht;
> >>>>       u8 info0; /* %RX_PPDU_START_INFO0_ */
> >>>>       __le32 info1; /* %RX_PPDU_START_INFO1_ */
> >>>>       __le32 info2; /* %RX_PPDU_START_INFO2_ */
> >>>
> >>> _______________________________________________
> >>> ath10k mailing list
> >>> ath10k@lists.infradead.org
> >>> http://lists.infradead.org/mailman/listinfo/ath10k
> >>>
> >>
> >

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
