Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDF8BB2A1
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 13:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y+yOY1Ck6uLlYlOLFQh3Br0OdcPGhh3y0dfrQ5aabwE=; b=eRFq52IDMW3Caj7Wi+ZPSHerr
	JxqOV6B7gBV2273Mfflgrx4cF5VrcZ2k1UtCEcJQwPIo5YRlQtptwj5/mqeuKMn8+AoUgdGDZU8UN
	zB7kiqGCVwHRZhdn2tqcNCC73iSvEJQdkyTzUT+5jomvdAwK3/8Wp6sS9VFObStqVqXruE7/1w291
	stzuhwdVNOxM6RpoDZBEbalK4XXPbyn50oHRDaRAPv8P2yiDYLPYIKapK96ZizhoUdq1lV2456y7W
	Agd2NVNAs5VXdoVLefF4s5QIVhQ+WMwG9rhM56R5ePZ3hIf/sSLH4BLUPWz8VB/YuPmzLiiuMwWEg
	lWQuZpe4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCME8-0007K6-Gc; Mon, 23 Sep 2019 11:09:56 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCME4-0007Jn-JL
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 11:09:54 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 419C6602DD; Mon, 23 Sep 2019 11:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569236992;
 bh=cs1UABEg+q3QgX9X/Vwo0FMa11SB5zMKRNuwLHmOrc8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UFn2RcOt9+V0rHP27tDVKyxB9JCikYdmTEDj+PZw3iAeZ+YwzeAjtKEMCbpybCYu+
 EdP8g9g125GE57edLv6jrNsBKZx4E9iuod+ECzg4lhZu/V0rsfPk0nwQi7VelcmGwg
 85Yuzj+GvkImXd/lB29QPupdaMgQsULhs1NOCXA0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id A9366601D4;
 Mon, 23 Sep 2019 11:09:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569236991;
 bh=cs1UABEg+q3QgX9X/Vwo0FMa11SB5zMKRNuwLHmOrc8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=dZaUE1CPCnFeg9qI77WSXLex1DumoWRmZoPzU3H0tKqhNInIqN/7krGpcPSoV5uFd
 XLd69ZcCgqupm4b+CXgxslRLS968JOUVx3Ht95tbu1vwR1vGVqkKPs1unvX8aDeZkh
 fQgtnWWLNuc8SndOvfdd6W0HliFzioO5PMLq5GiU=
MIME-Version: 1.0
Date: Mon, 23 Sep 2019 19:09:51 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: add fw coredump for sdio when firmware assert
In-Reply-To: <874l15c20j.fsf@codeaurora.org>
References: <1567132338-7407-1-git-send-email-wgong@codeaurora.org>
 <874l15c20j.fsf@codeaurora.org>
Message-ID: <6b7927f633cb7cbe2ba0d958d7d06f9a@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_040952_684710_4020C924 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-09-21 19:38, Kalle Valo wrote:
> 
> What's wrong with ath10k_sdio_hif_diag_read()? AFAICS this whole
> function duplicates just what it does.

