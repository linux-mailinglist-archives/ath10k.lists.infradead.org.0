Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E96110EF03
	for <lists+ath10k@lfdr.de>; Mon,  2 Dec 2019 19:17:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=THQPS5xW+EBpwad6jB6uHECRxWnNPuP2mz2421G2AxA=; b=QS3iiY3ZQ9hRXP0/4QFIt45Xo
	LGjKmp09WBhUXU9KKOqkWrSwB6sdrdkPBN3Hc4gpHy2rgYvKxbu6nJAuggOjWjzZS8pHtVw0mJj0F
	SanA35A+ngAGDuTdmmU51UpSf3ODC7FkiXXd7tziF37hY7fuCP8e8e+Eg+bSyNVTgvSe9trf8adWs
	TEYx02LcKA9KvyC4Nh/xJbD0sIUoqg4pzZsWr05buo6Sx0YpcpixQqOpxPlyyCes/xh3stVXbgV2Z
	f/ukHdG6iozYeg4U/pCLvI/a91AoRkf/Ffv64FgL3g61ii+D+XSNPe/i1UBO0J9t1OjwGNU6a3kjH
	PBbfMZvcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqGP-0002fQ-D5; Mon, 02 Dec 2019 18:17:37 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqGL-0002ew-Cr
 for ath10k@lists.infradead.org; Mon, 02 Dec 2019 18:17:34 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 1544F137531;
 Mon,  2 Dec 2019 10:17:31 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 1544F137531
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1575310651;
 bh=/2PhJ5xFWBl4QKp0sJThhBjgqj8x5G6dX5WbrLLGJX0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=JAGV8C+RWwb5o5IPTnPBPM+9aoTmOfZqCQelhV3/V4iGkHhD55Z+syJ14fM89ZxNV
 7GqV228r75AOkhy/jxschYh8L9Y5clW7j8FtAnA4XjPrb8ePP6/vZI+NK39ejudH7/
 yVBOE/SvAwdKxwdn1syOVQR1iOjl0+0JS/7yNuPQ=
Subject: Re: [PATCH] ath10k: set WMI_PEER_AUTHORIZE after a firmware crash
To: Justin Capella <justincapella@gmail.com>, Kalle Valo <kvalo@codeaurora.org>
References: <0101016eaadee57a-54500c6d-4751-423f-8bab-5acd8fad2175-000000@us-west-2.amazonses.com>
 <0101016eb61d9520-b0306a23-c9b9-4b57-b708-9f80ac47eef1-000000@us-west-2.amazonses.com>
 <CAMrEMU-VOYeHO2F5AjyWJLqgEVq5HOUHZkMJqGio1qovFPo8ug@mail.gmail.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <b5404ac0-1be1-229f-a9e3-8033cdf7eea9@candelatech.com>
Date: Mon, 2 Dec 2019 10:17:30 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAMrEMU-VOYeHO2F5AjyWJLqgEVq5HOUHZkMJqGio1qovFPo8ug@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_101733_490626_E69AA024 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-wireless@vger.kernel.org, ath10k <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 12/1/19 8:45 PM, Justin Capella wrote:
> Are there security concerns here? Was the peer known to be authorized
> beforehand? Would it be better to just trash the peer in the event of
> a fw crash?

I think you should completely re-associate the peer(s) when firmware
crashes.  The driver does not cache all possible changes, so it cannot
exactly rebuild the config to the previous state.

Thanks,
Ben

> 
> On Thu, Nov 28, 2019 at 11:46 PM Kalle Valo <kvalo@codeaurora.org> wrote:
>>
>> Wen Gong <wgong@codeaurora.org> wrote:
>>
>>> After the firmware crashes ath10k recovers via ieee80211_reconfig(),
>>> which eventually leads to firmware configuration and including the
>>> encryption keys. However, because there is no new auth/assoc and
>>> 4-way-handshake, and firmware set the authorize flag after
>>> 4-way-handshake, so the authorize flag in firmware is not set in
>>> firmware without 4-way-handshake. This will lead to a failure of data
>>> transmission after recovery done when using encrypted connections like
>>> WPA-PSK. Set authorize flag after installing keys to firmware will fix
>>> the issue.
>>>
>>> This was noticed by testing firmware crashing using simulate_fw_crash
>>> debugfs file.
>>>
>>> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00007-QCARMSWP-1.
>>>
>>> Signed-off-by: Wen Gong <wgong@codeaurora.org>
>>> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>>
>> Patch applied to ath-next branch of ath.git, thanks.
>>
>> 382e51c139ef ath10k: set WMI_PEER_AUTHORIZE after a firmware crash
>>
>> --
>> https://patchwork.kernel.org/patch/11263357/
>>
>> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
>>
> 


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
