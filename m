Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75AD2CE9E
	for <lists+ath10k@lfdr.de>; Tue, 28 May 2019 20:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e/CY1TUkh6vmw4YtsdHT7SwDjlz0P+oqqVujsW84h9M=; b=nQLvETAbFgtJ3t
	spFkzc+vZDzMdKPVS10ukafsTM7310zmQ7xQuI8pdUsJJhJNcK3yyNhOtLdYD13EehdJXhx+pWhM2
	k+N2O48Lct+LJrdlE6mR7Aqr0vww1FZjhd/9fn+e678V4Qg/DU53RZVAQSVaX0VzH/mXD/gPs/wXS
	X2LxfW8YRZ7rOWcdQo5SNoJ1j+QyEEiljXb1XClx7hlb5+0xZ+gNe2qTR/zYegZYbT/HwL2aP/eEU
	KeZjKxMn8/NE1IrqOw4YuyWmxOc2SrPK9dtQBroynPnC092LBgKDzNOnZT66sDMNsAN3e4aa8vq54
	tsZ7dBK0W+uRDKsRMl/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVgoK-00005I-Lz; Tue, 28 May 2019 18:26:56 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVglO-0007BE-Pm
 for ath10k@lists.infradead.org; Tue, 28 May 2019 18:24:13 +0000
Received: by mail-vs1-xe43.google.com with SMTP id x8so841652vsx.13
 for <ath10k@lists.infradead.org>; Tue, 28 May 2019 11:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AbbGUa5QC2xe7AYUr1cYkKzWdfdzuMNdBgUD1GR4Vac=;
 b=WIeVIAnAKLUpluz0nSQkuc9B1nTJhyNRYL4z7I8U3KCG6jn+eDg6gzEBCLobXbPw1k
 AbIrUkfzbiIyjzc+a5Q84P4qorvMwvQhY1PPOnPPR/tR5ZK3Hei1XigDkcHvR3BiSz79
 OV34AmbWEHIP3ydGrOZMyAj6dLyvtKOIyMZWHvtXpxTwJipLV7++dv+oz2T+tNkIDPRe
 i7QJihTa84+nYUoGcMCoCmQNIkh39MNQa+lSr8faPbkz+5jlF2YfgIYygxrxdrRgzp0u
 7oTDQk20yY9S33wZyapzu4As9K0FKEmAS8mv1N8QBh3Nix94PDJl3r4baM7fvDWN9z7a
 NrPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AbbGUa5QC2xe7AYUr1cYkKzWdfdzuMNdBgUD1GR4Vac=;
 b=ellyF3gdig9a9gkSu2SVkbKSJV5IW5cWCihrjtmsy26ALkiPCq3zWBuCoLO5RirvsJ
 Rd1UsSWqiDg+IkZH+sPtdYTKqBo1tR2WJEasYSD5E6SZA0GuowgpyP+yt4RUAoJBS4bZ
 Gw+/U6Hpk9/4hZVml8p/Oa7p9prWoQMD0G3DAe1o5YlPTfymKyEEV4Wokx+Gx3741NCb
 6c0OYrG/edJ/7WFKVr9JbyhR/pkSKAFEcYCW93FirUNQDi+/v35jgIqyMkgoSHDD8krL
 lwrzvpugqpf7jG9MKvKz2fIdFvLbB8w19DHcjgsue1oByA+cY9cxiXZMhH1rClR/JLxK
 YuQA==
X-Gm-Message-State: APjAAAUGw+yuL1ksvGxFrSTaGoyQXeoMpoBonQNbx4rVvfBKeoyJAAVO
 TuQ7QUAKzAVErzK1ftGS0OiFatjLvnn3vgSE4DyMtmcO
X-Google-Smtp-Source: APXvYqwlYKPXu+iTkMb2GzEju5UUcvoGyI7596wkfFR+6QFKNE+GUjrtVq1mMxu90kRbjNfFyn7dB/1H5HUxfN82Ssk=
X-Received: by 2002:a67:fa58:: with SMTP id j24mr66267709vsq.177.1559067795702; 
 Tue, 28 May 2019 11:23:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAC_j7i3ZAcfaQ-on5mXTKxd--erzCChKhEEU_6Yk+j2w57PeVg@mail.gmail.com>
 <8736ky6cyp.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <8736ky6cyp.fsf@kamboji.qca.qualcomm.com>
