Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2918612BC6D
	for <lists+ath10k@lfdr.de>; Sat, 28 Dec 2019 04:21:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KaRB1GfFKS0ZX46ezfF5dVOHMM2VA9dpJDQFAspZwuc=; b=lvA2xujkOZXqwC
	77356DP5t82+wgY2XkG/VfuPGDIV+TJ65ESZrMYZuUtw4/WDAArKTLikC/8G3wFN5wP2OW9zUTLc0
	tcS3dQgxmeKk6eCX2qRDS79063GyCPNhZXubWoDuNjs7J4JeiggCwu+n7yJC/IbF61QjzntFLn43g
	9p94JQtIjXnQJbvbLxRWKMJLZm4Z+YveIT+gRDFdT4Gju3PNqz8fHMfM+XOkR7btaX0l6msmgKiTl
	1gtreLvwwDRywf0NTEyQRgQIXcKFX1VcKDIu7ecsA9KP8DaFwsKgyy5iSu4CzJNR1YmNg5bbolhjO
	GyFzI2O8Ta1EBh0S/D9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il2fE-0007E4-EM; Sat, 28 Dec 2019 03:21:16 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il2f9-0007DQ-U0
 for ath10k@lists.infradead.org; Sat, 28 Dec 2019 03:21:13 +0000
Received: by mail-ot1-x344.google.com with SMTP id 59so38598662otp.12
 for <ath10k@lists.infradead.org>; Fri, 27 Dec 2019 19:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=C27axE1tFb+X9nCVJoaSxmxUBrTHkIjyI8OLf34c6eo=;
 b=czR0skgirhf+2x6xaCBVqbwn7dfDAINw3FhReBjaBFkG3J0V2MbKQXWUtt5th3a13A
 zMM75pfpLms1Oopwzm6eVyB/4CVif/s0nEeNT2HjQ++oLLfAHY11yGLiH5QF/qNraI8P
 u3/t7ykD+4o1w+r+gHS6/1bQyW6YbIOYEQkPz3fxPkSv9qvzRbKD6sKzLA/H1KNp94Aj
 mbcAbB+NKlrEl3zJF87jefmz45+M9+0+hBWjLCvcHuZzDZwkIjB+j3+H9rRwaXdkQSpY
 UGkSXZLWUogbv9zDEh9SM0SviOCXuN2mPlM+SOdGnQo778feu/8vYyXNZtBMLhlSKpo1
 ccPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=C27axE1tFb+X9nCVJoaSxmxUBrTHkIjyI8OLf34c6eo=;
 b=DftgN2hs0CjjjNHgvKYrmW4d8rVPd+7aT88ntsKqmK/HaBt+MkyzJDas9LZjbxN/ap
 sEXlZf17jhxTHsAgiaImuB7C1Dv1qA03fbxeBLP0GceXeKHrmKD8BgU7V/APrDR+u/zE
 4aff3D+SWa2lf7d7WRbHKwQSMsvU6tXaIPGTCjtyFo/Y0oo8zRJu37zt/phkqlGOBvOn
 vLf2fwdca2j6o2c9wUwF8xr0ExEOgtS3qUCcRn/lJmwXPYkiU+a5vDD33zCijaGOl0BJ
 a4b6lu0gWSYWGM6g+uwiZCRTiAHcpNMXVI8grOAHUpY/Rf0YD2vysAXND++RdQ88qrMX
 HmLQ==
X-Gm-Message-State: APjAAAUxu1+Cy1Aen+Yq7aeo8UfoYGfuixxSkW0iVlujsGyls0lFBfd4
 TET7KMaQH12lFgYjne4qd61tTw2cW61EbJgFB7k=
X-Google-Smtp-Source: APXvYqwYPhzHflt5XWxv53y/jLWPorZnyJzczQlF0rXFve1TEs1h+7a4j2FaSjng3saQDDFLarM2kyoGPrkxwOFPvx4=
X-Received: by 2002:a05:6830:22ee:: with SMTP id
 t14mr58731937otc.236.1577503270731; 
 Fri, 27 Dec 2019 19:21:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Fri, 27 Dec 2019 19:21:10 -0800 (PST)
In-Reply-To: <d2e4207c-1cd6-198e-84df-21496f0be378@phrozen.org>
References: <20191216092207.31032-1-john@phrozen.org>
 <20191217153000.76AB1C4479C@smtp.codeaurora.org>
 <CAKR_QVJVfqid8i5PXj3Yg8VJjht=MF2fZg+twkLgEkKuMB2bbQ@mail.gmail.com>
 <CAKR_QVJ1PhCHfAO5Rp6pm-wjAO-HcZiq-9Lw67FzBFO5jjYtbA@mail.gmail.com>
 <d2e4207c-1cd6-198e-84df-21496f0be378@phrozen.org>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Sat, 28 Dec 2019 04:21:10 +0100
Message-ID: <CAKR_QVJE6c-VTR-rGdBUt08ijt=w2rCRjeNQ2+=E6ZQ6_N+g=Q@mail.gmail.com>
Subject: Re: [RESEND] ath10k: add tx hw 802.11 encapusaltion offloading support
To: John Crispin <john@phrozen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_192111_997451_4B5AAB5A 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vasanthakumar Thiagarajan <vthiagar@qti.qualcomm.com>,
 Johannes Berg <johannes@sipsolutions.net>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 19/12/2019, John Crispin <john@phrozen.org> wrote:
> On 18/12/2019 23:45, Tom Psyborg wrote:
>> ccing Johannes Berg since upstream change (mac80211-next) breaks build:
>>
>> In the commit log its written: remove SUPPORTS_80211_ENCAP HW flag
>>
>> Any sane reasons for doing that? mac80211 fails to build because of
>> removed flags, this is on backports-5.3-rc4
>>
>> Other than that the feature delivers the promised:
>> QCA9880 iperf between wired and wireless machine
>> native mode 449Mbps
>> ethernet mode 522Mbps
>>
>
> superseded due to johill's fixup of the patch, new version coming up
> 	John
>

in case it doesn't fix up scan crash i can provide more details.

triggering scan (from luci at least) would always crash the driver
unless vdev was already started, right after the message: mac create
vdev 0 map ffff

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
