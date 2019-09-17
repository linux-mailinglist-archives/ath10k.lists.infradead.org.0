Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC19DB5476
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 19:44:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a639NtdNBz7MvY9DtwgqwnsjxKnhAaEiGXtD5QPpLL0=; b=btFUMggx4+bjpSvyPqb1hMLHC
	ONdEjFal+lwySrV9ObavE3aiF0K8+th12oOm/TW0UNWJpg7cyfvqZ0mmvafGDXbdHijP9ole6PsvJ
	rF4cK+rRhlOcW6rt+zFKUTS0kl8b/+X+m44wFhnnfR4IjVEWsAydqGNPPBm9I8BtBE9cFaKQsslzv
	o0lbAZX/CyAtZ0TgADb2tDtN7mptteSeFBcpYkFY8gTGmbtAb2HftVuBEbPm5ixC1fTsgg7bcmQYg
	s4Ob8kfhOoGW9k40REzQOCMA70V4Ry2eIc5AzwMpq+jWY/U5GdbMB65y8VJ7JkJ+XncaS3iEKBydX
	jPnAVj3LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHWL-0001az-Je; Tue, 17 Sep 2019 17:44:09 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHWG-0001Zw-NH
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 17:44:06 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 7398713753C;
 Tue, 17 Sep 2019 10:44:03 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 7398713753C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1568742243;
 bh=yKoFNLr7afSoYDBuTIU9ynCx61w6pq9x8JRWxKNnOWU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=cHjrOIzkxW+k3GDlHYyS4j8V/Zy/ms0xxAT9MpugG3LsCkKqUStOuiTEm4Wj2L60d
 2OXVfSjpztCqq3CCYmF94OJRyMQDMmM2UgQX3L4jGXIgLS/BZA/CscLOkcNG5a6uVt
 ehV192UVcTYbvwGRGO7L54B6nR0nIy32iYrmy+Dg=
Subject: Re: [PATCH] cfg80211: Add cumulative channel survey dump support.
To: Sven Eckelmann <sven@narfation.org>, vnaralas@codeaurora.org,
 ath10k@lists.infradead.org
References: <1526980556-26707-1-git-send-email-vnaralas@codeaurora.org>
 <1527069282.3759.16.camel@sipsolutions.net>
 <ebf1c95acb34649b3d2a5435142dc06a@codeaurora.org>
 <2083094.mFhUXK7yzB@bentobox>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <cc8bc245-034b-376d-3952-0c0ac6d51cab@candelatech.com>
Date: Tue, 17 Sep 2019 10:44:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <2083094.mFhUXK7yzB@bentobox>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_104404_814584_235A1716 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Johannes Berg <johannes@sipsolutions.net>, slakkavalli@datto.com,
 linux-wireless@vger.kernel.org, sw@simonwunderlich.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 9/17/19 10:27 AM, Sven Eckelmann wrote:
> On Thursday, 31 May 2018 11:06:59 CEST vnaralas@codeaurora.org wrote:
>> I will sent next version of patch with updated commit log.
> 
> Can you please point me to the second version?
> 
> Btw. I've just checked the minimal changes in ath10k to get this working. It
> seems we need SURVEY_INFO_NON_ACC_DATA in ath10k's ath10k_get_survey + memset
> of ar->survey[idx].
> 
> But right now the total time looks (especially) wrong to me. At least it is
> rather unlikely that I can have around 30 second active time delta in
> roughly 1 real world second.  Maybe a bug with the READ_CLEAR handling in
> firmware 10.2.4-1.0-00043 or maybe all firmware version? More logs about
> that at the end.
> 
> @Ben: Was this also what you've experience in the past with the 10.2 firmware
> bss_chan_info counter bugs or am I just misusing the functionality of the
> firmware?

Last I recall, the upstream code had several bugs.  Maybe some QCA
firmware person can let you know if they fixed the upstream firmware.

If you want to test against ath10k-ct driver/firmware, and if you still see bogus values, then
I can debug and fix it.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
