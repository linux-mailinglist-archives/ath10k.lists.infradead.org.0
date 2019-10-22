Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 625C1DFE0D
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 09:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nOY8zL25cOXV9bYalVG16muwvsKUlbUW+DT7E6vpgr0=; b=lwM2uZg6w5K1nH
	XA4VlMMgiGp2SsqGNZiQOZ1eqB/twPv29sjlUon09wgDdFQ2wQjBeEcSqNwfxwrmNdMLkZ0U33GeJ
	uLDPbanKIa9mwA1J7gSi0GWWo7a8dbg0AtGK0L8y3SxghCQEMj+u34R7jBWu2n5XHRE36YszhQkV/
	eFOytMsdlDnVQzHDR81dsQqKN+UdhALPByLLCFcfHoEthotSC0ayw607eetkkM2LpGacPGZBwlTKB
	cLuIOCmLe6poU7EIkpmBfH7n1My1CxXTMBA44/4xdSkFGI2kcM281at1jY2w9UlklKXmuxMkDClvk
	3FVLNXR2N+GGM8HWOlxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMoNa-00087q-MP; Tue, 22 Oct 2019 07:14:54 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMoNX-00087H-97
 for ath10k@lists.infradead.org; Tue, 22 Oct 2019 07:14:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571728489;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qwsp5QQ6bMYXnb9ux6HCdVcJSILSyF0BVLpabeoGiOo=;
 b=J3GcxAJKg/Rx29dDn4GqOGuSy0Y+Tk+l0UY9Q10Azaych6MQiOHvii9WE0VVhyq7fN71CD
 pF1DqdnDpuAzEXdQcMP/NS7VsULDwnMeaevM0J8c5qcukHNAwfKHqOHLxMgBpgz5U/W2FX
 78UAYfv5jVUL0T6KwO8M5MTssqvwHW8=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-28-UpFE1kRuOwqbasPI4YDDjg-1; Tue, 22 Oct 2019 03:14:47 -0400
Received: by mail-lf1-f72.google.com with SMTP id q3so3222106lfo.8
 for <ath10k@lists.infradead.org>; Tue, 22 Oct 2019 00:14:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=YEnLndySMbqJ6YLxHTcryFiXLrxuubnh33DpZ1uyCVw=;
 b=k7hxsB8BX5gNHoRF5dCjoiW+MxfBli57ozZSq90l4gfYPR7tB+t4bjV28ZUXH6+VwB
 AdYO3v7FSeoCnXzJNhsM5EcvDsoCs534lyltVhZjj7Jxnb6a6eiR4aush7KMHTWjFvW7
 hwe+1fUjjamafVht+K/8RFAkjPNis5xzZGBJh52rrf1AsqlBwwaJIYZZsBmfcYP0H/DA
 mAG6BQtqoyXsgoj/ZIQwvlfu9UPXVR+YmHEQ60BM28TZzhuiOmYDLpMxlHkQXQQ6C9Xv
 8V+o9hjl5p05t9ccILg2TSk75B1v+AzXwr0q7kot7PzGwVHfBmEGa3H01alzZ8RnyYSR
 p7kw==
X-Gm-Message-State: APjAAAWAf7JZe+5GYwzJ2l03nlv3VPX5OMvi/EWnzhAsK0HvVJcd21MN
 eQz6padNW7qwZgwOGdiOCtzBNbStI/be6VHNS0QwZZ4n9w6JIEy6JIswDggxZUmuswsSGEK41Xi
 wKovL1RdZYu9dLdj0vukg5A==
X-Received: by 2002:a19:ee15:: with SMTP id g21mr9604027lfb.27.1571728485934; 
 Tue, 22 Oct 2019 00:14:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwCSIOYeZTnkeEphbi//1B6x6TmIFBb5CxKOQTHtWQ/QW3TmwG4Neq6wU/IdDUdAzg548Su5Q==
X-Received: by 2002:a19:ee15:: with SMTP id g21mr9604021lfb.27.1571728485759; 
 Tue, 22 Oct 2019 00:14:45 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id p22sm8765694ljp.69.2019.10.22.00.14.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 00:14:45 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id EE22D1804B1; Tue, 22 Oct 2019 09:14:43 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v4 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
In-Reply-To: <CA+iem5sy16=xMZjJi1nKHrxP_xWHk-86G=ZLwtMMb04EOt5tQA@mail.gmail.com>
References: <157148503415.2989444.7391437309981941226.stgit@toke.dk>
 <157148503865.2989444.7118792679603045723.stgit@toke.dk>
 <CA+iem5sy16=xMZjJi1nKHrxP_xWHk-86G=ZLwtMMb04EOt5tQA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 22 Oct 2019 09:14:43 +0200
Message-ID: <87o8y9p7z0.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: UpFE1kRuOwqbasPI4YDDjg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_001451_396852_6F753F93 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
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
Cc: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kan Yan <kyan@google.com> writes:

>> +               if (ieee80211_is_data_qos(hdr->frame_control)) {
>> +                       qc = ieee80211_get_qos_ctl(hdr);
>> +                       tid = qc[0] & 0xf;
>> +                       ac = ieee80211_ac_from_tid(tid);
>> +               } else {
>> +                       ac = IEEE80211_AC_BE;
>> +               }
>
> The tid/ac is incorrect either here or in __ieee80211_tx_status() when
> tested with ath10k. The ac is set to AC_BE with test done using BK
> class traffic, hence the pending airtime get updated for the wrong
> txq.

Huh, well that won't do, obviously :)

Any idea why it might be wrong?

> The rest of the patch seems to work as expected, after I did a quick
> hack to release the pending airtime from ath10k_txrx_tx_unref()
> instead, where the ac/tid can be directly retrieved from struck struct
> ieee80211_tx.

Awesome! Thanks for testing!

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
