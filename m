Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E85A1DC2AA
	for <lists+ath10k@lfdr.de>; Fri, 18 Oct 2019 12:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0gpWquFwf5rGwp2kPWjcwqyl3g+5D98168TlVSix/c=; b=moaKNbD5cJi77T
	1bdmUwXoY7vz6ratqnGjHyOTOiV+E4c8oxkPmHI8j5uqPTSYfq237XssUjkF/siMC7g1+AJsO1EJR
	IWSOppNbqSZDlxrdaU38EJ5svOO26PFiY8ct9W0qtEj5bNDnlT0J39CtJWP84dgif5MyRdzLfZ4DT
	J4IaL4W6hHQ7xJbButb8m57OITgv5fg0Fn03itKGgMrA0iNBIE4GAAeyWGgNI3RNhNRmjH4iYWacG
	c8cExHk4nLhcMFy+2rjDmFYhMIp/+m53Mb1HPMN1bUtWXoBHrBW96ms8T1w4QrU1m5H83xYpO5Fhs
	kTpEyRIW/Zbg1P4Xd4MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPN1-0000Zl-UN; Fri, 18 Oct 2019 10:20:31 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPHz-0002wY-BX
 for ath10k@lists.infradead.org; Fri, 18 Oct 2019 10:15:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571393717;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fPfdn1wJgZGqQXuVAEaKG2OM7BuZcbx3t0qWbYXPYIY=;
 b=CqO/ZpzOTBDlRsy0P/nPM2HzbfCVXmu6Q87v96ubVGedtcDrrBGsZZKrTu6DV+wlup5BJl
 5gv4Y1O/vC6+EP7L+ew/rmOrlqLoe+1W14B+XfvxHIETLBgHJYkPUcaFkjG4mGtLtHevzW
 5I0HU+UU3/1ar2Sbvy6fZKtu0d3oan0=
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-2oLLbLzuOv67vGYTxs_9IA-1; Fri, 18 Oct 2019 06:15:15 -0400
Received: by mail-lf1-f72.google.com with SMTP id r3so1177255lfn.13
 for <ath10k@lists.infradead.org>; Fri, 18 Oct 2019 03:15:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=fPfdn1wJgZGqQXuVAEaKG2OM7BuZcbx3t0qWbYXPYIY=;
 b=jc7/+3/EEBavB1HVTTjXnuVEakhK3lu+Z7q2QgZjmDQ5OpXYFPG/zHWc04OA3YgwIv
 SK+OhiYLee9iEkX7v1emTMHk2wJEi6NWBEgEpXSRY+iVPs3bN1EqhqnNBDizXMas2YAN
 RP0FohEXb8vTzlyqM/p5IZSwEjbb5p8I1eW3/E0bnyNM5388lb+RQiLgs1rCVl+WCWtI
 2XSG33XSiCPrmlgGiUIBnY2R0zCKwI1rrhipOrtJ3+M2icy6PiN3QdDnp7VWUBvsWk8T
 QW7b2BbUNlNT3gLPCBlVdA2mn3ZYcW0EdDYMFvcQiA5AI46TwtF/rjBp9WmCCOc320jh
 Z2IQ==
X-Gm-Message-State: APjAAAUjqN2eIkASg/7L5q6X8no7A7+GM+6tNkMWCv2e/6EGKhPv6pnd
 fCzACVMlhoRgRftxsyXKPP9+35TuTURPJnvS5RIC93ZXNC+HYhXWU9YCJhTSpeG66mCML00A6OR
 EpNJGAXUBrSSmo/rQX25AKA==
X-Received: by 2002:a2e:501c:: with SMTP id e28mr5633713ljb.201.1571393714343; 
 Fri, 18 Oct 2019 03:15:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzS9cqDMn8709PKQFYCsL6fEv1jTLkzhF66c6MpwtxFxNTvaB57PQEp+T6O/S1uC35uTMRvqw==
X-Received: by 2002:a2e:501c:: with SMTP id e28mr5633684ljb.201.1571393713934; 
 Fri, 18 Oct 2019 03:15:13 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id v1sm2085763lfe.34.2019.10.18.03.15.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 03:15:12 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 000821804C9; Fri, 18 Oct 2019 12:15:11 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v2 1/4] mac80211: Rearrange ieee80211_tx_info to make room
 for tx_time_est
In-Reply-To: <CA+iem5t6xghBocck864nDX2snWQ5O+v6_M2Jc9aCdn_hE+mFCA@mail.gmail.com>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115993866.2500430.13989567853855880476.stgit@toke.dk>
 <CA+iem5t6xghBocck864nDX2snWQ5O+v6_M2Jc9aCdn_hE+mFCA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 18 Oct 2019 12:15:11 +0200
Message-ID: <87sgnqe4wg.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: 2oLLbLzuOv67vGYTxs_9IA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_031520_622855_6A23AFC4 
X-CRM114-Status: GOOD (  12.95  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kan Yan <kyan@google.com> writes:

> The "tx_time_est" field, shared by control and status, is not able to
> survive until the skb returns to the mac80211 layer in some
> architectures. The same space is defined as driver_data and some
> wireless drivers use it for other purposes, as the cb in the sk_buff
> is free to be used by any layer.
>
> In the case of ath10k, the tx_time_est get clobbered by
> struct ath10k_skb_cb {
>         dma_addr_t paddr;
>         u8 flags;
>         u8 eid;
>         u16 msdu_id;
>         u16 airtime_est;
>         struct ieee80211_vif *vif;
>         struct ieee80211_txq *txq;
> } __packed;

Ah, bugger, of course the driver that actually needs this is using the
full driver_data space :P

> Do you think shrink driver_data by 2 bytes and use that space for
> tx_time_est to make it persistent across mac80211 and wireless driver
> layer an acceptable solution?

Hmm, the driver_data field is defined as an array of pointers, so we can
only shrink it in increments of sizeof(void *). I think it may be
feasible to shrink it (as in, I don't think any drivers are actually
using the full 40 bytes), but doing this in a way that will gain us a
2-byte space that is also usable in the case driver_data is *not* used
(i.e., it needs be able to align with a field in .control and .status as
well) would require some serious surgery of the whole ieee80211_tx_info...

However, there's a nice juicy 'u16 ack_frame_id' at the start of
ieee80211_tx_info. Could we potentially use that? We could use the top
bit as a disambiguation flag; I think we're fine with 15 bits for the TX
time itself (a single packet won't exceed 8ms or TX time), so if we can
live with 15 bits of ACK frame ID space, that could be a way forward?

Johannes, what do you think?

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
