Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD2091930
	for <lists+ath10k@lfdr.de>; Sun, 18 Aug 2019 21:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5933xJbqVBbGxY5meRM0AI3ddB+fiJbLn1v5Vy6csz8=; b=bVs/UPdfpeneRD
	qhnaTsZww6lzcP0IKV4rhy08W2exVuiOrlAk051+mq/CCBY/Km/Lso2fcfK2C5lvsomdqfNJ3m4jK
	HmmIrH2P+WRAIF3WkVt+lg60frVONFS5fVXX/tmVycR0FDPombx59Kn6QnBZ1tkXH9zkD8DHeqGyL
	HMdY+uOW4o1N5+x236V1CqtR1W46rnHPQrmrgxuq8m/Ijdrau9B9krztgL3IklfHI3tI12X6/ai6O
	XGI8tPiji3BuhMTlHDPCZv6/qnApFtksiYF+C+ALFZt1KaIStNMRyacS0DBfQuBmYs8rFncJ0RLGo
	W2ZyQEZyY9dvGgp97YhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzQZE-0006rd-3x; Sun, 18 Aug 2019 19:10:16 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzQZ7-0005hQ-Ft
 for ath10k@lists.infradead.org; Sun, 18 Aug 2019 19:10:12 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 558E8A168F;
 Sun, 18 Aug 2019 21:10:01 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id DcJ8SqyB3S_Z; Sun, 18 Aug 2019 21:09:50 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: kvalo@codeaurora.org
Subject: [PATCH] ath10k: Check if station exists before forwarding tx airtime
 report
Date: Sun, 18 Aug 2019 21:09:20 +0200
Message-Id: <20190818190920.22813-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_121009_835777_59450806 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mpubbise@codeaurora.org, Hauke Mehrtens <hauke@hauke-m.de>,
 hannu.nyman@iki.fi, linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

It looks like the FW on QCA9984 already reports the tx airtimes before
the station is added to the peer entry. The peer entry is created in
ath10k_peer_map_event() just with the vdev_id and the ethaddr, but
not with a station entry, this is added later in ath10k_peer_create() in
callbacks from mac80211.

When there is no sta added to the peer entry, this function fails
because it calls ieee80211_sta_register_airtime() with NULL.

This was reported in OpenWrt some time ago:
https://bugs.openwrt.org/index.php?do=details&task_id=2414

