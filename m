Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386C51E81E9
	for <lists+ath10k@lfdr.de>; Fri, 29 May 2020 17:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWzLJrsjOepbbgvYH/pXPKBytVfyuHHLB3+Uaoe7+9A=; b=aX6AhgpFCqkP6P
	upSIDKQMtOWx5elWfOoTcRDe1S70VqpkrQ05gQRWvaX5hKtzwBAOmXj5EE9VP14AnOnGIbkzmRPma
	DqydZAWZ9Ty2a3HyvAQdVzwzsU0kmiKWLG7m7oImkVl4jVOr9+516SFFBhXsltuck5ZYBATe7h0M5
	cX6FSDwVRA8QChwH2fmPf2n03c3FhazUSDRy5JRh2ArpiOmBfviLi01fYsTfNX8uT40+hQdPlwb8W
	aGe+rbBqO55XGXxRYqeaorDD6A1t8dxoQOlU+WK8debkn18Ef1P9IhfnFoD7VlhMtGVIt617Fm70N
	E0rOaOGPbI0sa3Bidvdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeh23-0000aD-2h; Fri, 29 May 2020 15:34:51 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeh1U-00007X-6h
 for ath10k@lists.infradead.org; Fri, 29 May 2020 15:34:18 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590766455; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=4h6mUhCfTn/PPwY0CqyuZa1NJ92KFZY1OPYa8ryUDI0=;
 b=ntwiAqOg+zasFRl6kwaQ78OJkUJmKTT1qwhPczUN9ni4nUgXExmvmSbIvURI7XI8Aw0AK6aW
 zdJLKWfqbw6/P84dhmoXNINShRhdtsxV96jA0KuglEW9PNJFmUqsJGcVyboReNMVRTflFHro
 gS6bgMSkRoIzL2ukeHQb3Jx3JM0=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n04.prod.us-east-1.postgun.com with SMTP id
 5ed12b762c54998475d4127c (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 29 May 2020 15:34:14
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 1E463C433AF; Fri, 29 May 2020 15:34:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 5B55AC433CB;
 Fri, 29 May 2020 15:34:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 5B55AC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [PATCH v13] ath10k: add LED and GPIO controlling support for
 various chipsets
References: <1523027875-5143-1-git-send-email-kvalo@codeaurora.org>
 <b23e65cf-4be7-72db-7955-32eae196953e@dd-wrt.com>
 <3608947.bSrYYtX6KI@bentobox> <3445075.COMLMNsY4U@bentobox>
Date: Fri, 29 May 2020 18:34:07 +0300
In-Reply-To: <3445075.COMLMNsY4U@bentobox> (Sven Eckelmann's message of "Mon, 
 25 May 2020 18:04:49 +0200")
Message-ID: <87k10usqkw.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_083416_331596_F4A7474F 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Sebastian Gottschall <s.gottschall@dd-wrt.com>,
 John Crispin <john@phrozen.org>,
 Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 openwrt-devel@lists.openwrt.org, Ansuel Smith <ansuelsmth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sven Eckelmann <sven@narfation.org> writes:

> On Monday, 25 May 2020 11:22:13 CEST Sven Eckelmann wrote:
> [...]
>> And it still can with this OpenWrt version. But it doesn't seem to happen with 
>> the most recent OpenWrt reboot-13353-gb1604b744b. But there are nearly 4000 
>> commits inbetween. So no idea what changed (just a timing thing or an actual 
>> fix - no idea).
>
> Seems like there is a fix which solves some lost interrupt problems for 
> IPQ40xx. Without this change, I see the reported problem. And with the patch, 
> it is gone. Or in commits:
>
> * creates timeout problems: 46b949a067e5 ("ipq40xx: enlarge PCIe BAR size")
> * works fine: 18e942b6c4e5 ("ipq40xx: fix pcie msi IRQ trigger level")
>
> If you look in the git logs [1], you can see that the working commit is a 
> child of the broken one. So at least from my point of view, my initial report 
> is no blocker anymore for Sebastian's patch (or Kalle's version of it).

Great. If the patch is good to take can someone rebase the latest
version and resubmit, please?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