From: Vjaceslavs Klimovs <vklimovs@gmail.com>
Date: Tue, 28 May 2019 11:23:03 -0700
Message-ID: <CAC_j7i0eQfHu=9r8biPkpGhxrSqbYQdf2cxT0tDfnH7YgGxO6w@mail.gmail.com>
Subject: Re: ath10k panic with 5.1 kernel and qca9984 on association
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_112354_835663_A3E55DA0 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vklimovs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Abhishek Ambure <aambure@codeaurora.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Abhishek,
I am happy to test a proposed fix, let me know.

On Tue, May 28, 2019 at 4:22 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> + Abhishek
>
> Vjaceslavs Klimovs <vklimovs@gmail.com> writes:
>
> > With 5.1 and head kernel, machine running as AP with qca9984 locks up
> > without being able to complete stack trace to console after a client
> > tries to associate with it. Following are (OCR transcribed) error
> > messages:
> >
> > [ 177.161539] BUG: unable to handle kernel paging request at fffffffffffff7bo
> > [ 177.161553] #PF error: (normal kernel read fault)
> > [ 177.161561] PGD 703812067 P4D 703812067 PUD 20381406 PMD 0
> > [ 177.161571] Oops: 0000 (#1) SMP PTI
> > [ 177.161577] CPU: 6 PID: 0 Comm: swapper/6 Tainted: G OE 5.1.3-gentoo #1
> >
> > [Garbage on screen after that point]
> >
> > and
> >
> > [67.805490] RBP: ffff9c4c57983d 18 R08: 0000000000000000 R09:
> > 0000000000000000 [67.805501] R10: 0000000000000002 R11:
> > 0000000000000000 R12: 0000000000000001 [67.805512] R13:
> > 0000000000000000 R14: 0000000000060002 R15: 0000000000000000
> > [67.805523] FS: 000000000000000000000) GS:ffff9c4c57980000 (0000)
> > knIGS:000000000 [67.805535] CS: 0010 DS: 0000 ES: 0000 CRO:
> > 0000000080050033
> > [67.805544] CR2: fffffffffffff7b0 CR3: 00000005f7e0e006 CR4: 00000000003606e0
> > [67.805555] DRO: 0000000000000000 DR1: 0000000000000000 DR2:
> > 0000000000000000 [67.805566] DR3: 0000000000000000 DR6:
> > 00000000fffeoffO DR7: 0000000000000400 [67.805577] Call Trace:
> > [67.805582] <IRQ>
> > [67.805592] ath10k_htt_t2h_msg_handler+0xbda/0xf80 [ath10k_core]
> > [67.805603] ? _raw_spin_unlock_bh+0xie/0x20
> > [67.805614] ? ath1ok_ce_per_engine_service+0xf1/0x100 [ath10k_corel
> > [67.805626] ath10k_pci_htt_rx_cb+0x172/0x260 [ath10k_pci]
> > [67.8056391] ath10k_ce_per_engine_service+0x9e/0x100 [ath10k_core)
> >
> > [Garbage on screen after that point]
> >
> > The issue does not reproduce on 5.0.17 but is reliably reproducible in
> > 5.1+ by just trying to associate to that AP. So I thought I'd run git
> > bisect. After bisecting,
> >
> > 6ddc3860a5668808bacbfcb1f1bf50d5d7ad1956, ath10k: add support for ack
> > rssi value of data tx packets
> >
> > is the first commit that triggers the problem. Reverting that commit
> > from head or from 5.1.5 reliably makes everything work as expected.
>
> Thank you for the bisect, this is really helpful. Full commit log below.
> Abhishek, please fix this or send a revert for 5.2.
>
> commit 6ddc3860a5668808bacbfcb1f1bf50d5d7ad1956
> Author:     Abhishek Ambure <aambure@codeaurora.org>
> AuthorDate: Mon Feb 25 11:45:48 2019 +0200
> Commit:     Kalle Valo <kvalo@codeaurora.org>
> CommitDate: Tue Feb 26 14:58:06 2019 +0200
>
>     ath10k: add support for ack rssi value of data tx packets
>
>     In WCN3990, WMI_TLV_SERVICE_TX_DATA_MGMT_ACK_RSSI service Indicates that
>     the firmware has the capability to send the RSSI value of the ACK for all
>     data and management packets transmitted.
>
>     If WMI_RSRC_CFG_FLAG_TX_ACK_RSSI is set in host capability then firmware
>     sends RSSI value in "data" tx completion event. Host extracts ack rssi
>     values of data packets from their tx completion event.
>
>     Tested HW: WCN3990
>     Tested FW: WLAN.HL.2.0-01617-QCAHLSWMTPLZ-1
>
>     Signed-off-by: Abhishek Ambure <aambure@codeaurora.org>
>     Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>
> --
> Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
