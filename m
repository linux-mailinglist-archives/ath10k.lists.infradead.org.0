Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514E510E343
	for <lists+ath10k@lfdr.de>; Sun,  1 Dec 2019 19:53:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IlFpfySdiQ7NFrOq9olibCMd2aHW5yBd9Tbt6fNgaPk=; b=EAIkA8UGx0hLjX
	s3vQYHsAlTs+hZU7bMsnnZ4lCITmTpBW4KLWLWEw5ZpPdNYSac/9GQYyv2d2mq/UkZUxNvHDlO4dy
	XPwB/flRdZBYD4gibrR94XPL/efvJfl5U4Wi6H+x8yOajdDizSTzDfS3bd0Wfupv/GFLzwh9qLb1V
	OIs2Zk7DmvzrQCB4AH+wihaFOMvw1dcI087lhOB4iuPOB/6QgYPJzDNKZIaWim422S3ygUu94Oqbe
	ra+7PZNlLtfm87yhZYG8IvB+l4y1dKbHDLPuQ7b5056U850jw2q1ubEqBLi68HI5EBiNtiVFN8t5R
	f7iwlUk+3z6P3Bw6iNYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibULZ-0006V8-OT; Sun, 01 Dec 2019 18:53:29 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibULV-0006UL-LG
 for ath10k@lists.infradead.org; Sun, 01 Dec 2019 18:53:27 +0000
Received: by mail-ot1-x32b.google.com with SMTP id d17so5550758otc.0
 for <ath10k@lists.infradead.org>; Sun, 01 Dec 2019 10:53:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YoWqb7duhicxwj6MWiKiiPokUCEEA+34shxvNJIrzbo=;
 b=UAnYjSHHet/2Tvaf8RMYQ7USLa/OzLEBxngYbjINHsCkOxXEsASSBc4deVVteMwa7p
 Bihn/tbaq19Qiw4GE6DRhXyQ7P1ApmGXYZcHoodqvaiDBUSNxhnqHg5bHezzN5i2R5K8
 7nkKvkpqYi4VNpSuGURaLBXBaaE7GTfYDvPzPXsRsu+USLLVQ8C8SoL4YTV7nTeriLkg
 e2Bo2h3ENcALieztSh7qT4CNbk4rIZ8o2Pp2W0pD+IbHNb9Jr5K8H8QHlmxdibu5Ly3y
 MOtGG618T7sQQ1ThbMTv6GJo6QSuXNGSktGXoovj7ycC8TTk9utLpTBF9sgonCSq/YTY
 of6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YoWqb7duhicxwj6MWiKiiPokUCEEA+34shxvNJIrzbo=;
 b=GZrJ+k8f/u1Tgsdy8YjbA+PYtgcmkOfFJMhQINZRl6SejqMv/QMzPJ/JndCPemVEkU
 q86MNy+fi3BgYWeSJ/DCnjAKILowNqA9uCuFUtWc+ysWMVwR1wrrlhViF0Npl/a25xVW
 sXF31zoUquj7al46CpeaG8vkj4TsSJF0BsepUPWgqgrXLggWeQVtLjoUknRMLY22X3RH
 feG/dVoT52AfgNd8Enmb1nNjr8LUYsklt7r/2lMbrTLSirYagDeHWa5ptDxNXtR5k0lw
 PJnl9JlyLF4DVrr0G8x0bg6HLzcaP8odHpRzmuEF5eGeqJ0DORjojBiZBpMovi00r5yN
 A/AA==
X-Gm-Message-State: APjAAAXLfuuK0U7hZQ3MEuAt/xbP7CZpAfBqpju3NmKjGxRFLP9EBnuQ
 SoraLdCduGdcpkncwObmE2DukQDk2UwF5qditEECI5JcuMg=
X-Google-Smtp-Source: APXvYqwpPuIbgZI53vIWM+RHZ2Z6QuJmdPalSnJXAbF5PrVU2SEEVmen82StUjrK77O++CPPfuH9t+k1S/KCdS7UrHI=
X-Received: by 2002:a05:6830:2363:: with SMTP id
 r3mr18999686oth.39.1575226404186; 
 Sun, 01 Dec 2019 10:53:24 -0800 (PST)
