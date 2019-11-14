Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DBEFD12A
	for <lists+ath10k@lfdr.de>; Thu, 14 Nov 2019 23:51:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4szx1uDecqFUWqQ6dYUdJjDQ82Aj9BigJdwmIceEqJA=; b=lTSwodwi4yfcae
	UEGK7pwtBgJBr2Mu5pPNV4CJ9mQjlo7/5tBjItYm50r1NXxcc9OzM+Ron8W0ix2yGaM4OHZ9gpHgl
	PYCO2QgXhaiKSkQgKD2vCFXvVo08cVs/p+z2T6PscSxnc7y6gPPgbFeAuBnkgklaF+5kauy7vgnxE
	u02NXwLyjNsI/TL3VErZqrSu0YmsLsv6dsNJ+EoGHG/mOrmcBMAO4K0jDZEWcFmUfgbJIFlci0Rsv
	12ETJcMI0hFYr4f35Ld+z7jT8ooths90URQ5NRilZMgV3t5Xk3vh825L8bcYz9GK/2VVTYYaACIte
	o/DF6oNQ+VQKGGJ/FSHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVNxq-00081Q-Ed; Thu, 14 Nov 2019 22:51:46 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVNxn-00080w-6N
 for ath10k@lists.infradead.org; Thu, 14 Nov 2019 22:51:44 +0000
Received: by mail-ot1-x333.google.com with SMTP id m15so6385241otq.7
 for <ath10k@lists.infradead.org>; Thu, 14 Nov 2019 14:51:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=TPgz0rUKVntORJhLPj9xR8L0iEI2kaJ+YyJ/86/30+g=;
 b=BhHQz63KkM1O5peMOee7i1hdDiaxgUINFALCt6oUZjfcFlgX2hDR6+ZqTOkd3P25DQ
 zUCDaiGEr6K/paa0poxmvcR0N37kGpD9+8d8fUNjJdPmM81hsUnHvsP3HcN4cZWlLnxi
 jVxUZW351PpO7GIakKU9JscyiQB8xmuO3AvrXT36v4fKTE9vjryGaSCRyW8u5ThXcBrK
 6piXdWyF2zuxruoyK1WATSDX6U9xsIEVwCNorby5/eEe0e9NciF+F1PFP2S0F0EZvtMP
 jmj15rHqMEtjFH3uQMNxrdZRokFeI4pKaO0wp6v6vihNESIzVQcEiIoFTnS7S0moXzRp
 9IZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=TPgz0rUKVntORJhLPj9xR8L0iEI2kaJ+YyJ/86/30+g=;
 b=gnwTpTQAhpeOPYMdzee0vTghLdGs8oyDvzZGp0LWSNnJS7QgRy8KwJqUKxfIV3mOOR
 AwPEubooBj16LRwK4DQqKrDl8pkp8vQ9g81epg8WzpmT1LpTEt8mKoNKCelWXhYWI2mu
 RlJ0Zo2mlwpOvMywzNf9j6PnwC/8aOZ4FNELlubp8q2ysFqNPYNyJPloH9GsLQ4owIBq
 adtgFgDXxFHcBpXWVdnczqcljKLcj/XFvVUhaH5nHJRS5+TiDQDwxlQBFBrKS10De7oY
 yQAYfXK8z4eA4mrNH8X7BuIdbQnsDHVG5eQBXaL8fRXxLVboza0I/2aUvfOY3UxNpLwG
 exng==
X-Gm-Message-State: APjAAAWaGLPwkciJNjT4m+O9HNVWxean7rxmCVy+rG7UBRlLHWJNe2Lp
 i2ek+CKJXOzzjP8FDG4sUDMCId064PWvAnZ47p7EI0Au
X-Google-Smtp-Source: APXvYqyUf/J5GFd0uKAH5+8Z7iDnWI7ZQpfLRL07Voy8JpEWeRw/6jSumTqHl7jeZ+JlNshIhIlSlFUeKtWejWeCowY=
X-Received: by 2002:a9d:68c9:: with SMTP id i9mr3162445oto.265.1573771901939; 
 Thu, 14 Nov 2019 14:51:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:384:0:0:0:0:0 with HTTP;
 Thu, 14 Nov 2019 14:51:41 -0800 (PST)
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Thu, 14 Nov 2019 23:51:41 +0100
Message-ID: <CAKR_QVLaRKOc0OapvhppCZzYYO+w8h8t+B1amiWGGEiH6FmnjQ@mail.gmail.com>
Subject: [BUG] ath10k: CPU scaling related performance issue
To: ath10k <ath10k@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_145143_231976_25DF42C6 
X-CRM114-Status: UNSURE (   3.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

network topology:
80211g uplink - 30Mbps is brought into litebeam-5AC that is running AP
(WDS) mode on 5GHz radio. client device is a laptop (dualcore 2.4GHz)
running QCA9880 card on ubuntu 10.04 with kernel 4.9.

description:
booting ubuntu defaults to performance governor (personal
modification), opening speedtest.net upon boot and measuring
throughput gets me about 25Mbps download speed.
setting lowest CPU scaling freq of both cores (600MHz) and repeating
the speedtest gets about 29-30Mbps in download. i have verified these
speed differences while downloading several iso files.

confirmation:
identical results have been observed on a live booted ubuntu 19.10
identical results have been observed on ubuntu 10.04, but using
ethernet connection from archer c7 that was connected in client mode
to litebeam5

ruled out so far:
-using regular AP-STA instead of APWDS-STAWDS interfaces does not change a thing
-switching to Ben's CT driver and firmware had no impact, the bug is
present with it too
-using different card QCA9862/QCA9880 behavior is the same

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
