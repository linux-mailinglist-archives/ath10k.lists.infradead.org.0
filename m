Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0052B12BC8C
	for <lists+ath10k@lfdr.de>; Sat, 28 Dec 2019 05:46:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4VP4VbpakKao3vdmTlUDmEjgRqfA1kJp1ZHK4IhEgw0=; b=aNxN2vzQBWqUxD
	kx85P1JbsrGBPW07cDnQdFvF+t8YgJUM6OcrcFVgP6OvgGgioXYzZreIX4af1P3+fYHgPbwNmbrXQ
	dPTSM26IgIJr/wpKzDDSRnZFgA76QpmtO+KzTLTmAxrh5Mh6fqJwz7wWtk5Btt+BAxg7AguzDaexQ
	HXxul8zyU5+c9oS2G26upXv4YLdkNKqqp0z4Uf/jV2KNxqAs4Ukhsa8d5zhaA1Vj/qppgiRJlOMg+
	Clq6C1/H5zRg68iYiAuhiKehQEx4DjmEXxQ5j+FH/ydd0rj5cGaD0gN80CX268vPJdIP4fyezWMkB
	6OsIaOTbMC/1yxwmovvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il3zI-0006Hb-DL; Sat, 28 Dec 2019 04:46:04 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il3zC-0006H1-4X
 for ath10k@lists.infradead.org; Sat, 28 Dec 2019 04:46:00 +0000
Received: by mail-ot1-x343.google.com with SMTP id a15so38773374otf.1
 for <ath10k@lists.infradead.org>; Fri, 27 Dec 2019 20:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JkgLybiVNJ7wsPHPf0FIjJsyvI/FotTcsR97ncePDnA=;
 b=sAEm43vznvP878gLSq+BUHekeyJ1NeJwxNQX8vcmuxr1WzoCUCx00MurWpN5AqHZ7B
 ldFppj17+wbBBsv2WfeKuIPpLG8pY+cIxKxTdrO1YmuJ5wvy+KSVLj50pE2J4+9s4q24
 ZXKreFjvCMx+AmsDiJndblXsTJpJ8223mKbUtV8x2DFXLZZlYtqHXqnVyBTt53YoBqPL
 D4cvvIccb5Z7G5THgfPQLq3rZ5YuBJUuBKkI0kQu5cp9PG7Xma32fAdHpnOt0Dw57W1X
 t/chV9sJ5ZEDwuDbwKnUI4bwhoMbbUzNWsiVac2NN5jIhgV1YL8U8xppEW++gEA863a+
 sC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JkgLybiVNJ7wsPHPf0FIjJsyvI/FotTcsR97ncePDnA=;
 b=r7K2zS2JehBTpXc1q8bzvyku3dAGro1O9e7XcO4yFp7YSVD349VrYl2NaPXpGW4Tuw
 jYBPs5VilzEYznx5M3JMzJIv7NzksJxQVlrkPtqDNnkcc00uEG6Vm7T3Nh++9clf63+q
 R7IG2QnoJ75r3D/cU6vXkNy+8Orq9IKTFh9sn9O3ZfxQPs9sCT0IwXOSkk7VZQ/Q10Md
 XDBEogcsnalOWz5O2c2etDkf2/OHCub/w3ecO2/YDy11vAn6Ciy4J7+1fCZClyyLGFkU
 Z8UoSpRKXujcfX7iFxwo5O6kB7UAhCdHRQUcE/SkWBGXCDQ1w+8yfQQKkdZxJKv/O/HH
 nMhg==
X-Gm-Message-State: APjAAAU9qy1HRmbiJUj11uX2x7TRM817jFoQCV/J+AXdnYcCsSqkn3cB
 L1fSWINJO5ZhK/RDySjZ/icev0NW4JciO/IHjZ8=
X-Google-Smtp-Source: APXvYqz0UG7YL2O3vyImC4oSVIjx2xTPVQ74//BdN5xltRHG/Xh2GqfxHVcmfS7/3J9RijXO9RY0fA2JjiqL30Gqe9A=
X-Received: by 2002:a05:6830:1515:: with SMTP id
 k21mr45245162otp.177.1577508352407; 
 Fri, 27 Dec 2019 20:45:52 -0800 (PST)
