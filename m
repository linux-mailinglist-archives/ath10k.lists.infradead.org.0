Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D9ED18B1
	for <lists+ath10k@lfdr.de>; Wed,  9 Oct 2019 21:23:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+va+Lg1xm00Ul9ZYaznlVzORec7W0pHOCfZaBkvFWgY=; b=oHjep1Mnngwn7PdrBDiEkMhcW
	1H77C6A3sj2whBovyc/l9WrshmGBVWOnO6xsQ66Ez91kKVXJ0bZDiVeMYLkG1yr35vkQno1I+FOx2
	0NBAPtOFxGBo8Ga8hdldmk5xtCBZdledHaGWqe8XUJkPRbpgMEnD0VRHJG05njvP66Advhz77z79F
	Cxt0xHCb5dboaPENDqyWdWSsT9OCKu6Oq5fJRXWVYzKqS38Umex6kRn3E25TKvazsdRXy8SsxXmzq
	CgLlzEpHo+k7PSkalumzaWr/nYDhsoszwO0ZJc5OjGB/wWREmZsnxoYwx2muRyPb1tzzm0dwai/+I
	5FuZfWbGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIHYh-0006Yn-Ak; Wed, 09 Oct 2019 19:23:39 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIHYd-0006XG-Ca
 for ath10k@lists.infradead.org; Wed, 09 Oct 2019 19:23:36 +0000
Received: by mail-lj1-x243.google.com with SMTP id a22so3705999ljd.0
 for <ath10k@lists.infradead.org>; Wed, 09 Oct 2019 12:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RjL6aeL+yB6TH6pYK3+ft/SKEqM4F474X+76FvzFX/g=;
 b=Ik6w0eB4orUeDmq8LzqH6DyV81I9I0LFBNRL/z8AXi1llhQHVMkjypPACqPElc8x2w
 c1XL6l/C0CqtG3jX05+8AxX8rnssUQd1VoUCj24+Ct3GjN5TsrCzWucUlQh6DRpSj5lH
 FB40Tz7KDlJbFV9STZQFwyIvooqAMLNbzVZ3EIGcY679sKOpzgclbMI0njxkHLbOlYJ0
 ZiewZi34+U4d4ul8HZXU8X9ULOuNKrDBtdsWPQSAmRCGe7JXPSF7ZuCjjbrlPmCOvOid
 ztgamoWlb6Hg0euNJ4cPFxtCk4ZAh83hbkcBJxDXE6OrLnynPhHtHzIA/Zs/6O9vnUu7
 8acA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RjL6aeL+yB6TH6pYK3+ft/SKEqM4F474X+76FvzFX/g=;
 b=CdldStmsr1SsXK+scuWDr6lW39V+6HwgF95I0iKwkS8Jp1/z6dcUiNnlFMhBhIQmcv
 NqFkjPV+V8VyxWELNGMR/QmuZaRKtVtDISc/8bsuxieMnTOJVuyd7cyBzeB4o68sLfSJ
 uxom/GbpmUI/qAj6ULFhn+NtC/n+Qmf/FmPkhuVpu9LVA9NZpAHLcTklEYmyoAa524LG
 /v4yzFAUvTzee5/RSYDu2/TY9xeT30R/bYzyz+m6ota7RV/u6TT4/PwliPgUhdKsKYzG
 si/4AqoDCx5iruqkL8gEi4cjtySdGoTjYR2Uo3hr6nfQZigdh3snHIQKsyFFgiAJyu0V
 5+Ig==
X-Gm-Message-State: APjAAAWTP+dZVhr0VarDuG+KrBunHoaQWDgGwZeZrr9GYU4QbPdQKtR9
 wwQJnWMbVS6v7sHkg66RKvhUnZvVpz0=
X-Google-Smtp-Source: APXvYqwAzAWlJ8momOLfd+IzLb8ETNR8DVUq0T2CQK01RB20qrbuF6Dp9LG7GLIhlUwcidi59JcwIA==
X-Received: by 2002:a2e:6101:: with SMTP id v1mr3434522ljb.132.1570649012345; 
 Wed, 09 Oct 2019 12:23:32 -0700 (PDT)
Received: from [192.168.1.244] (81-233-89-221-no75.tbcn.telia.com.
 [81.233.89.221])
 by smtp.gmail.com with ESMTPSA id 77sm648652ljj.84.2019.10.09.12.23.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Oct 2019 12:23:31 -0700 (PDT)
Subject: Re: [PATCH 2/2] ath10k: switch to ieee80211_tx_dequeue_ni
To: Peter Oh <peter.oh@eero.com>, Kalle Valo <kvalo@codeaurora.org>
References: <20190617200140.6189-1-erik.stromdahl@gmail.com>
 <20190617200140.6189-2-erik.stromdahl@gmail.com>
 <87eezw660r.fsf@kamboji.qca.qualcomm.com>
 <19f8023a-1943-9bf5-9a59-a7643f7692bf@eero.com>
From: Erik Stromdahl <erik.stromdahl@gmail.com>
Message-ID: <fd43b218-7dc7-22dd-664b-46c55c3dd94e@gmail.com>
Date: Wed, 9 Oct 2019 21:23:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <19f8023a-1943-9bf5-9a59-a7643f7692bf@eero.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_122335_453172_7CAAF593 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (erik.stromdahl[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
 davem@davemloft.net, ath10k@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org



On 10/1/19 7:13 PM, Peter Oh wrote:
> 
> On 10/1/19 4:48 AM, Kalle Valo wrote:
>> Erik Stromdahl <erik.stromdahl@gmail.com> writes:
>>
>>> Since ath10k_mac_tx_push_txq() can be called from process context, we
>>> must explicitly disable softirqs before the call into mac80211.
>>>
>>> By calling ieee80211_tx_dequeue_ni() instead of ieee80211_tx_dequeue()
>>> we make sure softirqs are always disabled even in the case when
>>> ath10k_mac_tx_push_txq() is called from process context.
>>>
>>> Calling ieee80211_tx_dequeue_ni() with softirq's already disabled
>>> (e.g., from softirq context) should be safe as the local_bh_disable()
>>> and local_bh_enable() functions (called from ieee80211_tx_dequeue_ni)
>>> are fully reentrant.
>>>
>>> Signed-off-by: Erik Stromdahl <erik.stromdahl@gmail.com>
>> I already applied this, but I still want to check _why_ you are changing
>> this? Is it that you want to call ath10k_mac_tx_push_pending() from a
>> workqueue in sdio.c in a future patch, or what? Because at the moment me
>> and Johannes were not able to find where this is called in process
>> context.
>>
SDIO irqs are threaded irqs (at least on my iMX6 board) and hence process context.
I will see if I can find a trace that shows the call chain more exactly.


> It seems Johannes wants to fix it in mac80211.
> 
> [PATCH v2] mac80211: keep BHs disabled while calling drv_tx_wake_queue()
> 
> Drivers typically expect this, as it's the case for almost all cases
> where this is called (i.e. from the TX path). Also, the code in mac80211
> itself (if the driver calls ieee80211_tx_dequeue()) expects this as it
> uses this_cpu_ptr() without additional protection.
> 

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
