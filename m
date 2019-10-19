Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B01DD866
	for <lists+ath10k@lfdr.de>; Sat, 19 Oct 2019 13:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TvE5ImlXfq9wUTjDR+hk3Ms13F4lOHN/vU6FINag2AU=; b=OU/nrfuc99ggC2
	ytuWapXx53QnRydkW1k5lMnHHF56p/7Anutw27liHDTFIAiu3hEhhN+tj4bmS8RD6ezJ0uY3NJVvY
	wvOXPK71za391A1zdPg0p9eiFIeJkVSm4GhXa+iXzRFCQJQq1MTa+x03S3pEo+likqOHSyONrDFMh
	2+7cQw7WVLTjuiacTSc0zTMv4CWJhqLvfCkqqatJWQ6euyvdkRRgL6kP4DS3meWHqSoaPXuugVYtU
	srSIpeNbeeULhHpEJ+KQbn5T0cOY4LUkL0xGdBe4Q4fiylkBGSIEx5OHso+t284QYa6aHKpQiB8qH
	OoDYaSXyFA84IF2qtpUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLmfX-0004AO-RS; Sat, 19 Oct 2019 11:13:11 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLmfT-00049y-Of
 for ath10k@lists.infradead.org; Sat, 19 Oct 2019 11:13:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571483585;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WoX9rczeRjvya0vnh4YYflEgbgCXdBdatjIIvrFPWu0=;
 b=G4j6VK88IkZHi0mgijP7CU7D3mtahrhhYpkQfwsKayzn2tEdky44BWa3Y1vIzeaSgLn68m
 jMRqrOTsCQha0iXoGyqz2cF9lyOR62lnS+WppYUpx4mYNcyZLMPIhsMXvTEQv2zn4FvWe4
 TLWipl3DtILyIlOPsO//gRz4FadngXw=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-43-2-Y7U91_MCGPx2p4gJ060Q-1; Sat, 19 Oct 2019 07:12:58 -0400
Received: by mail-lj1-f199.google.com with SMTP id p14so1609537ljh.22
 for <ath10k@lists.infradead.org>; Sat, 19 Oct 2019 04:12:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=M4GgkX+LRADBECdK3BnJ0KmXqiIAAwYR2Rj8nOCvbRc=;
 b=PWy27CnBy7Yz7vaSXoBfbgUvvL2DYD9ukuG1+pfMStK2ukEUamfAaxWVII1BirpKfn
 otTkPBldo7mWKZPcorqgOXlLuRTP0mzS7skQI38WJTMF9QoEhXv7mKPP/fIbMG+Z7j4v
 Aa/b+yTP7Ofl4RxfqsEk4lWh4IYBlJ3aehxLQjdUrQFcRr5GHHO/beHo8z+Dbu3prmBF
 svSHnHlR/P8O9TEzb5TmhVmck551gkMI09AsZ764+Hw+MCau2T6/ybgCy21m+3ImRM6L
 x0TZ0HDV/cSMADD39R2TOxvGTNYC52f5ceWcAuwbPpBYu0bIjnYoZjYZ47A5+Feth/pB
 WIQQ==
X-Gm-Message-State: APjAAAUEHb70ja6+Tugc6rmRvyZGmhvOLY2ZPv3eKOMkCsnxOQyEmjnr
 NKnyKDwepDuiWfn8zer8WjLl0Z5M3WNwack5rC8iSOKs2EHfej6LNWOchaHJQ0YsKMDPwe0Zfsf
 TwOm1W5Jip2kAgNztvBwFrA==
X-Received: by 2002:a2e:a0d6:: with SMTP id f22mr9186475ljm.74.1571483577551; 
 Sat, 19 Oct 2019 04:12:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzlAKTSJxvndxc9u4z5wrZ6m3ed9972rGIVuaUby4/A2GFHKgjGkWh5J+VqEVLYMg27m8c8Kg==
X-Received: by 2002:a2e:a0d6:: with SMTP id f22mr9186462ljm.74.1571483577382; 
 Sat, 19 Oct 2019 04:12:57 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id e19sm3391039lja.8.2019.10.19.04.12.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Oct 2019 04:12:56 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 967CE1804C8; Sat, 19 Oct 2019 13:12:55 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v3 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
In-Reply-To: <CA+iem5sCTsPe4PW=0j20NoAratvdCvB0ss7zO3wMWLcirXsLgg@mail.gmail.com>
References: <157140962094.2866668.3383184317264069493.stgit@toke.dk>
 <157140962534.2866668.1182822483250825739.stgit@toke.dk>
 <CA+iem5sCTsPe4PW=0j20NoAratvdCvB0ss7zO3wMWLcirXsLgg@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sat, 19 Oct 2019 13:12:55 +0200
Message-ID: <87o8ydc7k8.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: 2-Y7U91_MCGPx2p4gJ060Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_041307_877361_E9545DD8 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

>> +       if (local->airtime_flags & AIRTIME_USE_AQL) {
>> +               airtime = ieee80211_calc_expected_tx_airtime(hw, vif, txq->sta,
>> +                                                            skb->len);
>> +               if (airtime) {
>> +                       /* We only have 10 bits in tx_time_est, so store airtime
>> +                        * in increments of 4 us and clamp that to 2**10.
>> +                        */
>> +                       info->tx_time_est = min_t(u32, airtime >> 2, 1 << 10);
>> +                       ieee80211_sta_update_pending_airtime(local, tx.sta, ac,
>> +                                                            airtime, false);
>> +               }
>> +       }
>> +
>
> It should be:
>                          ieee80211_sta_update_pending_airtime(local, tx.sta, ac,
>
> info->tx_time_est << 2, false);
>
> The airtime rounded to 4us (info->tx_time_est << 2), instead of the
> original airtime should be used when registering the pending airtime,
> to keep it consistent with airtime subtracted when the skb is freed.

Yes, I realised that last night as well. The rounding is also off (max
is 2**10-1, not 2**10. Will send a v4 :)

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
