Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BEAE451
	for <lists+ath10k@lfdr.de>; Mon, 29 Apr 2019 16:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPNTnZcoNLGmhoKecqmivfVySgWOoTwooxrKgaljmPM=; b=n3Xjq6Xw7lcy+e
	Qf+emmFGH1et53nsst+Fl45Dziyy9Aj3AkNJBmtbljR3NKPHoq+jE/581NnzTSHtrv0F23y9dPkdF
	/9M1sa76XG0oF2MBRDNW9maVgpd3dTumgoaPTJ5K7yl10aLOcfpgJ2pN3QXNIeRrsRJMMN1v1gYp0
	1g0kZnWjtlbWyZQigHZIGDZiI8nJdHTLKD3tZHSA7erFbBLzD5zzTjBGxwONE+7FaHl7NmypgP4qq
	oFaOY/xc8hfTnFhdELydinWrPja3NwNVsvpse3sO5AU+J0Bii5WrCNGu38EbdAVmPsd0K5GwLn5zp
	F8/ofVIgEYgdNBOqFchw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL6z5-0003K2-Mx; Mon, 29 Apr 2019 14:10:19 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL6z1-0003JY-UQ
 for ath10k@lists.infradead.org; Mon, 29 Apr 2019 14:10:17 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 244F36090F; Mon, 29 Apr 2019 14:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556547015;
 bh=VxBlg/oj/OYjZrDtYSr4dnVCDoQ5+k9iKUDJGDiPe3s=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=OKptvMqYR+jKjMZiSVoJ6tRr8aRB386SPDFUI1cVLOy1mX0wSP3qRyWo1gk6c9o4B
 +ErLfsQ+sfVe/IDDMFInxIDO3zBbaLz6eWVsZ9YF4aIp7I8qdx1jQmFEer5Au+Y5Vp
 Ioa3XIBwXKXyiPI2ZOFMjbZbaXE+wVl1zUd6LnKo=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C79B26086B;
 Mon, 29 Apr 2019 14:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556547014;
 bh=VxBlg/oj/OYjZrDtYSr4dnVCDoQ5+k9iKUDJGDiPe3s=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=KEFL1DCFiRO/5XZV0bFMVaUEaCiGbtKWa7KC47i1uSOS25wYNdAS89jFmNYUQ5fnK
 E0b6sjNVI8Y46OnHrgYuTOqrFXEpciE74qp8DexPz5YY4VvB5j2Ruo3dykK1D4Zm4F
 XGmZ+EwsqSD9MJWGcBjOJvPTqZtZkD4LLFXt75ho=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C79B26086B
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH] ath10k: Drop WARN_ON()s that always trigger during system
 resume
References: <2884043.Jv1Mn93hE8@aspire.rjw.lan>
 <20190403195718.GA74723@google.com>
 <87o94tutdz.fsf@kamboji.qca.qualcomm.com>
 <CAJZ5v0ifD=DATprUeeO2_LGs04aEEhPB6AcGVPxWUdQaOma+ww@mail.gmail.com>
Date: Mon, 29 Apr 2019 17:10:08 +0300
In-Reply-To: <CAJZ5v0ifD=DATprUeeO2_LGs04aEEhPB6AcGVPxWUdQaOma+ww@mail.gmail.com>
 (Rafael J. Wysocki's message of "Mon, 29 Apr 2019 10:48:35 +0200")
Message-ID: <87imuwsy0v.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_071016_019932_157AED08 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Claire Chang <tientzu@google.com>, Sriram R <srirrama@codeaurora.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 Pradeep Kumar Chitrapu <pradeepc@codeaurora.org>,
 "open list:NETWORKING DRIVERS \(WIRELESS\)" <linux-wireless@vger.kernel.org>,
 Brian Norris <briannorris@chromium.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, ath10k@lists.infradead.org,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Todd Brandt <todd.e.brandt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

"Rafael J. Wysocki" <rafael@kernel.org> writes:

> On Fri, Apr 26, 2019 at 9:18 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>>
>> Brian Norris <briannorris@chromium.org> writes:
>>
>> > + Sriram, Pradeep, Claire
>> >
>> > On Sun, Mar 03, 2019 at 06:24:33PM +0100, Rafael J. Wysocki wrote:
>> >
>> > Ooh, exactly 1 month ago!
>> >
>> >> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>> >>
>> >> ath10k_mac_vif_chan() always returns an error for the given vif
>> >> during system-wide resume which reliably triggers two WARN_ON()s
>> >> in ath10k_bss_info_changed() and they are not particularly
>> >> useful in that code path, so drop them.
>> >>
>> >
>> > Particularly, when WOWLAN isn't enabled, we get called during resume via
>> > ieee80211_reconfig(), where we're not associated and don't have any
>> > channel contexts. AFAICT, we shouldn't need to communicate anything in
>> > particular to the firmware here, and so failing the 'if' is definitely
>> > not worth WARN-ing about.
>> >
>> > I'd love to see this get applied with:
>> >
>> > Fixes: cd93b83ad927 ("ath10k: support for multicast rate control")
>> > Fixes: f279294e9ee2 ("ath10k: add support for configuring management packet rate")
>> >
>> > and sent to stable. This has been bugging people since 4.19. Spurious
>> > WARN_ON()s can trigger reports to various crash trackers, and on some
>> > systems appear as user-visible warnings ("System problem detected").
>> >
>> >> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
>> >
>> > Reviewed-by: Brian Norris <briannorris@chromium.org>
>> > Tested-by: Brian Norris <briannorris@chromium.org>
>>
>> I added these now to the commit log, thanks Brian.
>>
>> Rafael, could you please provide the hardware and firmware versions you
>> tested this on? We have so many different firmware branches to support
>> that I prefer to have that documented in the commit log. Providing
>> ath10k startup messages in dmesg are enough,
>
> There you go:
>
> [    4.695349] ath10k_pci 0000:3a:00.0: enabling device (0000 -> 0002)
> [    4.698165] ath10k_pci 0000:3a:00.0: pci irq msi oper_irq_mode 2
> irq_mode 0 reset_mode 0
> [    4.912240] ath10k_pci 0000:3a:00.0: qca6174 hw3.2 target
> 0x05030000 chip_id 0x00340aff sub 1a56:1535
> [    4.912255] ath10k_pci 0000:3a:00.0: kconfig debug 0 debugfs 0
> tracing 0 dfs 0 testmode 0
> [    4.912716] ath10k_pci 0000:3a:00.0: firmware ver
> WLAN.RM.2.0-00180-QCARMSWPZ-1 api 4 features
> wowlan,ignore-otp,no-4addr-pad crc32 75dee6c5
> [    4.982563] ath10k_pci 0000:3a:00.0: board_file api 2 bmi_id N/A
> crc32 19644295

Thanks, I added the info to the commit log.

>> I can then add it to the commit log.
>
> Still, I'm quite sure that the WARN_ON()s trigger during system resume
> regardless of the hw/fw combination.

Sure, I'm not claiming anything else. We just have so many different
hw/fw combos that I want to have the environment documented in the
commit log in case we need to investigate history in the future.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
