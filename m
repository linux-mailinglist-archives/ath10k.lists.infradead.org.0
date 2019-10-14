Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED562D5E23
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 11:07:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+U2vyaVzb+Lfmc2+RQpusT3QmhxHwTZHmceC9AXq0U=; b=ezhijWVJzOAOxi
	Ob6xhqaor8DrFHC+dmQ/UlDPwQ+Z7M+/aLgTF1zd6JRW79BB6RxSiQsFLo2s9pujKzYu7d6VXiJBV
	ZpgNV9NnKaTEaZ1SYZ3Qhb5LtZBgx1kt+WrWURmy7QzPvAulM2P5/N6kxAr4+6eIemUoGyiHQ5en0
	H+HJLoydUboQtPUvROo6wMLrpcsPTjTTVbpK9iFhv8ibXnsSr5zoja+Xciqd48m3RGiX31DyKX30j
	J6MUzWRnImATtGOypzm/JDvLZu8IyDNL0O5g67kVS90EQL9zoD4uMzHNFHMf9PfbO5zxOz45sChbL
	rtETLB3Dg9JUX5MQIzCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwJh-0003w2-1M; Mon, 14 Oct 2019 09:07:01 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwJb-0003tI-EJ
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 09:06:58 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 8526960881; Mon, 14 Oct 2019 09:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571044014;
 bh=M7ALvQe5/pxZGs7fd05A0n6RK90esmpXEcrfHiiaBmY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=gsOEDc9Al7L7gFyr30I+p9LKxtVOCQLnUWRJ/rWyeFiEGNMobRnSBtKPjT0r0pkaI
 Kwa12EGuNrGk8dDyOAfW6ycxvhKu8Zf6Nh7cdM/S0bxj7L6hez4gRSOgIQftdT5s5v
 hs/FV1ScHyhj1JlehqiJQnx5lOeuOkFk2PK6icm0=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3455460A0A;
 Mon, 14 Oct 2019 09:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571044010;
 bh=M7ALvQe5/pxZGs7fd05A0n6RK90esmpXEcrfHiiaBmY=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=R+kLxDYYspMeBXt1y7A6+NxyDcppgNAeDbgHr/Vo9tMHePtXdFme8XDow6B4LUe10
 fohRZUznjx/Cd19T0gFFYgkmIuHPD0KftflXN/Ns2xiA2QUQ1CbwpwaYUX4s3tjzr/
 LNK9llILfhsqmnTcPbzLBXRP3E9RZosVu7OkMIGw=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3455460A0A
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v4 0/2] Implement Airtime-based Queue Limit (AQL)
References: <20191011022413.176208-1-kyan@google.com>
Date: Mon, 14 Oct 2019 12:06:45 +0300
In-Reply-To: <20191011022413.176208-1-kyan@google.com> (Kan Yan's message of
 "Thu, 10 Oct 2019 19:24:11 -0700")
Message-ID: <87wod7y9ui.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_020655_513221_3468F3C8 
X-CRM114-Status: GOOD (  10.14  )
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

Kan Yan <kyan@google.com> writes:

> This patch series implements Airtime-based Queue Limit (AQL) in the mac80211 and Ath10k driver. It is based on an earlier version from the ChromiumOS tree[0].
>
> This version has been tested with QCA9884 platform with 4.14 kernel. Tests show AQL is able to reduce latency by an order of magnitude in a congested environment without negative impact on the throughput.
>
> [0] https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/1703105/7
>
> Kan Yan (2):
>   mac80211: Implement Airtime-based Queue Limit (AQL)
>   ath10k: Enable Airtime-based Queue Limit (AQL)

Please always include a change log so that people know what has changed
since the previous version:

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches#changelog_missing

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
