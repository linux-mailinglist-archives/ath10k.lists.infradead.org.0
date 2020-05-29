Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3671E81F4
	for <lists+ath10k@lfdr.de>; Fri, 29 May 2020 17:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLAATGWNMSpTyXHfwb3BJ/XTxkfKjEjo5FfVeCEPlj4=; b=f9IBsmbRhAjMsJ
	U4V71WG0ZBREwF/JpS9w3jQjMksRxuuhB+CzkDbLydKiNdgiA0TPKyUjgMrI4IuECirk8kY8IshHj
	oJfqnGAfMA1yXF8gcNqk2cirk9Oejp+/oZgSF8oCuxuzlx002Arg197J8x4tD7T6LfgE3C1TWRvW1
	ebQDJ7vj1QVZ+MICXGO//XEkDIDkp67839A54GFbhxO5NnSfOEpMZoEH4YSeeYNtmeZVG+NGYSLaw
	uTezxhcn20Ebce4aOEKGRpEeYbzdVqN5HdslB54RYdoXUe4ATbSqmlHO43AKvE3jIJMX76fv/Vutb
	bggul+b1/VV6F1LZBC7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeh47-0003Ly-FZ; Fri, 29 May 2020 15:36:59 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeh42-0003Lc-Fk
 for ath10k@lists.infradead.org; Fri, 29 May 2020 15:36:56 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590766615; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=R0S37/3Lq9MgkJb1uC/wBrJU6DhgGifbVcb6FAu1Uig=;
 b=g/BxSciezYXn9aFN0O6alwP1aiJ+/j56D+eFrc+GGnWht6Vph3D3NAFB+IG5c/+8VikNhWbt
 KSxZsEMZpW4m+LBhROGsyVdnO6PeLsEkztoOCXPCydjbFU0pyk4BuQETasXnrcIu2SgOFthh
 Xie0p7n0aLC0S3uSNDYsG8utOc0=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 5ed12c14bf0e32d2543fbf3e (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 29 May 2020 15:36:52
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0D032C433C6; Fri, 29 May 2020 15:36:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 74C76C433CA;
 Fri, 29 May 2020 15:36:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 74C76C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Sebastian Gottschall <s.gottschall@dd-wrt.com>
Subject: Re: [PATCH] ath10k: Avoid override CE5 configuration for QCA99X0
 chipsets
References: <1587649759-14381-1-git-send-email-mkenna@codeaurora.org>
 <20200505073422.BFA51C433BA@smtp.codeaurora.org>
 <63ec6f30-ee3b-c412-7c56-46d447b17c8e@dd-wrt.com>
Date: Fri, 29 May 2020 18:36:48 +0300
In-Reply-To: <63ec6f30-ee3b-c412-7c56-46d447b17c8e@dd-wrt.com> (Sebastian
 Gottschall's message of "Tue, 26 May 2020 17:29:24 +0200")
Message-ID: <87ftbisqgf.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_083655_343175_A99B2B73 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sebastian Gottschall <s.gottschall@dd-wrt.com> writes:

> Am 05.05.2020 um 09:34 schrieb Kalle Valo:
>
>> Maharaja Kennadyrajan <mkenna@codeaurora.org> wrote:
>>
>>> As the exisiting CE configurations are defined in global, there
>>> are the chances of QCA99X0 family chipsets CE configurations
>>> are getting changed by the ath10k_pci_override_ce_config()
>>> function.
>>>
>>> The override will be hit and CE5 configurations will be changed,
>>> when the user bring up the QCA99X0 chipsets along with QCA6174
>>> or QCA9377 chipset. (Bring up QCA99X0 family chipsets after
>>> QCA6174 or QCA9377).
>>>
>>> Hence, fixing this issue by moving the global CE configuration
>>> to radio specific CE configuration.
>>>
>>> Tested hardware: QCA9888 & QCA6174
>>> Tested firmware: 10.4-3.10-00047 & WLAN.RM.4.4.1.c3-00058
>>>
>>> Signed-off-by: Maharaja Kennadyrajan <mkenna@codeaurora.org>
>>> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>
>> Patch applied to ath-next branch of ath.git, thanks.
>>
>> 521fc37be3d8 ath10k: Avoid override CE5 configuration for QCA99X0 chipsets
>
> this patch will crash on ipq4019 devices. i reverted it and it worked again

Yeah, that patch is buggy but this should fix it:

commit 32221df6765b3773ff1af37c77f8531ebc48f246
Author:     Arnd Bergmann <arnd@arndb.de>
AuthorDate: Sat May 9 14:06:33 2020 +0200
Commit:     Kalle Valo <kvalo@codeaurora.org>
CommitDate: Tue May 12 10:33:13 2020 +0300

    ath10k: fix ath10k_pci struct layout

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
