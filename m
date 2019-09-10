Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6E3AECAD
	for <lists+ath10k@lfdr.de>; Tue, 10 Sep 2019 16:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2ZBe3bGdAaLiogGvmlnndaXfub+wyYBbfE7gNBXUW2g=; b=i/UF+HzmX9ARW/GbzK7EO+roT
	giRFMqDJh19leLpxGCtoQqeBKgtoUt7H7jW1o+dRjJTyEdELisqEcxm1sKrT4XeVGTWWNjZkDYIqJ
	rOE//Y6yNqSwbp2J+fvRbZmuL9q+W1JFMbXn0o8ul9STVu6lMHrzt/yZr10k1bEJ7wRyV2vejZxxr
	Bn5WfSJe9yuetQByuBUljZ8fCQh+EaGdxJ58oEqHBEdgnKcYMpf8PjgBbnJo67y7HNYF334/vak0X
	hwvJBNTT9aDa+9hmt25217t0/rjcaCApgWCmAk6l8AdyXvyKEmpgs8nMAe53SuODxxCjwa6XvAvwn
	Ubuj7X7BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7grq-0007GZ-22; Tue, 10 Sep 2019 14:11:38 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7grm-0007GB-6w
 for ath10k@lists.infradead.org; Tue, 10 Sep 2019 14:11:35 +0000
Received: from [192.168.1.47] (unknown [50.34.216.97])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id C75DCD949;
 Tue, 10 Sep 2019 07:11:32 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com C75DCD949
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1568124693;
 bh=+QMzeX2DwdMnQV2m5QW4VrcWN4bcH5xCsxjSg9UC8kU=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=SACAZyIwUppeaAh5urZwbUHWTHnsSZA3e4yxQZ370GH/Aaeo+XhOiRySDqxe0OkFr
 kjlscC8ONZON4tFxQxiqVR5KeiJOt+g8AC8I09k8wA76zcd+1Y5reUdUGu831UTd6q
 s35GA8O/TJaV3nd5R6C71mR8ruvs38mMSwZf9lus=
Subject: Re: [PATCH] ath10k: restore QCA9880-AR1A (v1) detection
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 ath10k@lists.infradead.org
References: <20190906215423.23589-1-chunkeey@gmail.com>
 <20190907214359.1C52A21835@mail.kernel.org>
 <CAKR_QVKv8kgXSSCwd8esw28hARA61Pah3usRi+ZZG6ss2CcS=g@mail.gmail.com>
 <87h85kfwfn.fsf@codeaurora.org>
 <CAKR_QVJpGZCBaE3hW6FShykYa=T6hy2dHn22daQVodWGL_-Afw@mail.gmail.com>
 <a1cf238e-ee80-ee81-f7a6-28faff3a35a6@newmedia-net.de>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <a599bf9a-44ad-2d70-79dc-324e8dbeb1cd@candelatech.com>
Date: Tue, 10 Sep 2019 07:11:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <a1cf238e-ee80-ee81-f7a6-28faff3a35a6@newmedia-net.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_071134_344793_53A6A8AA 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org



On 09/10/2019 06:51 AM, Sebastian Gottschall wrote:
> the tplink archer c7 v1 indeed has this hw 1 version. but thats the only device i know comming with this chipset version
> but the v1 has also a minipcie slot and is not soldered like all other revisions.  so i just replaced the card on my test device.
> in addition we may ask ben grear if he is able to provide a v1 firmware from his ct tree since the qca sourcecodes do contain support
> for the v1 revision. but dont expect too much. there was a reason why v1 was never really on the market

Hello,

I don't think I can even build a v1 firmware if I wanted to, and I'd much rather work on newer
chips.  That v1 was an unstable wreck from the beginning, at least with open-source driver.

Thanks,
Ben

>
> Am 10.09.2019 um 14:59 schrieb Tom Psyborg:
>> On 10/09/2019, Kalle Valo <kvalo@codeaurora.org> wrote:
>>> (dropping stable list)
>>>
>>> Tom Psyborg <pozega.tomislav@gmail.com> writes:
>>>
>>>> According to this very old post
>>>> http://lists.infradead.org/pipermail/ath10k/2013-July/000021.html
>>>> seems like you've been misinformed on amount of these cards that were
>>>> put out in the market.
>>>>
>>>> At least digipart only have >40000 units in stocks
>>>> https://www.digipart.com/part/QCA9880-AR1A and other retailers
>>>> probably few thousands more.
>>>>
>>>> With that large amount of cards I think it is justified to request
>>>> firmware support for the chip. And probably a lot easier to make few
>>>> firmware modifications than go hacking a bunch of API calls so it
>>>> works with v2 firmware.
>>> I'm very surprised that QCA9880 hw1.0 boards are still available, after
>>> six years. Did you confirm that it really is hw1.0 and not just some
>>> mixup with hardware ids or something like that?
>> Print on the chip clearly says QCA9880-AR1A. ID same as for v2 - 003C.
>>
>>> old hw1.0 firmware to see if it works.
>> I don't know which fw blob version that is. I could not find it
>> online. All files are v2 related.
>>
>>> But if it's really is hw1.0 I doubt there will be any support for that.
>>> I recommend to avoid hw1.0 altogether.
>>>
>>> --
>>> Kalle Valo
>>>
>> That would be too bad, even worse when you find out that
>> qca-wifi-10.2.4.58.1 driver fails to load firmware too. The only one
>> that works is qca-wifi that comes with tp-link firmware, some very
>> early version 10.0.108 or somtehing like that that has no available
>> sources..
>>
>> _______________________________________________
>> ath10k mailing list
>> ath10k@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/ath10k
>>
>
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
