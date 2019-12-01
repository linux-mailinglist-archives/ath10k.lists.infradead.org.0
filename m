Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E6D10E2B2
	for <lists+ath10k@lfdr.de>; Sun,  1 Dec 2019 18:02:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HKCwe8vtdzfdB1T7Lp67PHR+HEsw4iBP1/4+7NZWH4=; b=RhSTOnKoh44/7F
	4N92znh4BBp3/4bkZEL9GU4oO9oXNN74b4PuvEDB0ioc2ztTsGzV42Rx3xvmswyFubGsUCbGghFlX
	lpaJ1kvikqmvU6JOj11NmoPaqn51VwKs7W7F3Ol8lyYaqeF0ArrZi6NJnaIgvPyxKM72VYGOPWWru
	KBo/bLYHZULWzs+V+CI5Kxbr717VujZSACE8Bqg7d0KJu9Ie+MCg1bc92aCmEFiEX1K0cQaeS8a+/
	GQIwlKF5EIwgUG5yTeTkiWXJw7JQMweRTFzE8g+s8mX2pJZfF2rJ9Q3Be63QxEczQkRGG0GmQyzGk
	1ehsxuAiqFrFiSh2hBfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibSbc-0006c8-37; Sun, 01 Dec 2019 17:01:56 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibSbY-0006bQ-TO
 for ath10k@lists.infradead.org; Sun, 01 Dec 2019 17:01:54 +0000
Received: by mail-qk1-f169.google.com with SMTP id i18so5001099qkl.11
 for <ath10k@lists.infradead.org>; Sun, 01 Dec 2019 09:01:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W2gvf1KZQ7PmthP3kEtLFDc47LANLyPdOuEiTkjwKUI=;
 b=D06FFwQgpGPW96KZn4z52y8ETHijVxp8r/1uNkFYggwF6840yNMVStItB7xAKl2c8s
 Ds2/PWAuzYNS3bBFW1in3dry3beUpKedhJzjziqM/ItKq/ir/qzfYb3JJJx7jMBTYWNw
 tuWovqeQqKovQGJigwXvJ53QjLaJjAMgCExErZJanIsHv8gadClbKYcdFH6HO4QLVvh/
 ZV7GgYEEWD7QtmPuNsFFuCQ5fJyDkBHO0toDbkdb2BIZru33LxhitIcsNqThLNdE4ogk
 V/Wpw74eyZlSa5muKZUKK8dhifXcs39Sl4xoiTONwZlMPefEE+FoQ6YbV6lvmOy1zFKY
 Ic5w==
X-Gm-Message-State: APjAAAUDwcrvh1CMef6Kk7JtJd/j+SyHj5u7t4+RV4VBvsAJRx2Gm+KX
 XOG+c9tIV5LPb/Ot8BoLGt/j2DMBvP8ZWLUamR4=
X-Google-Smtp-Source: APXvYqy1SBy1NFrNHGormcX9kCYc0pi/PAg+YTTOre7fVkZL8NQzOVQaizVSitiT2uzdkaE+3nVV1YWP7vtaqwu3seY=
X-Received: by 2002:a37:a20a:: with SMTP id l10mr27799276qke.96.1575219710428; 
 Sun, 01 Dec 2019 09:01:50 -0800 (PST)
MIME-Version: 1.0
References: <CAMrEMU8A49OwSPKN+YP7z5LYjiopNpEq-MdACBvkZi6W=vJO9Q@mail.gmail.com>
In-Reply-To: <CAMrEMU8A49OwSPKN+YP7z5LYjiopNpEq-MdACBvkZi6W=vJO9Q@mail.gmail.com>
From: Adrian Chadd <adrian@freebsd.org>
Date: Sun, 1 Dec 2019 09:01:38 -0800
Message-ID: <CAJ-VmokD1E8s99PE-XhDkmu=dzkFB0r_QvV_0z6cbHcC3j0FHA@mail.gmail.com>
Subject: Re: duplicate authentications / excessive missing ACKs / deauth due
 to inactivity timer
To: Justin Capella <justincapella@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_090152_949489_F8A6703E 
X-CRM114-Status: UNSURE (   3.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.169 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (adrian.chadd[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.169 listed in wl.mailspike.net]
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

Are these er, apple devices?



-adrian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
