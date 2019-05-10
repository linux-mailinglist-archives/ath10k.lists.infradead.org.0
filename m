Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD6719D3F
	for <lists+ath10k@lfdr.de>; Fri, 10 May 2019 14:28:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ucvSjS5lTLM3scewUg+Q+rInpd14GzTFj9UPo/kN+d8=; b=j/EDP97+dd2YtT
	VY4u8DsyHg9ghqyjqtfh7p6QQQ/U45My09qs47S1LByX5Rz7LSjopH2wQtmQUdDiLJB6QwCMTs4bC
	/sOxwIwh7tNxN4GvAQk6Q9h4n9O4DtHyhtD37xJ0Wa3/uCAfwIo9cg6gRyKnU/9D2Fxx/kD6MI9IA
	2Ul0WT5kPSXqQqdbYAnQEwzrd9ex9ppm1yA+VcJe9VxDyaVyrrOP142YUxFNQg/CQHDmLmCpBBxAc
	IcyjchvcfYulztnnvIf7HphpZClFZ4ckukNJZ5s+ieJaLqJppojECKg9FXH0A1KdQ0qmL4vmLSBcD
	tnh7E/wCJ5cJB5N33qQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP4df-00025i-E4; Fri, 10 May 2019 12:28:35 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP4db-00025I-Nk
 for ath10k@lists.infradead.org; Fri, 10 May 2019 12:28:32 +0000
Received: by mail-lj1-x243.google.com with SMTP id q10so4941656ljc.6
 for <ath10k@lists.infradead.org>; Fri, 10 May 2019 05:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=6HbGNpoKWhY7/Lnx8m0yi8NUeGn1laVAlchsRoHWUZE=;
 b=FIJ/5bPtYRnEE1cNBP9oImMmciMQ5zaKkb+NHbxb85ljstjtzLoCfeceGasfrhvpDt
 NerrbayisnaBBaexYAexWdALpl75Lb6BF7dSZgrifQRowOvFhP66qFX9be7+kdi1e9Jm
 aRci9l9jVvnUlbaSKx03DDSe5eeuu0+JaFaL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=6HbGNpoKWhY7/Lnx8m0yi8NUeGn1laVAlchsRoHWUZE=;
 b=NHo2LKU43t2XIj1dvtm0c6WWfToh+32c6f7HswxYypKQm2dhG/hLz+Qo04vUdVeMGO
 NDcukzDpEEYAChtEM2YYsFO06TbB1DwhBc0CQh9qbZigDFj8eQLnBU8V9xXxWwaxCFTL
 mVuxwS4EPNsdsWRM1Cx4ilgPqotDibtZs0YbCkle/UCa/XzCHovLE/1hHx5GRBVHfAAk
 8dDcCxGioXOml5tjyNls1MPwcAgk0uAOYKgx/txBOyQ5wrXaNJnVElVEzKAoBbmXEwkT
 yjhFMd9HCbrLfl1Cu1q2J/9+li9B0TDDOX5p05PLZRSeOW2m1n3ghVPqDEo5x2CGrwJ7
 7VuA==
X-Gm-Message-State: APjAAAUJw8/3Lr1ku9AtE9jxnZD7Td97MgnQr1aQuqtjuDZgkRV5WYR0
 JzSmdsZUI2msdsyjZdfvSMrZDGhCY0M=
X-Google-Smtp-Source: APXvYqzg3zu/FPIL0aAs7iszswLcdPc2MPrzHN4C6LcLce36y1acOyFTZlcFjzJ/IcLYmEdFrLMU2A==
X-Received: by 2002:a2e:85d2:: with SMTP id h18mr5729430ljj.128.1557491308732; 
 Fri, 10 May 2019 05:28:28 -0700 (PDT)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com.
 [209.85.167.46])
 by smtp.gmail.com with ESMTPSA id q15sm1434764lfh.59.2019.05.10.05.28.27
 for <ath10k@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 05:28:27 -0700 (PDT)
Received: by mail-lf1-f46.google.com with SMTP id j20so4029484lfh.2
 for <ath10k@lists.infradead.org>; Fri, 10 May 2019 05:28:27 -0700 (PDT)
X-Received: by 2002:ac2:510b:: with SMTP id q11mr4437328lfb.11.1557491307221; 
 Fri, 10 May 2019 05:28:27 -0700 (PDT)
MIME-Version: 1.0
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 10 May 2019 05:28:11 -0700
X-Gmail-Original-Message-ID: <CAHk-=wim_asb1MRpis39SDghBNN5SpKDvUvF6cTtwa9w8cS8_Q@mail.gmail.com>
Message-ID: <CAHk-=wim_asb1MRpis39SDghBNN5SpKDvUvF6cTtwa9w8cS8_Q@mail.gmail.com>
Subject: ath10k: wmi service ready event not received
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_052831_793287_C9B9916E 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Hmm.

I have a nice new laptop, and it works fine. Except today it lost
wireless, and I have no idea why.

It's not happened before (but it's fairly new and I'm actually on my
first trip with it), so I don't know how common this is, but the
kernel messages seem to say that the cause of it was

  ath10k_pci 0000:02:00.0: wmi service ready event not received
  ath10k_pci 0000:02:00.0: could not init core (-110)
  ath10k_pci 0000:02:00.0: could not probe fw (-110)

and then nothing works. -110 is ETIMEDOUT, fwiw.

Rebooting got wireless back. It's possible I could have done something
less drastic, but I was thinking that it would be the new kernel and
rebooted into an older version. But then rebooting into the new one
afterwards (double-checking before starting a bisect) and it all
worked.

Is there anything I can do to debug this if it happens again?

               Linus

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
