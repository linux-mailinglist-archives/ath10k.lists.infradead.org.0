Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D7310D200
	for <lists+ath10k@lfdr.de>; Fri, 29 Nov 2019 08:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:To:References:
	In-Reply-To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+7zOOXxsUkDc0or0xFdM+U7Jf7Vv3OEYCA1cDGIzU8=; b=a9mWgg3WBpuMIN
	Tw+8nx6CFiyprZwuNLNKC/laReYGN7DED3QMj7TE7UkJ30trDhG/kx3VQG6MpdVdq887L8njoZRmM
	5SU8kMXewNbV64eYE9xk5FCvkIk2iOYv8L6YEV2o2+VqIB/qsAb0wCNvWw7Ts/r1usRK6J9Roiw3Z
	JpyhJe8bhUd0eCBQMbKPUBaG1ahWcgRTvAtC3SOmBPZmAxQqAneylrExrOZoDmQJW1H/A+pKfJymw
	Jb+bEEtxlbqV6uYQrsl2PseYMOtPgZIenQKHXFyKkctJ4GfEP5Byv4mbEhax/yHIBtMDRQprRSYep
	vEAV+6AgQhQ30AVP54bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaayk-00077v-U9; Fri, 29 Nov 2019 07:46:14 +0000
Received: from a27-55.smtp-out.us-west-2.amazonses.com ([54.240.27.55])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaayg-00077I-40
 for ath10k@lists.infradead.org; Fri, 29 Nov 2019 07:46:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575013567;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date;
 bh=MfRCxzI4f7H6zs3Yw3n9nDTzabGXNV+6BrfKy40Wsns=;
 b=N3ju/WM3jSfvnvtPEMaNLIYs/rL56V3W2FjZll7hu3TwjGmlTYLUepyYTXk0982/
 yHcH41aEESp0a6JGkASuV79R/GnZwT5NBqGl5s9Ar9QiZ5c7HjUNoM8Wvt6fIC2+9M0
 +3k0iMCoRoLsBPXQa6Ks5hP/X+R54tqMSDiRcbOw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575013567;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Subject:From:In-Reply-To:References:To:Cc:Message-Id:Date:Feedback-ID;
 bh=MfRCxzI4f7H6zs3Yw3n9nDTzabGXNV+6BrfKy40Wsns=;
 b=SwYpn3CEfySnsg/k1yOpHtAkLKSp0ldJ0zivi+y3zrfMuAcMML6qifo1XJrstJ7G
 lF72F2tp2KOKUtMph9Z5NUcQL4XQ/ze04kdzB7wHqoJNlFPYFrgkOxoqliFqaZlHPm7
 vtpRbpOF2En+IdfA6K6AutexJa9l8mh9fpvceh6U=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
 MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1DA4CC43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
MIME-Version: 1.0
Subject: Re: [PATCH] ath10k: enable wow feature for sdio chip
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <0101016eab75c9ce-0fc306b4-0804-4829-bf57-85d803251a00-000000@us-west-2.amazonses.com>
References: <0101016eab75c9ce-0fc306b4-0804-4829-bf57-85d803251a00-000000@us-west-2.amazonses.com>
To: Wen Gong <wgong@codeaurora.org>
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-ID: <0101016eb61fcc14-473890f2-db55-46f7-ad1f-2c3ec952aab8-000000@us-west-2.amazonses.com>
Date: Fri, 29 Nov 2019 07:46:07 +0000
X-SES-Outgoing: 2019.11.29-54.240.27.55
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_234610_189039_D15B043A 
X-CRM114-Status: UNSURE (   4.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> wrote:

> sdio does not support wow, this patch is to enable it. When system enter
> sleep state, if wowlan is enabled, then sdio chip will keep power if
> platform support keep power, after resume, it will not need to re-load
> firmware again.
> 
> Tested with QCA6174 SDIO with firmware
> WLAN.RMH.4.4.1-00029.
> 
> Signed-off-by: Wen Gong <wgong@codeaurora.org>
> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>

Patch applied to ath-next branch of ath.git, thanks.

7321095ca39c ath10k: enable wow feature for sdio chip

-- 
https://patchwork.kernel.org/patch/11263485/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
