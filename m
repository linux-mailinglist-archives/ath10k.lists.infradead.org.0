Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB512DA8E8
	for <lists+ath10k@lfdr.de>; Thu, 17 Oct 2019 11:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0guQ+BJdwXIY3pfURXNETZojdp/QMagLr0FUtMdz2RY=; b=JGZguFKYOxPG+v
	AzUbtZZj3LSvUeeu5DKr7p1Ro+Gqk38oy45ztaJ1GoKE8Sth9XcwXCwy1uPA70DFWATKEDjol02Yj
	0EwtCUxmPHI25cNe7j9UtlEBCHo2tAxMRijMM02ATAH5C6mldiwkjEC7Sbq1vWKBjExBtzawMtI2H
	WjKOIWX0tc02HOYK27rRjPHNtt68GJme+0uNjkgNLEUsHe6G7we0NdNCBJMjaShrdZPuvcXYayirl
	AIxIJ8qneQNcGOgcIw9llk7bP9cLZY3cHDoIqnFXVa0LZXORxQu8EKs34Hn0iYNqDJD64x0qa2e3N
	Ec2akP/spzq6Br+xXSxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2Kk-0003Dp-9O; Thu, 17 Oct 2019 09:44:38 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2Kg-0003Bf-UC
 for ath10k@lists.infradead.org; Thu, 17 Oct 2019 09:44:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1571305472;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AvdX82gDjYsI6+terlAiEqdwIFtB7f56kH7xxsKFHgE=;
 b=h4JFgOYZ8BXpArxA53D/nP428nOrPmZkP8NFAN16rEC+z/DKb6SWNvUCKv4oXW8myZ8vFW
 kMW6yNcUgscuc1qCyp/QF3aUXwAR+TG6hGIoIIuvyPXI7pJkbDKHcpjz84VB4wCOjR8DjY
 XFvBFeGKCQ+vqXKVGfpFU667IEGcUJs=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-271-09anFiVCO5epmNX3fHKWyQ-1; Thu, 17 Oct 2019 05:44:30 -0400
Received: by mail-lj1-f197.google.com with SMTP id m8so310378ljb.3
 for <ath10k@lists.infradead.org>; Thu, 17 Oct 2019 02:44:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=s+jcaxhu6oDWhtVBooMl1ngDQtHW2eHMGXoYZ8Sz7Y0=;
 b=QwoHNC7Kl5111ADuQtVlENWUI2MiE/z2T8lRoSoEqgUYFsrzppJDHh1aPDeWKfcFZP
 a+Zqcutjs1xhd0HcGgwSoBGGmL581fj+zBDRwVVXqeWim7gzSqi+buRM8fDt80yfD0GU
 RmVvDgOU7aBr/pkK7D0RWNM2sjbqjy5NM59GbCLxGbDjquT1VXQImPz8oK0GOQe9atb7
 SugDuiIPDplz3NNGy5DQZqF50pRMM3kezoahH3yIgLm1auPbms/TWVV2ZQI476J4+iJx
 s6ODhpgrm+vmmWaQXxajpXYg9XqVw0klqdQXK4I68nDdSPcG7RDFPMMf263Te6bJgfVq
 OOvg==
X-Gm-Message-State: APjAAAXrTFSQxR2ZkC3GvS9SGizUnuwkK0TYlxqsoKx9FAQgjgAOQzrm
 kzI/gab0jiBMWzWorxBcnEaECYFjdZLF0AirNpN3SJEd3mGvqSU5yDMKHu839PR+Hpjb0wINUQF
 cn9ZkJimdzwdgNYHvweybVg==
X-Received: by 2002:a2e:3c05:: with SMTP id j5mr1947447lja.24.1571305469132;
 Thu, 17 Oct 2019 02:44:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxO1j6qiZOfAL5tJA6olP8+LPlYQd+Y7no3y4yFz1FQHRzpNQVDOQEvMTwwldWseOilFhe41A==
X-Received: by 2002:a2e:3c05:: with SMTP id j5mr1947434lja.24.1571305468911;
 Thu, 17 Oct 2019 02:44:28 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id u26sm825833lfd.19.2019.10.17.02.44.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 02:44:28 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 810AE1804C9; Thu, 17 Oct 2019 11:44:27 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v2 4/4] mac80211: Use Airtime-based Queue Limits (AQL) on
 packet dequeue
In-Reply-To: <CA+iem5s=xbzZ5goaBO4tZWUKVQRaXb+SnB34NPCppej9mi8sAA@mail.gmail.com>
References: <157115993755.2500430.12214017471129215800.stgit@toke.dk>
 <157115994190.2500430.14955682016008497593.stgit@toke.dk>
 <CA+iem5s=xbzZ5goaBO4tZWUKVQRaXb+SnB34NPCppej9mi8sAA@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 17 Oct 2019 11:44:27 +0200
Message-ID: <87o8yfg0zo.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: 09anFiVCO5epmNX3fHKWyQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_024435_051891_7735DEBF 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
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

> Hi Toke,
>
> Thanks for getting this done! I will give it a try in the next few
> days.  A few comments:
>
>> The estimated airtime for each skb is stored in the tx_info, so we can
>> subtract the same amount from the running total when the skb is freed or
>> recycled.
>
> Looks like ath10k driver zero out the info->status before calling
> ieee80211_tx_status(...):
> int ath10k_txrx_tx_unref(struct ath10k_htt *htt,
>                          const struct htt_tx_done *tx_done)
> {
>  ...
>         info = IEEE80211_SKB_CB(msdu);
>         memset(&info->status, 0, sizeof(info->status));
> ...
>         ieee80211_tx_status(htt->ar->hw, msdu);
> }

Ah, bugger; I was afraid we'd run into this. A quick grep indicates that
it's only ath10k and iwl that do this, though, so it's probably
manageable to just fix this. I think the simplest solution is just to
restore the field after clearing, no?

> We need either restore the info->status.tx_time_est or calling
> ieee80211_sta_update_pending_airtime() in ath10k before tx_time_est
> get erased.
>
>> +       if (local->airtime_flags & AIRTIME_USE_AQL) {
>> +               airtime = ieee80211_calc_expected_tx_airtime(hw, vif, txq->sta,
>> +                                                            skb->len + 38);
>
> I think it is better to put the "+  38" that takes care of the header
> overhead inside ieee80211_calc_expected_tx_airtime().

Hmm, no strong opinion about this; but yeah, since we have a dedicated
function for this use I guess there's no harm in adding it there :)

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
