Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED781190D53
	for <lists+ath10k@lfdr.de>; Tue, 24 Mar 2020 13:25:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoORUV9wez6HWnPy8qpoj8DPHZgWzuzND/YCwDWJcho=; b=t28vmHrjiVL2Ee
	AByj7YvmTsNqPEr3nIZZsGsfkboOKM9Qd6sO0e94vJYwrnKZPnrLydoa04nN9Paz7D9oVGoNuW3zC
	Wq9UBqBb+iHzS2p4K1pubTJwJJWgAGn1QDLsu8qp8L9HD9hkX1+rm/RMsrKsKONMCR805vLY7n+p+
	7rXhzDsGwMlEnq72TQMd7rixaTViSs4X/ptP45cgAxsKbyxngP4/TwOP2MVrbc/NiPbg+NVqpEwUb
	yS/jGZ1Rkf0dikDv3P9Nc+iAKXUddGHitg7nBnvmVbZs7U8PTysUYp29S3UmAvEAsMvBPllMlKw3P
	BcBwQj3iPPVbezwvmXhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGicn-0001wF-2Z; Tue, 24 Mar 2020 12:25:41 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGici-0001vg-Mf
 for ath10k@lists.infradead.org; Tue, 24 Mar 2020 12:25:38 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1585052736; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=MBBxdSu+v22AOGbX7PgfT+8mNtaVMqonw+j86vVTlyA=;
 b=jY2AYKI2d9drddrFWCpI4fUPtOt0re5aKeISF1toP2lPG4VGmFVnhSjEMUciUxFhH08kF8Fz
 Ju1j3Dz26JjeNFO66vIQ4mpifN91W6/Tfkx/9pK9hu07OpUKH4HlrLuyje03hdizTiXs67aG
 3vN8g//xTV4nrZ2k2QhGTnE7Klg=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e79fc3e.7fd946297148-smtp-out-n01;
 Tue, 24 Mar 2020 12:25:34 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 91637C433D2; Tue, 24 Mar 2020 12:25:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 01E4DC433CB;
 Tue, 24 Mar 2020 12:25:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 01E4DC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: add retry mechanism for ath10k_start
References: <20200120025609.6060-1-wgong@codeaurora.org>
 <87mu9mwwhs.fsf@kamboji.qca.qualcomm.com>
 <576c72fed4a15a13989dde163d77ed8c@codeaurora.org>
Date: Tue, 24 Mar 2020 14:25:30 +0200
In-Reply-To: <576c72fed4a15a13989dde163d77ed8c@codeaurora.org> (Wen Gong's
 message of "Fri, 14 Feb 2020 10:41:52 +0800")
Message-ID: <877dza7xdx.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_052536_802848_1835C7D6 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> On 2020-02-13 19:35, Kalle Valo wrote:
>>
>> I'm not convinved about this. ath10k assumes that SDIO bus works
>> reliably and there's no data loss. In my opinion if the SDIO is not
>> working reliably we should fail immediately with a clear error message
>> for the user, instead of having an unstable connection. And I
>> understand
>> from the logs that ath10k fails cleanly in this simulated failure.
>>
>> So what you do here is ignore the assumption that the SDIO bus should
>> always work reliably and add a workaround by trying to restart the
>> firmware multiple times, and hope that by luck it works during one
>> of 10
>> retry attempts. But then what? Isn't the WLAN connection flaky as SDIO
>> bus is not reliable? So if we were to follow that design logic,
>> shouldn't we add retries for _all_ ath10k SDIO transactions? But that
>> would make ath10k even more complex as it is.
>
> for other SDIO transfer, like data tx/rx, if it fail, the upper stack
> has error mechanism to handle the fail.

Handle the fail is different from retrying. I'm all that all error cases
need to be gracefully handled and bailed out with a clear error, but I
have not seen any logic that mac80211 or driver should retry
transmissions to firmware because of hardware errors. Just as an
example, if there is data loss on the PCI/SDIO bus I don't think the
ath10k credit handling will work for long.

> but for ath10k_start, if it fails, especailly for recovery, then it can
> not recovery again, because cfg80211_shutdown_all_interfaces, and it
> need
> to reboot system to recovery wlan by test.
>>
>> Because I think this patch makes things worse for the user, so I would
>> like to understand the real life use case this patch is trying to fix
>> and how it would help the user.
>
> sometimes it has recovery/suspend/resume test case, it need to make sure
> ath10k_start success, otherwise wlan will can not recovery unless reboot
> system.

If this works 99% of the time and 1% is failing then you should find the
root cause for that 1% case and fix that. The bug might be in ath10k, in
SDIO controller driver or maybe even somewhere else.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
