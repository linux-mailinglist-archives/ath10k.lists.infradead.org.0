Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594501E8EDE
	for <lists+ath10k@lfdr.de>; Sat, 30 May 2020 09:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mAn+82daEUaEulcXWIG1fopYMWtTz+J6f45V299Jcsc=; b=uMnrzh/mqDXTGzIqXvGlrMLlr
	hEx+O3Enys/Ee6V/5FvMDWbeJDUXL8uxavIMX0w/DNVmgBJcXi39Cd7DIMw/jqG9j4vJyrnow/w27
	A1lqULRySTQdUS6KgZwXVXrBuiVyEKRyyc+2Im7r25TdfP2ezQnavNVUHqGdciCyiYEvFIJy66m6+
	krbBDZW+85D13zjJFdWPEZw6QhzNIqs3Kr8kcBBp9NyZ9gWABAK/miuHGqfjdp6hTNyAW52wKQzXX
	VbXqHfKRfyUyyRFMWZJbCHC2UZS+EhbR/G9GUGBpYHf6f+tWUPdq2n8KwBbXhEak5niVjyyWkErfB
	c+LL0yP8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jevsv-00042Y-8Z; Sat, 30 May 2020 07:26:25 +0000
Received: from mail.as201155.net ([185.84.6.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jevsq-00041s-Jc
 for ath10k@lists.infradead.org; Sat, 30 May 2020 07:26:22 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]:57275
 helo=webmail.newmedia-net.de)
 by mail.as201155.net with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.82_1-5b7a7c0-XX) (envelope-from <s.gottschall@dd-wrt.com>)
 id 1jevsj-0001Tq-36
 for ath10k@lists.infradead.org; Sat, 30 May 2020 09:26:14 +0200
X-CTCH-RefID: str=0001.0A782F24.5ED20A31.005D, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=hpAf3k5+zKuUmkipxdTcNHnzg7Zb4Wa+lKZKeOtMMjs=; 
 b=Gn3MphOLfpuUctk+/Ys1B00X7QmgQVVjatzkCuWgCSOoecYEf5RK8LY8XlfObPmhlZ4nZ0UwUiSRJmDCZmsqYjSDE6F5CcVhEXXmfRiOxsGzJ6CDAG9tZjh4CF+yg7RtLCyi8BgnAzi98tfKDaduevRYqdTZIV4KhTY4b7CU5Vw=;
Subject: Re: [PATCH] ath10k: Avoid override CE5 configuration for QCA99X0
 chipsets
To: ath10k@lists.infradead.org
References: <1587649759-14381-1-git-send-email-mkenna@codeaurora.org>
 <20200505073422.BFA51C433BA@smtp.codeaurora.org>
 <63ec6f30-ee3b-c412-7c56-46d447b17c8e@dd-wrt.com>
 <87ftbisqgf.fsf@codeaurora.org>
From: Sebastian Gottschall <s.gottschall@dd-wrt.com>
Message-ID: <19bf39e9-cee5-109f-d68f-5cbf576cc871@dd-wrt.com>
Date: Sat, 30 May 2020 09:26:12 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101
 Thunderbird/77.0
MIME-Version: 1.0
In-Reply-To: <87ftbisqgf.fsf@codeaurora.org>
X-Received: from [79.249.181.60] (helo=[10.88.193.107])
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <s.gottschall@dd-wrt.com>) id 1jevoY-00062n-8W
 for ath10k@lists.infradead.org; Sat, 30 May 2020 09:21:54 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_002620_788276_115D03D1 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> Yeah, that patch is buggy but this should fix it:
>
> commit 32221df6765b3773ff1af37c77f8531ebc48f246
> Author:     Arnd Bergmann <arnd@arndb.de>
> AuthorDate: Sat May 9 14:06:33 2020 +0200
> Commit:     Kalle Valo <kvalo@codeaurora.org>
> CommitDate: Tue May 12 10:33:13 2020 +0300
>
>      ath10k: fix ath10k_pci struct layout
this patch seem to be totally unrelated to the crash issue, the patch 
was already part of the test tree while testing.
the crash is caused by ar_pci->pipe_config beeing NULL on ipq4019 chipsets.
originally pipe_config is allocated by ath10k_pci_probe. but 
ath10k_pci_probe is never used for ahb chipsets
so the code must fix ath10k_ahb_probe to allocate these fields, or a 
more generic solution must be found
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
