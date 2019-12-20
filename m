Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3B0127BE7
	for <lists+ath10k@lfdr.de>; Fri, 20 Dec 2019 14:44:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytCrqkfQXK+yXiLeBMlKyZHCUdNyAkQ/ulqlaqjFTmo=; b=TYUhC2UDo8Odo5
	6aLzYMNvGVsQq7RqepGUp3rLZ1kALURDMKR4vhLV8DWH5dhWZqj7AaPYjR9qysDGO2MUC2aZ4rfLS
	hZNUD6Fb2cdFdrBhGdDy9KVfEg2CICMYEfBb4qbWQ4oJAKY6Mc9MMRRZxqvBydS46+B29rdqNmttI
	MoqoyDec4EwWd1Vpg9u2U0nx+8AUGv3zwxjhOdQLHulsfo7Dt9q51lLOZBbql81MPEsUDsZ+WB9BU
	lw5x9/TajRkcgKdUiwzIiRRdJx3EmD17Sfu+DfU7HtJS0D7U3TzBp/CiZbCfIf9ss6jT9jxfQoZ0K
	na7kVPBNPw/HeJuoXBbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiIZZ-0001AS-UF; Fri, 20 Dec 2019 13:44:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiIZU-00019w-4g
 for ath10k@lists.infradead.org; Fri, 20 Dec 2019 13:44:02 +0000
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
 [209.85.219.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 304DE2465E
 for <ath10k@lists.infradead.org>; Fri, 20 Dec 2019 13:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576849438;
 bh=Heiha3rk9Q9P3GAb7WBQF3z3L5q70uwYxvI3PwrCev0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=szl5bryIHN3/3W+NktsPpXHLSRzt88UIZ3oDuAtSnjeDvuI4ieZdzFIjinVO3fhcp
 lNlV0yuLNx3/a5jwo75Pkmnn+ClSdTX8ocm3khge5mXdSDaqy+jRfOkrM6ESncrslX
 EcL7FQfCSBY6H8LnAl0OdIpuV1K+TodzcGbhkA6c=
Received: by mail-qv1-f45.google.com with SMTP id o18so3630293qvf.1
 for <ath10k@lists.infradead.org>; Fri, 20 Dec 2019 05:43:58 -0800 (PST)
X-Gm-Message-State: APjAAAXS8VBYCwLWqr7WnH7ZWUUpgEnX1LEPnnTtXXR/UrprKl9MD+Kv
 HZLenma2MgQg10IhHLcmAcJqAYbHjvtqsIQy4EM=
X-Google-Smtp-Source: APXvYqzhuWUkfqdiIb4VOUkqIdnEFK0hyIk9mNE+MzAw4x8GS1lQAjRMpQLFx/Dgkt40Xs6TKaAW+QpQGtbS+9N17fc=
X-Received: by 2002:ad4:4f94:: with SMTP id em20mr11934314qvb.95.1576849437283; 
 Fri, 20 Dec 2019 05:43:57 -0800 (PST)
MIME-Version: 1.0
References: <BYAPR02MB6006CC2E199B34B8EF53D30D922D0@BYAPR02MB6006.namprd02.prod.outlook.com>
In-Reply-To: <BYAPR02MB6006CC2E199B34B8EF53D30D922D0@BYAPR02MB6006.namprd02.prod.outlook.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Fri, 20 Dec 2019 08:43:46 -0500
X-Gmail-Original-Message-ID: <CA+5PVA5F13c2c8tjKAFk+v=ZvfSwiV5iCZMAQOsB8FrLnS28uw@mail.gmail.com>
Message-ID: <CA+5PVA5F13c2c8tjKAFk+v=ZvfSwiV5iCZMAQOsB8FrLnS28uw@mail.gmail.com>
Subject: Re: [PULL] ath10k firmware 20191220
To: Kalle Valo <kvalo@qca.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_054400_225760_8CA13631 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 4:33 AM Kalle Valo <kvalo@qca.qualcomm.com> wrote:
>
> Hi,
>
> ath10k firmware updates and also new hardware WCN3990. Please let me know if there are any problems.
>
> Kalle
>
> The following changes since commit c4586ffaac0ca0d7045e06140b6426f2e79e96e6:
>
>   linux-firmware: Update AMD cpu microcode (2019-12-18 09:37:15 -0500)
>
> are available in the git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/linux-firmware.git ath10k-20191220
>
> for you to fetch changes up to b142c2e0229bc89b44ac527f4f3c3def063bcbc6:
>
>   ath10k: WCN3990 hw1.0: add firmware WLAN.HL.2.0-01387-QCAHLSWMTPLZ-1 (2019-12-20 11:18:46 +0200)
>
> ----------------------------------------------------------------
> Kalle Valo (6):
>       ath10k: QCA6174 hw3.0: update board-2.bin
>       ath10k: QCA9887 hw1.0: update firmware-5.bin to 10.2.4-1.0-00047
>       ath10k: QCA9888 hw2.0: update firmware-5.bin to 10.4-3.9.0.2-00070
>       ath10k: QCA988X hw2.0: update firmware-5.bin to 10.2.4-1.0-00047
>       ath10k: QCA9984 hw1.0: update firmware-5.bin to 10.4-3.9.0.2-00070
>       ath10k: WCN3990 hw1.0: add firmware WLAN.HL.2.0-01387-QCAHLSWMTPLZ-1
>
>  WHENCE                                   |  12 +-
>  ath10k/QCA6174/hw3.0/board-2.bin         | Bin 567608 -> 584036 bytes
>  ath10k/QCA9887/hw1.0/firmware-5.bin      | Bin 238484 -> 238548 bytes
>  ath10k/QCA9888/hw2.0/firmware-5.bin      | Bin 686996 -> 688140 bytes
>  ath10k/QCA988X/hw2.0/firmware-5.bin      | Bin 248984 -> 249044 bytes
>  ath10k/QCA9984/hw1.0/firmware-5.bin      | Bin 674940 -> 675948 bytes
>  ath10k/WCN3990/hw1.0/firmware-5.bin      | Bin 0 -> 60 bytes
>  ath10k/WCN3990/hw1.0/notice.txt_wlanmdsp | 571 +++++++++++++++++++++++++++++++
>  ath10k/WCN3990/hw1.0/wlanmdsp.mbn        | Bin 0 -> 3725044 bytes
>  9 files changed, 579 insertions(+), 4 deletions(-)
>  create mode 100644 ath10k/WCN3990/hw1.0/firmware-5.bin
>  create mode 100644 ath10k/WCN3990/hw1.0/notice.txt_wlanmdsp
>  create mode 100644 ath10k/WCN3990/hw1.0/wlanmdsp.mbn

Pulled and pushed out.  Thanks.

josh

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
