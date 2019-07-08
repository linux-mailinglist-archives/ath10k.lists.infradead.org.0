Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 572EA620D3
	for <lists+ath10k@lfdr.de>; Mon,  8 Jul 2019 16:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkXW6xt5QhUUBTcTa5tpCnLRnxqYwQKgaGjMKGpw3ps=; b=TSuBALWAew17uj
	TkC4RHe0Ij+QT8KetmFvQkGTNZtFBQr8tqgSC236Pv8MAkrSk3d7H8MmGQX8Q7GHIbw7lCREGCUyr
	3SxhTbSPgo3sgyl86FGHfDJtsXITP50kk7HGru1n8QRWgCvwwwscIBYi6bZo7BZ3lVezjUto1ZZcC
	396U0Nef0LnNgHQ6WKEVEw03qPzzsGO/CrMfFc8Q9Rss4MuNNSyG8rT0ysK0L7/JLBhgGHlQPpvwa
	yBH+pitrAqMVQQYT/Lz1nmzJBH3YHm6k5c30mt0cN7C8tIWGqtyzJmOVH2XWUiyf9mEu5Rn9FjmBM
	HJA8UY+dqLgdXmQauJQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUul-0001go-NE; Mon, 08 Jul 2019 14:46:47 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUuh-0001gE-Gv
 for ath10k@lists.infradead.org; Mon, 08 Jul 2019 14:46:45 +0000
Received: by mail-ed1-x544.google.com with SMTP id i11so14825036edq.0
 for <ath10k@lists.infradead.org>; Mon, 08 Jul 2019 07:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5eQOVvdsTaaanCiXUg5m0ecZfqkTs7/uYhCRVIzkQcY=;
 b=ho5fb5e98j7lt1EqeRVgFK9P2ThmVuNWY/IsNL32+L6vGvmk6b6O/bdL1Yanif0Ozb
 C+14ZlVaESAoumg1W88RpiOB+W8BfJ2H/bsHXNRP4oLpbwZzgBdgPq0Bp1hRpJv5YFT4
 WDHyzTLj8VC4p0fVvhyzGuAsTu+ztmqL3oC2L+mhVQ+lE4l3Y0p4pN9mbV+dBye4sIjb
 2gpvmBV2IMoHL6cl7qtkVIK/elGiX/5uPqRAU3xMsXVGRY76vEnTcLP2P1DHQ1SD2kFZ
 ESdKiA0/5bbWCBsdv0374XyjD05TZ6hgkjvFlYOximPS0FPAfpRsfSPK3110UeYli4Vr
 eBHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5eQOVvdsTaaanCiXUg5m0ecZfqkTs7/uYhCRVIzkQcY=;
 b=hDYt3HrC9cIp72Kdfu9fOSpFHlN9g2xtpnH4UXEPdvFyVe5pVkbC6/BCeX6VZ8iePo
 6ImuR0qbTaeIhPiax7N6HFwHUF345MbMV/HqjTK4VXDKenIcOfzYWj04Ai6ol2KU6ebv
 EyctOjsP0utcRtumuEaKXOo9mP8jZp+w3CkR5ogLYuwLAugIm2+w8t7U6DVNCBouZYWa
 lg1XxG/Y+yZqS4UFd+0QNxA32F/xzdnt2SZB3aWaORx3Z6x+DckAcFb8z14BSM0mtBvp
 /tJHSDC+H9JFZKaeDmQc/Dfq6WoAtW0vvrPqFgMDJyFTrPtuVF7MzrDuDZsWlMus+Zka
 AlRg==
X-Gm-Message-State: APjAAAWs4V5w4+xS9B33Roib7TAffiHhg49ojPr6vkrd40uOTnnOV15u
 Zz27E4ihLJinMb07I7f5wdo=
X-Google-Smtp-Source: APXvYqzsH/zRjVF76SiNwOOyuGr87Edn3PdTFH2U9QMtHFyQ3k6tAFR2z82Bhu61OHAzBrKaNrhaUA==
X-Received: by 2002:a17:906:454d:: with SMTP id
 s13mr17053544ejq.255.1562597201565; 
 Mon, 08 Jul 2019 07:46:41 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id j7sm5767060eda.97.2019.07.08.07.46.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 07:46:40 -0700 (PDT)
Date: Mon, 8 Jul 2019 07:46:38 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ath10k: work around uninitialized vht_pfr variable
Message-ID: <20190708144638.GA43693@archlinux-epyc>
References: <20190708125050.3689133-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708125050.3689133-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_074643_566632_2C37238F 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Sriram R <srirrama@codeaurora.org>, Miaoqing Pan <miaoqing@codeaurora.org>,
 Pradeep kumar Chitrapu <pradeepc@codeaurora.org>,
 Balaji Pothunoori <bpothuno@codeaurora.org>,
 Brian Norris <briannorris@chromium.org>, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
 Rakesh Pillai <pillair@codeaurora.org>, Wen Gong <wgong@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 02:50:06PM +0200, Arnd Bergmann wrote:
> As clang points out, the vht_pfr is assigned to a struct member
> without being initialized in one case:
> 
> drivers/net/wireless/ath/ath10k/mac.c:7528:7: error: variable 'vht_pfr' is used uninitialized whenever 'if' condition
>       is false [-Werror,-Wsometimes-uninitialized]
>                 if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7551:20: note: uninitialized use occurs here
>                 arvif->vht_pfr = vht_pfr;
>                                  ^~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7528:3: note: remove the 'if' if its condition is always true
>                 if (!ath10k_mac_can_set_bitrate_mask(ar, band, mask,
>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/ath/ath10k/mac.c:7483:12: note: initialize the variable 'vht_pfr' to silence this warning
>         u8 vht_pfr;
> 
> Add an explicit but probably incorrect initialization here.
> I suspect we want a better fix here, but chose this approach to
> illustrate the issue.

Yup, I reached out to the maintainers when this issue first cropped up,
should have taken your approach though.

https://lore.kernel.org/lkml/20190702181837.GA118849@archlinux-epyc/

Initializing to zero is better than uninitialized.

> 
> Fixes: 8b97b055dc9d ("ath10k: fix failure to set multiple fixed rate")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
