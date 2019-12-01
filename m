Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC2B10E2C1
	for <lists+ath10k@lfdr.de>; Sun,  1 Dec 2019 18:21:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NM+V6Fiu+ih+PJOhULujgusvLnm0KT6gcsfJNrFmHR4=; b=JJInoctbBOLc9w
	lzKBILx1W3yMUScbeOrA8RdQg+iAti1K/pkAlZcTR+Kxv9QYm3W6dVDMZiAxVlTtnHT1p74vhbewW
	Pzhl4Yujb0Mi0CDz4MFKMaSc5ei4RoQLa40qy/9baRCDyW9dOqnr48HpGLmlq3mruL7swjcTtKjF8
	LftkMm794C2Z1ERfeBoKfkv0bcURxlte4twStTvJx3QB/aYBdeXc6VANApTcHkgdka0ht31sMmER3
	Yp5zZ2ygv4oN6l+RVWTYmq3jOQkzaKN5xAlmc2JVdS4C+sIDTJDZvRcUMwmKW1FFkHFqkqp3wckSP
	+1dJtVd548n1iGKtVSqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibSuz-0004oT-Vh; Sun, 01 Dec 2019 17:21:57 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibSuw-0004nk-NS
 for ath10k@lists.infradead.org; Sun, 01 Dec 2019 17:21:55 +0000
Received: by mail-qt1-f171.google.com with SMTP id n4so38766582qte.2
 for <ath10k@lists.infradead.org>; Sun, 01 Dec 2019 09:21:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0c32fgqbYQyxEm7ZH+cGmz5x7PBOPVnrxxh0Qv6869I=;
 b=AfsLQHKW/2BiHLoJ+3XxnnZj/m18zl0U7wKOr2SIVIlNtPpnDwypgs3pjtPifgeKzx
 Jvc+i/jUnXPVN9lM9UO5SbzVEUmPewIzdO/IG+1VDzhQn1E3FuB4BQubaOdJZWXLDWWM
 zn6FyYbBl7wMY/yL3lgOm5S19AIF3rgcSMjdrxPC5JeNHtRYVDw9koXsw15z6PDkLfeH
 5YbAgHThTb/gSclBlP/yj6KLIBDZpshT8RTnRSqW8Txda4uIVZmGTzYHVKQx4FumQ9OD
 7hkT9NdqC1LRMYTdKnFxabSBUioT5iHEmvJdc5SJLHGuPqNWIuum7jkHQjd+DIQ3ygRh
 ZZtA==
X-Gm-Message-State: APjAAAVSd4x4Es9S6hQm5j/eOXB8Jtr5Ko9bIQLuATWcnpbGpO0aRAcS
 eG6+NAveOURcs8Nqj8tpev9CYFNTDrlkihl7jfw=
X-Google-Smtp-Source: APXvYqxNsq0sBPPODeN17nvt6aAp6NPDzO+oCR5ulphowh0UmXetL6NX4ufXBp7e1EblxAnsUlo9YLsPnaMWLu6ZBkY=
X-Received: by 2002:ac8:1017:: with SMTP id z23mr50248654qti.94.1575220913676; 
 Sun, 01 Dec 2019 09:21:53 -0800 (PST)
MIME-Version: 1.0
References: <CAMrEMU8A49OwSPKN+YP7z5LYjiopNpEq-MdACBvkZi6W=vJO9Q@mail.gmail.com>
 <CAJ-VmokD1E8s99PE-XhDkmu=dzkFB0r_QvV_0z6cbHcC3j0FHA@mail.gmail.com>
 <CAMrEMU_nahLwE39DX=6e=Pr9S8R7oyC0mFFCqis4b8-FPC80YA@mail.gmail.com>
In-Reply-To: <CAMrEMU_nahLwE39DX=6e=Pr9S8R7oyC0mFFCqis4b8-FPC80YA@mail.gmail.com>
From: Adrian Chadd <adrian@freebsd.org>
Date: Sun, 1 Dec 2019 09:21:40 -0800
Message-ID: <CAJ-Vmo=RZNXi273vGp+4H_mQVGghKeeMSOUpStz+wXQq=awCqA@mail.gmail.com>
Subject: Re: duplicate authentications / excessive missing ACKs / deauth due
 to inactivity timer
To: Justin Capella <justincapella@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_092154_765342_A545961F 
X-CRM114-Status: UNSURE (   3.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (adrian.chadd[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.171 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

It'd be good to at least post the client devices, with the
kernel/firmware versions if you know them. That way people can check
for regressions.


-a

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
