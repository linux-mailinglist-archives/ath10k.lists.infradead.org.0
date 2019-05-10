Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F31AA19E87
	for <lists+ath10k@lfdr.de>; Fri, 10 May 2019 15:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OEnmCC14ltiy1LOm6wL/u8CJ8UiBqyC7QtdJvD2+m8s=; b=UXEi3vzeHlt+lKPHrvnO2y6A0
	TYU0h/Dkn4XVq4LKLA/26sGyzk3tKsK/an0aZRXRWnmPNnnxJ/tGOry0Cnavkj0p5Pm7KhYPEypDI
	7CSIIjsy+0dinf9ZmpP8te3pOCg7uwSEUY2stjME8aL3wSH3kTUhNXBZe0LFvAN2mfuc5dhHsAUJp
	Lstqlno6hczCMhcWmexATLX41w4dcaXXey9+gRrTtJe7C1TeBfhjGJi+Y1Np08G8Q1M/eieIaUhNm
	JAvVxqWxwpQIwqMTIFk3ppIIjgvdszod97IHM/e3R4HEVjUaJf7QypU+tV6y75EEaOU0CjtDTZJcc
	cW6Sn4y1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5yb-0005B8-42; Fri, 10 May 2019 13:54:17 +0000
Received: from [208.74.158.174] (helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5yX-0005AV-0W
 for ath10k@lists.infradead.org; Fri, 10 May 2019 13:54:14 +0000
Received: from [192.168.1.47] (104-235-164-208.evrt.wa.frontiernet.net
 [104.235.164.208])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id CD96513C283;
 Fri, 10 May 2019 06:54:11 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com CD96513C283
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1557496452;
 bh=SD2iaM25OGZpVoHMXCi7d1tiOWYCcYtQ0kNfQVS6+Ec=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=U22QaP23wkNdjAUxm+UXVnDaQFKGPQzgvmRnDt+tmjZLauikdxmmLoj/MNAIXXQh5
 QyYlF/2JfsG/Yy09B8u50VuLXfSqu5SITtBkDcefGt08ZIMEEIH/Hj9TqU+EXsHQDD
 KCsuCmyyMOWapBOMGjxAbbPnt/Ag52xObnSz48Ro=
Subject: Re: ath10k: wmi service ready event not received
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Kalle Valo <kvalo@codeaurora.org>
References: <CAHk-=wim_asb1MRpis39SDghBNN5SpKDvUvF6cTtwa9w8cS8_Q@mail.gmail.com>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <6e530d73-91e9-faaf-31d0-cd5fadc66ffc@candelatech.com>
Date: Fri, 10 May 2019 06:54:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wim_asb1MRpis39SDghBNN5SpKDvUvF6cTtwa9w8cS8_Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_065413_097796_816BA39D 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org



On 05/10/2019 05:28 AM, Linus Torvalds wrote:
> Hmm.
>
> I have a nice new laptop, and it works fine. Except today it lost
> wireless, and I have no idea why.
>
> It's not happened before (but it's fairly new and I'm actually on my
> first trip with it), so I don't know how common this is, but the
> kernel messages seem to say that the cause of it was
>
>   ath10k_pci 0000:02:00.0: wmi service ready event not received
>   ath10k_pci 0000:02:00.0: could not init core (-110)
>   ath10k_pci 0000:02:00.0: could not probe fw (-110)
>
> and then nothing works. -110 is ETIMEDOUT, fwiw.
>
> Rebooting got wireless back. It's possible I could have done something
> less drastic, but I was thinking that it would be the new kernel and
> rebooted into an older version. But then rebooting into the new one
> afterwards (double-checking before starting a bisect) and it all
> worked.
>
> Is there anything I can do to debug this if it happens again?

Please provide 'lspci' or other info on the NIC chipset, for reference.

Sometimes a work-around is:

rmmod ath10k_pci ath10k_core; modprobe ath10k_pci

Sometimes you will get a firmware register dump in this crash case, and then someone
from QCA might can get a backtrace if you post that with the chipset info and
such (or if it is one of the NICs my ath10k-ct firmware supports and you can reproduce
an issue with that firmware, then I can debug it).

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
