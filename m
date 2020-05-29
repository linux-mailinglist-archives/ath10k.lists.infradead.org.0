Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9651E84A7
	for <lists+ath10k@lfdr.de>; Fri, 29 May 2020 19:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+jOg7Z1XUdHgVlkbFZy42pYr0sAhCCgyX+LwHj6P1mY=; b=Iau1v/rLuv5sxaXya03LnosB/
	6ATG7UnDGmXebMPFLbFtdyqz2l/K14BKPPXxf6ij2ZzB40po7qQWftgVbxnjORBpFlq2Eo23g052U
	flH9MwBfYEUSbbGYO+wSMNwArz8NHyPUFrj6EtPE14YiEBqniSfGhV0o03YnfLii3s94zxnRXC3P4
	CmcXXaWnFKUOVzxmP5Jhw+0CYjREOahjEwvfAu2lJhLWGYuN69M+COfmUAEPAyxqwNsmmRupJjC59
	E4qEYNeyHcql0f/84IkCfWHPeNOghW+VKvvLKKLpnhusOgw6eDSlOVWH0RmyDrpPy/QgUU/PXK+dq
	rFOzGX3Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeigF-0002sK-Q1; Fri, 29 May 2020 17:20:27 +0000
Received: from mail.as201155.net ([185.84.6.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeigA-0002qu-BH
 for ath10k@lists.infradead.org; Fri, 29 May 2020 17:20:25 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]:52504
 helo=webmail.newmedia-net.de)
 by mail.as201155.net with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.82_1-5b7a7c0-XX) (envelope-from <s.gottschall@dd-wrt.com>)
 id 1jeify-0006qE-2Y; Fri, 29 May 2020 19:20:13 +0200
X-CTCH-RefID: str=0001.0A782F25.5ED143C9.00A9, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=+sfk/qw/yE7gEzFHqbV4TA0D0rPny+zSVyE+eBhnsaQ=; 
 b=Nc6soMT435j/2GUQH2Typ7FTjQs233CSRoFtFPU1Ohnl3B8UenDRJ6S+BkwoGsQuTxylvUn1Bx99uQ+uQXiRI6VLkFxZ+7SMk2Ra1Xulc009RQDbfXfkymhc9VjcAnuc9//4I/6E9ej179v9qNUWoO1o+3YQ/qj9JD6pzuJ//OA=;
Subject: Re: [PATCH] ath10k: Avoid override CE5 configuration for QCA99X0
 chipsets
To: Kalle Valo <kvalo@codeaurora.org>
References: <1587649759-14381-1-git-send-email-mkenna@codeaurora.org>
 <20200505073422.BFA51C433BA@smtp.codeaurora.org>
 <63ec6f30-ee3b-c412-7c56-46d447b17c8e@dd-wrt.com>
 <87ftbisqgf.fsf@codeaurora.org>
From: Sebastian Gottschall <s.gottschall@dd-wrt.com>
Message-ID: <e105f898-85c0-b4e6-43e3-0d20d7a9590d@dd-wrt.com>
Date: Fri, 29 May 2020 19:18:51 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101
 Thunderbird/77.0
MIME-Version: 1.0
In-Reply-To: <87ftbisqgf.fsf@codeaurora.org>
X-Received: from [212.111.244.53] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <s.gottschall@dd-wrt.com>)
 id 1jeiaa-0004Kz-5E; Fri, 29 May 2020 19:14:36 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_102022_545758_48FF4C0D 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

will check it

Am 29.05.2020 um 17:36 schrieb Kalle Valo:
> Sebastian Gottschall <s.gottschall@dd-wrt.com> writes:
>
>> Am 05.05.2020 um 09:34 schrieb Kalle Valo:
>>
>>> Maharaja Kennadyrajan <mkenna@codeaurora.org> wrote:
>>>
>>>> As the exisiting CE configurations are defined in global, there
>>>> are the chances of QCA99X0 family chipsets CE configurations
>>>> are getting changed by the ath10k_pci_override_ce_config()
>>>> function.
>>>>
>>>> The override will be hit and CE5 configurations will be changed,
>>>> when the user bring up the QCA99X0 chipsets along with QCA6174
>>>> or QCA9377 chipset. (Bring up QCA99X0 family chipsets after
>>>> QCA6174 or QCA9377).
>>>>
>>>> Hence, fixing this issue by moving the global CE configuration
>>>> to radio specific CE configuration.
>>>>
>>>> Tested hardware: QCA9888 & QCA6174
>>>> Tested firmware: 10.4-3.10-00047 & WLAN.RM.4.4.1.c3-00058
>>>>
>>>> Signed-off-by: Maharaja Kennadyrajan <mkenna@codeaurora.org>
>>>> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>>> Patch applied to ath-next branch of ath.git, thanks.
>>>
>>> 521fc37be3d8 ath10k: Avoid override CE5 configuration for QCA99X0 chipsets
>> this patch will crash on ipq4019 devices. i reverted it and it worked again
> Yeah, that patch is buggy but this should fix it:
>
> commit 32221df6765b3773ff1af37c77f8531ebc48f246
> Author:     Arnd Bergmann <arnd@arndb.de>
> AuthorDate: Sat May 9 14:06:33 2020 +0200
> Commit:     Kalle Valo <kvalo@codeaurora.org>
> CommitDate: Tue May 12 10:33:13 2020 +0300
>
>      ath10k: fix ath10k_pci struct layout
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
