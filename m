Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B8A10E4F3
	for <lists+ath10k@lfdr.de>; Mon,  2 Dec 2019 05:00:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zFUpCNt5s630Bop8GA6ha0zkcqANIrqyLlwg4V8KfwI=; b=WQBLsJrgd4Vuv66twcuDBXEPNB
	6C7p4sAtWzvHSEhQONyQgRwbh+UN5ROwA8xuTKjE+PkTr4iT1Yo6yKwXGGRCLC347/3b0joPdGqEc
	pbUiS5NAMnAnsiGVUt4XPpNu11FSEYfueBbskGYV1vJk+aOPOfby1pBwWUzv3BGKhWZhDTIxbPr3D
	xoywV14shBI1KO95fkIubKij4lDmx32e+AG+oWDMJqhDezZzAN4PyK0QcN4DIKkBpc+SjN3/Ri2jl
	JN43+Q1uU7u6RHqipqex+xK5xctxdSMb5a5OUFe6C5BDbFMbJNtOdcvihaWMfoKfCou2O9qzzfUUQ
	JFJOC92g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibcsm-0002OX-C8; Mon, 02 Dec 2019 04:00:20 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibcsj-0002Nr-MU
 for ath10k@lists.infradead.org; Mon, 02 Dec 2019 04:00:19 +0000
Received: by mail-oi1-x235.google.com with SMTP id k196so14789700oib.2
 for <ath10k@lists.infradead.org>; Sun, 01 Dec 2019 20:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=yk2dLu64E2UC7ouFmKhQZviwhrfa6sJX1P318OyRLlA=;
 b=QZGJU6ej6ho5NRP/UFuSDh4WMAD9SLpEvgekHIJVhZLjEJ7d825H7ENm4dx/jMad02
 V2PFpk/nCRHc/WLaN6mjkuUwfdF/lDS7Z9N1Tx37PqjJ5RUw6kema8qV5/8x1CFcwf5F
 0fhMFHCFPcVQQ5BRtYYrBpT6KNMus5FNlOtiDoSw5waWgzEnv/wQGaj6QkxyPN03xiZf
 VSfCjIAR0fP5hIasgeX8dS0FVUUVMy+V/pBR48+fgYIUIH4mSPiA162gC/aw96xiFhcN
 9jU6fI/+OhRoEj6Ms/9ebHa7EQfIFQRKfsAcoAP7UwimirQy/zFFHZw31Pq40eNbMEjD
 OKiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=yk2dLu64E2UC7ouFmKhQZviwhrfa6sJX1P318OyRLlA=;
 b=f5yVTIqpB6VM05lMXLHtP3e6PFKnJjOV/YvrlOAp4gtBPtHyWs0ox9rIIn3Kqx5ZV5
 lQpQFS6Qc9ZfsXKE3gSOJ4ziBIm0nydBOggdDLyL4dEwkuY2svctsE6Mtk1lYDYcn/+Q
 CxLN/Mv0kfIHy67eQ/H+73XJGCTZHGxZH7o2bAlPl40SW3ngJMyD4lOp32kdTiTgN6Tx
 sNgp8NlPnKYYt/i32vOEn1XxUH1cJkQAcL9beIvW0tk1RONPqrGNa2j4gDyZl6OjB3ch
 O8VkfmWHiGqPAGqqYtTtX42STJxzGNG4tMY8ejnr7frc+y2rh+ONowtqBQMSitxStPTA
 mdUg==
X-Gm-Message-State: APjAAAXJaunW4ICCxbe3VvN1TTuNrOvV+wiAo6JEslUfgdP+TBeSDa/0
 DkP3AWHOW6KHXmluYlyM2RHlrwfUeHY0r6dSVTlU6l/q
X-Google-Smtp-Source: APXvYqyX4HQypO0BF/bB5Gz/a7z07RIvjyWtdpj7YmrqDKxH+y42SXs8aqfQvCSj+9NZU1SWOZkz59FnvLTrnvnVJMI=
X-Received: by 2002:aca:af54:: with SMTP id y81mr19005846oie.154.1575259211372; 
 Sun, 01 Dec 2019 20:00:11 -0800 (PST)
MIME-Version: 1.0
References: <CAMrEMU8A49OwSPKN+YP7z5LYjiopNpEq-MdACBvkZi6W=vJO9Q@mail.gmail.com>
 <CAJ-VmokD1E8s99PE-XhDkmu=dzkFB0r_QvV_0z6cbHcC3j0FHA@mail.gmail.com>
 <CAMrEMU_nahLwE39DX=6e=Pr9S8R7oyC0mFFCqis4b8-FPC80YA@mail.gmail.com>
 <CAJ-Vmo=RZNXi273vGp+4H_mQVGghKeeMSOUpStz+wXQq=awCqA@mail.gmail.com>
 <CAMrEMU-v9GDt_=MMgxsxqk0zw33Bzf0AY5G4XHmv6d3ecV_zPA@mail.gmail.com>
In-Reply-To: <CAMrEMU-v9GDt_=MMgxsxqk0zw33Bzf0AY5G4XHmv6d3ecV_zPA@mail.gmail.com>
From: Justin Capella <justincapella@gmail.com>
Date: Sun, 1 Dec 2019 19:59:57 -0800
Message-ID: <CAMrEMU-N0nAVgkJfnA0VZ8vC4RWYZqkuzLymPC3cS-_aOMO2=Q@mail.gmail.com>
Subject: Fwd: duplicate authentications / excessive missing ACKs / deauth due
 to inactivity timer
To: ath10k <ath10k@lists.infradead.org>
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_200017_759466_9D1A9965 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:235 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sorry newb move--- forgot to include the list

---------- Forwarded message ---------
From: Justin Capella <justincapella@gmail.com>
Date: Sun, Dec 1, 2019 at 7:58 PM
Subject: Re: duplicate authentications / excessive missing ACKs /
deauth due to inactivity timer
To: Adrian Chadd <adrian@freebsd.org>


http://ix.io/23lo Included iw phy / iw dev in this paste.

The multiple print's of the associations/starting sessions makes me
feel like the packets are being processed multiple times.

I'd like to bring attention to this commit
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/drivers/net/wireless/ath/ath10k?h=v4.19.84&id=a4bf4fecff16f30814922679a131331f2c3aabf8

I notice that the check here is different logic, using BITS_PER_TYPE
in other places I see comparisons against ATH10K_MAX_NUM_PEER_IDS, is
this correct? My thought was if maybe I have many clients (11?) that
maybe this prevents the removal of the peer... but I admit to not
understanding all the nuances of the 80211 stack yet.

Would a inline/utility type function to centralize these sorts of
checks be worthwhile?


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
