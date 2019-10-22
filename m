Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A93E02FE
	for <lists+ath10k@lfdr.de>; Tue, 22 Oct 2019 13:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5fxOZyImMN7w7yoowzGV90zYwcMYjR0am2QjefDmTw=; b=WaU00o8hcq6SH3
	stykH+hojL9mWnUPOKpwAwVJxIwclWBPQcBVZVMS3bR4JP+fEoUcqrNRwMYUf3SS0A4DOlaxaN0c7
	kt9vgh+7mXyevijCtm2qKF7KSbui4m4hcJrZA5BxDP1JXmiQ6vj3e3WPBXyp1yLnFUChUQknobxs5
	45n5Clp3YuZdm3Gr6/xApn/Aa8rbZJzkpL6Uf07momgNwqkt/n4jX/lPIPnFNwfrn9ULWCYwYm/7s
	3AHN9rvMjNa+bMJ420YraXvLfWkgSpO549bDmXCCejypg7H8+7URM+oVu39E1FQZY20b0RJJXkK8C
	2kQIksFvFw629/t25SEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMsRi-00008Q-GL; Tue, 22 Oct 2019 11:35:26 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMsRe-00007h-Nn
 for ath10k@lists.infradead.org; Tue, 22 Oct 2019 11:35:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571744121;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9lXUdIMpqZFihIoO9yzChXD19YUfn5jCLlrdTWpXVmA=;
 b=e48az/H181QGPEk5nrq5EjCQG4d4ruwJzaJRoPj56062kAO94I6R48qmODqzkJNwKATJNX
 XihGMdD4cmiLCR5D4ikCjwFazd8RdsGTQEiIPl4WY7ud97HNBD6H6rTeH+cgyjYxG2qdEG
 d411Gpy0MbvTlRh0xTSqH6S7JxFgWNM=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-5lfhRuYwM9KmorVCo9Vq5A-1; Tue, 22 Oct 2019 07:35:19 -0400
Received: by mail-lj1-f199.google.com with SMTP id h19so2894022ljc.5
 for <ath10k@lists.infradead.org>; Tue, 22 Oct 2019 04:35:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=5Z4MpTbIw+JCQPCzaEXbau+RX+9w+zSZ8KSShaRJy8k=;
 b=nRK6Wz7kctSzxR8G10gQ9IkhkD/28HMuM9mzKve5Rt2PXJbdSeT38UxYcA1g7zAZpH
 tndHGdwwOVDPXtsuAD2NPwzmN0dHtkEHvYwYFBoYvChZysk2ebTOaYWset/1F7g2WMIv
 I9FN6ZhHyKUgEoi+sJdn/XaAIrbQA6jdYGFCxf3dSy/pZsh1K2Z/cmSwrlgMz21WWEdz
 cwnnyJHfE1rhHdiciivQ8+zjD0FwNX0s3Y+vwMvNiy93uPeKmqMup6kjW2qRkC1q8U2/
 4wEYu2tYfC3S24KwQCk9JmCP2hoKwRpTbCBMlfO3JIEXpvxOb9z+XswT04rIw3zZsEY7
 /xjQ==
X-Gm-Message-State: APjAAAWWjBGZBJxfzLBs4ufhsznQpYW7R2CgMr+MgUOF12P5HRsjG5Fy
 S+1peLNLwQsaPJ9rPyPhNpj5GyVYdlontGs6yyPpyJ/GkndHEAYiAfy5YdDUPJtz/fAFA1ExVjE
 nhve/Hp8I6z64O5sLOr9mbA==
X-Received: by 2002:a19:6a08:: with SMTP id u8mr19884678lfu.74.1571744117869; 
 Tue, 22 Oct 2019 04:35:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwmGTFXAJkFuoNzgelmQogIQSog/uQu9muSz0RpmB3Wbx+A4SlxIO3hShCl4fhxL63M2txo1g==
X-Received: by 2002:a19:6a08:: with SMTP id u8mr19884659lfu.74.1571744117720; 
 Tue, 22 Oct 2019 04:35:17 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id b67sm16614489ljf.5.2019.10.22.04.35.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Oct 2019 04:35:16 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 2DABF1804B1; Tue, 22 Oct 2019 13:35:16 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v4 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
In-Reply-To: <CA+iem5sy16=xMZjJi1nKHrxP_xWHk-86G=ZLwtMMb04EOt5tQA@mail.gmail.com>
References: <157148503415.2989444.7391437309981941226.stgit@toke.dk>
 <157148503865.2989444.7118792679603045723.stgit@toke.dk>
 <CA+iem5sy16=xMZjJi1nKHrxP_xWHk-86G=ZLwtMMb04EOt5tQA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 22 Oct 2019 13:35:16 +0200
Message-ID: <871rv5ovwr.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: 5lfhRuYwM9KmorVCo9Vq5A-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_043522_852439_4ECE998F 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
> class traffic,  hence the pending airtime get updated for the wrong
> txq.

Hmm, I guess we could just get the ac using skb_get_queue_mapping().
I'll send an update with this fixed for you to try :)

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