ath10k_sdio_hif_diag_read's buffer size is limit,
and the dump memory/register's buffer size is larger than the diag 
window's limit,
if use it directly will trigger crash like this for every time.
[  149.947624] ath10k_sdio mmc1:0001:1: ath10k_sdio_hif_diag_read 
buf_len :4
[  149.954741] ath10k_sdio mmc1:0001:1: ath10k_sdio_hif_diag_read 
buf_len :240
[  151.005143] Unable to handle kernel paging request at virtual address 
ffffffc0080ab980
[  151.013077] Mem abort info:
[  151.015866]   ESR = 0x96000045
[  151.018918]   Exception class = DABT (current EL), IL = 32 bits
[  151.024830]   SET = 0, FnV = 0
[  151.027880]   EA = 0, S1PTW = 0
[  151.031016] Data abort info:
[  151.033892]   ISV = 0, ISS = 0x00000045
[  151.037723]   CM = 0, WnR = 1
[  151.040691] swapper pgtable: 4k pages, 39-bit VAs, pgdp = 
0000000073b23692
[  151.047560] [ffffffc0080ab980] pgd=0000000000000000, 
pud=0000000000000000
[  151.054354] Internal error: Oops: 96000045 [#1] PREEMPT SMP
[  151.059925] Modules linked in: ath10k_sdio ath10k_core rfcomm uinput 
cros_ec_rpmsg mtk_cam_isp ath mac80211 mtk_fd hci_uart btqca bluetooth 
mtk_scp mtk_rpmsg rpmsg_core ecdh_generic mtk_scp_ipi bridge stp llc 
nf_nat_tftp nf_conntrack_tftp nf_nat_ftp nf_conntrack_ftp esp6 ah6 
xfrm6_mode_tunnel xfrm6_mode_transport xfrm4_mode_tunnel 
xfrm4_mode_transport ip6t_REJECT ip6t_ipv6header ipt_MASQUERADE fuse 
cfg80211 iio_trig_sysfs cros_ec_sensors_sync cros_ec_sensors 
cros_ec_sensors_ring industrialio_triggered_buffer kfifo_buf 
cros_ec_sensors_core lzo_rle lzo_compress zram asix usbnet mii joydev 
[last unloaded: ath10k_core]
[  151.114537] Process swapper/0 (pid: 0, stack limit = 
0x00000000e30dc665)
[  151.121238] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 4.19.72 #11
[  151.127327] Hardware name: MediaTek kukui rev1 board (DT)
[  151.132724] pstate: 20000085 (nzCv daIf -PAN -UAO)
[  151.137525] pc : __memcpy+0x110/0x180
[  151.141193] lr : swiotlb_tbl_unmap_single+0x84/0x150
[  151.146151] sp : ffffff8008003c60
[  151.149462] x29: ffffff8008003c90 x28: ffffffa2a9611f38
[  151.154774] x27: ffffffa2a92cc018 x26: 0000000000000000
[  151.160087] x25: ffffffa2a90b8000 x24: 0000000000000001
[  151.165399] x23: ffffffa2a975e000 x22: 0000000000001400
[  151.170710] x21: 0000000000000000 x20: 00000000fc7ff000
[  151.176021] x19: 00000000000000f0 x18: 0000000000000020
[  151.181332] x17: 0000000000000000 x16: 0000000000000000
[  151.186643] x15: 00000000ffffffff x14: 0000000000000000
[  151.191955] x13: 0000000000000000 x12: 0000000000000000
[  151.197266] x11: 0000000000000000 x10: 0000000000000000
[  151.202578] x9 : 0000000000000000 x8 : 0000000000000000
[  151.207890] x7 : 0000000000000000 x6 : ffffffc0080ab980
[  151.213202] x5 : ffffff8016ffbdc8 x4 : 0000000000000000
[  151.218514] x3 : 0000000000000002 x2 : 0000000000000070
[  151.223825] x1 : fffffff37c7ff040 x0 : ffffffc0080ab980
[  151.229138] Call trace:
[  151.231585]  __memcpy+0x110/0x180
[  151.234899]  unmap_single+0x6c/0x84
[  151.238386]  swiotlb_unmap_sg_attrs+0x54/0x80
[  151.242744]  __swiotlb_unmap_sg_attrs+0xa0/0xb8
[  151.247277]  msdc_unprepare_data+0x6c/0x84
[  151.251372]  msdc_request_done+0x58/0x84
[  151.255292]  msdc_data_xfer_done+0x1a0/0x1c8
[  151.259559]  msdc_irq+0x12c/0x17c
[  151.262876]  __handle_irq_event_percpu+0xe4/0x250
[  151.267578]  handle_irq_event_percpu+0x28/0x68
[  151.272018]  handle_irq_event+0x48/0x78
[  151.275853]  handle_fasteoi_irq+0xd0/0x1a0
[  151.279948]  __handle_domain_irq+0x84/0xc4
[  151.284042]  gic_handle_irq+0x124/0x1a4
[  151.287875]  el1_irq+0xb0/0x128
[  151.291016]  cpuidle_enter_state+0x298/0x328
[  151.295282]  cpuidle_enter+0x30/0x40
[  151.298856]  do_idle+0x190/0x270
[  151.302081]  cpu_startup_entry+0x24/0x28
[  151.306005]  rest_init+0xd4/0xe0
[  151.309233]  start_kernel+0x30c/0x38c
[  151.312896] Code: a8c12027 a8c12829 a8c1302b a8c1382d (a88120c7)
[  151.318987] ---[ end trace 4d779fa7753769c5 ]---
[  151.342768] Kernel panic - not syncing: Fatal exception in interrupt
[  151.349134] SMP: stopping secondary CPUs
[  151.353074] Kernel Offset: 0x22a0400000 from 0xffffff8008000000
[  151.358991] CPU features: 0x0,2188200c
[  151.362735] Memory Limit: none


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
