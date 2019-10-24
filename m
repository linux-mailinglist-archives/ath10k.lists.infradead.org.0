Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56ACE2DD3
	for <lists+ath10k@lfdr.de>; Thu, 24 Oct 2019 11:44:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RuvE3BofO2L/YUvBl8VfDJ767+GpNLZxdTpXdVvu9Z0=; b=aBdteUWXpCPfIcbpW3AhRVntd
	COjvSZyJy7paDvwnGeokLminopN7QwvCYOHx7gDflj8Cun5m/Jyrfw8lKr+KgOIuWZ2rT8zDyJMFj
	HxhjamTRk/uDM/5HT0G8oypcd3SWELASrFIhKxbCrDLAg/7qMvI/J23GZyLql3zTKom/l8hft4yrl
	7Z+rIcIc/9wGJWV/RLTUPucRU7I1Q8uLv8z43DU5+dDWSNpsLM74rsRJeVkCaHxz6DRmtojialtlm
	ftoD1QSTlxKdUG01Rj4ZE37bLaYji1egTvi1ze7sTOzggUV1mCNTUoWTvpv6Rq+9PNRvja5hmOiVg
	isod7Q2mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNZf7-0008D7-Ml; Thu, 24 Oct 2019 09:44:09 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNZbZ-0004Te-56
 for ath10k@lists.infradead.org; Thu, 24 Oct 2019 09:40:30 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D55C361371; Thu, 24 Oct 2019 09:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571910028;
 bh=RpzuRCtxTdpM4TGsOHhiUmecfsb9FisvPIpB9QSVE7w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=m3AXPMMIbW66Yw22ud4YBlJilKD24bw5XL8yDzC8HL5xGD2Kp4tEjqvlPzo+vDBnF
 kQgWjhnqUA/+8AhUqin+05X/91tF9vkrWD/c/LP1rtnPqL2cHNFsoz7voji4p5sCx6
 J87y8jOVEnhfHHoEtuIMxhB2A/wBpIMKsGezKs/0=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 068CD6135A;
 Thu, 24 Oct 2019 09:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571910026;
 bh=RpzuRCtxTdpM4TGsOHhiUmecfsb9FisvPIpB9QSVE7w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EO3iRyBJhIHdc5BGNEaeEcAAESxwhomaOc6oQbg3Vl7M3FYHT8robYoL3dd4ymdjE
 O/THd85vxj2C6utsg3rX5ZnyTehRINtZiMIjT4Ob3yvTRHqOWmJmbs1A5LBe/2la1s
 TdH9XUBvvFHh5ImRfBd6+tiqbaOGzv7G2J5aYsc4=
MIME-Version: 1.0
Date: Thu, 24 Oct 2019 17:40:25 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v6 2/3] ath10k: change max RX bundle size from 8 to 32 for
 sdio
In-Reply-To: <87r232sdeh.fsf@kamboji.qca.qualcomm.com>
References: <1569402639-31720-1-git-send-email-wgong@codeaurora.org>
 <1569402639-31720-3-git-send-email-wgong@codeaurora.org>
 <87r232sdeh.fsf@kamboji.qca.qualcomm.com>
Message-ID: <c2227ffd5901b03a2874fddb98298e0d@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_024029_243117_2E1ED116 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-10-24 17:25, Kalle Valo wrote:
> Wen Gong <wgong@codeaurora.org> writes:
> 
>> The max bundle size support by firmware is 32, change it from 8 to 32
>> will help performance. This results in significant performance
>> improvement on RX path.
>> 
>> Tested with QCA6174 SDIO with firmware
>> WLAN.RMH.4.4.1-00017-QCARMSWPZ-1
>> 
>> Signed-off-by: Wen Gong <wgong@codeaurora.org>
>> ---
>>  drivers/net/wireless/ath/ath10k/htc.h  | 12 +++++++++---
>>  drivers/net/wireless/ath/ath10k/sdio.c |  4 ++--
>>  drivers/net/wireless/ath/ath10k/sdio.h |  4 ++--
>>  3 files changed, 13 insertions(+), 7 deletions(-)
>> 
>> diff --git a/drivers/net/wireless/ath/ath10k/htc.h 
>> b/drivers/net/wireless/ath/ath10k/htc.h
>> index f55d3ca..7055156 100644
>> --- a/drivers/net/wireless/ath/ath10k/htc.h
>> +++ b/drivers/net/wireless/ath/ath10k/htc.h
>> @@ -39,7 +39,7 @@
>>   * 4-byte aligned.
>>   */
>> 
>> -#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        8
>> +#define HTC_HOST_MAX_MSG_PER_RX_BUNDLE        32
> 
> So how do I know that this change doesn't break any other hardware? I
> did a quick review and I think it's safe, but the commit log mentions
> nothing about this.
the real max rx bundle is decided in ath10k_htc_wait_target.
it is the min value of HTC_HOST_MAX_MSG_PER_RX_BUNDLE and the value 
reported from firmware.
htc->max_msgs_per_htc_bundle =
			min_t(u8, msg->ready_ext.max_msgs_per_htc_bundle,
			      HTC_HOST_MAX_MSG_PER_RX_BUNDLE);
> 
> Please clarify and I can update the commit log.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
