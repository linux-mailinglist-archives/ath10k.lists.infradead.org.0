Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A222F142777
	for <lists+ath10k@lfdr.de>; Mon, 20 Jan 2020 10:38:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUF3jyOgRk7SBu5+6tdQvRi3MS2lTpl38w0S1Su1Fq0=; b=T3DfaFxEzUmXX7
	dAJS9cjicd+eUUuschO2xiV5jcHyO2lROhp96Ceq+RtgBSeknVjI8ectyiEbTjhyQiiYJ1I5tRCEO
	giCmzhXrsaFAHwDTekEgZofIomKEzTm3oBj5r9eOpi8SsYy/MgcZZI06AHPNRChWSlwXOGc4BIBdC
	8coDjgUgDWolv+LM+T5HnH6d4D/AYuxEuu1e1PD0d3GNfsv9sCbqhBR4xa58lzgMgKoVGvYMzOKrx
	/X0oZZ8wjP7OpQjeVSzNwfmOndnarVBZ1H1n+dhKSGXziM9UPSf4jguj7MLia0zVlg450IFsW3/rw
	wxBQrk4ENNyv/dn46Puw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itTWF-0004yg-HO; Mon, 20 Jan 2020 09:38:51 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itTW5-0004yA-Fz
 for ath10k@lists.infradead.org; Mon, 20 Jan 2020 09:38:48 +0000
Received: by mail-ot1-x343.google.com with SMTP id m2so23273127otq.3
 for <ath10k@lists.infradead.org>; Mon, 20 Jan 2020 01:38:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OGx5epeHT0kkqqhXwWE6tVFs4qkiy7wTnADsEpbNyAs=;
 b=HK7KNgdfTLelIOF+cX8nVHJrWyUJDx0QxEAzHeTE1CddyOPMqqrMYuM/t/etSBiOgn
 TogU7ouyy6Q1dZRSOOmDwoNLZhG8ySyJp7a4D5Zv7r/StMTnSJyL4yRKHl/63L5gadcd
 4y7nWqnQj3sUvjeryEI89l3cN+SoHSlpGMixpKbNkHLXak5bcNHouoh9+vjTbTp6xNf2
 1eRRGNcR4guR73PiXa5/UzMbe3lm3A2ezqeZKHlRCYi826h/zJhnzVQE3wkXRVu7p077
 MZ0X40V+E05pTQ6a/ziNgf2mg3PQ/jI+I0CIWRLH57RR6OGuyi+hXdkq7AEjvudd2kJh
 VxJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OGx5epeHT0kkqqhXwWE6tVFs4qkiy7wTnADsEpbNyAs=;
 b=VQobP0rKkfUHSIXxVptLwoeoubUuCmAcYVNBAR45rj09NQH8+ktGQZORoINEDfYisj
 ioZ4TCDoNYTAHIeZ0OC5SqHNpEF44efsGGxq+jzqeE0hCnW3LM5R9J8oI+NBCbfuQILt
 fbqsyXUprBKn4vDJ5WAtAHoYpn6niykb6fHsHBdDEckhpOK6W3nK55/l5eyBR9Uj6d8T
 HGIrAZlitXW7j8yj9QcZ42xGqPCYVKLZpNWcSYRbVKdi6/U8D8JWTd8w1AwqJTunXLio
 IqoKNRzwwYuYZo4/u+JmyjF4z80ho0VRIS4psFlxhZQQZO1Kr2QlkIw4z2d6Ys13v99g
 PLuw==
X-Gm-Message-State: APjAAAV911KF/N24bV8Iv3+/B/+wRv1lngNG6IkIbh+xwZwFUsLrAGm+
 89TSoY3Ys5tJw+cIdlei0hcsyVU+J68L1TEDWgQ=
X-Google-Smtp-Source: APXvYqziXUkIuUsvMaoNGPcSSNqplYQYxD66npm+ICcXdXoZvj25+ULm9HsohWaayAdzszX3fx2xHWnDlOrIvN3gbwM=
X-Received: by 2002:a9d:6314:: with SMTP id q20mr15415081otk.3.1579513120155; 
 Mon, 20 Jan 2020 01:38:40 -0800 (PST)
