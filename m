Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B203FFEC1F
	for <lists+ath10k@lfdr.de>; Sat, 16 Nov 2019 12:55:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGUg9J4bdjuDnNpwrKVCH/vrSoaK+H0VcHaMi6DcxL8=; b=dB5I5im3eeDYlD
	9Xx/f05SYCckKJCGNt4Pojv5Zokf8CNM9pArFjPjfodS7vmvEaP99pbEu1fQmOVUwILkJKBGvkoIG
	R+mn15Xu7vcTb8zeUpQynof9dWYTCb/eUKwuqoOgQYc8AaDR41AX73A80F3tEim1gsubcLqzG14hW
	vjwhcqBNDSeJ4RrTheJHhZYVFxKfK2hyS2eSNIIlVLf+ejWZrglMtTZZBsAT1TFLZCo8TVALE0FgN
	BAs7tZ7413cRvZy/sIVLEiTijZgl88EJrDWY7/aGOZoNlhZNfIcSbmRMAJCMT7fcfAlFmdl67W8Wt
	ekEiy40KUJJAI0R52+pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVwfy-0006eS-C6; Sat, 16 Nov 2019 11:55:38 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVwft-0006di-RE
 for ath10k@lists.infradead.org; Sat, 16 Nov 2019 11:55:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573905328;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Pocr9mxteUSNieGJ3i0GrJ3OYF+/Atfr3hbsYPy6vVA=;
 b=fyOiOZGzTstYu11u3rKgBmIuFwdNGMHfWoVoQb4Kkm7G6xW+yDGoeNclbwLg7BD03O0e9Y
 MhIEZaS3+nw5eGRg0nhJ+VbwPNPxEf81uBmtfZa6VxrbxNDrK7TQwCASHcMp/b5mkzJ4C5
 7cdOZ/LdQnqGXPU9dXd//ISvbRz2M7A=
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-212-noDXCtC3NBiGPq7GRby-KA-1; Sat, 16 Nov 2019 06:55:27 -0500
Received: by mail-lj1-f198.google.com with SMTP id x24so2122878ljj.4
 for <ath10k@lists.infradead.org>; Sat, 16 Nov 2019 03:55:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=n6c2pnbrFvBGhTNPEdW3eLVAGMawNGwiDmS2BKDIKsc=;
 b=HFsNS/9giy3XiH/9heleKd6sYrOGudH/jk/x4IYnkfD/Zr8GKu1fzLshRebvaQ2Cnk
 YOkIQ7Cz8ObDMz0ngEhbLXkJDgO1bSjJmadSOpbjcbfgbBHp7XKXk2kCBeDcIfTCvm1s
 rPhaWjMFNABjiSt4xXHcjgUai6iZWE7oNbInZfVl2myPbSiXCvG9Bq0zVS/ZKv27eH5U
 zGUSAwTkdAc6StWcCkOiZQQ+ykfyNG2aRuSpPWqKuGA5SwLCaxFPCozPjYa2A8wxmyVY
 861zbWV/F6BTUqZV+exWahdnSQ87+ZI2BhAIpk8SxJmeyunjsZUF7MS3DmgWw2t2kNQg
 fmxQ==
X-Gm-Message-State: APjAAAUKhAQMcN4pIPGItw1CvmJfrkqxxfp+ZY3ZzzdYFdJT2AMQ1Cdx
 EhHpUB0emedjsWYqv8V7VX8RjlOuGDZC8pEQK5oOhON96q31czBheOp78GW7/zZrvRsY5e1G+Cl
 s0VCiChuryTHT2HHxzQhxSQ==
X-Received: by 2002:a05:6512:1c3:: with SMTP id
 f3mr1144146lfp.25.1573905325640; 
 Sat, 16 Nov 2019 03:55:25 -0800 (PST)
X-Google-Smtp-Source: APXvYqwX+pIGhUsS/LCHnu6CdH7G0PaQC73fttIusOds0wbKPWxC4Nz0N/SiQfaz8Xc/AGJxAet2Wg==
X-Received: by 2002:a05:6512:1c3:: with SMTP id
 f3mr1144130lfp.25.1573905325430; 
 Sat, 16 Nov 2019 03:55:25 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id 4sm6212837lfa.95.2019.11.16.03.55.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Nov 2019 03:55:24 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id B0E3F181910; Sat, 16 Nov 2019 12:55:23 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v9 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
In-Reply-To: <CA+iem5tF+TN-osfGxu=EU5Xt1Uq+PcKgBVaoAmZY3a3JzS5JzQ@mail.gmail.com>
References: <157382403672.580235.12525941420808058808.stgit@toke.dk>
 <157382404118.580235.14216392299709793599.stgit@toke.dk>
 <CA+iem5tF+TN-osfGxu=EU5Xt1Uq+PcKgBVaoAmZY3a3JzS5JzQ@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sat, 16 Nov 2019 12:55:23 +0100
Message-ID: <87y2wgjas4.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: noDXCtC3NBiGPq7GRby-KA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_035533_954781_5F500AA1 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 linux-wireless <linux-wireless@vger.kernel.org>, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kan Yan <kyan@google.com> writes:

>> +static inline u16
>> +ieee80211_info_set_tx_time_est(struct ieee80211_tx_info *info, u16 tx_time_est)
>> +{
>> +       /* We only have 10 bits in tx_time_est, so store airtime
>> +        * in increments of 4us and clamp the maximum to 2**12-1
>> +        */
>> +       info->tx_time_est = min_t(u16, tx_time_est, 4095) >> 2;
>> +       return info->tx_time_est;
>> +}
>> +
>> +static inline u16
>> +ieee80211_info_get_tx_time_est(struct ieee80211_tx_info *info)
>> +{
>> +       return info->tx_time_est << 2;
>> +}
>> +
>
> set_tx_time_est() returns airtime in different units (4us) than
> get_tx_time_est(), this will cause the pending_airtime out of whack.

Huh, you're quite right; oops! I meant to shift that back before
returning. Will fix.

> Given the fact that AQL is only tested in very limited platforms,
> should we set the default to disabled by removing this change in the
> next update?
>
> -       local->airtime_flags = AIRTIME_USE_TX | AIRTIME_USE_RX;
> +
> +       local->airtime_flags = AIRTIME_USE_TX |
> +                              AIRTIME_USE_RX |
> +                              AIRTIME_USE_AQL;
> +       local->aql_threshold = IEEE80211_AQL_THRESHOLD;
> +       atomic_set(&local->aql_total_pending_airtime, 0);

Well, we have the whole -rc series to get more testing in if we merge it
as-is. It's up to the maintainers, of course, but I would be in favour
of merging as-is, then optionally backing out the default before the
final release if problems do turn up. But I would hope that the limits
are sufficiently conservative that it would not result in any problems :)

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
