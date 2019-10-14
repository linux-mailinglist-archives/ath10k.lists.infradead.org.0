Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F61D5EFB
	for <lists+ath10k@lfdr.de>; Mon, 14 Oct 2019 11:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bNBXobX3vcv9dwOj2b+rehgHbZ+2iz7Ys/kZfGKpZZU=; b=Urlju7o52kLJxQsrzwvlJ3Z3N
	Yr/kw39O9+2F1oqmxJcqOhrbQy883p7bd//CsQ2elcqqIQupFITaCpsBMUX3jbMPaMdhTp2fz5zEc
	l9xQ+xjXWtU0g8szjrg/oo6zI6rdkqqrxh/EOck6yEZg0qr72aBEdCZmezDoeHIJvCFohEOBt8WLI
	D5UzhpeVnOE1lpk3Xpfr189dTE4bNYyOjITPdvDHYaOss6QD/k9gqTr9k2N1ozsXTOK0252IAB+1G
	uZf7P634FvGOPbzdjvhWboFVxJP6ARIBO4D33ezrkq/P/+sFqX9lZ8ehyf/2rEUqCr9tCNlrDNqaw
	Ew12NY2Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJwih-0007nu-6S; Mon, 14 Oct 2019 09:32:51 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJwid-0007nS-Df
 for ath10k@lists.infradead.org; Mon, 14 Oct 2019 09:32:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=0L45GlhkktQrKg5sqENX0zgxlTtsJeYFJSFk9fVXcQ0=; 
 b=JJ9pEUIuzzOH6ClOxim6VJlmA0Jrzmes+UhH975Jtppvjzkal10clUrAh6mfidjlA6RqowU02eBZ8isxlwX1qhVefXd9TqVMC/AbdNA7w6FFvOjE3WbGDmH0qsFO6rMp2wel5jY4OmIeuDBVkVSh6Dr6QJJKmKMpBqPyrGaWW+g=;
Subject: Re: [RFC PATCH 0/2] ath10k: provide survey info as accumulated data
To: Sven Eckelmann <sven@narfation.org>
References: <20190918124259.17804-1-sven@narfation.org>
 <9a9ec99b-9643-7288-eed5-b549a9fe1487@newmedia-net.de>
 <1614044.H5m0Cyd3Ly@bentobox>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <c51d8bce-d51d-fe77-d756-036f719eb4f4@newmedia-net.de>
Date: Mon, 14 Oct 2019 11:32:41 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1614044.H5m0Cyd3Ly@bentobox>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1iJwiK-0001m7-82; Mon, 14 Oct 2019 11:32:28 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_023247_750933_B7E7A085 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: vnaralas@codeaurora.org, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

10.4 has additional 64 bit cycle counters. see wmi_pdev_bss_chan_info_event

the standard 32 cycle counters do individual wrap around as far as i know

Am 14.10.2019 um 09:07 schrieb Sven Eckelmann:
> On Monday, 14 October 2019 00:15:20 CEST Sebastian Gottschall wrote:
>> i checked your patch on 10.4 based chipsets with 9984. the values are
>> now looking bogus and wrong at all. busy and active time time in ms does
>> increase in hours each second
>> the problem seem to be that your patch is 10.2.4 only related.
>> ath_clean_survey does not trigger on 10.4 so the values double itself
>> each time the event raises since you add the full values and not just a
>> delta on top
> Thanks for the feedback. So we have now a firmware 10.2.4 which is =

> counting
> busy + active up and has wraparound problems. And then we have a 10.4 =

> firmware
> (on QCA9888 and QCA4019) which is clearing everything as expected with
> WMI_BSS_SURVEY_REQ_TYPE_READ_CLEAR=A0 and then we have some 10.4 =

> firmware (one
> QCA9984) which behaves more like ath 10.2.4 firmware but is marked as
> ATH10K_HW_CC_WRAP_SHIFTED_EACH like the QCA4019.
>
> So I have no idea how to fix this when QCA4019 and QCA9984 are currently
> marked the same but behave differently. Does somebody have a overview =

> how the
> different HW versions should behave or is there some special bit in =

> the data
> reported by the firmware which can be used to evaluate the expected =

> behavior?
>
> Kind regards,
> =A0=A0=A0=A0Sven

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