MIME-Version: 1.0
References: <20200108031957.22308-1-wgong@codeaurora.org>
 <20200108031957.22308-2-wgong@codeaurora.org>
 <CAMrEMU-UTtxJ-eMoNEBONXJCTpaZCcGc8Mu34wqQNXkpVz=gJA@mail.gmail.com>
 <55ab2d64e78d51a9da587f276899e08b@codeaurora.org>
 <a1950ee2cb8dd9fc10e7d31bf18c9c95@codeaurora.org>
In-Reply-To: <a1950ee2cb8dd9fc10e7d31bf18c9c95@codeaurora.org>
From: Justin Capella <justincapella@gmail.com>
Date: Mon, 20 Jan 2020 01:38:28 -0800
Message-ID: <CAMrEMU8DmXBGGU-WNd9bQAVVkHF6SCO7c_wv+dyH9D7KFOB8jw@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] ath10k: add refcount for ath10k_core_restart
To: Wen Gong <wgong@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_013842_587665_57C28443 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [justincapella[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Ok thanks. I am still trying to familiarize myself with ath10k. A
couple things come to mind:

firstly recently there was a patch that set stations back to
associated during recovery, do you know if the branch you're working
against includes that? I will try to figure that out myself but it's
at least worth considering.

If I remember correctly, the sdio rx involves peeking and checking to
see if the frame/packet continues/has more. In the case of firmware
recovery/reconfig I think current code enables all sorts of debug
pktlog stuff, historically it was maybe used as a hack to check for hw
changes... But I mention it because I think what might be happening in
some cases is fw crash follows a frame that would continue/extend,
which is messing with the content and act_len (maybe?)

I also noticed that with aggregation I wind up getting a
deauth/dissasoc followed by mlme delete sta/peer/key.

I think a retry count could be useful but what do you think of maybe
using an event / timeout?



On Thu, Jan 16, 2020 at 11:19 PM Wen Gong <wgong@codeaurora.org> wrote:
>
> On 2020-01-10 02:29, Wen Gong wrote:
> > On 2020-01-08 20:02, Justin Capella wrote:
> >> I think this might break the "wedged" state.
> >>
> >> Would simply not taking action unless STATE ON avoid the problems with
> >> multiple calls to _restart? ie:
> >>
> >
> > ath10k_core_restart is one part of the recovery process,
> > after ath10k_core_restart, it has other things do in
> > mac80211/ath10k...,
> > it need to make sure all the recovery
> > finished(ath10k_reconfig_complete),
> > then the next recovery can start from ath10k_core_restart.
>
> Here is some log for the 2 recovery run meanwhile and failed.
> It means if 2 recovery run meanwhile, recovery will easy failed.
>
> log steps:
> 1. simulate crash and then firmware crash and enter ath10k_core_restart
> with state=ATH10K_STATE_ON
> 2. it happened "exceeds length, start recovery" and queued the 2nd
> recovery
> 3. mac80211 start to recovery ath10k and state changed from
> ATH10K_STATE_RESTARTING to ATH10K_STATE_RESTARTED
> 4. enter ath10k_core_restart for 2nd recovery and state changed from
> ATH10K_STATE_RESTARTED to ATH10K_STATE_WEDGED
> 5. mac80211 start to drv_add_interface but failed because
> ath10k_htc_send return -ECOMM for ATH10K_STATE_WEDGED
> 6. mac80211 start to ieee80211_handle_reconfig_failure because
> drv_add_interface failed so the recovery failed.
>
>
> kworker/0:1 13360 [000]  2889.292173:            ath10k:ath10k_log_err:
> ath10k_sdio mmc1:0001:1 firmware register dump:
> kworker/u16:3 11486 [001]  2889.292686:
> ath10k:ath10k_log_warn: ath10k_sdio mmc1:0001:1 ath10k_core_restart =>
> state :1
> kworker/0:1 13360 [000]  2889.292760:           ath10k:ath10k_log_warn:
> ath10k_sdio mmc1:0001:1 payload length 57005 exceeds max htc length:
> 4088
> kworker/0:1 13360 [000]  2889.292805:           ath10k:ath10k_log_warn:
> ath10k_sdio mmc1:0001:1 exceeds length, start recovery
> kworker/1:3 14712 [001]  2889.850142:            ath10k:ath10k_log_dbg:
> ath10k_sdio mmc1:0001:1 wmi tlv init
> kworker/1:3 14712 [001]  2889.866953:            ath10k:ath10k_log_dbg:
> ath10k_sdio mmc1:0001:1 wmi tlv scan prob req oui
> kworker/u16:3 11486 [001]  2889.888801:
> ath10k:ath10k_log_warn: ath10k_sdio mmc1:0001:1 ath10k_core_restart => 2
> state :3
> kworker/u16:3 11486 [001]  2889.888808:
> ath10k:ath10k_log_warn: ath10k_sdio mmc1:0001:1 device is wedged, will
> not restart
> kworker/1:3 14712 [001]  2889.889220:           ath10k:ath10k_log_warn:
> ath10k_sdio mmc1:0001:1 ath10k_add_interface => state :4
> kworker/1:3 14712 [001]  2889.889229:            ath10k:ath10k_log_dbg:
> ath10k_sdio mmc1:0001:1 mac create vdev 0 map f
> kworker/1:3 14712 [001]  2889.889240:            ath10k:ath10k_log_dbg:
> ath10k_sdio mmc1:0001:1 mac vdev create 0 (add interface) type 2 subtype
> 0 bcnmode per-skb
> kworker/1:3 14712 [001]  2889.889247:            ath10k:ath10k_log_dbg:
> ath10k_sdio mmc1:0001:1 wmi tlv vdev create
> kworker/1:3 14712 [001]  2889.889252:            ath10k:ath10k_wmi_cmd:
> ath10k_sdio mmc1:0001:1 id 20481 len 28
> kworker/1:3 14712 [001]  2889.889260:           ath10k:ath10k_log_warn:
> ath10k_sdio mmc1:0001:1 failed to create WMI vdev 0: -70
>
> ieee80211_reconfig will ieee80211_handle_reconfig_failure because
> drv_add_interface failed.
> so the recovery failed.
>
> detail log for fail
> [ 2889.410150] ieee80211 phy0: Hardware restart was requested
> [ 2889.889281] drv_add_interface ret:-70
> [ 2889.889310] ------------[ cut here ]------------
> [ 2889.889547] WARNING: CPU: 1 PID: 14712 at
> /mnt/host/source/src/third_party/kernel/v4.19/net/mac80211/util.c:2072
> ieee80211_reconfig+0x189c/0x19a4 [mac80211]
> [ 2889.889559] Modules linked in: rfcomm uinput cros_ec_rpmsg mtk_dip
> mtk_vcodec_enc mtk_seninf mtk_vcodec_dec mtk_mdp3 mtk_fd mtk_cam_isp
> mtk_vcodec_common videobuf2_dma_contig videobuf2_memops v4l2_mem2mem
> videobuf2_v4l2 videobuf2_common hci_uart btqca bluetooth
> hid_google_hammer ecdh_generic ov8856 dw9768 mtk_scp mtk_rpmsg ov02a10
> rpmsg_core v4l2_fwnode mtk_scp_ipi nf_nat_tftp nf_conntrack_tftp
> nf_nat_ftp nf_conntrack_ftp esp6 ah6 xfrm6_mode_tunnel
> xfrm6_mode_transport xfrm4_mode_tunnel xfrm4_mode_transport ip6t_REJECT
> ip6t_ipv6header ipt_MASQUERADE fuse iio_trig_sysfs cros_ec_sensors_ring
> cros_ec_light_prox cros_ec_sensors cros_ec_sensors_sync
> industrialio_triggered_buffer kfifo_buf cros_ec_sensors_core ath10k_sdio
> ath10k_core ath mac80211 lzo_rle lzo_compress zram cfg80211 ax88179_178a
> usbnet mii
> [ 2889.889689]  joydev
> [ 2889.889709] CPU: 1 PID: 14712 Comm: kworker/1:3 Tainted: G        W
>        4.19.95 #139
> [ 2889.889720] Hardware name: MediaTek krane sku176 board (DT)
> [ 2889.889776] Workqueue: events_freezable ieee80211_restart_work
> [mac80211]
> [ 2889.889792] pstate: 60000005 (nZCv daif -PAN -UAO)
> [ 2889.889849] pc : ieee80211_reconfig+0x189c/0x19a4 [mac80211]
> [ 2889.889908] lr : ieee80211_reconfig+0x189c/0x19a4 [mac80211]
> [ 2889.889918] sp : ffffff8012743cc0
> [ 2889.889927] x29: ffffff8012743d40 x28: ffffffa381e11f40
> [ 2889.889941] x27: ffffffa381ad4018 x26: 0000000000000000
> [ 2889.889954] x25: 00000000ffffffba x24: 0000000000000004
> [ 2889.889968] x23: ffffffe3b52a2210 x22: ffffffe3c3ae12b8
> [ 2889.889981] x21: ffffffe3c3ae12b8 x20: ffffffe3b4e80900
> [ 2889.889995] x19: ffffffe3c3ae0800 x18: 000000000003b900
> [ 2889.890008] x17: 000000000000003c x16: ffffffa3815c1540
> [ 2889.890021] x15: 0000000000000006 x14: ffff001000000600
> [ 2889.890034] x13: 00000000002ae45c x12: 0000000000000000
> [ 2889.890047] x11: 0000000000000001 x10: 0000000000000007
> [ 2889.890061] x9 : c6cfad4ea7c13400 x8 : c6cfad4ea7c13400
> [ 2889.890074] x7 : 0000000000000000 x6 : ffffffa381f6cd0c
> [ 2889.890087] x5 : 0000000000000000 x4 : 0000000000000000
> [ 2889.890100] x3 : 000000000003e2a1 x2 : fffffffffffff704
> [ 2889.890113] x1 : 0000000000000000 x0 : 0000000000000024
> [ 2889.890127] Call trace:
> [ 2889.890185]  ieee80211_reconfig+0x189c/0x19a4 [mac80211]
> [ 2889.890236]  ieee80211_restart_work+0xa0/0xd0 [mac80211]
> [ 2889.890258]  process_one_work+0x210/0x418
> [ 2889.890273]  worker_thread+0x234/0x3dc
> [ 2889.890288]  kthread+0x120/0x130
> [ 2889.890303]  ret_from_fork+0x10/0x18
> [ 2889.890314] ---[ end trace d605ce58e22a44f2 ]---
> [ 2889.898956] wlan0: deauthenticating from c4:04:15:3b:e0:38 by local
> choice (Reason: 3=DEAUTH_LEAVING)
> [ 2889.898995] ------------[ cut here ]------------
> [ 2889.899006] wlan0:  Failed check-sdata-in-driver check, flags: 0x0
> [ 2889.899289] WARNING: CPU: 1 PID: 14712 at
> /mnt/host/source/src/third_party/kernel/v4.19/net/mac80211/driver-ops.h:19
> ieee80211_bss_info_change_notify+0x23c/0x24c [mac80211]
> [ 2889.899303] Modules linked in: rfcomm uinput cros_ec_rpmsg mtk_dip
> mtk_vcodec_enc mtk_seninf mtk_vcodec_dec mtk_mdp3 mtk_fd mtk_cam_isp
> mtk_vcodec_common videobuf2_dma_contig videobuf2_memops v4l2_mem2mem
> videobuf2_v4l2 videobuf2_common hci_uart btqca bluetooth
> hid_google_hammer ecdh_generic ov8856 dw9768 mtk_scp mtk_rpmsg ov02a10
> rpmsg_core v4l2_fwnode mtk_scp_ipi nf_nat_tftp nf_conntrack_tftp
> nf_nat_ftp nf_conntrack_ftp esp6 ah6 xfrm6_mode_tunnel
> xfrm6_mode_transport xfrm4_mode_tunnel xfrm4_mode_transport ip6t_REJECT
> ip6t_ipv6header ipt_MASQUERADE fuse iio_trig_sysfs cros_ec_sensors_ring
> cros_ec_light_prox cros_ec_sensors cros_ec_sensors_sync
> industrialio_triggered_buffer kfifo_buf cros_ec_sensors_core ath10k_sdio
> ath10k_core ath mac80211 lzo_rle lzo_compress zram cfg80211 ax88179_178a
> usbnet mii
> [ 2889.899438]  joydev
> [ 2889.899475] CPU: 1 PID: 14712 Comm: kworker/1:3 Tainted: G        W
>        4.19.95 #139
> [ 2889.899486] Hardware name: MediaTek krane sku176 board (DT)
> [ 2889.899545] Workqueue: events_freezable ieee80211_restart_work
> [mac80211]
> [ 2889.899561] pstate: 60000005 (nZCv daif -PAN -UAO)
> [ 2889.899612] pc : ieee80211_bss_info_change_notify+0x23c/0x24c
> [mac80211]
> [ 2889.899664] lr : ieee80211_bss_info_change_notify+0x23c/0x24c
> [mac80211]
> [ 2889.899674] sp : ffffff8012743820
> [ 2889.899686] x29: ffffff8012743860 x28: ffffffa381e11f40
> [ 2889.899700] x27: ffffffa381ad4018 x26: 0000000000000000
> [ 2889.899712] x25: 0000000000000000 x24: 00000000000000c0
> [ 2889.899725] x23: 0000000000000003 x22: ffffff80127438fc
> [ 2889.899738] x21: ffffffe3b4e80900 x20: 0000000000020000
> [ 2889.899751] x19: ffffffe3c3ae0800 x18: 000000000003c500
> [ 2889.899764] x17: 000000000000003c x16: ffffffa3815c1540
> [ 2889.899776] x15: 0000000000000006 x14: ffff001000000600
> [ 2889.899789] x13: 00000000002ae46e x12: 0000000000000000
> [ 2889.899802] x11: 0000000000000000 x10: 0000000000000000
> [ 2889.899814] x9 : c6cfad4ea7c13400 x8 : c6cfad4ea7c13400
> [ 2889.899827] x7 : 0000000000000000 x6 : ffffffa381f6cd1e
> [ 2889.899840] x5 : 0000000000000000 x4 : 0000000000000000
> [ 2889.899857] x3 : 000000000003d73b x2 : ffffffe3fff05918
> [ 2889.899870] x1 : ffffffe3ffefca08 x0 : 0000000000000036
> [ 2889.899883] Call trace:
> [ 2889.899935]  ieee80211_bss_info_change_notify+0x23c/0x24c [mac80211]
> [ 2889.899996]  ieee80211_recalc_ps_vif+0x3c/0x48 [mac80211]
> [ 2889.900060]  ieee80211_set_disassoc+0x84/0x43c [mac80211]
> [ 2889.900142]  ieee80211_mgd_deauth+0x4e0/0x574 [mac80211]
> [ 2889.900201]  ieee80211_deauth+0x24/0x30 [mac80211]
> [ 2889.900285]  cfg80211_mlme_deauth+0x198/0x26c [cfg80211]
> [ 2889.900337]  cfg80211_mlme_down+0x70/0x98 [cfg80211]
> [ 2889.900393]  cfg80211_disconnect+0x214/0x250 [cfg80211]
> [ 2889.900441]  __cfg80211_leave+0xc8/0x14c [cfg80211]
> [ 2889.900489]  cfg80211_netdev_notifier_call+0x41c/0x668 [cfg80211]
> [ 2889.900515]  raw_notifier_call_chain+0x48/0x70
> [ 2889.900540]  call_netdevice_notifiers_info+0x40/0x74
> [ 2889.900556]  __dev_close_many+0x6c/0x11c
> [ 2889.900572]  dev_close_many+0x70/0x100
> [ 2889.900587]  dev_close+0x4c/0x80
> [ 2889.900636]  cfg80211_shutdown_all_interfaces+0x50/0xcc [cfg80211]
> [ 2889.900697]  ieee80211_handle_reconfig_failure+0x90/0x9c [mac80211]
> [ 2889.900761]  ieee80211_reconfig+0x18dc/0x19a4 [mac80211]
> [ 2889.900815]  ieee80211_restart_work+0xa0/0xd0 [mac80211]
> [ 2889.900835]  process_one_work+0x210/0x418
> [ 2889.900855]  worker_thread+0x234/0x3dc
> [ 2889.900871]  kthread+0x120/0x130
> [ 2889.900890]  ret_from_fork+0x10/0x18
> [ 2889.900905] ---[ end trace d605ce58e22a44f3 ]---

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
