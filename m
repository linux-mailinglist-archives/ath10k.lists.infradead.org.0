Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F5CD5E7D
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 11:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQJxqHH23WA0CufNNkL8Rv98dgJZS2TUWbyYuVkF/2o=; b=KMyTHnkhC/FUm9
	F+pmsR1muHd5UPtQhmMKJ9WImgoGNlcFgnD10UiaJLPpJ6TP2roMJMW+0zs14Qz8H6bXq3CxmJKqH
	ZAcrttrv8viMk5XssLsJO3U89AnAV1T0vurqp1mWjVUUuAIzIHuBrpm5PMOxyDzknTroYdYu4ezri
	sEiILRMjx+efpw8h5tr6Ylq4RwfugIHkXkHLwEQzCPv/FybqYg9D7pLYR9jVVce0W9ykACDXOW0KU
	tjfbTefboPaoAle9q5EFM0c//RLI6oB/scml61wZ78VsUJl5l5phEjzs0PbW/IEbyDG5tklocQtad
	NBCUwBzBSj6zdvebsZfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwUN-0008W0-Ng; Mon, 14 Oct 2019 09:18:03 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwUJ-0008Vc-FY
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 09:18:01 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 7AB21608CC; Mon, 14 Oct 2019 09:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571044678;
 bh=xWPMAfpasfvcEkCxq0neoBkNgijerFVLWrwPPnfTl1Q=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ijslqMdlTzk2m8ooUiJAXHalfoNlb4QPCflP+9u0UJ7ONKuWZm1gInHLnNxoshkgH
 lPIUXiu2tR6xKLyOEMfuvAHm+9cu11+73D2rd99+deeXQroN8eU5KolSOQeFyCtSd8
 XLGK8Mei9mEK9YwcblQ/XALHp7H3sZiagaj/oMiw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id F2CB26039D;
 Mon, 14 Oct 2019 09:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571044674;
 bh=xWPMAfpasfvcEkCxq0neoBkNgijerFVLWrwPPnfTl1Q=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=TTCegHPn9rCDWVam+XByMwuDjG0DgX0SL9pL0tgFGV+DdtesJOP8mmi5nXdoOYbCu
 1VB+y408FXavtOu55Co2sK29wa5TdJyeTjOwOaQLpE1deWynWl+Ky7zUsV32O/rpCn
 SqiysO+1QhOfWRxE6HnV1ZxN12UafFXE1lFCuSoo=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org F2CB26039D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v4 0/2] Implement Airtime-based Queue Limit (AQL)
References: <20191011022413.176208-1-kyan@google.com>
 <87wod7y9ui.fsf@kamboji.qca.qualcomm.com>
Date: Mon, 14 Oct 2019 12:17:49 +0300
In-Reply-To: <87wod7y9ui.fsf@kamboji.qca.qualcomm.com> (Kalle Valo's message
 of "Mon, 14 Oct 2019 12:06:45 +0300")
Message-ID: <87sgnvy9c2.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_021759_557429_BD820947 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: make-wifi-fast@lists.bufferbloat.net, toke@redhat.com,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 yiboz@codeaurora.org, johannes@sipsolutions.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle Valo <kvalo@codeaurora.org> writes:

> Kan Yan <kyan@google.com> writes:
>
>> This patch series implements Airtime-based Queue Limit (AQL) in the
>> mac80211 and Ath10k driver. It is based on an earlier version from
>> the ChromiumOS tree[0].
>>
>> This version has been tested with QCA9884 platform with 4.14 kernel.
>> Tests show AQL is able to reduce latency by an order of magnitude in
>> a congested environment without negative impact on the throughput.
>>
>> [0]
>> https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1703105/7
>>
>> Kan Yan (2):
>>   mac80211: Implement Airtime-based Queue Limit (AQL)
>>   ath10k: Enable Airtime-based Queue Limit (AQL)
>
> Please always include a change log so that people know what has changed
> since the previous version:
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#changelog_missing

Never mind, you actually had the changelog after the signature separator
("-- \n" line) and I automatically skip the signature :) So instead I
recommend moving the change log up and above the signature separator.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
