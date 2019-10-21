Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71555DF09F
	for <lists+ath10k@lfdr.de>; Mon, 21 Oct 2019 16:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivX9b89VQUfZNM7eelnObXjOUp4XpRBRgZnKVaP+XOo=; b=pdPvmxT3pqEtB6
	TbKmikD7HLIQPvgwlqIdGR3EA61RqiE6EyKurBhwQMDZpyLx5WN8N6rqFqAQ46+ZgTV1cuzty0967
	bSszNed8qR/xGKEF7U6BIRA7se6ONToy1Mr9IAfoJZMihe1ABkpWxFKBYDH+Ia8YtYmv5hsb5WWTK
	jsB791xdqFhWq6SPI1GvBfGGE7clp5hBrUe1j6kP5cD86weaX601GVM5kZ2GpeQ9VKdaN83zIIEWS
	8QhRsHMSPBnfFZ+0vScR/utjafGdK425KtYMucJV3oZQW/piTDfoX3d4wcl/jcK4XWyD6f7+OEV3i
	ZTw4grMverPSvsIbCYNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZ8D-0007Rr-72; Mon, 21 Oct 2019 14:58:01 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZ89-0007RN-3e
 for ath10k@lists.infradead.org; Mon, 21 Oct 2019 14:57:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571669875;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3LCLBxaSD8g38T8u/ybfkijweWWcwiPR1YNTgQYJONY=;
 b=gGf5qFuVWsa0QSikEMSn73CvvUeATeb1VVd45A+akFPKg+CvR97JUaj50XyVRuR/LLKSth
 gMvI084knV7XmszZoCC2jxZHnX692OIQb0x6LR3SYCMU+1NJ7aiDR7CxOFTftqOT3mkUPy
 hEiC/3l5uhBOCZA/knoJz7HcmT3Mc5M=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-155-iLrpxYTONDSVyMfzaYzmwQ-1; Mon, 21 Oct 2019 10:57:53 -0400
Received: by mail-wm1-f72.google.com with SMTP id a81so2491021wma.4
 for <ath10k@lists.infradead.org>; Mon, 21 Oct 2019 07:57:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=uq0uDmRtgXO3GMqtdwEBfqJdfQu+hMv3WbuD0weh130=;
 b=YZO+P0dP9AGn1MH1i6nO7SsLA+th7dDz8zED8PUHlkn5zZ+71UzRL5Y+znoXT32bRB
 vQ5ghSU0I8xwmPPb6YHcJiToaz9xz2qzR4hqy8+IJNJ/qUb23KovpRdvwKkHOKIY/YDX
 gy/R0JPQVNOpam0U5k6rZzQRcmIaepVuqklp7zpFO6NNtncA6ajDBwTIXwCvwvjbZmBy
 MOiD6KDenql24PtYFAVFXzzGQieWFPM3VNDPnEQwlnYFbB+9vDlFPSEaFlZ408uHCJy1
 Fkc+utuB1XEWehynEV4mwXw7x7ir2LP9I8U/dP4xnp5CqzHR3Fj2/JEWKsWPlm5TdHQS
 O9MQ==
X-Gm-Message-State: APjAAAWM9Y3hMe4ZGf+mtN69Fnj7TOJAPaTqlk8Wz/bASlg4i/1wd6pO
 zSusipoQno42as1m6rJoI4lSBpyaJijdCmxpQetH5UqoP1SldHGhpvbjy9t9LrpoIXbsiABv+Q4
 /8dD2z1fzFS946kJq6h7QLQ==
X-Received: by 2002:adf:dbcf:: with SMTP id e15mr20788530wrj.134.1571669872539; 
 Mon, 21 Oct 2019 07:57:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwjEPCqaFlqG75Sr20Nuzi+1rlCvDUYLDh1LXlWULjlqxXbBBkdJRH2br3nUhJY4SbuXETleQ==
X-Received: by 2002:adf:dbcf:: with SMTP id e15mr20788514wrj.134.1571669872348; 
 Mon, 21 Oct 2019 07:57:52 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id a189sm2135474wma.2.2019.10.21.07.57.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 07:57:51 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id BB7831800E9; Mon, 21 Oct 2019 16:57:50 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kalle Valo <kvalo@codeaurora.org>, Kan Yan <kyan@google.com>
Subject: Re: [PATCH v4 0/2] Implement Airtime-based Queue Limit (AQL)
In-Reply-To: <87r236tbgz.fsf@kamboji.qca.qualcomm.com>
References: <20191011022413.176208-1-kyan@google.com>
 <87wod7y9ui.fsf@kamboji.qca.qualcomm.com>
 <87sgnvy9c2.fsf@kamboji.qca.qualcomm.com>
 <CA+iem5uLYFVQjPaE1QDKc6c+eKz8Xd4LbwczYXOBKP3q+HHdBg@mail.gmail.com>
 <87r236tbgz.fsf@kamboji.qca.qualcomm.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 21 Oct 2019 16:57:50 +0200
Message-ID: <878speqh75.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: iLrpxYTONDSVyMfzaYzmwQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_075757_326632_FE02DE12 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: make-wifi-fast@lists.bufferbloat.net, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Yibo Zhao <yiboz@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle Valo <kvalo@codeaurora.org> writes:

> (please don't top post)
>
> Kan Yan <kyan@google.com> writes:
>
>> I believe Toke will integrate this with his version and move the
>> estimating pending airtime part to mac80211, so maybe in the next
>> version, ath10k change is no longer required.
>
> What do you mean? Are you saying that I can drop this patch:
>
> [v4,2/2] ath10k: Enable Airtime-based Queue Limit (AQL)
>
> https://patchwork.kernel.org/patch/11184783/

Yes, we're trying to do it all in mac80211. See
https://patchwork.kernel.org/project/linux-wireless/list/?series=190333

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
