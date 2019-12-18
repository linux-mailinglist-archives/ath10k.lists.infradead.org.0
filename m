Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F2E123BAD
	for <lists+ath10k@lfdr.de>; Wed, 18 Dec 2019 01:36:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rTWwIgGv2S9IP/JN2F6J3mS/oCcwDdrurJ3BsteQw4M=; b=FGW74wWE64J3gv
	74yjdFjkm4iX9436JANXBiF66S7UTsCDO3pcB1mPZhXh/O0UZ+bAUIzBUR+w+ysdfWQUWxNZgIxS4
	iLqjLkLkgeKYeu+sayJ63h4YT1zSSB3rABN9vQQntoqDafZ1L/kFzoJ+1UbGLkaYS09sVKCD3LNTs
	/l9sdWiVonOrBzAVYEcG8PjwMnGPlVc2G7jNwlRWmFe6NE8LvYnnwt77B2FQ7WpxCsPQXZSePKWyd
	hptb9RykUqRYx1epjH8Ehdqapt1QQG5x60Ht08RUmOI+2qQAklcp9YL4cZXZlT9ERWtd+HIIbZc27
	7P1Bp9CLsxeHde95D7yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihNKg-0004Hm-FK; Wed, 18 Dec 2019 00:36:54 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihNKb-0004HK-Sv
 for ath10k@lists.infradead.org; Wed, 18 Dec 2019 00:36:52 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 6so178304oix.7
 for <ath10k@lists.infradead.org>; Tue, 17 Dec 2019 16:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=l+5X5vMQ6YkQcZtac3wkcM7mV4o2WEa8wKesrwPdpfo=;
 b=miRzFCkvA1IM/AfGOimn+QqAvoCqJbKu6sDr+xpJu2T7jjuVJR41/7N4Q5LbV2bPY4
 asMf2nkeQpPBeIFOVh5H4Qpu3tI9tkhEYPXn6qkjjqSRkNQFKnZxNNR63KihF/aoEzLj
 ghU9yhJY5OxxBDbQmeSnWWhnixTefgB2asjdLAppbISTbjeGGMzpczAC64KRIo0Ni1qz
 2YIzBtjVc6rTT3Oax1IxlKEbuWHJDqcVXyyQMTW4K4DJFnGX/Wz29SksL3ErbE5pPkFr
 M/r8Zq/gg1qow7RIzGB77gzkjJJLzfb+k4EFr3ajgn520NLI6IqcddkwRh/XIA1DEJ09
 PYVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=l+5X5vMQ6YkQcZtac3wkcM7mV4o2WEa8wKesrwPdpfo=;
 b=cm+RN1ax6C2MRwJLuqYK+mSRPAjhpfqnqb8vh71nSQQyGOxIsONIh8wSzSNvrfoJXQ
 M68dyaM42iMN9His93Rf0WdyyVSdzlp1oTLRbysaR2xK6qsso/0r8KWQmnNTG1rilKaA
 I5Au+braEcVeYXcZGfwWVyB8lEh7dpThxx5/5mYnm9aeQ3hr4VUzMOkiDOIb80keVT2w
 LCEaUUpv8ik3kr+3pv9d6vbb00P4DI0p4TyE3N+qj8lWV2aAoxw+a0hk7zOc9SkfYBkt
 1yqQZseKCu/rTzNXWPWwwPzlt5VwD/TiKOHD+up2W3aAjCVWU2oaUsSXXRPh3KAoHQp1
 wARQ==
X-Gm-Message-State: APjAAAWxU0ol92fH0uoobXtkCxCR2cOJXNBaqvKM4YCi7jod1vAy/Rcj
 eu29xsULDeVQ5vgm3SkGaihSI6/IQnDd8izOzDoNOQ==
X-Google-Smtp-Source: APXvYqxX9UgXZHIY8njDh20T1lCIcfy4T0iDtyDTbrKPQCfOA0oKSz9ip/2F3uZMvNTntqP5KglSfEbPxHQy8lLtCYs=
X-Received: by 2002:aca:ea43:: with SMTP id i64mr119364oih.30.1576629408473;
 Tue, 17 Dec 2019 16:36:48 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:362:0:0:0:0:0 with HTTP;
 Tue, 17 Dec 2019 16:36:47 -0800 (PST)
In-Reply-To: <CAKR_QVLabBXcsPfcCt8MdQXUrkgw5aNVAJD9XUke-G7XhsTwAA@mail.gmail.com>
References: <CAKR_QVLabBXcsPfcCt8MdQXUrkgw5aNVAJD9XUke-G7XhsTwAA@mail.gmail.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 18 Dec 2019 01:36:47 +0100
Message-ID: <CAKR_QVK2fJkR6OveFAhcjqjToh_mJMxfvjD6vJssqVtpmbQkGA@mail.gmail.com>
Subject: Re: [RFC] ath10k: possible RSSI recalibration bug?
To: ath10k <ath10k@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_163649_937962_7EC3EBD4 
X-CRM114-Status: UNSURE (   4.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 PDS_TONAME_EQ_TOLOCAL_VSHORT Very short body and From looks like
 2 different emails
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

some more testing revealed it might be NF related bug:
https://marc.info/?l=linux-wireless&m=157662586107288&w=2

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
