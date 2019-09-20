Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D73B8B8D
	for <lists+ath10k@lfdr.de>; Fri, 20 Sep 2019 09:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8Vqud21oJbvgZcSTHVT+EmNUH8Lu07wQbtyMHd6ctI=; b=CZkLGN+xs5Azjo
	hoPM8/uv/31o821tOLhjuLpEeesPiJFGxZmVQyzlcWdw2OOI9qOk5WG5E6v8dzhkCH+y2Jf6+IP48
	tnHAUfXVI974dwY369uC+BeBNjt9/mp/pBWZAqcrf6OESz4bLfmJbBVJuhO1C7VNFtIrlNKfyK/NU
	7cnvPAGnFrEOPjKzxnQy1SHgghdSJBKy1wIEBGP49pcG0bCtFRfYKpXCH5+spxxr9JPqrGvzzuytP
	bnMO4fDgy0Yobc84sgrxHaZYLEWCgxQpTm+6lUIIhQ5gq0LJWWSlz4amLkXJflUYr6qcAj9yHqASd
	u0kPlyjijQNKNrVTLvqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBDOq-0000Gy-3Z; Fri, 20 Sep 2019 07:32:16 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDOj-0000Fx-NJ
 for ath10k@lists.infradead.org; Fri, 20 Sep 2019 07:32:11 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9763D61424; Fri, 20 Sep 2019 07:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568964727;
 bh=zNsWy2u6n6HzmF1aqQcu7lzBtU18yJm2gBRMbb1Db9E=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=W+xCXZAGvE5fE9l0+L9rt+wyIVSFaGrmLrn7EgltTOctt1jRVgddry3WFqzzu9VRl
 6cv7MKCnG8ApWKz6zcVbODHXHQFW/do36XToerR8Ae41/wmX3/4wMyuzpYxSXQ/2ny
 T2Ixwrujq6vbjBBc7Qi6DD+9qVJr6XNUhZ0cMWUw=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-106-186.rev.dnainternet.fi
 [37.136.106.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 997556076C;
 Fri, 20 Sep 2019 07:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1568964726;
 bh=zNsWy2u6n6HzmF1aqQcu7lzBtU18yJm2gBRMbb1Db9E=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=UJYct5meuokyAsXba9WDwOZ2WpIHtsb6Zbrd9R29+UTOAWeOjdRPEQ5fV6j/iuIks
 Ecn6TmQosT4EKpdatlbhZTcqEd/UPp4ny2Z9kujjUvnLzPwuq5TfzY11ltROwcP/HF
 e50xGulSZiZiMlonZ/4LepXAtOve8Ag3nLNKWBRo=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 997556076C
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Wen Gong <wgong@qti.qualcomm.com>
Subject: Re: [PATCH v3] ath10k: support NET_DETECT WoWLAN feature
References: <1534402113-14337-1-git-send-email-wgong@codeaurora.org>
 <20181114225910.GA220599@google.com>
 <CA+ASDXMh7vdfkA5jtJqWEU-g-4Ta5Xvy046zujyASZcESCGhAQ@mail.gmail.com>
 <87woe5aehr.fsf@kamboji.qca.qualcomm.com>
 <40854e84bd4b4a9699b60530b1c373ad@aptaiexm02f.ap.qualcomm.com>
Date: Fri, 20 Sep 2019 10:32:02 +0300
In-Reply-To: <40854e84bd4b4a9699b60530b1c373ad@aptaiexm02f.ap.qualcomm.com>
 (Wen Gong's message of "Fri, 20 Sep 2019 02:55:08 +0000")
Message-ID: <87pnjvctjh.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_003209_804472_D3B798FE 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 Wen Gong <wgong@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@qti.qualcomm.com> writes:

>> -----Original Message-----
>> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Kalle Valo
>> Sent: Wednesday, September 18, 2019 10:03 PM
>> To: Brian Norris <briannorris@chromium.org>
>> Cc: linux-wireless <linux-wireless@vger.kernel.org>; Linux Kernel <linux-
>> kernel@vger.kernel.org>; ath10k@lists.infradead.org; Wen Gong
>> <wgong@codeaurora.org>
>> Subject: [EXT] Re: [PATCH v3] ath10k: support NET_DETECT WoWLAN feature
>> 
>> So essentially the problem is that with firmwares supporting both
>> WMI_SERVICE_NLO and WMI_SERVICE_SPOOF_MAC_SUPPORT ath10k
>> enables
>> NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR, but
>> NL80211_FEATURE_SCHED_SCAN_RANDOM_MAC_ADDR is not enabled
>> which is
>> inconsistent from user space point of view. Is my understanding correct?
>> 
>> Wen, can you enable NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR?
>> Does firmware
>> support that?
>
> Yes, I test again, it is enabled NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR now.

Sorry, I'm not quite understanding your reply.

But I mixed up the flags. I meant that can we enable
NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR in ath10k? Does the firmware
releases which have WMI_SERVICE_NLO support
NL80211_FEATURE_SCAN_RANDOM_MAC_ADDR as well?

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
