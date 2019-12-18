Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 404BA1252F3
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 21:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0LqrQHHDHpt348aySyWgPgGNkngE/iGd5WhxYBkAAxY=; b=HZJkcr1i5Avrdr
	yumtMAByO//v7aXuYaiQgAyz8rj8HKp+m7res0wluVJ41HTeckYgVZFKYjpZRB/knkh5InyGkRcOq
	7UddEFrUplCuF3Tb6EF1CNi1AbWrR9Ho0BW7Mq0mr2iCj3wXzI8TSFF6ABNjVjelA3fEl2zqSsvX9
	C5bANIPr9PGf2FHwhuKyMddH+lEVklseUy7dy6/AHoflf6mpZErOuo9h7G4qTZ4026433tIJh8Xgi
	cwuFu8/YhEpibVqd6nR3R2D7dzcs7ot0BMTOmgigtlxLeGiHK+JLhiozS30Vf1ZMouABl7Dd32juC
	Qp9vY7zbXIrEZibgUlVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihfiS-0001Tz-WD; Wed, 18 Dec 2019 20:14:41 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihfiO-0001RV-24
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 20:14:37 +0000
Received: by mail-oi1-x244.google.com with SMTP id b8so1822597oiy.5
 for <ath10k@lists.infradead.org>; Wed, 18 Dec 2019 12:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=ak4IdTSq0yrRUmmZNdJtmrrHyp40e8oWD/CHPhAwXvw=;
 b=TcBS08aVmpDwrjilD2Hfl2W4EuyALoxKCbi0uwSfm9uW42Ua+FZwLV1Xi3xO1XVHCf
 ltGJAIyt+tpifIEzauz2+mJ7DjB/ovGRqMoETMGNgzb4zMPg7j4BJ2UyJ9GOx/j8qZgp
 60bMGWFIhChv/5ynScY/X1TdQwXrHAlUqKFjP8j9ezPzGCafi/8h0vQsiR3G9JMz74BW
 JV3HoAZVp7GOArlhjPsXnRR2s+6bNFvmC1WDsS7VIiUUUQutRN65fz12BRhKATLy50zC
 qrIPBG82QpaBE5vT7Y8uasTDx227MBenXRMayYvj/BtY0R/lpiDi3X/cXTf3jc+ItzAl
 2ACQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=ak4IdTSq0yrRUmmZNdJtmrrHyp40e8oWD/CHPhAwXvw=;
 b=sn/V6TCt94FFTXcEul0grb1LKxATE09FI8QZDiyrg/hWb+MhUKCpwonuADZgRO93LT
 AK2ofSU7BoE0XaHs/dE5iF88fe3E4HkPejZNtAe7M34VpAJIsnQ60v4fGfeSLz1bjLrc
 dQP7IkR8yBGFoXy8Ls1llit425IsWXT820jcBWoIYtIm3GumM5dvsh6kBn6pXY32lh/t
 QkfRZ+aUW4REQ9k/6tHLoTAqMMIXIICB4RswgNANUZY5dLmZSrkXlQf5PgVrE+zGQfXH
 Fyb97LLbK0PRSQbNjig+mzOIdh844S5EquSxp8NLQkSDyHIGYyasl2/yL3vOIHVVWYvK
 xhCw==
X-Gm-Message-State: APjAAAXL0UNPoHbJqe5Gif2OEXaIF1alv5NMOZvp1DJu73lk/IQKIHaU
 QaO8Ho+cbpOwNd2D29Zb641qf1HKA+Ec9vMFkY0=
X-Google-Smtp-Source: APXvYqxcJq+FRaKbA1sazXdbynHRsoWhPOzQwa624odcO6H869EYMu+ka6tsC30WQqoO737vodHwt093EwkPhtN3DlE=
X-Received: by 2002:aca:7244:: with SMTP id p65mr1293671oic.50.1576700074510; 
 Wed, 18 Dec 2019 12:14:34 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Wed, 18 Dec 2019 12:14:34 -0800 (PST)
In-Reply-To: <20191217153000.76AB1C4479C@smtp.codeaurora.org>
References: <20191216092207.31032-1-john@phrozen.org>
 <20191217153000.76AB1C4479C@smtp.codeaurora.org>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 18 Dec 2019 21:14:34 +0100
Message-ID: <CAKR_QVJVfqid8i5PXj3Yg8VJjht=MF2fZg+twkLgEkKuMB2bbQ@mail.gmail.com>
Subject: Re: [RESEND] ath10k: add tx hw 802.11 encapusaltion offloading support
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_121436_098835_41A639D3 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vasanthakumar Thiagarajan <vthiagar@qti.qualcomm.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 17/12/2019, Kalle Valo <kvalo@codeaurora.org> wrote:
> John Crispin <john@phrozen.org> wrote:
>
>> This patch adds support for ethernet rxtx mode to the driver. The feature
>> is enabled via a new module parameter. If enabled to driver will enable
>> the feature on a per vif basis if all other requirements were met.
>>
>> Testing on a IPQ4019 based hardware shows a increase in TCP throughput
>> of ~20% when the feature is enabled.
>>
>> Signed-off-by: Vasanthakumar Thiagarajan <vthiagar@qti.qualcomm.com>
>> Signed-off-by: John Crispin <john@phrozen.org>
>
> Depends on:
>
> 50ff477a8639 mac80211: add 802.11 encapsulation offloading support
>
> Currently in mac80211-next.
>
> Patch set to Awaiting Upstream.
>
> --
> https://patchwork.kernel.org/patch/11293627/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
>

the changeset is missing support for 64bit targets in htt_tx.c

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