This commit should fix this crash:
[   75.991714] Unable to handle kernel paging request at virtual address fffff9e8
[   75.991756] pgd = c0204000
[   75.997955] [fffff9e8] *pgd=5fdfd861, *pte=00000000, *ppte=00000000
[   76.000537] Internal error: Oops: 37 [#1] SMP ARM
[   76.006686] Modules linked in: pppoe ppp_async ath10k_pci ath10k_core ath pptp pppox ppp_mppe ppp_generic mac80211 iptable_nat ipt_REJECT ipt_MASQUERADE cfg80211 xt_time xt_tcpudp xt_tcpmss xt_statistic xt_state xt_recent xt_nat xt_multiport xt_mark xt_mac xt_limit xt_length xt_hl xt_helper xt_esp xt_ecn xt_dscp xt_conntrack xt_connmark xt_connlimit xt_connbytes xt_comment xt_TCPMSS xt_REDIRECT xt_LOG xt_HL xt_FLOWOFFLOAD xt_DSCP xt_CT xt_CLASSIFY usbserial slhc nf_reject_ipv4 nf_nat_redirect nf_nat_masquerade_ipv4 nf_conntrack_ipv4 nf_nat_ipv4 nf_log_ipv4 nf_flow_table_hw nf_flow_table nf_defrag_ipv4 nf_conntrack_rtcache nf_conntrack_netlink iptable_raw iptable_mangle iptable_filter ipt_ah ipt_ECN ip_tables crc_ccitt compat chaoskey fuse sch_cake sch_tbf sch_ingress sch_htb sch_hfsc em_u32 cls_u32
[   76.059974]  cls_tcindex cls_route cls_matchall cls_fw cls_flow cls_basic act_skbedit act_mirred ledtrig_usbport xt_set ip_set_list_set ip_set_hash_netportnet ip_set_hash_netport ip_set_hash_netnet ip_set_hash_netiface ip_set_hash_net ip_set_hash_mac ip_set_hash_ipportnet ip_set_hash_ipportip ip_set_hash_ipport ip_set_hash_ipmark ip_set_hash_ip ip_set_bitmap_port ip_set_bitmap_ipmac ip_set_bitmap_ip ip_set nfnetlink ip6table_nat nf_conntrack_ipv6 nf_defrag_ipv6 nf_nat_ipv6 ip6t_NPT ip6t_MASQUERADE nf_nat_masquerade_ipv6 nf_nat nf_conntrack nf_log_ipv6 nf_log_common ip6table_mangle ip6table_filter ip6_tables ip6t_REJECT x_tables nf_reject_ipv6 msdos ip_gre gre ifb sit tunnel4 ip_tunnel tun vfat fat hfsplus cifs nls_utf8 nls_iso8859_15 nls_iso8859_1 nls_cp850 nls_cp437 nls_cp1250 sha1_generic md5 md4
[   76.130634]  usb_storage leds_gpio xhci_plat_hcd xhci_pci xhci_hcd dwc3 dwc3_of_simple ohci_platform ohci_hcd phy_qcom_dwc3 ahci ehci_platform sd_mod ahci_platform libahci_platform libahci libata scsi_mod ehci_hcd gpio_button_hotplug ext4 mbcache jbd2 exfat crc32c_generic
[   76.154772] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 4.14.132 #0
[   76.177001] Hardware name: Generic DT based system
[   76.182990] task: c0b06d80 task.stack: c0b00000
[   76.187832] PC is at ieee80211_sta_register_airtime+0x24/0x148 [mac80211]
[   76.192211] LR is at ath10k_htt_t2h_msg_handler+0x678/0x10f4 [ath10k_core]
[   76.199052] pc : [<bf75bfac>]    lr : [<bf83e8b0>]    psr: a0000113
[   76.205820] sp : c0b01d54  ip : 00000002  fp : bf869c0c
[   76.211981] r10: 0000003c  r9 : dbdca138  r8 : 00060002
[   76.217192] r7 : 00000000  r6 : dabe1150  r5 : 00000000  r4 : dbdc95c0
[   76.222401] r3 : 00000000  r2 : 00060002  r1 : 00000000  r0 : 00000000
[   76.229003] Flags: NzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
[   76.235509] Control: 10c5787d  Table: 5c94006a  DAC: 00000051
[   76.242716] Process swapper/0 (pid: 0, stack limit = 0xc0b00210)
[   76.248446] Stack: (0xc0b01d54 to 0xc0b02000)
[   76.254532] 1d40:                                              dbdc95c0 00000000 dabe1150
[   76.258808] 1d60: 00000001 dabe1150 dbdca138 0000003c bf869c0c bf83e8b0 00000002 c0314b10
[   76.266969] 1d80: dbdc9c70 00000001 00000001 dabe114c 00010000 00000000 dbdcd724 bf88f3d8
[   76.275126] 1da0: c0310d28 db393c00 dbdc95c0 00000000 c0b01dd0 c07fb4c4 dbdcd724 00000001
[   76.283286] 1dc0: 00000022 bf88b09c db393c00 00000022 c0b01dd0 c0b01dd0 00000000 dbdcc5c0
[   76.291445] 1de0: bf88f04c dbdcd654 dbdcd71c dbdc95c0 00000014 dbdcd724 dbdcc5c0 00000005
[   76.299605] 1e00: 0004b400 bf85c360 00000000 bf87101c c0b01e24 00000006 00000000 dbdc95c0
[   76.307764] 1e20: 00000001 00000040 0000012c c0b01e80 1cf51000 bf85c448 dbdcd440 dbdc95c0
[   76.315925] 1e40: dbdca440 ffffa880 00000040 bf88cb68 dbdcd440 00000001 00000040 ffffa880
[   76.324084] 1e60: c0b02d00 c06d72e0 dd990080 c0a3f080 c0b255dc c0b047e4 c090afac c090e80c
[   76.332244] 1e80: c0b01e80 c0b01e80 c0b01e88 c0b01e88 dd4cc200 00000000 00000003 c0b0208c
[   76.340405] 1ea0: c0b02080 40000003 ffffe000 00000100 c0b02080 c03015c8 00000000 00000001
[   76.348564] 1ec0: dd408000 c0a38210 c0b2c7c0 0000000a ffffa880 c0b02d00 c07fb764 00200102
[   76.356723] 1ee0: dd4cc268 c0a3e414 00000000 00000000 00000001 dd408000 de803000 00000000
[   76.364883] 1f00: 00000000 c03247cc c0a3e414 c0368f1c c0b03f60 c0b153cc de80200c de802000
[   76.373042] 1f20: c0b01f48 c0301488 c0308630 60000013 ffffffff c0b01f7c 00000000 c0b00000
[   76.381204] 1f40: 00000000 c030c08c 00000001 00000000 00000000 c0315180 ffffe000 c0b03cc0
[   76.389363] 1f60: c0b03c70 00000000 00000000 c0a2da28 00000000 00000000 c0b01f90 c0b01f98
[   76.397522] 1f80: c030862c c0308630 60000013 ffffffff 00000051 00000000 ffffe000 c035dd18
[   76.405681] 1fa0: 000000bf c0b03c40 00000000 c0b2c000 dddfce80 c035e060 c0b2c040 c0a00cf4
[   76.413842] 1fc0: ffffffff ffffffff 00000000 c0a0067c c0a2da28 00000000 00000000 c0b2c1d4
[   76.422001] 1fe0: c0b03c5c c0a2da24 c0b07ee0 4220406a 512f04d0 4220807c 00000000 00000000
[   76.430335] [<bf75bfac>] (ieee80211_sta_register_airtime [mac80211]) from [<00000002>] (0x2)
[   76.438314] Code: e1cd81f0 e1a08002 e1cda1f8 e58de020 (e5102618)
[   76.446965] ---[ end trace 227a38ade964d642 ]---

Fixes: bb31b7cb106c ("ath10k: report tx airtime provided by fw")
Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 drivers/net/wireless/ath/ath10k/htt_rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/ath/ath10k/htt_rx.c b/drivers/net/wireless/ath/ath10k/htt_rx.c
index 83a7fb68fd24..7f3ec7fa5a44 100644
--- a/drivers/net/wireless/ath/ath10k/htt_rx.c
+++ b/drivers/net/wireless/ath/ath10k/htt_rx.c
@@ -2639,7 +2639,7 @@ static void ath10k_htt_rx_tx_compl_ind(struct ath10k *ar,
 		spin_lock_bh(&ar->data_lock);
 
 		peer = ath10k_peer_find_by_id(ar, peer_id);
-		if (!peer) {
+		if (!peer || !peer->sta) {
 			spin_unlock_bh(&ar->data_lock);
 			rcu_read_unlock();
 			continue;
-- 
2.20.1


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
