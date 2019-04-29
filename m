Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF962E465
	for <lists+ath10k@lfdr.de>; Mon, 29 Apr 2019 16:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ueLM9JzWHs9en34JjeDhpjJIoY7jhrjzyaKGP3/NxM=; b=QEgh6aFMmCVe78
	e9aUlHzcZitE5t1Wv10wis1+xjERF4G3t877l2+3GDCZrOA6UMCZI6BqlghgOzgLOkAMP+w7SBh3t
	F/FzHFZoLsf4I9pRi9kHuPDXJkdKOde1sLDIRid4XxfOhDqtvaZKtFUf2AuTK4Un9lF4pBseOVCXF
	Ujzfkd0y8ZFTVBOOg5T7hZEFtpqAm/aCdi8YNIdJMNAvcb56RMD8sxuliy6KuPKdJCwyqEJX3Hv1X
	SLfPJshXOwwb4Y3XEK4KDh5fdOElLdkcsrutw7ioo/qljmUkiIMGniPjWIue0nxC4I7jxn/o6mTHN
	uqdW1Bsav7oa0DE+PjWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL71W-0004Yo-28; Mon, 29 Apr 2019 14:12:50 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL71R-0004YK-Qg
 for ath10k@lists.infradead.org; Mon, 29 Apr 2019 14:12:47 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6ECE0607DF; Mon, 29 Apr 2019 14:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556547165;
 bh=1YZh4rF0kC09u7WTScxlAdfqd54VJi90HDJpSFG+7ok=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=LgQ7oG3a7aMS2P6gFSOq//qIm4Y6+BciY5Ss2yC6sW86P94t7y4jmF+XvgOnOeIWA
 LzvjzHpbrTWsmPBphGPr0oCk2WZfcWB/L77o0UiQG+yzyFl+VOO8KQ3rFts2SS0Pb/
 wh9qPCUL9mPCWZr8lx7x7MNEAgzWJKT0QBwDl7yo=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id EA37060128;
 Mon, 29 Apr 2019 14:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1556547164;
 bh=1YZh4rF0kC09u7WTScxlAdfqd54VJi90HDJpSFG+7ok=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=cAqhi9CYDKkZOBxA+SjQlQNFW46U5JNEPqdn2l2ODhmMoOUm+6R6xvBr7riMX5Mba
 APcNs7VLVnkaVy7XHUL08RmiS6J0B72v35YHVtuyOW6SjJCdDCajyk5WQd7xJUCAiJ
 FzlBzv2rV7iqpsnfXvOkRaxWw1LQwfBHS5X6jaas=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org EA37060128
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Claire Chang <tientzu@chromium.org>
Subject: Re: [PATCH] ath10k: Drop WARN_ON()s that always trigger during system
 resume
References: <2884043.Jv1Mn93hE8@aspire.rjw.lan>
 <20190403195718.GA74723@google.com>
 <87o94tutdz.fsf@kamboji.qca.qualcomm.com>
 <CAJZ5v0ifD=DATprUeeO2_LGs04aEEhPB6AcGVPxWUdQaOma+ww@mail.gmail.com>
 <CALiNf2_qV+iViHbS0tQquTMZfu6XfFvQCH14mdT5bixn94DZ2Q@mail.gmail.com>
Date: Mon, 29 Apr 2019 17:12:39 +0300
In-Reply-To: <CALiNf2_qV+iViHbS0tQquTMZfu6XfFvQCH14mdT5bixn94DZ2Q@mail.gmail.com>
 (Claire Chang's message of "Mon, 29 Apr 2019 18:41:50 +0800")
Message-ID: <87ef5ksxwo.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_071245_884413_9FE265E3 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
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
Cc: Sriram R <srirrama@codeaurora.org>, Linux PM <linux-pm@vger.kernel.org>,
 Pradeep Kumar Chitrapu <pradeepc@codeaurora.org>,
 "open list:NETWORKING DRIVERS \(WIRELESS\)" <linux-wireless@vger.kernel.org>,
 Brian Norris <briannorris@chromium.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, ath10k@lists.infradead.org,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Todd Brandt <todd.e.brandt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Claire Chang <tientzu@chromium.org> writes:

> Tested-by: Claire Chang <tientzu@chromium.org>
>
>> Still, I'm quite sure that the WARN_ON()s trigger during system resume
>> regardless of the hw/fw combination.
>
> Also see this on sido:
>
> [    4.925278] ath10k_sdio mmc1:0001:1: qca6174 hw3.2 sdio target
> 0x05030000 chip_id 0x00000000 sub 0000:0000
> [    4.935721] ath10k_sdio mmc1:0001:1: kconfig debug 1 debugfs 1
> tracing 1 dfs 0 testmode 1
> [    4.948750] ath10k_sdio mmc1:0001:1: firmware ver
> WLAN.RMH.4.4.1-00007-QCARMSWP-1 api 6 features wowlan,ignore-otp crc32
> b98adaf8
> [    5.132728] ath10k_sdio mmc1:0001:1: board_file api 2 bmi_id 0:4
> crc32 6364cfcc

Great, thanks. I added your Tested-by as well.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