MIME-Version: 1.0
References: <CAMrEMU8A49OwSPKN+YP7z5LYjiopNpEq-MdACBvkZi6W=vJO9Q@mail.gmail.com>
 <CAJ-VmokD1E8s99PE-XhDkmu=dzkFB0r_QvV_0z6cbHcC3j0FHA@mail.gmail.com>
 <CAMrEMU_nahLwE39DX=6e=Pr9S8R7oyC0mFFCqis4b8-FPC80YA@mail.gmail.com>
 <CAJ-Vmo=RZNXi273vGp+4H_mQVGghKeeMSOUpStz+wXQq=awCqA@mail.gmail.com>
In-Reply-To: <CAJ-Vmo=RZNXi273vGp+4H_mQVGghKeeMSOUpStz+wXQq=awCqA@mail.gmail.com>
From: Justin Capella <justincapella@gmail.com>
Date: Sun, 1 Dec 2019 10:53:10 -0800
Message-ID: <CAMrEMU9CpXhSG4bbcYbqD=W6DR9a-mFFFqh7mj1ObpRHbobwPQ@mail.gmail.com>
Subject: Re: duplicate authentications / excessive missing ACKs / deauth due
 to inactivity timer
To: Adrian Chadd <adrian@freebsd.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_105325_731688_AD531540 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Just to note, some of the devices have not been updated, the AP
however has been, kernel upgrade  coincides with start of issue.

Name            : linux-lts
Install Date    : Sat Nov 16 12:58:43 2019
Name            : linux-firmware
Install Date    : Thu Oct 17 05:27:14 2019
Name            : hostapd
Install Date    : Thu Sep 19 17:51:31 2019
Name            : wpa_supplicant
Install Date    : Tue Sep  3 07:06:51 2019

The linux package is built from:
https://git.archlinux.org/svntogit/packages.git/tree/trunk/PKGBUILD?h=packages/linux-lts&id=6d82129ac6719690fa5c0fd09d1ddb1883c292cf

Link to the 4.19.84 ath10k drivers tree:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/log/drivers/net/wireless/ath/ath10k?h=v4.19.84

Happy to provide any info but I'm sure this is an issue on the AP side
(where the ATH10k is the base station)

I'll enable debug logging, and see if upgrading/downgrading kernel
makes a difference, if there is any sort of tracepoints anyone is
aware of I can enable those

Client devices:

*Pixel 2 XL cell phone:
Snapdragon X16 LTE modem: mobile connectivity with LTE download speeds
up to 1 Gbps, multi-gigabit 802.11ad, and integrated 2x2 802.11ac
Wi-Fi with MU-MIMO

*Intel AC 9560

*Samsung TV... Unsure of wifi chipset


Station 84:d6:d0:xx:xx:fa (on wlp1s0)
        inactive time:  1310 ms
        rx bytes:       81380769
        rx packets:     522284
        tx bytes:       745819867
        tx packets:     685665
        tx retries:     0
        tx failed:      0
        rx drop misc:   64
        signal:         -54 [-60, -56, -62] dBm
        signal avg:     -59 [-64, -62, -66] dBm
        tx bitrate:     468.0 MBit/s VHT-MCS 5 80MHz VHT-NSS 2
        rx bitrate:     6.0 MBit/s
        rx duration:    40567184 us
        last ack signal:-95 dBm
        authorized:     yes
        authenticated:  yes
        associated:     yes
        preamble:       long
        WMM/WME:        yes
        MFP:            no
        TDLS peer:      no
        DTIM period:    2
        beacon interval:100
        short slot time:yes
        connected time: 1220604 seconds
Station 64:16:66:xx:xx:c6 (on wlp1s0)
        inactive time:  8530 ms
        rx bytes:       13854367
        rx packets:     134992
        tx bytes:       11651515
        tx packets:     38495
        tx retries:     0
        tx failed:      15
        rx drop misc:   110
        signal:         -60 [-71, -68, -61] dBm
        signal avg:     -59 [-71, -67, -60] dBm
        tx bitrate:     72.2 MBit/s MCS 7 short GI
        rx bitrate:     6.0 MBit/s
        rx duration:    13006672 us
        last ack signal:-95 dBm
        authorized:     yes
        authenticated:  yes
        associated:     yes
        preamble:       long
        WMM/WME:        yes
        MFP:            no
        TDLS peer:      no
        DTIM period:    2
        beacon interval:100
        short slot time:yes
        connected time: 522598 seconds
