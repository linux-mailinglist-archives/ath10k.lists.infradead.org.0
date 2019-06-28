Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD5359733
	for <lists+ath10k@lfdr.de>; Fri, 28 Jun 2019 11:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fmojAD4nfhjOuFZs/OStde0hSNE2y/iLLsd4zUw6N0w=; b=aBqalW7Aq4M4NUvyGwyiG6IyB
	FySsp371sY+h5pJLsXWocs5xRjUU6BFD7o5snnoXutrKEV0w/dyX+5KjFVqRDgRYnWlKLYE+z1292
	OSOt3Yd+VPIl3nL2MkAQuy0hxppLnxcppvMocyndGn6iAa/0mErJKfRBxgwjRGgqUmbZTt3XI8Cal
	b+0JVO/GApwR9Vcf52A0/GPILpbDmu+evP3Y85ElZl2IlMNHA9JwXsc92OjZd6+bOgOMotkZ5DV+f
	P9Taao4GNwsers6XMmjfoBhLPF9St7DGnNwBX5822wdaos0O6HZWOPypxV9wAaMNtopEcyr7XHiho
	YVZSUF6Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgn0Y-0004YA-Tz; Fri, 28 Jun 2019 09:17:26 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgn0R-0004Wo-2z
 for ath10k@lists.infradead.org; Fri, 28 Jun 2019 09:17:21 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9D79760AE0; Fri, 28 Jun 2019 09:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561713436;
 bh=4Zz7WkKrN9/8c/SEDEPB1WOyvAHbRz1xut6+i64tl6E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=F2HE7zZOzISFCZ+M9gf9PmtxrUHWWxJJaGvbAFhYXJ6flU4aVERXRPKp57oj1fPg6
 hexHXYP/FIq3/rWKuHZVEJaQzcAOAkTRY+M9zfA5Z2lw/8TuQRRIAoZ/yPxJLNHdYK
 mnykcLDyPNb4xMc/2MoimJe1GgElWeqtk9gyNpCs=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id EC600602DC;
 Fri, 28 Jun 2019 09:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561713436;
 bh=4Zz7WkKrN9/8c/SEDEPB1WOyvAHbRz1xut6+i64tl6E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=F2HE7zZOzISFCZ+M9gf9PmtxrUHWWxJJaGvbAFhYXJ6flU4aVERXRPKp57oj1fPg6
 hexHXYP/FIq3/rWKuHZVEJaQzcAOAkTRY+M9zfA5Z2lw/8TuQRRIAoZ/yPxJLNHdYK
 mnykcLDyPNb4xMc/2MoimJe1GgElWeqtk9gyNpCs=
MIME-Version: 1.0
Date: Fri, 28 Jun 2019 14:47:15 +0530
From: Balaji Pothunoori <bpothuno@codeaurora.org>
To: Vjaceslavs Klimovs <vklimovs@gmail.com>
Subject: Re: ath10k panic with 5.1 kernel and qca9984 on association
In-Reply-To: <CAC_j7i2peXFf5VYXxjP=FSyoArsK8fVBGYvKFfLQ=neep=-h8w@mail.gmail.com>
References: <CAC_j7i3ZAcfaQ-on5mXTKxd--erzCChKhEEU_6Yk+j2w57PeVg@mail.gmail.com>
 <8736ky6cyp.fsf@kamboji.qca.qualcomm.com>
 <CAC_j7i0eQfHu=9r8biPkpGhxrSqbYQdf2cxT0tDfnH7YgGxO6w@mail.gmail.com>
 <000001d516ec$fed6f190$fc84d4b0$@codeaurora.org>
 <dd642aad7d2f83ebb3c955a9475ed85f@codeaurora.org>
 <CAC_j7i2peXFf5VYXxjP=FSyoArsK8fVBGYvKFfLQ=neep=-h8w@mail.gmail.com>
Message-ID: <b9771ff5d5f95e136abff14d5618dffa@codeaurora.org>
X-Sender: bpothuno@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_021719_379545_2A22B94E 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Abhishek Ambure <aambure@codeaurora.org>, ath10k@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi,

Can you try with this patch ?

https://patchwork.kernel.org/patch/11021495/

Regards,
Balaji.

