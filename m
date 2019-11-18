Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D734100224
	for <lists+ath10k@lfdr.de>; Mon, 18 Nov 2019 11:10:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZm7BbE+M3iJwA8Y5kbSVbWrgySAH4821brwtpDAQXs=; b=GAgqW6ZraytVd7
	by96vcch9oHBd2Y+UKOE6oNgHWGn414T3GOCsycQxzoLUxCdZP6AdVoFkFk3vB2yNsaQpGG8YWVzm
	uVe/CSI5ZyEV7tXvdCGuhldb8qJ2GyL+K6UtN+eQOlXvvEOrtrzLQW9yVbtJUJQzTRdQfQW9+kRT9
	Oe4fkKZWqgjIXvSc1jbYdEfWWx0EIVOkdphikMKY7BOaV0pzK2KvU2EcncsXVVtri5VOgjhO7Niz/
	AzaaIqvlySr6x17y8WuQzfqWn3tvOYaiozIvbBgniRDLD1pEACbeA92yP2WOWE2lVIR49tTcfi8JP
	sz9t9Ja1jUyn4/D6pkRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdzZ-0002uF-Ms; Mon, 18 Nov 2019 10:10:45 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdzU-0002tI-SP
 for ath10k@lists.infradead.org; Mon, 18 Nov 2019 10:10:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574071834;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=G45mRJb2R55hTpqWOgmQqio32gnIzC1eCmtGv4EySOk=;
 b=K/w1M80Mv5I7PKE50VZYTfYU4JiYY3sT34AqIF+AnTtdbIx5pK9/oLcBeIWHJcxz5eAliQ
 mJN1U4wo5KeWoB09a/cqKv+sOtlhZaNJCVJnKrtZ70pB9xKTiTTac2xwweOl0LdPu9DnnV
 7KEEiAZI+j+xNOfNUQz7WEGams7AVpI=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-19-7A8IVx6UOkeyINrgIuE3Qw-1; Mon, 18 Nov 2019 05:10:32 -0500
Received: by mail-lf1-f72.google.com with SMTP id f20so1022335lfh.7
 for <ath10k@lists.infradead.org>; Mon, 18 Nov 2019 02:10:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=OIQCTBj1ZZClWzpd5quqOflGEWiO+R0tbK558qeMbh4=;
 b=bdTTBVIIfFC7klzgUbZGE47TQUtDKJNKcq9jYTGLxeL1B2LZTn1E8X0hedNmKQ54io
 qfQhKiQHNZjqukJzFrGUEGVrRtJaixSmmQbu/BnQb/VWaghOuY5rpgGgk0CTGhtCxh5d
 brEhX476V7iw277MDFvzbECpRho5jx2ehlSzqlUIOG4AMwLJwFBGJ+NBM0tLT4g3+InT
 LdPUBStbUEGOGwKA1GQ4GE8HyA5yi5eYN01k74L67YM742Lzgd2f26SgeUufoSjmDlL6
 Gz/PVR+bDDiacsXedCmNAapub3RwJlsvB6bTftxjYugTTxuJr4QU6YoqIWVmprLnQZYb
 79BQ==
X-Gm-Message-State: APjAAAXwu21clMa0fTcqdFlSMsu3mcjulfykAZdFER2KdU9a0fTSoYgF
 1aI61/CQeoJnkIFG5QVZwerpDQVkNN41Nw2eYu5943K7kZ3Dz0QYijxhV/IvOG8z4cYlolzVumb
 q/tR+fn+oudFQq9iPR7F1sw==
X-Received: by 2002:a05:651c:1109:: with SMTP id
 d9mr20056937ljo.192.1574071831436; 
 Mon, 18 Nov 2019 02:10:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqyx34G0PV/fe8D53a+QUqfm/vO0wSGhLgSfIKtC5qf0UKXzF5h1YYJhlKi/PARk15AMZvmAJA==
X-Received: by 2002:a05:651c:1109:: with SMTP id
 d9mr20056921ljo.192.1574071831296; 
 Mon, 18 Nov 2019 02:10:31 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id o196sm8775203lff.59.2019.11.18.02.10.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:10:30 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id DF6B118190D; Mon, 18 Nov 2019 11:10:29 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v9 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
In-Reply-To: <CA+iem5vVhwTsTvAgnC_HF0utMDSfgyLCe2M=gfUOFU2VjjCB8Q@mail.gmail.com>
References: <157382403672.580235.12525941420808058808.stgit@toke.dk>
 <157382404118.580235.14216392299709793599.stgit@toke.dk>
 <CA+iem5tF+TN-osfGxu=EU5Xt1Uq+PcKgBVaoAmZY3a3JzS5JzQ@mail.gmail.com>
 <87y2wgjas4.fsf@toke.dk>
 <CA+iem5vVhwTsTvAgnC_HF0utMDSfgyLCe2M=gfUOFU2VjjCB8Q@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 18 Nov 2019 11:10:29 +0100
Message-ID: <87muctcx62.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: 7A8IVx6UOkeyINrgIuE3Qw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_021040_997797_D84A3C6E 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

>> > Given the fact that AQL is only tested in very limited platforms,
>> > should we set the default to disabled by removing this change in the
>> > next update?
>> >
>> > -       local->airtime_flags = AIRTIME_USE_TX | AIRTIME_USE_RX;
>> > +
>> > +       local->airtime_flags = AIRTIME_USE_TX |
>> > +                              AIRTIME_USE_RX |
>> > +                              AIRTIME_USE_AQL;
>> > +       local->aql_threshold = IEEE80211_AQL_THRESHOLD;
>> > +       atomic_set(&local->aql_total_pending_airtime, 0);
>> Well, we have the whole -rc series to get more testing in if we merge it
>> as-is. It's up to the maintainers, of course, but I would be in favour
>> of merging as-is, then optionally backing out the default before the
>> final release if problems do turn up. But I would hope that the limits
>> are sufficiently conservative that it would not result in any problems :)
>
> Sounds good. The current default limits are reasonably conservative
> and are tunable via debugfs.
>
> I will give the v10 version of this patch serial a quick test and
> hopefully we can wrap it up soon.

Sounds good, thanks! Also, seems we got a 5.4-rc8 yesterday, so we have
another week before the merge window.

Johannes, any chance you'll get a chance to take a look at this sometime
this week? :)

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
