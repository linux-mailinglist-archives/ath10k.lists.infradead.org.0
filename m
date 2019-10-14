Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5F4D6C48
	for <lists+ath10k@lfdr.de>; Tue, 15 Oct 2019 01:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8P7IzaV8FoXMnzXJdzheJCoptT/VocmWNLFwwom0m2s=; b=J+THszXWlk546g
	/TOwZkXYzvJNbiHJBrU5HgA/F51JKzfbzq6Znl49dV40Ia4CT01JjU3ZXRgl4EQOeKPr22u5a6PD2
	yZz2csK/P1NKnKAyttQJyFi8PnBvr9SHXAXGvxFVj0YXkL1fufMSu1ldt+nwK9YUYsbnOZTkPQ/jx
	srsZ+9Dh4BjDPECqz3Em8X5hNkO1aXmjJiLZJugeg7Yxs8WhE7JZr4+tKfMKMqYQLsDeVEVuYYQuW
	YKKgKWxeNwPnXipNdhEwP6ZisPnvGXf10cUMyI/JS42FpPUBNHrjm0KcQGThORgJqPA5S5qTkDwzg
	ev83JHa3lRSCe9tX9QrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKAEN-0001XS-2D; Mon, 14 Oct 2019 23:58:27 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKAEJ-0001Wb-9f
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 23:58:24 +0000
Received: by mail-lj1-x243.google.com with SMTP id v24so18300506ljj.3
 for <ath10k@lists.infradead.org>; Mon, 14 Oct 2019 16:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JPvtAhVgHaqjs/EQbN+HHGKZb04AFtR23CWG2J/pYzg=;
 b=BJXFZaoaOEFudxdPwrAxofTfRLkpnPWPJeiWWKuTGp6VJoxGBpbQIwoa9yAw0ETpOR
 fUqWkUB2yKwREvl4aFh7E8dCUd6uvQa5j1M2ajhez0YC4t84HRFKrFMGe2CJ1HLyRgHe
 t1sAvNxmPRGMV4GaVU+YX30tBlmyR3YL8Yqrm4WsB+cSLCFQ4nwqEr7JvxJQVSjabjsI
 7mxRSVQrdLcw/VX4JDXWFPEu8u65ca8Ton/fO/Q6WwuzB0Nao6fkqz7hu1ToXUnAar2s
 NuQW/zAS16U3yKH4rdjaPOUo8Hto0zkaiRbCgOyxZO2l8fdfLDDCoOzUVtvz5UILL+X3
 0GMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JPvtAhVgHaqjs/EQbN+HHGKZb04AFtR23CWG2J/pYzg=;
 b=UBmtvBX4uaDtGYS/w1fbAU1wM8AuQe9re+GYhBVZwgav61R0S4IcA2/F9ehb3P1LWa
 EY2V0pNDla+jZ0U58qAluk0YCAii9A1hzOB3/6lEkOBs6hP1nIpMmhIs/AvJhNY/h1kV
 kkvq1WZdmxYK7QcOmLBMDzZD11KUbx93rre0KwmBpjWImp2tS1GECKyFt/27jxvatrds
 48EHPS/D/tjqpXdE1mSRHQiCbsMbk7EPnckSO06E+oIo++U+07FU978bwOZMktrGxTvf
 uLxFApDs5p5NdgZAKa0bcw3lixHkNPKYxJV7fPXYbz0vOZCwXmlszlrPbvZF43tAHPi1
 u+Fw==
X-Gm-Message-State: APjAAAWWat4Wr80SPJNT0odE5mRcDXMUaNbPxJYi7KIwYCV3yv2pRb8m
 omzoroYa11Int5YXwpgBUiKLdUMtezzxas4AKr6uxg==
X-Google-Smtp-Source: APXvYqwTYFbJV9swRZOOCbryRgaI72elPIj0s6C4+0Lirr86n5yZSHudIeTWAaUCYwEcefjmsTfd0Zn00oPouTLhXtQ=
X-Received: by 2002:a2e:9759:: with SMTP id f25mr9634973ljj.173.1571097495738; 
 Mon, 14 Oct 2019 16:58:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191011022413.176208-1-kyan@google.com>
 <87wod7y9ui.fsf@kamboji.qca.qualcomm.com>
 <87sgnvy9c2.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87sgnvy9c2.fsf@kamboji.qca.qualcomm.com>
From: Kan Yan <kyan@google.com>
Date: Mon, 14 Oct 2019 16:58:04 -0700
Message-ID: <CA+iem5uLYFVQjPaE1QDKc6c+eKz8Xd4LbwczYXOBKP3q+HHdBg@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] Implement Airtime-based Queue Limit (AQL)
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_165823_336310_1E7AAB8F 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: make-wifi-fast@lists.bufferbloat.net,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 Yibo Zhao <yiboz@codeaurora.org>, Johannes Berg <johannes@sipsolutions.net>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Kalle,

Thanks for the help and tips.  Will do that if I need to submit again.

I believe Toke will integrate this with his version and move the
estimating pending airtime part to mac80211, so maybe in the next
version, ath10k change is no longer required.

Thanks,
Kan


On Mon, Oct 14, 2019 at 2:18 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Kalle Valo <kvalo@codeaurora.org> writes:
>
> > Kan Yan <kyan@google.com> writes:
> >
> >> This patch series implements Airtime-based Queue Limit (AQL) in the
> >> mac80211 and Ath10k driver. It is based on an earlier version from
> >> the ChromiumOS tree[0].
> >>
> >> This version has been tested with QCA9884 platform with 4.14 kernel.
> >> Tests show AQL is able to reduce latency by an order of magnitude in
> >> a congested environment without negative impact on the throughput.
> >>
> >> [0]
> >> https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1703105/7
> >>
> >> Kan Yan (2):
> >>   mac80211: Implement Airtime-based Queue Limit (AQL)
> >>   ath10k: Enable Airtime-based Queue Limit (AQL)
> >
> > Please always include a change log so that people know what has changed
> > since the previous version:
> >
> > https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#changelog_missing
>
> Never mind, you actually had the changelog after the signature separator
> ("-- \n" line) and I automatically skip the signature :) So instead I
> recommend moving the change log up and above the signature separator.
>
> --
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