Station 18:b4:30:xx:xx:be (on wlp1s0) < "Nest"
        inactive time:  8530 ms
        rx bytes:       8920217
        rx packets:     85624
        tx bytes:       7452573
        tx packets:     24475
        tx retries:     0
        tx failed:      29
        rx drop misc:   1686
        signal:         -76 [-85, -85, -77] dBm
        signal avg:     -75 [-83, -83, -76] dBm
        tx bitrate:     39.0 MBit/s MCS 4
        rx bitrate:     6.0 MBit/s
        rx duration:    9793456 us
        last ack signal:-95 dBm
        authorized:     yes
        authenticated:  yes
        associated:     yes
        preamble:       long
        WMM/WME:        yes
        MFP:            no
        TDLS peer:      no
        DTIM period:    2
        beacon interval:100
        short slot time:yes
        connected time: 332504 seconds
Station 54:bd:79:xx:xx:9a (on wlp1s0)
        inactive time:  22850 ms
        rx bytes:       715096377
        rx packets:     7165084
        tx bytes:       40932559821
        tx packets:     27114376
        tx retries:     0
        tx failed:      8764
        rx drop misc:   58230
        signal:         -71 [-78, -77, -75] dBm
        signal avg:     -71 [-77, -77, -74] dBm
        tx bitrate:     117.0 MBit/s VHT-MCS 3 80MHz VHT-NSS 1
        rx bitrate:     6.0 MBit/s
        rx duration:    224061996 us
        last ack signal:-95 dBm
        authorized:     yes
        authenticated:  yes
        associated:     yes
        preamble:       long
        WMM/WME:        yes
        MFP:            no
        TDLS peer:      no
        DTIM period:    2
        beacon interval:100
        short slot time:yes
        connected time: 80393 seconds
Station 10:f1:f2:xx:xx:30 (on wlp1s0) < Android
        inactive time:  42780 ms
        rx bytes:       24355519
        rx packets:     138402
        tx bytes:       112776405
        tx packets:     136049
        tx retries:     0
        tx failed:      163
        rx drop misc:   6487
        signal:         -64 [-77, -75, -64] dBm
        signal avg:     -64 [-72, -70, -67] dBm
        tx bitrate:     175.6 MBit/s VHT-MCS 2 80MHz VHT-NSS 2
        rx bitrate:     6.0 MBit/s
        rx duration:    11787408 us
        last ack signal:-95 dBm
        authorized:     yes
        authenticated:  yes
        associated:     yes
        preamble:       long
        WMM/WME:        yes
        MFP:            no
        TDLS peer:      no
        DTIM period:    2
        beacon interval:100
        short slot time:yes
        connected time: 46408 seconds
Station 48:d6:d5:xx:xx:23 (on wlp1s0)
        inactive time:  7940 ms
        rx bytes:       2867427
        rx packets:     19173
        tx bytes:       3553640
        tx packets:     13790
        tx retries:     0
        tx failed:      4
        rx drop misc:   0
        signal:         -48 [-52, -50, -61] dBm
        signal avg:     -47 [-50, -49, -59] dBm
        tx bitrate:     325.0 MBit/s VHT-MCS 7 80MHz short GI VHT-NSS 1
        rx bitrate:     433.3 MBit/s VHT-MCS 9 80MHz short GI VHT-NSS 1
        rx duration:    1589600 us
        last ack signal:-95 dBm
        authorized:     yes
        authenticated:  yes
        associated:     yes
        preamble:       long
        WMM/WME:        yes
        MFP:            no
        TDLS peer:      no
        DTIM period:    2
        beacon interval:100
        short slot time:yes
        connected time: 24731 seconds


On Sun, Dec 1, 2019 at 9:21 AM Adrian Chadd <adrian@freebsd.org> wrote:
>
> It'd be good to at least post the client devices, with the
> kernel/firmware versions if you know them. That way people can check
> for regressions.
>
>
> -a

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
