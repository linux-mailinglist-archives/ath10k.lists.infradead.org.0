Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8479827724
	for <lists+ath10k@lfdr.de>; Thu, 23 May 2019 09:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liZ/dj2RydNpht1VKW9b+8H6WdB858hgSMJQxkjVeTc=; b=B4dvjB7BsQrS1Z
	nufibaox9sZP1z5Ut+uyvt5UXfCpTg/cETqezSzeI5tcczc+jUFd1774ByAozAwbYdoSi1N2PP1y2
	XgHHoX1u9Wa0yE3XCdyxWy0KCLazOE1F7RNMnBiHwivKSORpQkfVgyYOuPNn5sVrNkcOhupeL9N+A
	Mx5mXlFIQpcvJWWFrBkSozlLCRKHAjlza+5QWYygNrgvtqe4Ez0fHYLnFrrib54qhGbOnIJNfvyTK
	hBa9MW5DEo/6Rvi9iRDAXCaGL039kz8CfQBjgu+lvVGqXOvrSgfwuUK0wjWnZuzBvhZCxwYjtLMfR
	CTGZyHqTYGQKkXjke11g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTiH4-000745-Re; Thu, 23 May 2019 07:36:26 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTiGj-0006nj-Sc
 for ath10k@lists.infradead.org; Thu, 23 May 2019 07:36:12 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 0C39460DB6; Thu, 23 May 2019 07:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558596965;
 bh=aWu4pdFmpvQ75xec0lLJC7Dv8TlKRn6q2MtI9jfarNc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=CFbzApGWeVdaeHPP2qIU07tiCzx4wCwmBA+RMxm6ur8kgmniwD+lluCuMPKXWKuXK
 IJvBKUb1lDu2zPB1tvcz7uOqTEpUh9Bp9ZcsB++RXzySMCAUAsRtn68S8/f5Ei86un
 OzZOGHV3sxY/aUV/72RQRYATK0Nla6hhhQBWJOuE=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B67BB614DC;
 Thu, 23 May 2019 07:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558596954;
 bh=aWu4pdFmpvQ75xec0lLJC7Dv8TlKRn6q2MtI9jfarNc=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=YqbxrEixjF0irQj14hHl7XdxtPRPFX7QHPHtFT1YGZ0SCPjMIhAtWdZVTyckVa2Eo
 OWGVN259guZ9xqlRnObGWvld5bDk1kZIBi3wrppTVVH91o4hgrumAM7IoNdyThFR8O
 f+LDUgyR+30wUZVy6gljAq+D6jYinLUJHxS9b0gE=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B67BB614DC
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Daniel Drake <drake@endlessm.com>
Subject: Re: ath10k QCA9377 firmware crashes and fails to recover
References: <CAD8Lp45wxQ3vL_ttq-yKYDxscjn2KyJVCx_vJBCn+u8Yc5QtOQ@mail.gmail.com>
Date: Thu, 23 May 2019 10:35:49 +0300
In-Reply-To: <CAD8Lp45wxQ3vL_ttq-yKYDxscjn2KyJVCx_vJBCn+u8Yc5QtOQ@mail.gmail.com>
 (Daniel Drake's message of "Wed, 22 May 2019 21:19:14 -0600")
Message-ID: <87h89lei7e.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_003606_505521_226A4B8D 
X-CRM114-Status: UNSURE (   8.45  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Endless Linux Upstreaming Team <linux@endlessm.com>,
 linux-wireless <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Daniel Drake <drake@endlessm.com> writes:

> We are experiencing failures with QCA9377 wifi, using Linux 4.18 and
> Linux 5.0 with the latest firmware version:
>
> ath10k_pci 0000:02:00.0: firmware crashed! (guid
> 54a4649a-1240-4459-9442-9d498c49de79)
> ath10k_pci 0000:02:00.0: qca9377 hw1.1 target 0x05020001 chip_id
> 0x003821ff sub 1a3b:2b31
> ath10k_pci 0000:02:00.0: kconfig debug 0 debugfs 1 tracing 1 dfs 0 testmode 0
> ath10k_pci 0000:02:00.0: firmware ver WLAN.TF.1.0-00002-QCATFSWPZ-5
> api 5 features ignore-otp crc32 c3e0d04f

Is this a regression? For example, have you tried older firmware
versions?

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
