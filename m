Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 096701C5150
	for <lists+ath10k@lfdr.de>; Tue,  5 May 2020 10:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cGbKC+DrBJlUutDDVvuHTJmfRNH+WtutcOXWmRZCEto=; b=S8p29gKi5jWeyJ
	Ff8Bq2HVKH0AyzEBRD6KlUKhRfYbla7lwokN5SQ1PtuVx86p3LBFw8WXL++NHRYILFwlbMsbw2koB
	z0eFNDxYBzUQ3KUjzuG4pRQ/+82F6V7/vAKN7NAEGqXjAOOEIgflvkHBCGoXl6tcqS7mBNDIA+qoW
	w/w3yrpxH//ReW6koM1Pm9IMSgo2CWSpIDgZ0C6c7/QH1FG1JOVC+X3I4Jt6W2iG4iDHDjH1y5wIK
	924kUF/wGMraLh4PIeUYl1HtIpazfPPh5ktADv7V91YJCQmLN3kKB5ODJQnHVuXApPDFVIRhyRDVO
	w1uO7tZbHolbiEfuOHuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtJY-0008FK-NP; Tue, 05 May 2020 08:52:32 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtDt-0000cf-6Q
 for ath10k@lists.infradead.org; Tue, 05 May 2020 08:46:43 +0000
Received: by mail-wr1-x432.google.com with SMTP id h9so1739563wrt.0
 for <ath10k@lists.infradead.org>; Tue, 05 May 2020 01:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=65w78Ui+d95G3Ybtbsw78jPrw7bHLd9AqyudU5U4byw=;
 b=EIN/3FjdeSdzuTfgzlQFo9ApcfqREsXszShoJORxUGPk2GYtF5EPVtwOJsZk4lnt3z
 1YYdfpxVFHMNcw83DQneVP2AxTaXn80Qll0Ztotcfp/ZjuyGTHlxXjKsYL/qWTRVowrH
 kUADu8yz2CKSa7TpozVXyNsGldREVQKPWGQifMb3p+e2vJ/shnLR+LRAF0ixgtv2OcTv
 MGDE6xjcq95KbQQdvANVZdyxCqjyv98migikdbjtwLMUJun1NZACnrniN+WlPG+g7S7C
 07ObAVg2/PAnzK2edfFVEKfUwKaHX4WD511Rtq7PbV2JMmqwGgJUBXeoss5bNOOSF68X
 uLdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=65w78Ui+d95G3Ybtbsw78jPrw7bHLd9AqyudU5U4byw=;
 b=Wk77K32+BFcSVBjlyrf+BY0Q8slcmRNSF6F2km/7DhW8dPyQ4QNPWoNUwE/solJY89
 iI13dUQQb2RQYMfYg2XyA/vtS1HmZ63C+9RoFWaFip8LUO5hpDmoktNU73PiGR/tQ7rP
 Spp34lvBdAOJcdRwUbPHxpNlT9SjK/STh4IHaE37U4J3MCjd0kyCDMq9cxTszN+shXxK
 rIgXE4x0iJk4LmZDaJTE+nYuy12QRdJuWOLbo+zr3oMUV07GWB+j0PSJwlHVCgByUS6j
 WofSjjdN0eOZyLcutyLQ0OkXRoQeA5btZ7h6Im8IrH0I2GiSxb7z/G1iEW/B7u9V8Obw
 OF3Q==
X-Gm-Message-State: AGi0PuYGrRGbZfk7b13yAO7yhwvSvb9jsg/JQ186HRv82Yqv3bCOQe9+
 TyvFUK96FVRRD8MLNN3PvbjKrOqq+0A=
X-Google-Smtp-Source: APiQypLGmgFY7fKcBrq+85bL+kuTzLiCaKD6kG4b2ToWsavRKXZ6qfWZEU40RNr4M7CjVVCkQKOAxA==
X-Received: by 2002:adf:e90b:: with SMTP id f11mr2417301wrm.364.1588668397213; 
 Tue, 05 May 2020 01:46:37 -0700 (PDT)
Received: from neumann (ip-217-105-26-61.ip.prioritytelecom.net.
 [217.105.26.61])
 by smtp.gmail.com with ESMTPSA id s12sm2498870wmc.7.2020.05.05.01.46.36
 for <ath10k@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 01:46:36 -0700 (PDT)
Message-ID: <0655c3a1466f133a727ab24aec9bb3df81b25d34.camel@gmail.com>
Subject: Killer WiFi card keeps disconnecting due to latest firmware
From: Elia Geretto <elia.f.geretto@gmail.com>
To: ath10k@lists.infradead.org
Date: Tue, 05 May 2020 10:46:35 +0200
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_014641_283586_5CA3D8D7 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [elia.f.geretto[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi,

I am experiencing the same problem that Nicola Mori reported on 14th
April. The thread I am referring to is the one with the same subject as
this email.

From what I can understand, Kalle Valo and Wen Gong are trying to
reproduce the problem, but they had difficulties retrieving the correct
hardware. Since I can reproduce the issue with a different router,
probably easier to retrieve, I thought I would dump the information
here.

I have the exact same laptop as Nicola Mori, an XPS 15 9570 and I am
running Fedora 31 (kernel 5.6.8).

The wifi card is reported as:

3b:00.0 Network controller: Qualcomm Atheros QCA6174 802.11ac Wireless Network Adapter (rev 32)
	Subsystem: Bigfoot Networks, Inc. Device 1535
	Kernel driver in use: ath10k_pci
	Kernel modules: ath10k_pci

I have tried switching in and out a couple of firmwares with API 6 and
I can reproduce the problem with all the versions I tested:

WLAN.RM.4.4.1-00128-QCARMSWPZ-1
WLAN.RM.4.4.1-00132-QCARMSWP-1
WLAN.RM.4.4.1-00140-QCARMSWPZ-1 (default one on Fedora 31)
WLAN.RM.4.4.1-00151-QCARMSWPZ-2

Regarding the router, it is a Linksys E2500 v3, with firmware 3.0.05
(latest). I use both 2.4 GHz and 5 GHz wireless, with the same SSID.

As for the information regarding the wifi settings:
- Channel: Auto (DFS)
- Channel width: Auto (20 MHz or 40 MHz)
- Encryption: WPA2-Personal

Regarding reproduction, I would like to add that the issue happens
quite rarely. Using my laptop the whole day at max 4 meters from the
router, it happens only once or twice a day.

In addition, when I am unable to start new connections, and
applications like Zoom are still running perfectly, I can work around
the issue not only by disabling and re-enabling the wifi, but also
pinging my laptop from another device in the network. To clarify, when
I am experiencing the issue, if I ping my laptop from my phone, it
starts working correctly again.

I am not sure if this is related, but it happens often, but not
exclusively, when I am using Zoom for videoconferencing. However, I
cannot confirm that it is the cause.

Feel free to contact me for any additional information you may need.

Kind regards,
Elia Geretto


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
