Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7CFD5DFB
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 10:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rbB7ZwyDktMvU35pOWCELJAQSxktbRQJbG3RCBorTbA=; b=o7JYznwSquPbSH
	Hx5jWsl38/GT/qoJ3zc0R14onMU9JVd2EtPE6YZZATgsPYQkNwdkCYEbzvVSFFaQXLadvh8QjKyLU
	qR7tcDXwsI/dSOB52joXUbsA8qrALdDrMGWRjdAuioCBcMQN04nnkl0wz8oy9sdb3jg69erkj5Wne
	o2ZE9FHyPrGJEaXwyMe8rg4aFldqYyqEvbUbrJ8tG4sGwLuqBtnd0uNdA89H/S0fF2x+ZiWyFwoH4
	MWfc7DZXh46F+KWa/fUhnKoo2QxCqg0i+XFZe8BMPLV8t+gYrtnnv9/A7w4GphTwd82eP61G9fSy+
	DmRZERH1doJ+xk4mqliA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwAt-0007t2-4m; Mon, 14 Oct 2019 08:57:55 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwAp-0007sW-Tm
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 08:57:53 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9174460615; Mon, 14 Oct 2019 08:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571043471;
 bh=vEpaAXBe+dJHnNJjhSIggvvTIktrwoFHvHgLxkxYqH4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=aeqqQ8YtOAPcrDZnHZ0KGQ0Lq+kdlBjHP9HTYVvkwV8MjvnPTqLiVxO34EeFL8v/4
 2WdgodPpNzvloOFCZvm62Re7s/CXuabivQMXbD3isHaDWoMscQhreBazxQkrP2eBwe
 hdl46udsMcRlWbTnVYs2zMGYXRer7m8XXsF5Fj5Y=
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C2B6760240;
 Mon, 14 Oct 2019 08:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1571043471;
 bh=vEpaAXBe+dJHnNJjhSIggvvTIktrwoFHvHgLxkxYqH4=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=aeqqQ8YtOAPcrDZnHZ0KGQ0Lq+kdlBjHP9HTYVvkwV8MjvnPTqLiVxO34EeFL8v/4
 2WdgodPpNzvloOFCZvm62Re7s/CXuabivQMXbD3isHaDWoMscQhreBazxQkrP2eBwe
 hdl46udsMcRlWbTnVYs2zMGYXRer7m8XXsF5Fj5Y=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C2B6760240
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Sven Eckelmann <sven@narfation.org>
Subject: Re: [RFC PATCH 0/2] ath10k: provide survey info as accumulated data
References: <20190918124259.17804-1-sven@narfation.org>
 <9a9ec99b-9643-7288-eed5-b549a9fe1487@newmedia-net.de>
 <1614044.H5m0Cyd3Ly@bentobox>
Date: Mon, 14 Oct 2019 11:57:47 +0300
In-Reply-To: <1614044.H5m0Cyd3Ly@bentobox> (Sven Eckelmann's message of "Mon, 
 14 Oct 2019 09:07:42 +0200")
Message-ID: <871rvfzotw.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_015752_016424_DDB8E9B1 
X-CRM114-Status: GOOD (  16.22  )
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
Cc: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 vnaralas@codeaurora.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sven Eckelmann <sven@narfation.org> writes:

> On Monday, 14 October 2019 00:15:20 CEST Sebastian Gottschall wrote:
>> i checked your patch on 10.4 based chipsets with 9984. the values are 
>> now looking bogus and wrong at all. busy and active time time in ms does 
>> increase in hours each second
>> the problem seem to be that your patch is 10.2.4 only related. 
>> ath_clean_survey does not trigger on 10.4 so the values double itself 
>> each time the event raises since you add the full values and not just a 
>> delta on top
>
> Thanks for the feedback. So we have now a firmware 10.2.4 which is counting 
> busy + active up and has wraparound problems. And then we have a 10.4 firmware 
> (on QCA9888 and QCA4019) which is clearing everything as expected with 
> WMI_BSS_SURVEY_REQ_TYPE_READ_CLEAR  and then we have some 10.4 firmware (one 
> QCA9984) which behaves more like ath 10.2.4 firmware but is marked as 
> ATH10K_HW_CC_WRAP_SHIFTED_EACH like the QCA4019.
>
> So I have no idea how to fix this when QCA4019 and QCA9984 are currently 
> marked the same but behave differently. Does somebody have a overview how the 
> different HW versions should behave or is there some special bit in the data 
> reported by the firmware which can be used to evaluate the expected behavior?

I hope there's an easy way to detect this behaviour change, but if
nothing else we could add a new bit to enum ath10k_fw_features. But of
course that's the last resort, maintaining the firmware features
bitfield accross different firmware branches is quite cumbersome.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