On 2019-06-01 23:37, Vjaceslavs Klimovs wrote:
> Hi Balaji,
> Thank you for looking into this.
> 
> 1) x86_64 AP
> 2) Compex WLE1216V5-23 or WLE1216V5-20 card with QCA9984
> 3) any kernel with commit 6ddc3860a5668808bacbfcb1f1bf50d5d7ad1956 
> present
> 4) kernel has DFS enabled and CONFIG_ATH10K_DFS_CERTIFIED=y,
> CONFIG_ATH_REG_DYNAMIC_USER_REG_HINTS=y,
> CONFIG_ATH_REG_DYNAMIC_USER_CERT_TESTING=y  set
> 5) any firmware from
> https://github.com/kvalo/ath10k-firmware/tree/master/QCA9984/hw1.0/3.9.0.2,
> see card initialization dmesg in my first message
> 6) hostapd with the following config:
> 
> interface=wlp9s0
> ctrl_interface=/var/run/hostapd
> bridge=br0
> ssid=XXXXXXXX
> hw_mode=a
> chanlist=52 100 116 132
> acs_chan_bias=116:0.1 132:0.1
> country_code=US
> ieee80211d=1
> ieee80211h=1
> ieee80211n=1
> ht_capab=[LDPC][HT40+][SHORT-GI-20][SHORT-GI-40][TX-STBC][RX-STBC1][MAX-AMSDU-7935][DSSS_CCK-40]
> ieee80211ac=1
> vht_capab=[MAX-MPDU-11454][VHT160-80PLUS80][RXLDPC][SHORT-GI-80][SHORT-GI-160][TX-STBC-2BY1][RX-STBC-1][SU-BEAMFORMER][SU-BEAMFORMEE][BF-ANTENNA-4][SOUNDING-DIMENSION-4][MU-BEAMFORMER][MAX-A-MPDU-LEN-EXP7][RX-ANTENNA-PATTERN][TX-ANTENNA-PATTERN]
> vht_oper_chwidth=1
> auth_algs=1
> wpa=2
> wpa_key_mgmt=WPA-PSK
> wpa_passphrase=XXXXXXXX
> wpa_disable_eapol_key_retries=1
> rsn_pairwise=CCMP
> wmm_enabled=1
> ap_isolate=1
> 
> 7) any STA (ChromeOS, Android, Windows tried) triggers the crash.
> 
> On Thu, May 30, 2019 at 6:58 AM Balaji Pothunoori
> <bpothuno@codeaurora.org> wrote:
>> 
>> Hi,
>> 
>> We are not seeing mentioned issue with following setup.
>> Setup details are :
>> AP - X86 with 5.1.0 kernel + QCA9984.
>> STA - Standard STA.
>> Observation : Crash is not observed during STA join.
>> 
>> Could you please share the steps what you have followed ?
>> 
>> Regards,
>> Balaji.
>> 
>> > -----Original Message-----
>> > From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of
>> > Vjaceslavs Klimovs
>> > Sent: Tuesday, May 28, 2019 11:53 PM
>> > To: kvalo@codeaurora.org
>> > Cc: Abhishek Ambure <aambure@codeaurora.org>;
>> > ath10k@lists.infradead.org
>> > Subject: [EXT] Re: ath10k panic with 5.1 kernel and qca9984 on
>> > association
>> >
>> > Abhishek,
>> > I am happy to test a proposed fix, let me know.
>> >
>> > On Tue, May 28, 2019 at 4:22 AM Kalle Valo <kvalo@codeaurora.org>
>> > wrote:
>> >>
>> >> + Abhishek
>> >>
>> >> Vjaceslavs Klimovs <vklimovs@gmail.com> writes:
>> >>
>> >> > With 5.1 and head kernel, machine running as AP with qca9984 locks
>> >> > up without being able to complete stack trace to console after a
>> >> > client tries to associate with it. Following are (OCR transcribed)
>> >> > error
>> >> > messages:
>> >> >
>> >> > [ 177.161539] BUG: unable to handle kernel paging request at
>> >> > fffffffffffff7bo [ 177.161553] #PF error: (normal kernel read fault)
>> >> > [ 177.161561] PGD 703812067 P4D 703812067 PUD 20381406 PMD 0 [
>> >> > 177.161571] Oops: 0000 (#1) SMP PTI [ 177.161577] CPU: 6 PID: 0
>> >> > Comm: swapper/6 Tainted: G OE 5.1.3-gentoo #1
>> >> >
>> >> > [Garbage on screen after that point]
>> >> >
>> >> > and
>> >> >
>> >> > [67.805490] RBP: ffff9c4c57983d 18 R08: 0000000000000000 R09:
>> >> > 0000000000000000 [67.805501] R10: 0000000000000002 R11:
>> >> > 0000000000000000 R12: 0000000000000001 [67.805512] R13:
>> >> > 0000000000000000 R14: 0000000000060002 R15: 0000000000000000
>> >> > [67.805523] FS: 000000000000000000000) GS:ffff9c4c57980000 (0000)
>> >> > knIGS:000000000 [67.805535] CS: 0010 DS: 0000 ES: 0000 CRO:
>> >> > 0000000080050033
>> >> > [67.805544] CR2: fffffffffffff7b0 CR3: 00000005f7e0e006 CR4:
>> >> > 00000000003606e0 [67.805555] DRO: 0000000000000000 DR1: 0000000000000000 DR2:
>> >> > 0000000000000000 [67.805566] DR3: 0000000000000000 DR6:
>> >> > 00000000fffeoffO DR7: 0000000000000400 [67.805577] Call Trace:
>> >> > [67.805582] <IRQ>
>> >> > [67.805592] ath10k_htt_t2h_msg_handler+0xbda/0xf80 [ath10k_core]
>> >> > [67.805603] ? _raw_spin_unlock_bh+0xie/0x20 [67.805614] ?
>> >> > ath1ok_ce_per_engine_service+0xf1/0x100 [ath10k_corel [67.805626]
>> >> > ath10k_pci_htt_rx_cb+0x172/0x260 [ath10k_pci] [67.8056391]
>> >> > ath10k_ce_per_engine_service+0x9e/0x100 [ath10k_core)
>> >> >
>> >> > [Garbage on screen after that point]
>> >> >
>> >> > The issue does not reproduce on 5.0.17 but is reliably reproducible
>> >> > in 5.1+ by just trying to associate to that AP. So I thought I'd run
>> >> > git bisect. After bisecting,
>> >> >
>> >> > 6ddc3860a5668808bacbfcb1f1bf50d5d7ad1956, ath10k: add support for
>> >> > ack rssi value of data tx packets
>> >> >
>> >> > is the first commit that triggers the problem. Reverting that commit
>> >> > from head or from 5.1.5 reliably makes everything work as expected.
>> >>
>> >> Thank you for the bisect, this is really helpful. Full commit log
>> >> below.
>> >> Abhishek, please fix this or send a revert for 5.2.
>> >>
>> >> commit 6ddc3860a5668808bacbfcb1f1bf50d5d7ad1956
>> >> Author:     Abhishek Ambure <aambure@codeaurora.org>
>> >> AuthorDate: Mon Feb 25 11:45:48 2019 +0200
>> >> Commit:     Kalle Valo <kvalo@codeaurora.org>
>> >> CommitDate: Tue Feb 26 14:58:06 2019 +0200
>> >>
>> >>     ath10k: add support for ack rssi value of data tx packets
>> >>
>> >>     In WCN3990, WMI_TLV_SERVICE_TX_DATA_MGMT_ACK_RSSI service
>> >> Indicates that
>> >>     the firmware has the capability to send the RSSI value of the ACK
>> >> for all
>> >>     data and management packets transmitted.
>> >>
>> >>     If WMI_RSRC_CFG_FLAG_TX_ACK_RSSI is set in host capability then
>> >> firmware
>> >>     sends RSSI value in "data" tx completion event. Host extracts ack
>> >> rssi
>> >>     values of data packets from their tx completion event.
>> >>
>> >>     Tested HW: WCN3990
>> >>     Tested FW: WLAN.HL.2.0-01617-QCAHLSWMTPLZ-1
>> >>
>> >>     Signed-off-by: Abhishek Ambure <aambure@codeaurora.org>
>> >>     Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>> >>
>> >> --
>> >> Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
