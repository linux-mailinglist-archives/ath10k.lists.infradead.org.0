Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A482C552
	for <lists+ath10k@lfdr.de>; Tue, 28 May 2019 13:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01C1h/vUGAzYPk86vLNyEB/0P0aF2vr3uWCnbds16Is=; b=t5QYO4VG1ywtjh
	qI2O724w4kwhpIYlDOs16/jbCmtVdHEeMME4coc0ZegGRPlXZ2sbr8hSd/Xi+6jRmp/Z3y3aeWkpB
	/jcpTAakwlD7C4ATGfDo6kkYkT0e1QN8uqdjD3tZfP5/sTgpWJ1W1bYyAMYlfoXL7LohsCqmFm0x0
	6p0Z3U3bbvz9w/vI1ZC2RuF1GW5GhfYYvcXHa9/gITpSxFxmIN0ln11eD3GVXdqI35rPdfsEsEPhz
	UUUiVy5buJwmz9Yw/UJQtlDBT2W9FRnkgB3dgL7700mtmCWfY2NV5qy1nb6iK+KdMdwkORKOGfFZV
	QyaA6GWlxuinBA9ERjpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVaBO-0001O2-FJ; Tue, 28 May 2019 11:22:18 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVaBJ-0001Mf-Pz
 for ath10k@lists.infradead.org; Tue, 28 May 2019 11:22:15 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9601960F3C; Tue, 28 May 2019 11:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559042531;
 bh=RIrt45XVL8370NuwUctCoW3TAPSVdCq63kEnori3l9s=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=hxTX4jAy9/TzqwlFWZjxedz4oc7RugmSWx0Uk/G/teoSmX1kj20vySLzUI41utVW/
 cP/CDnBesKHvlHm+7RrecoGfCM5ePGJ0cxzmUI6bwDh3sypQ+P2Q9C/zokOOkE1cCN
 hMhWPyLYo6wojkjNYrPw6pPwHXq07i60wAedkc2Y=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B536560795;
 Tue, 28 May 2019 11:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559042530;
 bh=RIrt45XVL8370NuwUctCoW3TAPSVdCq63kEnori3l9s=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=bwT3NdiGeRUdzFSI7R9G6QmAcQeNYJnEuhXM2NQdq7LLYmB1C7IT4JtZdLoZV0zsx
 svX67ikW0e0esEQuYWY31Z7uuHOBYImeU8jdj5ecdFBt2mn2eK4iPT+i/H3qzycf4N
 UiJBzv92BtjxKZnQ8/o22ndPUpfM5bf7lh5XqBaI=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B536560795
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Vjaceslavs Klimovs <vklimovs@gmail.com>
Subject: Re: ath10k panic with 5.1 kernel and qca9984 on association
References: <CAC_j7i3ZAcfaQ-on5mXTKxd--erzCChKhEEU_6Yk+j2w57PeVg@mail.gmail.com>
Date: Tue, 28 May 2019 14:22:06 +0300
In-Reply-To: <CAC_j7i3ZAcfaQ-on5mXTKxd--erzCChKhEEU_6Yk+j2w57PeVg@mail.gmail.com>
 (Vjaceslavs Klimovs's message of "Mon, 27 May 2019 17:54:47 -0700")
Message-ID: <8736ky6cyp.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_042213_879078_34412F4D 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

+ Abhishek

Vjaceslavs Klimovs <vklimovs@gmail.com> writes:

> With 5.1 and head kernel, machine running as AP with qca9984 locks up
> without being able to complete stack trace to console after a client
> tries to associate with it. Following are (OCR transcribed) error
> messages:
>
> [ 177.161539] BUG: unable to handle kernel paging request at fffffffffffff7bo
> [ 177.161553] #PF error: (normal kernel read fault)
> [ 177.161561] PGD 703812067 P4D 703812067 PUD 20381406 PMD 0
> [ 177.161571] Oops: 0000 (#1) SMP PTI
> [ 177.161577] CPU: 6 PID: 0 Comm: swapper/6 Tainted: G OE 5.1.3-gentoo #1
>
> [Garbage on screen after that point]
>
> and
>
> [67.805490] RBP: ffff9c4c57983d 18 R08: 0000000000000000 R09:
> 0000000000000000 [67.805501] R10: 0000000000000002 R11:
> 0000000000000000 R12: 0000000000000001 [67.805512] R13:
> 0000000000000000 R14: 0000000000060002 R15: 0000000000000000
> [67.805523] FS: 000000000000000000000) GS:ffff9c4c57980000 (0000)
> knIGS:000000000 [67.805535] CS: 0010 DS: 0000 ES: 0000 CRO:
> 0000000080050033
> [67.805544] CR2: fffffffffffff7b0 CR3: 00000005f7e0e006 CR4: 00000000003606e0
> [67.805555] DRO: 0000000000000000 DR1: 0000000000000000 DR2:
> 0000000000000000 [67.805566] DR3: 0000000000000000 DR6:
> 00000000fffeoffO DR7: 0000000000000400 [67.805577] Call Trace:
> [67.805582] <IRQ>
> [67.805592] ath10k_htt_t2h_msg_handler+0xbda/0xf80 [ath10k_core]
> [67.805603] ? _raw_spin_unlock_bh+0xie/0x20
> [67.805614] ? ath1ok_ce_per_engine_service+0xf1/0x100 [ath10k_corel
> [67.805626] ath10k_pci_htt_rx_cb+0x172/0x260 [ath10k_pci]
> [67.8056391] ath10k_ce_per_engine_service+0x9e/0x100 [ath10k_core)
>
> [Garbage on screen after that point]
>
> The issue does not reproduce on 5.0.17 but is reliably reproducible in
> 5.1+ by just trying to associate to that AP. So I thought I'd run git
> bisect. After bisecting,
>
> 6ddc3860a5668808bacbfcb1f1bf50d5d7ad1956, ath10k: add support for ack
> rssi value of data tx packets
>
> is the first commit that triggers the problem. Reverting that commit
> from head or from 5.1.5 reliably makes everything work as expected.

Thank you for the bisect, this is really helpful. Full commit log below.
Abhishek, please fix this or send a revert for 5.2.

commit 6ddc3860a5668808bacbfcb1f1bf50d5d7ad1956
Author:     Abhishek Ambure <aambure@codeaurora.org>
AuthorDate: Mon Feb 25 11:45:48 2019 +0200
Commit:     Kalle Valo <kvalo@codeaurora.org>
CommitDate: Tue Feb 26 14:58:06 2019 +0200

    ath10k: add support for ack rssi value of data tx packets
    
    In WCN3990, WMI_TLV_SERVICE_TX_DATA_MGMT_ACK_RSSI service Indicates that
    the firmware has the capability to send the RSSI value of the ACK for all
    data and management packets transmitted.
    
    If WMI_RSRC_CFG_FLAG_TX_ACK_RSSI is set in host capability then firmware
    sends RSSI value in "data" tx completion event. Host extracts ack rssi
    values of data packets from their tx completion event.
    
    Tested HW: WCN3990
    Tested FW: WLAN.HL.2.0-01617-QCAHLSWMTPLZ-1
    
    Signed-off-by: Abhishek Ambure <aambure@codeaurora.org>
    Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
