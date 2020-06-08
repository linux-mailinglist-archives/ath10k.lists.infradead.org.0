Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B266C1F1753
	for <lists+ath10k@lfdr.de>; Mon,  8 Jun 2020 13:12:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQk9sEf02HJMMoyoaRFgBmAbLpstKRfE1bLUyjtzHhM=; b=hQ+uyuH8QmqZZd
	QqJHujRjCLOYNL2oK3VW0WH1HExp79Qsils60OQw9ES1VtMrsVfC4kUCKDxR6bAYilOicT3X4f7B1
	N/JL/if7WwrLVREyrwBMs5BP2oQEqvv1umaHg92hSJkiD7jtstpaKKBN/WGFIqECqGB/V5IGaFUnq
	8uIt5x9jEkKZlg1Bx8RAZICp/Cfkw/arHwY5NNaAnZrBz+VwTHZIf96SRluNb98Lg++NXF4TYvGkS
	hJNGeHxMNaCuXhcYwGW6Q234Px+/yiFvdmDKbIskTBRVZGZUHG+Mti7Qy+DOnPTOhTM4P4mn84C9G
	zrUGBxsD4i5F/WA+Ee8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiFhl-00014s-Oh; Mon, 08 Jun 2020 11:12:37 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiFhe-00014H-Cs
 for ath10k@lists.infradead.org; Mon, 08 Jun 2020 11:12:34 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591614753; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=AgG6aCY7Ww04BCSr/0NFNV9oITyR/P2bv0sxe5t0Ub4=;
 b=rN+87gwvQALBfkDTzUQ57JaTBuAcUzB5+/15wMfuOOPc7sq7aCYavStvmzpzIarojTKws4NJ
 Vc8ECuAK3ihYE6Jki/ve7zgLNBmEbCWgFVscfdhbzdM+R0Ad9QP/y3Tp+LyNMN2LuTYfzNCu
 BUhGbXQ4mlkLBeTLM/vxTLAv+Ug=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n15.prod.us-west-2.postgun.com with SMTP id
 5ede1d14f1889e857ae4d285 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 08 Jun 2020 11:12:20
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B3554C433CB; Mon,  8 Jun 2020 11:12:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 11DE2C433CA;
 Mon,  8 Jun 2020 11:12:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 11DE2C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Sebastian Gottschall <s.gottschall@dd-wrt.com>,
 Maharaja Kennadyrajan <mkenna@codeaurora.org>
Subject: Re: [PATCH] ath10k: Avoid override CE5 configuration for QCA99X0
 chipsets
References: <1587649759-14381-1-git-send-email-mkenna@codeaurora.org>
 <20200505073422.BFA51C433BA@smtp.codeaurora.org>
 <63ec6f30-ee3b-c412-7c56-46d447b17c8e@dd-wrt.com>
 <87ftbisqgf.fsf@codeaurora.org>
 <19bf39e9-cee5-109f-d68f-5cbf576cc871@dd-wrt.com>
Date: Mon, 08 Jun 2020 14:12:17 +0300
In-Reply-To: <19bf39e9-cee5-109f-d68f-5cbf576cc871@dd-wrt.com> (Sebastian
 Gottschall's message of "Sat, 30 May 2020 09:26:12 +0200")
Message-ID: <87blltke0e.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_041233_182657_099BB80C 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sebastian Gottschall <s.gottschall@dd-wrt.com> writes:

>> Yeah, that patch is buggy but this should fix it:
>>
>> commit 32221df6765b3773ff1af37c77f8531ebc48f246
>> Author:     Arnd Bergmann <arnd@arndb.de>
>> AuthorDate: Sat May 9 14:06:33 2020 +0200
>> Commit:     Kalle Valo <kvalo@codeaurora.org>
>> CommitDate: Tue May 12 10:33:13 2020 +0300
>>
>>      ath10k: fix ath10k_pci struct layout
> this patch seem to be totally unrelated to the crash issue, the patch
> was already part of the test tree while testing.
> the crash is caused by ar_pci->pipe_config beeing NULL on ipq4019 chipsets.
> originally pipe_config is allocated by ath10k_pci_probe. but
> ath10k_pci_probe is never used for ahb chipsets
> so the code must fix ath10k_ahb_probe to allocate these fields, or a
> more generic solution must be found

Maharaja, please investigate. It seems your patch caused a regression:

521fc37be3d8 ath10k: Avoid override CE5 configuration for QCA99X0 chipsets

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