MIME-Version: 1.0
References: <20191216092207.31032-1-john@phrozen.org>
In-Reply-To: <20191216092207.31032-1-john@phrozen.org>
From: Justin Capella <justincapella@gmail.com>
Date: Fri, 27 Dec 2019 20:45:40 -0800
Message-ID: <CAMrEMU8u94KQ2jzLv+yRomBP4PjzPehaMo_G3vqCvULEWwG35g@mail.gmail.com>
Subject: Re: [RESEND] ath10k: add tx hw 802.11 encapusaltion offloading support
To: John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_204558_186105_18873444 
X-CRM114-Status: GOOD (  30.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
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
Cc: Vasanthakumar Thiagarajan <vthiagar@qti.qualcomm.com>,
 linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

I think this may be a case for module_param_cb where the mode is an
enum, that way you can enforce the mutual exclusion when the param is
being set.

This leaves the module parameters unchanged/potentially conflicting,
is that going to cause a problem?

+       if (ethernetmode && rawmode) {
+               ath10k_err(ar, "ethernet and raw mode cannot co-exist\n");
+               status = -EINVAL;
+               goto err;
+       }

Would setting this before the firmware has been brought up cause any
false assumptions later on? Maybe move to init_firmware_features like
rawmode?

+       ar->ethernetmode = ethernetmode;

Also it seems other parts of code may make assumptions if about raw
mode and SW crypt, I noticed at least one more in
ath10k_core_init_firmware_features in addition to what Tom mentioned--
in the ATH10K_CRYPT_MODE_SW case rawmode bit is being set. There was
also an interesting comment about aggregation and raw mode, maybe
interest... They also are checking for firmware support for rawmode,
is there an equivalent feature bit that could be checked for
ethernetmode?

+       if (cb->flags & ATH10K_SKB_F_HW_80211_ENCAP)
+               return skb->priority % IEEE80211_QOS_CTL_TID_MASK;

Should this be & IEEE80211_QOS_CTL_TID_MASK even though it is same
value with little endian? Also, don't take my word for it, but I have
some memory that this value gets used some place where MAX_AC is used,
which I think is 4 / smaller, so I'm wondering if this might wind up
causing out of bounds r/w....

The name divergence from IEEE80211_TX_CTRL_HW_80211_ENCAP was
confusing to me, but I'm newb.

The changes in ath10k_mac_tx_h_fill_cb have a return-- so no other
flags can be set, maybe this is intentional, but I notice that if the
vif is type monitor there may be some confusion where
ATH10K_HW_TXRX_RAW is being returned in one place but the added return
is bypassing flags related to rawmode.


+                       ret = ath10k_htt_tx_mgmt_inc_pending(htt, is_mgmt,
+                                                            is_presp);
+                       if (ret) {
+                               ath10k_dbg(ar, ATH10K_DBG_MAC, "failed
to increase tx mgmt pending count: %d, dropping\n",
+                                          ret);
+                               ath10k_htt_tx_dec_pending(htt);

I think the dec maybe should not be happening here


On Mon, Dec 16, 2019, 1:23 AM John Crispin <john@phrozen.org> wrote:
>
> This patch adds support for ethernet rxtx mode to the driver. The feature
> is enabled via a new module parameter. If enabled to driver will enable
> the feature on a per vif basis if all other requirements were met.
>
> Testing on a IPQ4019 based hardware shows a increase in TCP throughput
> of ~20% when the feature is enabled.
>
> Signed-off-by: Vasanthakumar Thiagarajan <vthiagar@qti.qualcomm.com>
> Signed-off-by: John Crispin <john@phrozen.org>
> ---
> Resending as Johannes has merged the mac80211 part, which means we can now
> also merge the driver support patches.
>
>  drivers/net/wireless/ath/ath10k/core.c   | 11 ++++
>  drivers/net/wireless/ath/ath10k/core.h   |  3 +
>  drivers/net/wireless/ath/ath10k/htt_tx.c | 24 +++++---
>  drivers/net/wireless/ath/ath10k/mac.c    | 75 +++++++++++++++++++-----
>  drivers/net/wireless/ath/ath10k/txrx.c   | 11 +++-
>  5 files changed, 99 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/net/wireless/ath/ath10k/core.c b/drivers/net/wireless/ath/ath10k/core.c
> index 5ec16ce19b69..99d3d74c0033 100644
> --- a/drivers/net/wireless/ath/ath10k/core.c
> +++ b/drivers/net/wireless/ath/ath10k/core.c
> @@ -34,6 +34,7 @@ static bool uart_print;
>  static bool skip_otp;
>  static bool rawmode;
>  static bool fw_diag_log;
> +static bool ethernetmode;
>
>  unsigned long ath10k_coredump_mask = BIT(ATH10K_FW_CRASH_DUMP_REGISTERS) |
>                                      BIT(ATH10K_FW_CRASH_DUMP_CE_DATA);
> @@ -46,6 +47,7 @@ module_param(skip_otp, bool, 0644);
>  module_param(rawmode, bool, 0644);
>  module_param(fw_diag_log, bool, 0644);
>  module_param_named(coredump_mask, ath10k_coredump_mask, ulong, 0444);
> +module_param(ethernetmode, bool, 0644);
>
>  MODULE_PARM_DESC(debug_mask, "Debugging mask");
>  MODULE_PARM_DESC(uart_print, "Uart target debugging");
> @@ -54,6 +56,7 @@ MODULE_PARM_DESC(cryptmode, "Crypto mode: 0-hardware, 1-software");
>  MODULE_PARM_DESC(rawmode, "Use raw 802.11 frame datapath");
>  MODULE_PARM_DESC(coredump_mask, "Bitfield of what to include in firmware crash file");
>  MODULE_PARM_DESC(fw_diag_log, "Diag based fw log debugging");
> +MODULE_PARM_DESC(ethernetmode, "Use ethernet frame datapath");
>
>  static const struct ath10k_hw_params ath10k_hw_params_list[] = {
>         {
> @@ -3030,6 +3033,14 @@ static void ath10k_core_register_work(struct work_struct *work)
>         /* peer stats are enabled by default */
>         set_bit(ATH10K_FLAG_PEER_STATS, &ar->dev_flags);
>
> +       if (ethernetmode && rawmode) {
> +               ath10k_err(ar, "ethernet and raw mode cannot co-exist\n");
> +               status = -EINVAL;
> +               goto err;
> +       }
> +
> +       ar->ethernetmode = ethernetmode;
> +
>         status = ath10k_core_probe_fw(ar);
>         if (status) {
>                 ath10k_err(ar, "could not probe fw (%d)\n", status);
> diff --git a/drivers/net/wireless/ath/ath10k/core.h b/drivers/net/wireless/ath/ath10k/core.h
> index 5101bf2b5b15..fe0affbc9d29 100644
> --- a/drivers/net/wireless/ath/ath10k/core.h
> +++ b/drivers/net/wireless/ath/ath10k/core.h
> @@ -109,6 +109,7 @@ enum ath10k_skb_flags {
>         ATH10K_SKB_F_MGMT = BIT(3),
>         ATH10K_SKB_F_QOS = BIT(4),
>         ATH10K_SKB_F_RAW_TX = BIT(5),
> +       ATH10K_SKB_F_HW_80211_ENCAP = BIT(6),
>  };
>
>  struct ath10k_skb_cb {
> @@ -1222,6 +1223,8 @@ struct ath10k {
>         struct ath10k_bus_params bus_param;
>         struct completion peer_delete_done;
>
> +       bool ethernetmode;
> +
>         /* must be last */
>         u8 drv_priv[0] __aligned(sizeof(void *));
>  };
> diff --git a/drivers/net/wireless/ath/ath10k/htt_tx.c b/drivers/net/wireless/ath/ath10k/htt_tx.c
> index a182c0944cc7..0ca0705fe69a 100644
> --- a/drivers/net/wireless/ath/ath10k/htt_tx.c
> +++ b/drivers/net/wireless/ath/ath10k/htt_tx.c
> @@ -1144,6 +1144,10 @@ static u8 ath10k_htt_tx_get_tid(struct sk_buff *skb, bool is_eth)
>         struct ieee80211_hdr *hdr = (void *)skb->data;
>         struct ath10k_skb_cb *cb = ATH10K_SKB_CB(skb);
>
> +       /* Firmware takes care of tid classification for ethernet format */
> +       if (cb->flags & ATH10K_SKB_F_HW_80211_ENCAP)
> +               return skb->priority % IEEE80211_QOS_CTL_TID_MASK;
> +
>         if (!is_eth && ieee80211_is_mgmt(hdr->frame_control))
>                 return HTT_DATA_TX_EXT_TID_MGMT;
>         else if (cb->flags & ATH10K_SKB_F_QOS)
> @@ -1378,15 +1382,17 @@ static int ath10k_htt_tx_32(struct ath10k_htt *htt,
>         txbuf_paddr = htt->txbuf.paddr +
>                       (sizeof(struct ath10k_htt_txbuf_32) * msdu_id);
>
> -       if ((ieee80211_is_action(hdr->frame_control) ||
> -            ieee80211_is_deauth(hdr->frame_control) ||
> -            ieee80211_is_disassoc(hdr->frame_control)) &&
> -            ieee80211_has_protected(hdr->frame_control)) {
> -               skb_put(msdu, IEEE80211_CCMP_MIC_LEN);
> -       } else if (!(skb_cb->flags & ATH10K_SKB_F_NO_HWCRYPT) &&
> -                  txmode == ATH10K_HW_TXRX_RAW &&
> -                  ieee80211_has_protected(hdr->frame_control)) {
> -               skb_put(msdu, IEEE80211_CCMP_MIC_LEN);
> +       if (!(info->control.flags & IEEE80211_TX_CTRL_HW_80211_ENCAP)) {
> +               if ((ieee80211_is_action(hdr->frame_control) ||
> +                    ieee80211_is_deauth(hdr->frame_control) ||
> +                    ieee80211_is_disassoc(hdr->frame_control)) &&
> +                   ieee80211_has_protected(hdr->frame_control)) {
> +                       skb_put(msdu, IEEE80211_CCMP_MIC_LEN);
> +               } else if (!(skb_cb->flags & ATH10K_SKB_F_NO_HWCRYPT) &&
> +                          txmode == ATH10K_HW_TXRX_RAW &&
> +                          ieee80211_has_protected(hdr->frame_control)) {
> +                       skb_put(msdu, IEEE80211_CCMP_MIC_LEN);
> +               }
>         }
>
>         skb_cb->paddr = dma_map_single(dev, msdu->data, msdu->len,
> diff --git a/drivers/net/wireless/ath/ath10k/mac.c b/drivers/net/wireless/ath/ath10k/mac.c
> index 767c7bf16975..a7a6a8330d6a 100644
> --- a/drivers/net/wireless/ath/ath10k/mac.c
> +++ b/drivers/net/wireless/ath/ath10k/mac.c
> @@ -3427,12 +3427,16 @@ ath10k_mac_tx_h_get_txmode(struct ath10k *ar,
>                            struct sk_buff *skb)
>  {
>         const struct ieee80211_hdr *hdr = (void *)skb->data;
> +       struct ieee80211_tx_info *tx_info = IEEE80211_SKB_CB(skb);
>         const struct ath10k_skb_cb *skb_cb = ATH10K_SKB_CB(skb);
>         __le16 fc = hdr->frame_control;
>
>         if (!vif || vif->type == NL80211_IFTYPE_MONITOR)
>                 return ATH10K_HW_TXRX_RAW;
>
> +       if (tx_info->control.flags & IEEE80211_TX_CTRL_HW_80211_ENCAP)
> +               return ATH10K_HW_TXRX_ETHERNET;
> +
>         if (ieee80211_is_mgmt(fc))
>                 return ATH10K_HW_TXRX_MGMT;
>
> @@ -3585,6 +3589,15 @@ static void ath10k_mac_tx_h_fill_cb(struct ath10k *ar,
>                         ieee80211_is_data_qos(hdr->frame_control);
>
>         cb->flags = 0;
> +       cb->vif = vif;
> +       cb->txq = txq;
> +       cb->airtime_est = airtime;
> +
> +       if (info->control.flags & IEEE80211_TX_CTRL_HW_80211_ENCAP) {
> +               cb->flags |= ATH10K_SKB_F_HW_80211_ENCAP;
> +               return;
> +       }
> +
>         if (!ath10k_tx_h_use_hwcrypto(vif, skb))
>                 cb->flags |= ATH10K_SKB_F_NO_HWCRYPT;
>
> @@ -3603,10 +3616,6 @@ static void ath10k_mac_tx_h_fill_cb(struct ath10k *ar,
>                 cb->flags |= ATH10K_SKB_F_NO_HWCRYPT;
>                 cb->flags |= ATH10K_SKB_F_RAW_TX;
>         }
> -
> -       cb->vif = vif;
> -       cb->txq = txq;
> -       cb->airtime_est = airtime;
>  }
>
>  bool ath10k_mac_tx_frm_has_freq(struct ath10k *ar)
> @@ -3716,6 +3725,9 @@ static int ath10k_mac_tx(struct ath10k *ar,
>         const struct ath10k_skb_cb *skb_cb = ATH10K_SKB_CB(skb);
>         int ret;
>
> +       if (info->control.flags & IEEE80211_TX_CTRL_HW_80211_ENCAP)
> +               goto skip_encap;
> +
>         /* We should disable CCK RATE due to P2P */
>         if (info->flags & IEEE80211_TX_CTL_NO_CCK_RATE)
>                 ath10k_dbg(ar, ATH10K_DBG_MAC, "IEEE80211_TX_CTL_NO_CCK_RATE\n");
> @@ -3739,6 +3751,7 @@ static int ath10k_mac_tx(struct ath10k *ar,
>                 }
>         }
>
> +skip_encap:
>         if (!noque_offchan && info->flags & IEEE80211_TX_CTL_TX_OFFCHAN) {
>                 if (!ath10k_mac_tx_frm_has_freq(ar)) {
>                         ath10k_dbg(ar, ATH10K_DBG_MAC, "mac queued offchannel skb %pK len %d\n",
> @@ -3788,6 +3801,7 @@ void ath10k_offchan_tx_work(struct work_struct *work)
>         int ret;
>         unsigned long time_left;
>         bool tmp_peer_created = false;
> +       struct ieee80211_tx_info *info;
>
>         /* FW requirement: We must create a peer before FW will send out
>          * an offchannel frame. Otherwise the frame will be stuck and
> @@ -3807,8 +3821,14 @@ void ath10k_offchan_tx_work(struct work_struct *work)
>                 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac offchannel skb %pK len %d\n",
>                            skb, skb->len);
>
> -               hdr = (struct ieee80211_hdr *)skb->data;
> -               peer_addr = ieee80211_get_DA(hdr);
> +               info = IEEE80211_SKB_CB(skb);
> +
> +               if (info->control.flags & IEEE80211_TX_CTRL_HW_80211_ENCAP) {
> +                       peer_addr = skb->data;
> +               } else {
> +                       hdr = (struct ieee80211_hdr *)skb->data;
> +                       peer_addr = ieee80211_get_DA(hdr);
> +               }
>
>                 spin_lock_bh(&ar->data_lock);
>                 vdev_id = ar->scan.vdev_id;
> @@ -4338,7 +4358,7 @@ static void ath10k_mac_op_tx(struct ieee80211_hw *hw,
>         struct ieee80211_vif *vif = info->control.vif;
>         struct ieee80211_sta *sta = control->sta;
>         struct ieee80211_txq *txq = NULL;
> -       struct ieee80211_hdr *hdr = (void *)skb->data;
> +       struct ieee80211_hdr *hdr;
>         enum ath10k_hw_txrx_mode txmode;
>         enum ath10k_mac_tx_path txpath;
>         bool is_htt;
> @@ -4369,14 +4389,20 @@ static void ath10k_mac_op_tx(struct ieee80211_hw *hw,
>                         return;
>                 }
>
> -               ret = ath10k_htt_tx_mgmt_inc_pending(htt, is_mgmt, is_presp);
> -               if (ret) {
> -                       ath10k_dbg(ar, ATH10K_DBG_MAC, "failed to increase tx mgmt pending count: %d, dropping\n",
> -                                  ret);
> -                       ath10k_htt_tx_dec_pending(htt);
> -                       spin_unlock_bh(&ar->htt.tx_lock);
> -                       ieee80211_free_txskb(ar->hw, skb);
> -                       return;
> +               if (is_mgmt) {
> +                       hdr = (struct ieee80211_hdr *)skb->data;
> +                       is_presp = ieee80211_is_probe_resp(hdr->frame_control);
> +
> +                       ret = ath10k_htt_tx_mgmt_inc_pending(htt, is_mgmt,
> +                                                            is_presp);
> +                       if (ret) {
> +                               ath10k_dbg(ar, ATH10K_DBG_MAC, "failed to increase tx mgmt pending count: %d, dropping\n",
> +                                          ret);
> +                               ath10k_htt_tx_dec_pending(htt);
> +                               spin_unlock_bh(&ar->htt.tx_lock);
> +                               ieee80211_free_txskb(ar->hw, skb);
> +                               return;
> +                       }
>                 }
>                 spin_unlock_bh(&ar->htt.tx_lock);
>         }
> @@ -5209,10 +5235,12 @@ static int ath10k_mac_set_txbf_conf(struct ath10k_vif *arvif)
>  static int ath10k_add_interface(struct ieee80211_hw *hw,
>                                 struct ieee80211_vif *vif)
>  {
> +       struct wireless_dev *wdev = ieee80211_vif_to_wdev(vif);
>         struct ath10k *ar = hw->priv;
>         struct ath10k_vif *arvif = (void *)vif->drv_priv;
>         struct ath10k_peer *peer;
>         enum wmi_sta_powersave_param param;
> +       int hw_encap = 0;
>         int ret = 0;
>         u32 value;
>         int bit;
> @@ -5304,6 +5332,21 @@ static int ath10k_add_interface(struct ieee80211_hw *hw,
>                 break;
>         }
>
> +       switch (vif->type) {
> +       case NL80211_IFTYPE_STATION:
> +       case NL80211_IFTYPE_AP_VLAN:
> +               if (wdev->netdev->ieee80211_ptr->use_4addr)
> +                       break;
> +       /* fall through */
> +       case NL80211_IFTYPE_AP:
> +               hw_encap = 1;
> +               break;
> +       default:
> +               break;
> +       }
> +
> +       ieee80211_set_hw_80211_encap(vif, ar->ethernetmode & hw_encap);
> +
>         /* Using vdev_id as queue number will make it very easy to do per-vif
>          * tx queue locking. This shouldn't wrap due to interface combinations
>          * but do a modulo for correctness sake and prevent using offchannel tx
> @@ -8883,6 +8926,8 @@ int ath10k_mac_register(struct ath10k *ar)
>         ieee80211_hw_set(ar->hw, QUEUE_CONTROL);
>         ieee80211_hw_set(ar->hw, SUPPORTS_TX_FRAG);
>         ieee80211_hw_set(ar->hw, REPORTS_LOW_ACK);
> +       if (ar->ethernetmode)
> +               ieee80211_hw_set(ar->hw, SUPPORTS_80211_ENCAP);
>
>         if (!test_bit(ATH10K_FLAG_RAW_MODE, &ar->dev_flags))
>                 ieee80211_hw_set(ar->hw, SW_CRYPTO_CONTROL);
> diff --git a/drivers/net/wireless/ath/ath10k/txrx.c b/drivers/net/wireless/ath/ath10k/txrx.c
> index 39abf8b12903..1d8a6c2571a1 100644
> --- a/drivers/net/wireless/ath/ath10k/txrx.c
> +++ b/drivers/net/wireless/ath/ath10k/txrx.c
> @@ -50,6 +50,8 @@ int ath10k_txrx_tx_unref(struct ath10k_htt *htt,
>         struct ath10k_skb_cb *skb_cb;
>         struct ath10k_txq *artxq;
>         struct sk_buff *msdu;
> +       struct ieee80211_vif *vif;
> +       u8 flags;
>
>         ath10k_dbg(ar, ATH10K_DBG_HTT,
>                    "htt tx completion msdu_id %u status %d\n",
> @@ -78,6 +80,9 @@ int ath10k_txrx_tx_unref(struct ath10k_htt *htt,
>                 artxq->num_fw_queued--;
>         }
>
> +       flags = skb_cb->flags;
> +       vif = skb_cb->vif;
> +
>         ath10k_htt_tx_free_msdu_id(htt, tx_done->msdu_id);
>         ath10k_htt_tx_dec_pending(htt);
>         if (htt->num_pending_tx == 0)
> @@ -123,7 +128,11 @@ int ath10k_txrx_tx_unref(struct ath10k_htt *htt,
>                 info->status.is_valid_ack_signal = true;
>         }
>
> -       ieee80211_tx_status(htt->ar->hw, msdu);
> +       if (flags & ATH10K_SKB_F_HW_80211_ENCAP)
> +               ieee80211_tx_status_8023(htt->ar->hw, vif, msdu);
> +       else
> +               ieee80211_tx_status(htt->ar->hw, msdu);
> +
>         /* we do not own the msdu anymore */
>
>         return 0;
> --
> 2.20.1
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
