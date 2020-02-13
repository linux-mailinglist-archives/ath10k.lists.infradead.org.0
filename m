Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AB315C02A
	for <lists+ath10k@lfdr.de>; Thu, 13 Feb 2020 15:14:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QEYw3tPiYOBmoxP64pGZEPXrem9VTGJ46mb9OlvntY=; b=gU9A/e8eNGkO/A
	aqkqmOjy/U2NU9rI2zlWPZ+9r57g0qLIZRDNqvAJbte8Ys6g5RPH6ugg4Lm671e9lwERmHl3cm1VW
	TkPSn7ed20aQ8MRldCrhzhFB/NjUgGJ3bhJNCDamPiJWvQHuO9x5BPElGoBFi4Y15P+W8VO5jTXvu
	0wMNMTIoEQACs23iEMjcC51lcSUBZUy2IdL+Gpx0bcTWSydMTGnJ2Kkx+dnitMUQWsJ3XN/NhUzpu
	htnEUL491fySSa7FvN7AOXeOnrXznuQ++QCQzPgsUVtsyOUMSDhXj1SUNbVZ234yuX5oMAO8PDF7k
	fAq0qz02UNLVJlhODEwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2FFj-0002FD-Tg; Thu, 13 Feb 2020 14:14:03 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2FFf-0002Em-MP
 for ath10k@lists.infradead.org; Thu, 13 Feb 2020 14:14:01 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581603239; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=kyo3XbEx2hGjWaSk+8F9Bsjztqgo2ckJ7k/zktGDo/c=;
 b=vhNq4FP7E185ZQfzhFYC+GasoZdObF3OeUG8OFaIRcoI4eI3GOmUKQxlIv4Gec9CBIQYHTuG
 qqowoJzkZZx5oN76ond/hLnaZiV8WIboibOpEllLLO/OL+CDO+j4HhylU1+GICN9bC0X01cZ
 d4Byqgcu+NZM3w+jjshlV/ugGic=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4559a4.7f9358bd9030-smtp-out-n03;
 Thu, 13 Feb 2020 14:13:56 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AF848C433A2; Thu, 13 Feb 2020 14:13:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from x230.qca.qualcomm.com (85-76-96-17-nat.elisa-mobile.fi
 [85.76.96.17])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 043F0C43383;
 Thu, 13 Feb 2020 14:13:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 043F0C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Maharaja Kennadyrajan <mkenna@codeaurora.org>
Subject: Re: [PATCH] ath10k: avoid consecutive OTP download to reduce boot time
References: <1578378195-25780-1-git-send-email-mkenna@codeaurora.org>
 <f1b4007f9d7e882c4ed2db67dc64cc96@codeaurora.org>
Date: Thu, 13 Feb 2020 16:13:51 +0200
In-Reply-To: <f1b4007f9d7e882c4ed2db67dc64cc96@codeaurora.org> (Maharaja
 Kennadyrajan's message of "Tue, 07 Jan 2020 12:30:19 +0530")
Message-ID: <87pnei7exs.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_061359_794111_99CCD4DB 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vikas Patel <vikpatel@codeaurora.org>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Maharaja Kennadyrajan <mkenna@codeaurora.org> writes:

> On 2020-01-07 11:53, Maharaja Kennadyrajan wrote:
>
> [Maha]: Please ignore/drop this duplicate patch as I sent it already.
> Regret for inconvenience caused.

Are you sure I should drop this? In the first patch I think you forgot
to CC linux-wireless and that's why I didn't see it. But this second
patch was CCed to linux-wireless and I see it on patchwork. So my plan
is to put this back to my queue, please let me know if I have
misunderstood.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
