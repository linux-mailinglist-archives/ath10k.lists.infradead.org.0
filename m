Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C4B1B83D5
	for <lists+ath10k@lfdr.de>; Sat, 25 Apr 2020 07:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jka07nFcJRDga49kOysunN+zG+mrRN3YHzeukd5fCz4=; b=WDP
	FVEtpJnplBxqauT1xuLKfIHCXagh6hd32JUpnNH/dO61Sib3Y7oLW3znkNeUxD4omjLH0X/G/MV6g
	jeD6O4SetF0yETpK7P27lDfbddzIjxqGGv8kMvQ7tfCm6QBD++QGSSaBgiNMyBCS9E2euOtWaIFPO
	5faCWVMXvfkKFxF95v47WBT4pNRzr01K/ZyDvg1w+d0uY5fTrwNB8fCdYSAcnVIUu6FbBNeeiTohr
	deHGNHX89/cJ2du656QhpLSBTSAj457JUYqMBTzLfJt31TXBZ3jfWWnh7b+io4khMFTQ86fhFWpJC
	34ObrhpAHze4vPsB5ZHxNuVmhPd0gUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSDX9-0001Jr-Lm; Sat, 25 Apr 2020 05:39:23 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSDX6-0001JK-S0
 for ath10k@lists.infradead.org; Sat, 25 Apr 2020 05:39:22 +0000
Received: by mail-ot1-x335.google.com with SMTP id z17so16501091oto.4
 for <ath10k@lists.infradead.org>; Fri, 24 Apr 2020 22:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=ZyJPGQ7mAcMqiK4JfKGbYbEUHiqQlk37g4Hj4x8Ba8c=;
 b=d9B0zuduF8Sd+5padeUqoiZSVtahyiPNCihWANGJ3nrZYAQ0xH1/pMrlmvE9V+BIlx
 tUz6gW8rqT4rZzzgyJkx4nsNcns+Ix5p10+GmP56u4CXuKAg7Dtw2lIdxv8E/B060ro4
 Y9yIk+vYFqvIus1mpHIIX5BFeojoKmhO/UvDJhP95k4JrAzl41CwmuiUUrm24JVTMhkI
 b/TQBQsJMRczzV3QXPp7M8MyesjpcMq+dvuKXublv1Xcw4X9A7D5/oLyzalbkb/vysSW
 181vsMPncLzpC3o+bL+uFFT+XwX/6bwHckdg4froXrJIashVZdt8+f1KK142asaLd/l/
 RPmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=ZyJPGQ7mAcMqiK4JfKGbYbEUHiqQlk37g4Hj4x8Ba8c=;
 b=amxqmib/xRrrUwTS1f8j6GSdt+ylWqBgxs3zD1eMw+YAsdwG5IZzYAxS0DtjcH1hU8
 htifKdOYO+2J+VpkZhj4EW1Etu3Fo+dlW5VWbxwXutOp0z4yVe8EkFv/y78DFFOUXTfh
 lsy5DrgxkdG6mHlNoCvbjDvDeP2PIwpejAwEnjgI9NW5cLD0gi46NqWsxaKgAEcvSQoT
 X6ffBmUcFfHfq/9w34VqWOrm6zDTXJuRoF7lSSjmlZp/9WUvf4EnIUlalRD4lbI6YR/f
 KpQ31zEzebIRAxFjLVTxT5J8tu6kaFH1O39nywxebRSfSFAyTVETvjhYEWP7potevuOV
 7PFA==
X-Gm-Message-State: AGi0PuZuuL6QbhIB1LWx1PseOSfXA1hjoZZwrnKNXLll2QJho0+TkhU8
 rkvP8OgtvTq8PLUNhWFfjO46pP+JnEM3xd/ijhuAkolGTbA=
X-Google-Smtp-Source: APiQypKITVkjmm+qkdXAJCem3s/fvx5fqsZpmgRkxlDlovjmxXxRHzSQEb1P0/lQiY7xq2aHUrbAAVrA1ja2O63duo8=
X-Received: by 2002:a05:6830:3148:: with SMTP id
 c8mr10400227ots.138.1587793159356; 
 Fri, 24 Apr 2020 22:39:19 -0700 (PDT)
MIME-Version: 1.0
From: Arvind Bakshi <arvindbakshicool@gmail.com>
Date: Sat, 25 Apr 2020 05:39:08 +0530
Message-ID: <CALY5VB38LT_FNRj5mdvgSJ0YVb6fHyOSM5dJfN8Kdzsuk5wTvA@mail.gmail.com>
Subject: Poor link speeds and signal strength on Qualcomm QCA 9377
To: ath10k@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_223920_927106_5207A7C8 
X-CRM114-Status: UNSURE (   3.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [arvindbakshicool[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Sir/Mam

Getting 1 mbps link speed and average signal strength, even on
standing next to router on every linux distro whereas windows 10 gives
150 mbps link speeds and excellent signal strength even standing quite
far off from router. Tested on Fedora 30/31 and ubuntu 18.04/20.04.
Turning off wireless power management : sudo iwconfig wlan0 power off
doesn't make a difference.
Turning off all power saving options using TLP also doesn't make a difference.
Software (OS, Firmware version, kernel, driver, etc)
Tested on Fedora 30/31 and ubuntu 18.04 LTS
Wifi card: Qualcomm QCA 9377
Device: Dell Vostro 3468 (shipped with ubuntu 16.04)

Hardware (NIC chipset, platform, etc)
Qualcomm QCA 9377



Please provide driver fix for this wireless card.

Thanks & Regards

Arvind Bakshi

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
