Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B27B68249B
	for <lists+ath10k@lfdr.de>; Mon,  5 Aug 2019 20:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIiT3mFP85c1sdkmLNrAZHF1L/ZdgOtgQ5FeXWL+BS0=; b=I82WHeBiYpxgaL
	cQk4orSnc2wxA2gToawAesHWx9JJaxw+bjY36TjSKA14u+dNGZ6yvPFySd+f9jB6vMJ07Fnlu6Aq1
	gtKcYxjZHIY+hnYUF7nukBB+bAjTABtHt9FqbtovENVp3kEKZzENUiMCfFw9lcf+zYiL8KOdWVIZT
	rtkrVZqmU6vsYhrPFlCjXIrWWuSh1wuZvrb3Y/vJ5aU9MzacmI+TDCBlF8EIeU/aD8znvdZ+aKA5y
	ZCZMtqm1o9PAKOITbd4xPoYFVSj3qooTMmQvs/y8ecUcbeLwHeYjIwN+pMj65nZGGS1ekZL7klDIu
	K+ldLgwGZvXOedxBc/bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huhM5-0007pp-Mm; Mon, 05 Aug 2019 18:05:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huhLz-0007M6-H0
 for ath10k@lists.infradead.org; Mon, 05 Aug 2019 18:05:04 +0000
Received: by mail-pf1-x442.google.com with SMTP id g2so40038482pfq.0
 for <ath10k@lists.infradead.org>; Mon, 05 Aug 2019 11:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZSkdc0K+z32xxfAPnuWbM7lfH87BvTZ2fp0ZJPTc+Cw=;
 b=cXmi7mI9gwJdyWlkxh4sZXDNnwqAOM396pNmF+W1i3XDqQTScm/cCqOx5XVa2iLejA
 Okh9/6L40CfVbdqGr5Shz+jFD7Ag4pGdOQ5YZkQHcqPtoaotaiApMZfOYK3K3xpjM8y3
 X6Ed5z/AL5ANJinBmBbc4ZVFVOwIdGw3rVliUR+sERk+XF4QoMsaevs2YWxvmew9VYWq
 Z51shcbd7kkT6yVs5a0PR3kuVZrX6dYOWFQxYHglJWImyoqQ1pWdGm4f/BKeAB29XnvJ
 sDNuequqjPbD5nlB8EN26VK5jKITS6IBWUfs5JnUXPcqfTFCav1mYpLcbnJVOAh5a2YH
 Ztvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZSkdc0K+z32xxfAPnuWbM7lfH87BvTZ2fp0ZJPTc+Cw=;
 b=bfMUtefvyLSrKgnwS4BC+vKI0Ccxq5WBF7M/nCHVxMXmwe1wK8bFccs6/ICJi49i4N
 LplKqk8Hh6jh2PZuJ5/IOdeK16FL9Mx7Brh+zYEv88Z6aYX5K7wIu8YZ9S2AMuSKGkqv
 IlvaFhnqqLJxIYGednNhFW5r5FuVAd1RvXTbZCdO+NGzyyaUEzPXn5JGPQdOnhkoYOsj
 UQR6r//38F5IBxjgBtKkH+Fs/4vH+3myEaJKY/JfnEj78GTeCnOpTRuWmPz7oq2/N2ke
 Oov+dAOduUOxO1ZBnBVZmw3KoVDFmpaHhQiKYXcI1Non+3I1c/dpeO21hpTNVNiaJFCt
 eZiQ==
X-Gm-Message-State: APjAAAVnx/QQJ3CpNR8Ix4gRDlcUvWwTj4P9eovwwu6mFwVGja5BTP9U
 0b2SNbUpw9DmPyHsPktQ7o3M7A==
X-Google-Smtp-Source: APXvYqyqwv3DLgpNhtnK2vwj2OiJn5Vdw0hfYPmrR/vLdQkSLHUgx7cCtN15F4zNLbLljZ08yl4v8A==
X-Received: by 2002:a63:6904:: with SMTP id e4mr76419969pgc.321.1565028302610; 
 Mon, 05 Aug 2019 11:05:02 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id j20sm80470011pfr.113.2019.08.05.11.05.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 11:05:01 -0700 (PDT)
Date: Mon, 5 Aug 2019 11:06:33 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Govind Singh <govinds@codeaurora.org>
Subject: Re: [PATCH 0/3] ath10k: Clean up regulator and clock handling
Message-ID: <20190805180633.GB23928@tuxbook-pro>
References: <20190725174755.23432-1-bjorn.andersson@linaro.org>
 <196fa4aa63fd5135aead736396fe3f8c@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <196fa4aa63fd5135aead736396fe3f8c@codeaurora.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_110503_569141_382B30DA 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu 25 Jul 23:52 PDT 2019, Govind Singh wrote:

> On 2019-07-25 23:17, Bjorn Andersson wrote:
> > The first patch in this series removes the regulator_set_voltage() of a
> > fixed
> > voltate, as fixed regulator constraints should be specified on a board
> > level
> > and on certain boards - such as the Lenovo Yoga C630 - the voltage
> > specified
> > for the 3.3V regulator is outside the given range.
> > 
> > The following two patches cleans up regulator and clock usage by using
> > the bulk
> > API provided by the two frameworks.
> > 
> > Bjorn Andersson (3):
> >   ath10k: snoc: skip regulator operations
> >   ath10k: Use standard regulator bulk API in snoc
> >   ath10k: Use standard bulk clock API in snoc
> > 
> >  drivers/net/wireless/ath/ath10k/snoc.c | 324 ++++---------------------
> >  drivers/net/wireless/ath/ath10k/snoc.h |  26 +-
> >  2 files changed, 48 insertions(+), 302 deletions(-)
> 
> Tested on 845 MTP and QCS404 platform with normal sanity and driver recover
> cases for proxy votes.
> 
> Tested-by: Govind Singh <govinds@codeaurora.org>
> Reviewed-by: Govind Singh <govinds@codeaurora.org>
> 

Thanks Govind!

Regards,
Bjorn

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
