Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E8AF5EB6
	for <lists+ath10k@lfdr.de>; Sat,  9 Nov 2019 12:23:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XmwXVQ80JNf2njbIsBY9EXjAw4FJk1cYmKdqHzLrjA=; b=hOpr1nz1fZR27O
	kAY5FImSNB33Ov7vQf3xDLGNyOGcbjHcZoPXrz6qWaHkqJa35geXr10uU8xClftfB6HUDsmhzSWal
	Ovpo+Y8hb0pI8VMmGhHZKuJkTea/ist0oLuyypeERJzYEIx55sWtNTribJv9GBztpkxNpMVssN7CD
	WnFXO5xkabVE+EKzhn6/ghaTimQWnu286EZDV+Nwc+MyecJsf6E9YKVlcrsaINBDMa0+eGCg1eRuH
	zDQu2PMseVFy32H9KJIver105UpI3Wo3qJ3BsM0UQTJaAtMH/Fq5Z+IotA6syjgecleb0D28heMDo
	KzZnpjq9HIAHWNlN2ACw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTOpX-0003bA-SI; Sat, 09 Nov 2019 11:22:59 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTOpU-0003al-IQ
 for ath10k@lists.infradead.org; Sat, 09 Nov 2019 11:22:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573298574;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ygt9ehkmdDMxdmk4kMVpOxO+qyc90ZiyWuvotbEdwzQ=;
 b=BGGO1W1yhi4PUN7lepeE4WUiG47PeFO0apnH/nQLsT9lCw1FVkZ5oExrC6VI2D5sAx5byD
 7ioZP/BM8XWnm0Lb7KZNlFUW88LyDJ02jMg7rBL1RErfTLy13PBxFnvaUjAlXd+3hn9cv5
 haO9AoO50lPruiuEPXx5ZQt3+BSNf+g=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-226-isRBi7_eOXqydwF9LmN_cQ-1; Sat, 09 Nov 2019 06:22:52 -0500
Received: by mail-lj1-f197.google.com with SMTP id p25so1753413lji.23
 for <ath10k@lists.infradead.org>; Sat, 09 Nov 2019 03:22:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=LMrVkbjMH7hPzH5T4kkvtcS+8ogevDtCcANls+17jFo=;
 b=QFE8+tbyKIi21Cds+dGj905CuCh/pUCI5QCUJWrujRGPM6DKUQ6dpPBD0AjSjChgtF
 gH3iHSb09mtGv0naBEEc1LBvqpGQ3hVc13M1x9EVLYPvTYPeLaCNXgV3AlwYjEGRIjKi
 lAVLsQqhQgYpc54/00JKdS3VK2T8j1yIS6/6hoJIpUxTm6Wud+93z5pU/1Wsd25WtTri
 wJqp35Wm16NH0B/eGkUTJpwJg8BaEw1uwT6NarTxMkzs4EFDovFTPNaiL6P1iLYqE4z1
 RvTswGI2wb8vSk1l/4wSDqjbfsjfn5r7VpWxgDNqjdOIfI9m38+63pwDWNsHfNJhh4fB
 zjvA==
X-Gm-Message-State: APjAAAVsRw4YI07QWzIfasJgNTtkHAUuzgCsvk6qdt+MDiEINU1V1lbW
 ki/WU9uX8yxWeMfUtxYpp2f/XCSno5+1y9xTQw8SMdYxOOKEiYcnYD8MZgyMk1cUhHw0W9VF9nC
 kRbQ0NoeKhNVm+aPA5FDb4A==
X-Received: by 2002:a19:ec16:: with SMTP id b22mr10517157lfa.74.1573298571133; 
 Sat, 09 Nov 2019 03:22:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqz9Bw/mpsvE1bxpMagaaC8U31L/+lxFJA0jz6rY1xP5NdI110zv41vIFbwH9MLhnKK8I31y9g==
X-Received: by 2002:a19:ec16:: with SMTP id b22mr10517148lfa.74.1573298570999; 
 Sat, 09 Nov 2019 03:22:50 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id r12sm6449887lfp.63.2019.11.09.03.22.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2019 03:22:50 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 960BE1800CC; Sat,  9 Nov 2019 12:22:49 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kan Yan <kyan@google.com>, Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [PATCH v6 3/4] mac80211: Implement Airtime-based Queue Limit (AQL)
In-Reply-To: <CA+iem5saT0ntxnSV1ZatFuRRcaBzivkQ_MU66ZdV1kfb1dC6Qg@mail.gmail.com>
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
 <157182474287.150713.12867638269538730397.stgit@toke.dk>
 <1a2eb096119c9029e67caf797564d6511c8803a7.camel@sipsolutions.net>
 <87a796fxgd.fsf@toke.dk>
 <f395a9a971ca1a0d0438fca10dfb160c421caa7a.camel@sipsolutions.net>
 <874kzefwt3.fsf@toke.dk>
 <300bf0146db6c0d5890699b3911d35174d28c9c0.camel@sipsolutions.net>
 <CA+iem5saT0ntxnSV1ZatFuRRcaBzivkQ_MU66ZdV1kfb1dC6Qg@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Sat, 09 Nov 2019 12:22:49 +0100
Message-ID: <87k189qoom.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: isRBi7_eOXqydwF9LmN_cQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_032256_721551_26BF16A9 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kan Yan <kyan@google.com> writes:

> It is most likely just insufficient locking. active_txq_lock is per
> AC, can't protect local->aql_total_pending_airtime against racing
> conditions:
> void ieee80211_sta_update_pending_airtime(...)
> {
>         spin_lock_bh(&local->active_txq_lock[ac]);
>         ...
>         local->aql_total_pending_airtime -= tx_airtime;
>         ...
>         spin_unlock_bh(&local->active_txq_lock[ac]);
> }

Ohh, right; didn't even realise those were not per-AC as well...

> After changing it to atomic_t, no more aql_total_pending_airtime
> underflow so far :). Using atomic operation should also help reduce
> CPU overhead due to lock contention, as
> ieee80211_sta_update_pending_airtime() is often called from the tx
> completion routine triggered by interrupts, often in a different core
> than where __ieee80211_schedule_txq() is running.
>
> I will post a new version a bit later if the test goes well.

Awesome! :)

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
