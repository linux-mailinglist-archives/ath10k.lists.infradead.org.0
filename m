Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8230E1CD97D
	for <lists+ath10k@lfdr.de>; Mon, 11 May 2020 14:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9IJ4RE/yqV0ilpVFwrK0hTA6PRoNLyLihrEC8DvNLc=; b=XRTODMXplIXLt4
	yjK3NPRPfRCCS5P0UqddFGhS0VrdMODL8JGMEWgJ7e3DongsQ27TAcjw/6dTImzRE9OzOEHILL6bA
	89Xv+PXbYBj6WEhQugG+7CNA9zyR0dKeUdT3SC1sHK86GquvM7TRiaSrKQ4idJZdfD2owkxQBmHN2
	QuVvCOBtGvmwmojxw3VQvbO/LgTUJxL87LsSNEbk+Ks5t/FCZL5AjLxStQMqvJ9rPA8H5mecaFORf
	sNcGUjcQSCJLlOiL5QIg/T7vl2/9zAhz206gZteFQ5d14e9xV1Fr3XjJVVOqzrt13jc0YnQnPGIj9
	ucuIh5emd6v1mbPIZeJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7NG-0004Nt-TT; Mon, 11 May 2020 12:17:34 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7NA-0004NK-KC
 for ath10k@lists.infradead.org; Mon, 11 May 2020 12:17:32 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589199450; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=LJkqkksPCoqKwanmP1G5QFQXBwL68pGeFkXkb/IEhLI=;
 b=cWnChemK5HIM/nXCJAAFMH71rI/VJuHgMDSRfvrTdKET+CRYOY8sf4fdZ1bwUFJR/LT90EgW
 bVUdvaMZIYPfWvhTg+NFg/xcmr3g3bg3OZNu1W5It+jTJVVXgIl5i6k/rAJQyRdcL5a8dfui
 1xvpLg6CZc+cOajKOfTI9gy6cXY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb9424e.7fb160caae68-smtp-out-n04;
 Mon, 11 May 2020 12:17:18 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id A718DC44788; Mon, 11 May 2020 12:17:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F2C65C433F2;
 Mon, 11 May 2020 12:17:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org F2C65C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH net-next 2/2] ath10k: fix ath10k_pci struct layout
References: <20200509120707.188595-1-arnd@arndb.de>
 <20200509120707.188595-2-arnd@arndb.de>
 <87v9l24qz6.fsf@kamboji.qca.qualcomm.com>
Date: Mon, 11 May 2020 15:17:12 +0300
In-Reply-To: <87v9l24qz6.fsf@kamboji.qca.qualcomm.com> (Kalle Valo's message
 of "Mon, 11 May 2020 15:05:01 +0300")
Message-ID: <87r1vq4qev.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_051730_799450_75C5749F 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maharaja Kennadyrajan <mkenna@codeaurora.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 ath10k@lists.infradead.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle Valo <kvalo@codeaurora.org> writes:

> Arnd Bergmann <arnd@arndb.de> writes:
>
>> gcc-10 correctly points out a bug with a zero-length array in
>> struct ath10k_pci:
>>
>> drivers/net/wireless/ath/ath10k/ahb.c: In function 'ath10k_ahb_remove':
>> drivers/net/wireless/ath/ath10k/ahb.c:30:9: error: array subscript 0
>> is outside the bounds of an interior zero-length array 'struct
>> ath10k_ahb[0]' [-Werror=zero-length-bounds]
>>    30 |  return &((struct ath10k_pci *)ar->drv_priv)->ahb[0];
>>       |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> In file included from drivers/net/wireless/ath/ath10k/ahb.c:13:
>> drivers/net/wireless/ath/ath10k/pci.h:185:20: note: while referencing 'ahb'
>>   185 |  struct ath10k_ahb ahb[0];
>>       |                    ^~~
>>
>> The last addition to the struct ignored the comments and added
>> new members behind the array that must remain last.
>>
>> Change it to a flexible-array member and move it last again to
>> make it work correctly, prevent the same thing from happening
>> again (all compilers warn about flexible-array members in the
>> middle of a struct) and get it to build without warnings.
>
> Very good find, thanks! This bug would cause all sort of strange memory
> corruption issues.

This motivated me to switch to using GCC 10.x and I noticed that you had
already upgraded crosstool so it was a trivial thing to do, awesome :)

https://mirrors.edge.kernel.org/pub/tools/crosstool/

I use crosstool like this using GNUmakefile:

CROSS_COMPILE=/opt/cross/gcc-10.1.0-nolibc/x86_64-linux/bin/x86_64-linux-
include Makefile

I think it's handy trick and would be good to mention that in the
crosstool main page. That way I could just point people to the crosstool
main page when they are using ancient compilers and would need to
upgrade.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
