Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0F21B8681
	for <lists+ath10k@lfdr.de>; Sat, 25 Apr 2020 14:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8vg3gf4W82ioXTejT8tDsLcD1nMCRg+QumPud3zKoM=; b=lRGakOQNYHeB5i
	TBO5qO34LJIozPBmwTQxKaq1g9Xu7Bm3jwQob6K7INfyUHggdrr/DqMA7FWyfWcqINcWkpild6cz/
	gohuWQJA+lvZxAdQoUlXHL97mrjjQPuk7mVltUoIT54WrePTJgMIL4EttmcUS91Tg80X9gwY2Em7t
	hUEiIouGQomOc17bBoviS4RVqvwXXH9P+chPW+9xnxP2CmDe42X2b/Fsp0s6n4KGSK+oro12gVRh0
	IkJTLNdNH705ZOCh2mJQjjvU/QAsz080pe4lQzh6tqKEB61cqvJ6zRpAsWJfR6Ps/TFEFx9G4F7i8
	ATHyXgQ+Bn0ZEehpPt7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSK3w-00069L-1z; Sat, 25 Apr 2020 12:37:40 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSK3r-00068o-DH
 for ath10k@lists.infradead.org; Sat, 25 Apr 2020 12:37:38 +0000
Received: by mail-il1-x141.google.com with SMTP id u5so11966345ilb.5
 for <ath10k@lists.infradead.org>; Sat, 25 Apr 2020 05:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=gclxzj84J4yPSQ9gcjqsg+dWrG8+wnOsD5ESwSleiKI=;
 b=IHPLd9H7xVpLt9bAzwIZh11p8F6R01gRa+vKyFuPfXsJTIon0DZWYiaXsGR6x2c1ZQ
 rjpcp0yjprfDUIjcKgjhvaU3B/QHWbs4glsHWMBX/ru9q8yFaF7N3uKtl6xwPTA7dl7z
 3TDyvKebXzKBaFWFjDne4cPxBF4bw4UidVYXt+ChciVxG0XGmjQW4HT5ILVXCjHsTsmJ
 9VT2iKaf6Sx3yr5UdmeErt8rCsq8LGD0ya22L2t4J1ee/L/4YyQT3RqlaBEawO4xkrTg
 jBba/Y3pFMVr2ujenBLKX5EOAZToJqXpyXiniYB1fuSWhW96lZmPQtLjlFj/mjDRAzqh
 Nk4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=gclxzj84J4yPSQ9gcjqsg+dWrG8+wnOsD5ESwSleiKI=;
 b=ba0ptHmNm9N5QTLic7ZE0Ur2AQfB3uc4pT+WXbFUQd0mL1J+Fg6f31zYLjBQn7PSQl
 KZJtv2r15F2CsPraKviVuu9mLfGwWFYjfTyapkka4xssGMuB83sBDKJb2DYaB1XFDU46
 Ao6BkIVmh8KLxW38RNBc6xMPibQei8957ymkNcrw5cc+9juKY5ajJ3eCxt+6dt5mB6I8
 U5d35VPr07QvMj0AjRflG3ATEt4aJtdlFTkmSbprXCe6iT27ikXmdHa7QM0/W4WExkzk
 iw4qGaDpjw4+ow89j8FeZvizMIzUAIZhg5jLfBmcuppSMEooDZX70ocs0wFuiZdKvOuE
 yp4A==
X-Gm-Message-State: AGi0PuYSwNlE4kL+KlG9ZTeT03vbH25Pkx00qKgB2QdbObjHqAu813xN
 WHcBewQOidiJ6CxvTfl78Rtg83hVxTyC/n60Bew=
X-Google-Smtp-Source: APiQypJWs0c83XpOORo3Km34aNUNqEAEw1WXG52auwvD6wP4oytZLgkRLiR4k+C8CIdgYeTzNVztS/4OIc68hZCgHnE=
X-Received: by 2002:a92:cf02:: with SMTP id c2mr13847839ilo.259.1587818253729; 
 Sat, 25 Apr 2020 05:37:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:91ce:0:0:0:0:0 with HTTP; Sat, 25 Apr 2020 05:37:32
 -0700 (PDT)
In-Reply-To: <CALY5VB38LT_FNRj5mdvgSJ0YVb6fHyOSM5dJfN8Kdzsuk5wTvA@mail.gmail.com>
References: <CALY5VB38LT_FNRj5mdvgSJ0YVb6fHyOSM5dJfN8Kdzsuk5wTvA@mail.gmail.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Sat, 25 Apr 2020 14:37:32 +0200
Message-ID: <CAKR_QVJvko9VidtC-uR2XdwmYV_e3sm4rN-0162gpnkj7hFgZA@mail.gmail.com>
Subject: Re: Poor link speeds and signal strength on Qualcomm QCA 9377
To: Arvind Bakshi <arvindbakshicool@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_053735_451926_E5D1DD91 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pozega.tomislav[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 25/04/2020, Arvind Bakshi <arvindbakshicool@gmail.com> wrote:
> Sir/Mam
>
> Getting 1 mbps link speed and average signal strength, even on
> standing next to router on every linux distro whereas windows 10 gives
> 150 mbps link speeds and excellent signal strength even standing quite
> far off from router. Tested on Fedora 30/31 and ubuntu 18.04/20.04.
> Turning off wireless power management : sudo iwconfig wlan0 power off
> doesn't make a difference.
> Turning off all power saving options using TLP also doesn't make a
> difference.
> Software (OS, Firmware version, kernel, driver, etc)
> Tested on Fedora 30/31 and ubuntu 18.04 LTS
> Wifi card: Qualcomm QCA 9377
> Device: Dell Vostro 3468 (shipped with ubuntu 16.04)
>
> Hardware (NIC chipset, platform, etc)
> Qualcomm QCA 9377
>
>
>
> Please provide driver fix for this wireless card.
>
> Thanks & Regards
>
> Arvind Bakshi
>
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k
>

Hi

Show output of "dmesg | grep ath10k" and "uname -a" on ubuntu

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
