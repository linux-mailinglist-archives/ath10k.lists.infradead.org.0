Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 035481636DD
	for <lists+ath10k@lfdr.de>; Wed, 19 Feb 2020 00:06:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tPE4PDDMLQkcnkDJGoUOfTgzuJPcjw72OOgoyceEI0s=; b=jZVj510a693FfV
	pUCh2mvjNBmYThoK7jskkt02QC24DiA2Xq6J3imQ6oNRGLnf8lPs7fg+FdXZxfDIep0oecqaetRrX
	JsmRFuJ38vuS1dAX5OTxKTdik0ts3jqCj+chilyMBCRwJrpy5RUuDp0CTXJndDyZwe0F3IklxQ7cL
	jWbXaXGOeffn9LJXNXFCVw0jA8B36DaKC2vKRPR4BO5hYiotRBsr+13s6KljHZ18devQGial83+KZ
	rcdY161Dx0Rcb/T7sihlOI4iX71SzEQ2vGtfA6FV619R2HtMgMe8pyDLzz60qi2ATtnOzHIKZLNnC
	afxWvkydHKe+suj/NW6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Bwz-0001oZ-Jr; Tue, 18 Feb 2020 23:06:45 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1j4Bwu-0001o2-LK
 for ath10k@lists.infradead.org; Tue, 18 Feb 2020 23:06:43 +0000
Received: from [IPv6:2003:e5:3f0c:a500:51e2:f66e:658a:5eed]
 (p200300E53F0CA50051E2F66E658A5EED.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f0c:a500:51e2:f66e:658a:5eed])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id 68FB122F8A;
 Wed, 19 Feb 2020 00:06:26 +0100 (CET)
Subject: Re: Management rate-control on IPQ4019
To: Ben Greear <greearb@candelatech.com>
References: <20543d04-7847-8a4f-7882-78c2f42c98c0@david-bauer.net>
 <5E4C41F3.2000500@candelatech.com>
From: David Bauer <mail@david-bauer.net>
Autocrypt: addr=mail@david-bauer.net; prefer-encrypt=mutual; keydata=
 mQENBFYkGEcBCADbRMHdOXmszxrmE9G/gWUD4/HXklOfn+hyBpEcOul+GKAet0oFxznkchJe
 hO5MbEFYsnM8TZVxjnEi70c3luF1m4JycjgQ91GJ52+xvLV0dVz+L99JBgVJNRDvvt68rLVq
 A8/LCdkXctZ+GBfrtTYQ6dOeuQf/qWuwlNTvuG92uWVZjncyWOmQX73gv+1MTRsCmIGNYQu1
 ZDVyhr3YsTgJIXTHUCxBHQBDglkb3L5lK9WHPf1puQ2grNbUg9VSmo4a9IzUpRauNtCDUFxi
 1m1e5VnmU5O5/xZyDzwmpWog9tUfScS7X9pdVNQ+2W3zCRrotFEn6FKdD01mhIsLnczjABEB
 AAG0IkRhdmlkIEJhdWVyIDxtYWlsQGRhdmlkLWJhdWVyLm5ldD6JAVkEEwEIAEMCGwMHCwkI
 BwMCAQYVCAIJCgsEFgIDAQIeAQIXgAIZARYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRhu
 BQkIy2cnAAoJELqzlxS0pLh4It8IALb1ea/ezwy8v65zmTeIepeuO5umWzWIy7fLaAsxzJbH
 rO6rCTnRN5ZLyzuxNlhYMyvXAJL7kmPuEOOzHk5xh3soV24VZLSryzGeB6TG3g8L6D0guJ72
 JMM/2HGP8g1zu/IfIM94DZJk7WEuRKG5sndZp49s/voKhrMqAvAU4G03knpEN5SbJx5RA/Wf
 i5stipz2vqS87jHgOVTL1m67Wg9jhKuzJbSlt+m8rHZCQ9dCQQLtqbHugnyOrFhKxwfGFEMB
 aV0sKwoBfjtWP/g3kb9L5wOvRj8UnDRLTB/fVnOsMD18ILEiNqc6FCh4hIb4y2QQEc0nb68f
 imjr4Hz7TOe5AQ0EViQYRwEIALqz1V6kWIvCTVN/6QN9fepVSwSw+5IiiVBGtf2rtdqujCRD
 bGi96a2ZLYRQzlSQvCZ51skgoZFmIW2YhPP90qiZssSEQxgY1rf+DEYnjWmFSgi3iHqYXRk2
 cY7OI3ZT8D2tAFu9pIAxZpD5FdQznJmUhljeTJw+lGOoxctf1xjHZcRcU6GUFMpFBc4xaLC0
 hUN24HT5pDpklxskPFH91VncDaOsLesqszGaUHWx3hogRfogdADvycUp/bQB80kZO/XqexWN
 GUNJYS4axWM2ND25bWV1h9aFjPpOwFM7FwAyra0VihnnNn7dTL5vBpFztY0IFPlvqyc1Vw8y
 vgtShA0AEQEAAYkBPAQYAQgAJgIbDBYhBNcEMml7fEwnOA/No7qzlxS0pLh4BQJbLRiFBQkI
 y2c+AAoJELqzlxS0pLh4LIcH/jnL+ytxRSAh8VX3U2xrMOhBFOkJbW9fj6UgE2iFfZUEOBZl
 q6fZTYn1LOTOECrnLC6eNUQsnZ2u+/N93I5Fmof0MIICUbVabEVmbF/jCFkKjrTPFv/DbNZy
 c+X2ugyX7LsJT+CdvtPT9fObTLCS1nQc3G49syEGVEIzPNyIFzJbFLyh1AfRxmnzAwlal6xK
 S82CsKe+n2lwWg2dyyoJYqwM2G6hAg/ZFqRBZ1RH6TsACGMnwvmsfW/871mPt/mOTCDoH1s1
 tcsgxxtD87UnEqA4zL8dqi5uRA82ZznWaq3mzOGKcBkgEcxi8nnQWW+EyTiZWC+wJ9xT4kLh
 z03IzJQ=
