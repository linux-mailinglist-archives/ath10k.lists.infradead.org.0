Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BEA1C5B8F
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 17:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SInv+hP0SoAiKRS4AvHgP9kIpBmh8g0U2qEGTTSFtYM=; b=kYxsfEzk7EnyCv
	qBuVKsZyycWMk9iab17XxMfDAYxP3ZGz3d8fuV+65Be/kw+IdHf2TIWR+Ex7WNhpr+4cyLIPSHmGB
	CQMDWiQwpujyTuzHujUPVwcjOq8d1mVYpbDFbMQl73giz/cQpnb/CUiMrl+4wOV97Kmx09zydu/Nz
	SLqJd7gDJNJAZt1PEcWkPaBBLfpG5ya+NiDqBeHkWtbS+zS5e5fCoU5xU5h0yGBKuZmfdZs4b/72Z
	jFvW96mi7gfIDfXXAwxJqrvSdunUatbTYmpOTbUgr90ra8BQxnqQQbsa/EZeOkUQjeoYTAZ9eBpcP
	XUkeQZW1BgUkBLYuc5BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzdW-0007mn-UT; Tue, 05 May 2020 15:37:34 +0000
Received: from smail.rz.tu-ilmenau.de ([141.24.186.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzdT-0007lg-2c; Tue, 05 May 2020 15:37:32 +0000
Received: from [192.168.178.34] (unknown [87.147.56.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smail.rz.tu-ilmenau.de (Postfix) with ESMTPSA id A9725580248;
 Tue,  5 May 2020 17:37:27 +0200 (CEST)
Subject: Re: [PATCH 1/2] ath10k: use cumulative survey statistics
To: Sven Eckelmann <sven@narfation.org>, ath11k@lists.infradead.org
References: <20200504154122.91862-1-markus.theil@tu-ilmenau.de>
 <f772b7bf0eac31516a4e28719c1938f2@codeaurora.org>
 <2335594.cnkAv9Vaq7@bentobox> <1845755.pTfhzBy2qg@bentobox>
From: Markus Theil <markus.theil@tu-ilmenau.de>
Message-ID: <46ab4ffd-b512-de43-40bb-f35989d228b9@tu-ilmenau.de>
Date: Tue, 5 May 2020 17:37:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1845755.pTfhzBy2qg@bentobox>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_083731_269511_58F9D129 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.24.186.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-wireless-owner@vger.kernel.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Rajkumar Manoharan <rmanohar@codeaurora.org>,
 kvalo@codeaurora.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 5/5/20 9:49 AM, Sven Eckelmann wrote:
> On Tuesday, 5 May 2020 09:01:34 CEST Sven Eckelmann wrote:
>> On Tuesday, 5 May 2020 01:46:12 CEST Rajkumar Manoharan wrote:
>> [...]
>>> IIRC this was fixed a while ago by below patch. Somehow it never landed =

>>> in ath.git.
>>> Simple one line change is enough.
>>>
>>> https://patchwork.kernel.org/patch/10550707/
>> Because it doesn't work for everything. Remember that 10.2.4.x overflows=
 all =

>> the time (14-30s) because it used only 31 bit for the counters.
>>
>> But feel free to point me to the firmware version which fixed this.
> See also https://patchwork.kernel.org/patch/9701459/
>
> Kind regards,
> 	Sven

This patch already fixes the problem for me. I tested it on QCA988X hw
with firmware 10.2.4.

[=A0=A0 10.350919] ath10k_pci 0000:04:00.0: qca988x hw2.0 target 0x4100016c
chip_id 0x043222ff sub 0000:0000
[=A0=A0 10.350930] ath10k_pci 0000:04:00.0: kconfig debug 1 debugfs 1
tracing 1 dfs 0 testmode 0
[=A0=A0 10.351803] ath10k_pci 0000:04:00.0: firmware ver 10.2.4-1.0-00047
api 5 features no-p2p,raw-mode,mfp,allows-mesh-bcast crc32 35bd9258
[=A0=A0 10.385617] ath10k_pci 0000:04:00.0: board_file api 1 bmi_id N/A
crc32 bebc7c08
[=A0=A0 11.536818] ath10k_pci 0000:04:00.0: htt-ver 2.1 wmi-op 5 htt-op 2
cal otp max-sta 128 raw 0 hwcrypto 1

I also did not see the 31 bit overflow after a small amount of seconds.

Survey data from wlp4s0
=A0=A0=A0 frequency:=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 2412 MHz [in use]
=A0=A0=A0 noise:=A0=A0=A0 =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 -65 dBm
=A0=A0=A0 channel active time:=A0=A0=A0 =A0=A0=A0 5370225 ms
=A0=A0=A0 channel busy time:=A0=A0=A0 =A0=A0=A0 924199 ms
=A0=A0=A0 channel receive time:=A0=A0=A0 =A0=A0=A0 140 ms
=A0=A0=A0 channel transmit time:=A0=A0=A0 =A0=A0=A0 0 ms

Kind regards,
Markus


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
