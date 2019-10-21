Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EE1DEEA2
	for <lists+ath10k@lfdr.de>; Mon, 21 Oct 2019 16:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+OaJct0GYlhRb3gLWg4Ey7P58TAxMKMVekxnDRpzEQg=; b=C9lgqfyQGTY0z170qNUAOwBWY
	cZbPA2NcKOfmDuAW/zNQjLgqSBDQnPnCUJSym3QSovqXyYbUsiYgm5ir8RLZf3Dxg7HGn1J7H9bJG
	BK2f2BD1XmESEKQAiom6GzOz8f+q3F8NDrzooPvzuu2GcuIW0d3YCHi1w5RVIM9Gwryf7XHmvfPf6
	wlYQGdygE+WU1XztbcuYDtU3pAYqby7Bc/0qGrpfj0vV+059pyIN1zUqMTtBKo2+hN71LSyIyJGM1
	ypieFkfK4EUfPzVbffC3hDgwAdllPQmL4IP9IlT3RhBkbhIIXbELpjCvlgaC33TmnllP8h+OhliB1
	NvOwPh/kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYFF-0002hv-2i; Mon, 21 Oct 2019 14:01:13 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYF6-0002YG-LO
 for ath10k@lists.infradead.org; Mon, 21 Oct 2019 14:01:06 +0000
Received: from [192.168.1.47] (unknown [50.34.216.97])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id A377D137563;
 Mon, 21 Oct 2019 07:01:01 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com A377D137563
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1571666463;
 bh=TC0IC7ijVgH9EVtRApZTiGeFe1tzHYJg6SGZj3JD57E=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From;
 b=dB9W91qhjuh+ZefuIByWJyo92qyfGQjN7Ueu0zjVFermwckAaik1XLfzrxBbMV14O
 Y8rhWNATIjDSg9KiPv1imIYSGJKhO2yb5M/ZN1AQ+TD/HMkfWGbVDbUqi/AzoJeolO
 c15E661Rx/PoWdnGtBrkm/EoSyvy755xltPfPqG8=
Subject: Re: WARNING at net/mac80211/sta_info.c:1057
 (__sta_info_destroy_part2())
To: =?UTF-8?Q?Tomislav_Po=c5=beega?= <pozega.tomislav@gmail.com>,
 kvalo@codeaurora.org
References: <87lfuuln5n.fsf@tynnyri.adurom.net>
 <1571584320-29816-1-git-send-email-pozega.tomislav@gmail.com>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <073b0ffb-187b-659e-0967-23ae44c5c660@candelatech.com>
Date: Mon, 21 Oct 2019 07:01:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1571584320-29816-1-git-send-email-pozega.tomislav@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_070104_826593_9F1B9103 
X-CRM114-Status: GOOD (  13.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 johannes@sipsolutions.net, torvalds@linux-foundation.org, davem@davemloft.net
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org



On 10/20/2019 08:12 AM, Tomislav Po=9Eega wrote:
>> -11 is -EAGAIN which would mean that the HTC credits have run out some
>>  reason for the WMI command:
>>
>> if (ep->tx_credits < credits) {
>>         ath10k_dbg(ar, ATH10K_DBG_HTC,
>>                 "htc insufficient credits ep %d required %d available %d=
\n",
>>                 eid, credits, ep->tx_credits);
>>         spin_unlock_bh(&htc->tx_lock);
>>         ret =3D -EAGAIN;
>>         goto err_pull;
>> }
>>
>> Credits can run out, for example, if there's a lot of WMI command/event
>> activity and are not returned during the 3s wait, firmware crashed or
>> problems with the PCI bus.
>
> Hi
>
> Can this occur if the target memory is not properly allocated?

I have only seen this on wave-1 cards, and it is usually paired with situat=
ions
where the wave-1 stops doing WMI related interrupts properly as best as I c=
an
understand.  If I force the firmware to poll instead of waiting for irqs, t=
hen
WMI communication will work for a while...I have not implemented that on the
driver side though, so I still see these WMI timeout issues.

Thanks,
Ben

-- =

Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
