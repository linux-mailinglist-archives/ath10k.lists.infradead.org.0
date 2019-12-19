Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A40125EF1
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 11:32:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h471S+69/BQV0o3b+WCeL3hjQJsuuIIHEvV5m/mGXrI=; b=mP91EaM3VyH2Vr
	iNd892NZOJeAElqs5uohfvuuwOuab324p+4LAeJda2FTHK7/zz+7M7uuHMCd/QQ5txiVZko/QRd1y
	2u5W7m6dkjxUsWNywIth4CGlvTtUHDwKSpKwG+lglE20YpFRE8Aa7gkNLsKBGr6nJwIuEtK2A87HV
	LZUIQ4HAAunJxkEuddU0wbxv95ETvl+O3NxaZBC2BEIQ7XxDizI7/T8tKilchBP9OkHb5e+164u0w
	APtCVsWl0WjtSNmuJPQSWns8bx1fw7sH1V6MZv1OeraE4yQIJJIFRJsImLN4Y3hagrhhrv/zZyacS
	U2z+AsZFqT2gAC1xnqaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iht69-000473-IZ; Thu, 19 Dec 2019 10:32:01 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iht65-00046Y-GE
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 10:31:58 +0000
Received: by mail-ot1-x342.google.com with SMTP id 77so6653337oty.6
 for <ath10k@lists.infradead.org>; Thu, 19 Dec 2019 02:31:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=DLEszXaacQuiY1BjIoGn6m52GPWZFUM5WSBXLC5+nqU=;
 b=j/yeYtDpICBA+SJzbt05tOW/PahPplwQV4ZOJ9ucdGkgfFDcE0G1s9YyKMo2zsCHZN
 /PBs5juTVvOBGQAGIaTXLno8RiuQ6Mpg6yL809m0APZBQ1ZFXf1C8qICBQgq8+hTgsj8
 U04JYdlI/rbv4P16uzFKDMtLoZFu8ywikTH6CIerUJhpSiWDI+jH/kfpyJm7ftDORh7h
 IE0MDcC40edGmUDkf+IjzbZ10Zy/y2MGLZyPd5k9DghKFR9+C2RqE08w1hRr/D74Jz5q
 fwQs7YuY50XJhVg3Cjo1S+cGbkhG1DQSNXq0dNfk8WWXW1KS9gqiQ3jThuIwBiV74P5n
 +2FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=DLEszXaacQuiY1BjIoGn6m52GPWZFUM5WSBXLC5+nqU=;
 b=WX/mQpJZ31I+t4rom6t94jELygSLRmLDlGR0XRq2Mpdfs864OZnHvxWntHVWXtYUdp
 XonfbP0kU/emrOF1Ul+xVKylOWZpLIfGT+ARdzGjE4sOHkhguJX3KsqHLgrAPyXNRq7p
 MbIOKjYl56NnKuQarl1y1d6a2V9OI2Rq6JuKxN1o3K4sJJ0qndJTcvR2m3rGE4ZzTg4Y
 DULQB0XMvcAHpe0hATopZhRrq6H7DkPljaTgMhkldtsCWJ+GtAKxoAGWeED+pH+yzjwh
 xLNASJ53pVoqyNXmcNtw9a4LfdAhSQMLjTMwBr+yMKqn4FaPdxRT3sXclrI0YTssjJc0
 u0zw==
X-Gm-Message-State: APjAAAVJoJf7kWWnYoG92aI7IkIIUyf+c7KqVpfTIgyr4imMfYYTd6rK
 ssJ5jiDSNNdaIUbGy42/6kTFPyJwDq9ORLXicYY=
X-Google-Smtp-Source: APXvYqx71mdsFZDaUgRQ7Z+PzB+5glVEdowDZbofAdFjoFbb7Nfqol4pOGu/W4hQH/S8p7UB/s8LOlTjKTGOuP443YQ=
X-Received: by 2002:a05:6830:1116:: with SMTP id
 w22mr8263740otq.63.1576751516699; 
 Thu, 19 Dec 2019 02:31:56 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Thu, 19 Dec 2019 02:31:56 -0800 (PST)
In-Reply-To: <d24c7821-4e5e-28b5-5d1d-f076cfd762fc@newmedia-net.de>
References: <20191216092207.31032-1-john@phrozen.org>
 <20191217153000.76AB1C4479C@smtp.codeaurora.org>
 <CAKR_QVJVfqid8i5PXj3Yg8VJjht=MF2fZg+twkLgEkKuMB2bbQ@mail.gmail.com>
 <CAKR_QVJ1PhCHfAO5Rp6pm-wjAO-HcZiq-9Lw67FzBFO5jjYtbA@mail.gmail.com>
 <d24c7821-4e5e-28b5-5d1d-f076cfd762fc@newmedia-net.de>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Thu, 19 Dec 2019 11:31:56 +0100
Message-ID: <CAKR_QVLKfoo15EqszGSZ9zf6YnfEkih9=PeB0d92k3i0SJZfxQ@mail.gmail.com>
Subject: Re: [RESEND] ath10k: add tx hw 802.11 encapusaltion offloading support
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_023157_565224_3BE1C1F8 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 19/12/2019, Sebastian Gottschall <s.gottschall@newmedia-net.de> wrote:
>
> Am 18.12.2019 um 23:45 schrieb Tom Psyborg:
>> ccing Johannes Berg since upstream change (mac80211-next) breaks build:
>>
>> In the commit log its written: remove SUPPORTS_80211_ENCAP HW flag
>>
>> Any sane reasons for doing that? mac80211 fails to build because of
>> removed flags, this is on backports-5.3-rc4
>>
>> Other than that the feature delivers the promised:
>> QCA9880 iperf between wired and wireless machine
>> native mode 449Mbps
>> ethernet mode 522Mbps
> johns patch does not work for qca9880 wave 1 chipsets. it works only for
> 10.4 firmares like 9984, ipq40xx  etc. the 9880 has no benefit from it
> and has no effect.
>
> so your test seem to have false results
>
> Sebastian
>
>>
>

no way. check that you applied code correctly and enabled ethernetmode
parameter. iperf or ping also wouldn't start from wired machine in
ethernetmode unless pinged from wireless machine first

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