Message-ID: <40026add-c28a-da90-f17a-feeb8379c544@david-bauer.net>
Date: Wed, 19 Feb 2020 00:06:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <5E4C41F3.2000500@candelatech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_150641_003211_8C5743D3 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hello Ben,

On 2/18/20 8:58 PM, Ben Greear wrote:
> On 02/18/2020 11:12 AM, David Bauer wrote:
>> Hello,
>>
>> while playing around with the 2.4GHz WiFi part of the IPQ4019, i was
>> expecting being able to set the rate at which IPQ4019 transmits it's bea=
con
>> frames.
>>
>> Using OpenWrt, setting "legacy_rates=3D0" on the radio leads to only adv=
ertising
>> 802.11g speeds, however the beacons are still sent out at 1 Mbit/s. Usin=
g a QCA9984,
>> the beacons are correctly sent out at the lowest 802.11g rate (6 Mbit/s)=
. So i assume
>> this is either a bug in the ath10k firmware or a hardware-shortcoming. H=
as anyone else
>> experienced this bug and is it likely we'll see it fixed in a later firm=
ware release?
>>
>> Hardware: IPQ4029 (Aruba AP-303)
>> Firmware=A0 Version: 10.4-3.6-00140 / 10.4-3.5.3-00078
> =

> There are separate API for setting management frame rates.=A0 I forget ex=
actly how
> upstream supports this, but maybe check debugfs?

I'm using the mac80211 interface here [0], which works well for the QCA9984=
, but not for
the IPQ4019. I'm not aware of a debugfs interface with ath10k for setting t=
he management
rate.

I can try the one ath10k-ct implements, but the fact it works on the QCA998=
4 makes me believe
the culprit is the firmware. The patch adding support for mgmt-rate setting=
 does not list the
IPQ4019 as a tested platform also.

[0] https://patchwork.kernel.org/patch/10593573/

Best wishes
David

> =

> Thanks,
> Ben
> =

> =


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
