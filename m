Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4E8B6564
	for <lists+ath10k@lfdr.de>; Wed, 18 Sep 2019 16:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eclvoz1nPeES9r+FiiDGcvQ2boyKYlh0p+hsKgkB58E=; b=bEPNXjy05uSgwR
	roo4HJXsrfB3tGGnLnF5oEafAjMJzhlIM3qaKXTvHoxc5jQPdxzODVSP/sLqZDLyD0FlLNQtz6RPb
	ZHVxH2dfZqj3ZxhhnO92MkElxMvY2ewhZsuwC2kiPm0E0tMp3DyehkEE4xkwH95DHY3BJ8WFi0Ldy
	WZc4LESTth+5hV4vmvth/XRAWJP+/o3ChwbVHfOMxoDGNZhPXKzqQL+U9nw7BK08CJhXkXSrxaswe
	m77ars/3OV2rxng44jmAIW+L6wM40hoI9JnpRtntOMlnLags4A9lGubKuHkGMppWBgLB8nQ+ivpAT
	R637Vh4Hl8UYTfXd0yDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAaYD-0006xx-Rs; Wed, 18 Sep 2019 14:03:21 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAaY9-0006xH-FU
 for ath10k@lists.infradead.org; Wed, 18 Sep 2019 14:03:19 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0FC8A61424; Wed, 18 Sep 2019 14:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568815397;
 bh=GI8g7BdcEpF2wvGvgxsUXnHFIMMx79kllp6rnPF+YEE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=DAMnkgK9yktfhC6LpBzpzRf3ErTSGwtdXaHtu9iwR99fuYwhVzPu4vbGmRe3H2j2Y
 jV8TnVxzGPlTs1UwYl1KY4iNX5rov8FdENNkC/hj829cVAP4LVPGzp88nRSoLcGY4P
 9mZzoR0E2zT1WDIj7kDevJD5aQQTmMiPmQbBXPaE=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8EDF0613A8;
 Wed, 18 Sep 2019 14:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568815396;
 bh=GI8g7BdcEpF2wvGvgxsUXnHFIMMx79kllp6rnPF+YEE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=cPaFNWjv4igEjoXIw8leq53V6QydcyLRBRrA+UdRXV4uehhDiki/4NgnJLb6nW+57
 4/gFaz9oNUtiXFXn3XbHjM6pxcIZBm40fSnTqCBa4mkVn4iB1HLbYBkI8ZzxkJixYR
 3fs5g85v1J+uU3VCw3RBcPtfLLWXFfl7DSEYU01o=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8EDF0613A8
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v3] ath10k: support NET_DETECT WoWLAN feature
References: <1534402113-14337-1-git-send-email-wgong@codeaurora.org>
 <20181114225910.GA220599@google.com>
 <CA+ASDXMh7vdfkA5jtJqWEU-g-4Ta5Xvy046zujyASZcESCGhAQ@mail.gmail.com>
Date: Wed, 18 Sep 2019 17:03:12 +0300
In-Reply-To: <CA+ASDXMh7vdfkA5jtJqWEU-g-4Ta5Xvy046zujyASZcESCGhAQ@mail.gmail.com>
 (Brian Norris's message of "Tue, 17 Sep 2019 09:32:52 -0700")
Message-ID: <87woe5aehr.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_070317_691053_82B302CF 
X-CRM114-Status: GOOD (  12.36  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>, ath10k@lists.infradead.org,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Brian Norris <briannorris@chromium.org> writes:

> Since Wen has once again suggested I use this patch in other forums,
> I'll ping here to note:
>
> On Wed, Nov 14, 2018 at 2:59 PM Brian Norris <briannorris@chromium.org> wrote:
>> You've introduced a regression in 4.20-rc1:
>
> This regression still survives in the latest tree. Is it fair to just
> submit a revert?

Your description about the problem from an earlier email:

  "It seems like youre enabling SCHED_SCAN support? But you're not
   adding the NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR feature flag.
   So it puts us in a tough place on using randomization -- we either
   can't trust the FEATURE flags, or else we can't use both SCHED_SCAN
   and scan randomization."

So essentially the problem is that with firmwares supporting both
WMI_SERVICE_NLO and WMI_SERVICE_SPOOF_MAC_SUPPORT ath10k enables
NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR, but
NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR is not enabled which is
inconsistent from user space point of view. Is my understanding correct?

Wen, can you enable NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR? Does firmware
support that?

If that's not possible, one workaround might to be to not enable
NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR if firmware supports
WMI_SERVICE_NLO, but of course that would suck big time.

Here's the full context in case someone is interested:

https://patchwork.kernel.org/patch/10567005/

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
