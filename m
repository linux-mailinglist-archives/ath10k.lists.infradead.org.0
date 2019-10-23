Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2023CE13E7
	for <lists+ath10k@lfdr.de>; Wed, 23 Oct 2019 10:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MjxAkX5yCIpcera3OiqxAyyWZlumPbTjgC5SJntoJps=; b=YoMdHL4dLmpM+A
	+HeAx7PR5M/CcG1llIhT+ArUXA0JqcJM9JW3jqrLC4QMTAEdHiji3bKlYdkAkgxbNKsLMHZ0Kta3z
	oG/tK6QqNW2DznBb6Ba+xPYkdVbX02Hj2ty7LNpJ5EryZ+PTQLBS7DBEhux605ysaneg71UNymf6o
	VgeVblaiKPUdMwOvNrEyxuSrwY9vYyQSFLV6s3rKkn2emjw4YMU1X+p3uY1HNt+D7W7kpB8BG4i2x
	7iNFTf0trYGRKGbqU130PrTeePQFhjaJZQ+9pRoPBilhsTUOE94v+DcNfuMzi34NRIPmTwyf1YlsO
	sp+jd1U5bDIs8MGfCt6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNBqo-000133-IS; Wed, 23 Oct 2019 08:18:38 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNBqk-00012M-NT
 for ath10k@lists.infradead.org; Wed, 23 Oct 2019 08:18:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571818712;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dMntyq5PwrRGYuBlSqIS68v6l8cP2AnXbgbvi15hVuk=;
 b=TZqNIZaMdWvaG+1xzplibQjSBj9Fp9JzAQVjaAynOc7wwkoKiONqW9QpuizOR5531ZQkTv
 G+sLbpznNL+r1JYkBSshcpg0vP3m/cZ39T97BJ5yKe8DQGLcpsUasofC7PtOgwuqYm1V44
 NKFPwVmgEXsjUW+A6Mo7vJ3MfLjSl1A=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-9-OwKsu-5LMOG3DMkjXQJQag-1; Wed, 23 Oct 2019 04:18:29 -0400
Received: by mail-lf1-f72.google.com with SMTP id l2so1757708lfk.21
 for <ath10k@lists.infradead.org>; Wed, 23 Oct 2019 01:18:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=mjD0o77t+Auvb/gyXdsPqzlJMhacg2DNPI9oug4KIck=;
 b=gqO5gZMWswMv+nqyuj6Uxmf2iGtomsoDJt85fuRzG0AI34hLYVvAnfp33XuQHG9lUA
 sCDPIkYFYDOERMyc9EyGT4X0x3g3ogwlOlW+LxOgz/ICi7vEp8HOvzu+vk8NdNvriI7c
 SiYhYDcSQrezZJx/nFRnhcVQOmT9tqLaxNTjsEmdafGhRSPWIPvddv2rMDqK9i+Inb8P
 EBHQFeB0MZ7OjcGOoMD3tQJ3J5ZLaG+N7IxJ11H08CKhK9AfZQ4/Ko/C9dZuhaJIlvg4
 SRow9z9RON+zuTp68CIUiWA50QVTzeYkhXGvMbeRvEx8zrrmiJgF7WfUFGD7ZKrVqnwi
 Kp/Q==
X-Gm-Message-State: APjAAAWSjqLN9lNmCxf9qpZJyGQQ/yen4zYpCqugrG+vclpHblMj0vM0
 SjILbJAU79JE1PrVALKizv5j8D3PQrQrC5dP/bLfCJILY1sssQav6c9AKrbezUZ/RA7QeQw8iVh
 rBbp/E+r3XWbvU6Y1tiCaaA==
X-Received: by 2002:a05:6512:14c:: with SMTP id
 m12mr16498325lfo.55.1571818708099; 
 Wed, 23 Oct 2019 01:18:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw12XisTXp0JsBXP+E7cCNIxoO+MzzPrZ7Xr0/1jqeHs1U4vCJ3uSTbpvcqmUMpilIGOTQtkA==
X-Received: by 2002:a05:6512:14c:: with SMTP id
 m12mr16498305lfo.55.1571818707910; 
 Wed, 23 Oct 2019 01:18:27 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id x5sm12382584lfg.71.2019.10.23.01.18.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 01:18:27 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 65BE71804B1; Wed, 23 Oct 2019 10:18:26 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v4 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
In-Reply-To: <CA+iem5tZ95Jd9htLEdAJMubuFeWeUibK9MhTnTHLWNucX6_cRg@mail.gmail.com>
References: <157148503415.2989444.7391437309981941226.stgit@toke.dk>
 <157148503865.2989444.7118792679603045723.stgit@toke.dk>
 <CA+iem5sy16=xMZjJi1nKHrxP_xWHk-86G=ZLwtMMb04EOt5tQA@mail.gmail.com>
 <871rv5ovwr.fsf@toke.dk>
 <CA+iem5tZ95Jd9htLEdAJMubuFeWeUibK9MhTnTHLWNucX6_cRg@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Wed, 23 Oct 2019 10:18:26 +0200
Message-ID: <87tv7znact.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: OwKsu-5LMOG3DMkjXQJQag-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_011834_851690_93A05269 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

>> >> +               if (ieee80211_is_data_qos(hdr->frame_control)) {
>> >> +                       qc = ieee80211_get_qos_ctl(hdr);
>> >> +                       tid = qc[0] & 0xf;
>> >> +                       ac = ieee80211_ac_from_tid(tid);
>> >> +               } else {
>> >> +                       ac = IEEE80211_AC_BE;
>> >> +               }
>> >
>> > The tid/ac is incorrect either here or in __ieee80211_tx_status() when
>> > tested with ath10k. The ac is set to AC_BE with test done using BK
>> > class traffic, hence the pending airtime get updated for the wrong
>> > txq.
>>
>> Huh, well that won't do, obviously :)
>>
>> Any idea why it might be wrong?
>
> somehow  ieee80211_is_data_qos() returns false. Besides,  qos_control
> field doesn't seems to be set in ieee80211_build_hdr().
>
>> Hmm, I guess we could just get the ac using skb_get_queue_mapping().
>> I'll send an update with this fixed for you to try :)
> Thanks for the quick update. It is getting much better, but
> unfortunately the pending airtime accounting sometimes is still not
> correct and cause txq stuck occasionally.

OK, so that has to mean that there are packets getting dropped somewhere
without going through ieee80211_report_used_skb(). Assuming you're not
hitting the underflow warnings, just seeing the counter not get back
down to zero?

Could you see if you can find out if ath10k does that anywhere? I'll go
hunting in mac80211.

Looking for calls to kfree_skb() or kfree_skb_list() should hopefully
turn up something...

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
