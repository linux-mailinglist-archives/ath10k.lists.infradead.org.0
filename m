Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A086A1B965D
	for <lists+ath10k@lfdr.de>; Mon, 27 Apr 2020 07:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VA23OCFS/YeBTNQ4sVevlVgOUSkHHaH1JpraICdMDKc=; b=WP2pk9JbKjKnhG
	/m6/0fkYI3ot/tVhMl/M8uxM+vbfXcKZpi+ocZ4s42oYTlDSMnvDHq/5L9nqBdIuA5XGQBnNECjyP
	Jx99XDGAOr8e6o+z7cLwmFICPWVJALiVAhiZ/2FA0wYu38n3tzXiyQPUzBni2rbSatzmrzs7JaSBn
	sNdd/EWGaqnePXTgVmydsglOECjvXYlPnTdaeWehcEpW+Bao6FLSJ/ItIlrij2DzKYyh+8p5n46SZ
	yZk9yvx4ShjHZfpZM8onnFWXZVzNyY4XuHBwFYmvp5qFllY1A1bQHcZ3mkzqQfQNbocdf66KFvQ5J
	MG302ux1V7U/t0IjCmYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSvu0-0004EE-1v; Mon, 27 Apr 2020 05:01:56 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSvtv-0004DO-3D
 for ath10k@lists.infradead.org; Mon, 27 Apr 2020 05:01:53 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587963711; h=Date: Message-Id: Cc: To: References:
 In-Reply-To: From: Subject: Content-Transfer-Encoding: MIME-Version:
 Content-Type: Sender; bh=ETHfgszYFiaBJe6H/LRYDpV2n8mr+HCLzybHaBW7Uhg=;
 b=ls9OdOBGcm26NKAlZVQrMaLkivu1w8mcoWyzNUuQSrV+btzaCMP0XngON63oA28J1Ld0omzR
 b3HMMMXOK77TUBDIdhR9fnrcgmLbEj3X85LqHAU5WrPiHuVKUtuNI5wuIRnGf7drw+aeGoYz
 pn69KkfbW8DpRr/zf7YD+65gmuQ=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea66739.7fb1f6777ae8-smtp-out-n04;
 Mon, 27 Apr 2020 05:01:45 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6B036C433F2; Mon, 27 Apr 2020 05:01:45 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DCFD9C433CB;
 Mon, 27 Apr 2020 05:01:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org DCFD9C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: enable rx duration report default for wmi tlv
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200423022758.5365-1-wgong@codeaurora.org>
References: <20200423022758.5365-1-wgong@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/3.5.2
Message-Id: <20200427050145.6B036C433F2@smtp.codeaurora.org>
Date: Mon, 27 Apr 2020 05:01:45 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_220151_654893_9BDCA5B9 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 wgong@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> When run command "iw dev wlan0 station dump", the rx duration is 0.
> When firmware indicate WMI_UPDATE_STATS_EVENTID, extended flag of
> statsis not set by default, so firmware do not report rx duration.
> 
> one sample:
> localhost # iw wlan0 station dump
> Station c4:04:15:5d:97:22 (on wlan0)
>         inactive time:  48 ms
>         rx bytes:       21670
>         rx packets:     147
>         tx bytes:       11529
>         tx packets:     100
>         tx retries:     88
>         tx failed:      36
>         beacon loss:    1
>         beacon rx:      31
>         rx drop misc:   47
>         signal:         -72 [-74, -75] dBm
>         signal avg:     -71 [-74, -75] dBm
>         beacon signal avg:      -71 dBm
>         tx bitrate:     54.0 MBit/s MCS 3 40MHz
>         rx bitrate:     1.0 MBit/s
> 	rx duration:    0 us
> 
> This patch enable firmware's extened flag of stats by setting flag
> WMI_TLV_STAT_PEER_EXTD of ar->fw_stats_req_mask which is set in
> ath10k_core_init_firmware_features via WMI_REQUEST_STATS_CMDID.
> 
> After apply this patch, rx duration show value with the command:
> Station c4:04:15:5d:97:22 (on wlan0)
>         inactive time:  883 ms
>         rx bytes:       44289
>         rx packets:     265
>         tx bytes:       10838
>         tx packets:     93
>         tx retries:     899
>         tx failed:      103
>         beacon loss:    0
>         beacon rx:      78
>         rx drop misc:   46
>         signal:         -71 [-74, -76] dBm
>         signal avg:     -70 [-74, -76] dBm
>         beacon signal avg:      -70 dBm
>         tx bitrate:     54.0 MBit/s MCS 3 40MHz
>         rx bitrate:     1.0 MBit/s
>         rx duration:    358004 us
> 
> This patch do not have side effect for all chips, because function
> ath10k_debug_fw_stats_request is already exported to debugfs
> "fw_stats" and WMI_REQUEST_STATS_CMDID is safely sent after condition
> checked by ath10k_peer_stats_enabled in ath10k_sta_statistics.
> 
> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

4913e675630e ath10k: enable rx duration report default for wmi tlv

-- 
https://patchwork.kernel.org/patch/11504895/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
