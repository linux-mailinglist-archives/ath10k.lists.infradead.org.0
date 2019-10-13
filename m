Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45664D5895
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 00:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ath72lTA/Vsk7Q+CG/InrL2K4goGJnL2jyk64kc6Rsw=; b=kJ0bh1v5ftxhefCiKb/wA+Dc9
	3la9ve9k+o0dZ17pyLWeXhmj7C6giPPZHVUR5xLfdL9ChBHo964fCBM5nlk/3uZcmGipkDKqMxrYL
	WJLpbt0gK7J4FU8l5HrZRI/Pb5guZtY1b8bVLtAA33p+JQII3pel2TdV8tHW0vj48TMrsx7WufxFB
	ohcCEePc53+U0XnC+v27038HdGf7GmjWTnZ+Rwjf6VMqk1vbJZzdvKULs38H3l3/5MKebc3ran7te
	GHkT+rZLTUCXsQWFagaMecJ9e73oLJyzGl8XZXuy/qslVfpscXvr6FTak9unPZGsw8FFkKdq9aDSt
	H2KS1Akqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJm9U-0000CL-HS; Sun, 13 Oct 2019 22:15:48 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJm9I-0007tv-KO
 for ath10k@lists.infradead.org; Sun, 13 Oct 2019 22:15:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=sAvABYYWkOqEUXstZ/Py+FTGTOMBRBR1llb5mPcMIpg=; 
 b=F92kOt8JrdrLwCex75w6QRWQUMv3/ZYlVPv+sRmtXoMn/IrdYgWd1d25oZL0CsqjTe2DTMr35CYVZgNzROJgBqeUXWBlF6oKNbsz7jNJb1hPwy5zoERsY4Rharx37MImavP+3YRDUlO63AotEpJVcsRJbILdcmj7zMhk+V+qZVc=;
Subject: Re: [RFC PATCH 0/2] ath10k: provide survey info as accumulated data
To: Sven Eckelmann <sven@narfation.org>, ath10k@lists.infradead.org
References: <20190918124259.17804-1-sven@narfation.org>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <9a9ec99b-9643-7288-eed5-b549a9fe1487@newmedia-net.de>
Date: Mon, 14 Oct 2019 00:15:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20190918124259.17804-1-sven@narfation.org>
X-Received: from [2003:c9:3f0e:8900:8835:685e:aa39:2c16]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1iJm8r-0004NH-Hr; Mon, 14 Oct 2019 00:15:09 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_151537_008233_6F7D6C42 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: vnaralas@codeaurora.org, linux-wireless@vger.kernel.org,
 Sven Eckelmann <seckelmann@datto.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

i checked your patch on 10.4 based chipsets with 9984. the values are 
now looking bogus and wrong at all. busy and active time time in ms does 
increase in hours each second
the problem seem to be that your patch is 10.2.4 only related. 
ath_clean_survey does not trigger on 10.4 so the values double itself 
each time the event raises since you add the full values and not just a 
delta on top

Sebastian

Am 18.09.2019 um 14:42 schrieb Sven Eckelmann:
> From: Sven Eckelmann <seckelmann@datto.com>
>
> Hi,
>
> it was observed that ath9k provides accumulated survey counters but ath10k
> neither provides deltas nor accumulated counters. Instead it returns
> some value which was returned at some point from the firmware.
>
> But as it turns out, this data is not reliable. To make it more useful,
> ath10k has to:
>
> * retrieve counters rather frequently for hardware which is known to use
>    firmware versions with low number counter bits (for only 14-30s)
> * clean up received counter values
> * accumulate counters from firmware
>
> A comparison of the resulting output with these fixes can be seen under
> https://stats.freifunk-vogtland.net/d/ffv_node/nodeinfo?orgId=1&var-node=ac86749f4d60&fullscreen&panelId=5&from=1568782046974&to=1568807068706
>
> The left side of the graph shows the output before the patches were applied
> and the right side the output with the patches applied. Just as reference, an
> ath9k device in the same building is
> https://stats.freifunk-vogtland.net/d/ffv_node/nodeinfo?orgId=1&var-node=ac86740037e0&fullscreen&panelId=5&from=1568782046974&to=1568807068706
>
> Kind regards,
> 	Sven
>
> Sven Eckelmann (2):
>    ath10k: report survey info as accumulated values
>    ath10k: regularly fetch survey counters
>
>   drivers/net/wireless/ath/ath10k/core.c |  8 ++++
>   drivers/net/wireless/ath/ath10k/core.h |  3 ++
>   drivers/net/wireless/ath/ath10k/hw.c   | 13 +++--
>   drivers/net/wireless/ath/ath10k/mac.c  | 52 ++++++++++++++++++++
>   drivers/net/wireless/ath/ath10k/mac.h  |  3 ++
>   drivers/net/wireless/ath/ath10k/wmi.c  | 66 ++++++++++++++++++++++----
>   6 files changed, 130 insertions(+), 15 deletions(-)
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
