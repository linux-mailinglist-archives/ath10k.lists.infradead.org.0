Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5156A7FE9
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 12:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/nSgU8+CRGPHw/m4LMQkBobn8XOjg7Dtfro5SZNP4BQ=; b=axQij91feFsJRl
	iGT+hXGHEC4K0yAi1RLqUlRdKZwwopB44enRYx8971qHNtkx9OWAeV2yk9exdzZrMAtHB2mZozoc2
	fsCD1Km63pvemZ5bjnnsK+LIVuGHXPvPuHDbw98Z39iEvhtr34hkWm8iBGzoJWf4Y1Sn4jqYqc56o
	u++97B1dXZC+BkxSrMUAK9aWm5faRIVvOi47OZkyMt0B2VFNPq1XyJxY6vQO04It79TOOa46/OzTe
	KSICLuS+3jLww0og9r+PrWML9dW+bwBTYZcFJ+oPa8LkxGtdWMkpJUyaHAjo2vxMZtkpDtfd8kLpF
	f7i5yKGZUxH1JVO+Tuug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5S6Q-0000bu-OV; Wed, 04 Sep 2019 10:01:26 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5S6K-0000b9-JI
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 10:01:23 +0000
Received: by mail-lf1-x134.google.com with SMTP id w6so10013704lfl.2
 for <ath10k@lists.infradead.org>; Wed, 04 Sep 2019 03:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=V0Mf2ZXillY6hvYcBPK7m2UMkeRJi1VCx4kOhhDXxUM=;
 b=CKPYt6IvRnN1uxvZYA6XDithl1KDtG82stauZkdOL+dmcni3mNMg3Y3HOb3Q3HpvzH
 PUbq99k1lfUYOzAA2ZHAz5UYw7KV/c5f+OuwxTHb2d9CKXQk9PwtIAal3NR1+t9fIEnW
 4OvdD9+c/ej+wv3BhYqlpdgFb1nBegCubmGbq6ECo5ZSHSx9qXTyp731K6wNyXMFCxE0
 oVuTpqALc97yFBzZit5Spz4ITbGmuo5tD3YyyOBi0V3Ae0xeGIygkqrukptpIa/9PJG7
 W56TmqbTouuxiTzWLd3HOFRgLJpwxyWq9DHgWwzzvpGSZ+fQUknTSeNCkt382C88uiwB
 HOCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=V0Mf2ZXillY6hvYcBPK7m2UMkeRJi1VCx4kOhhDXxUM=;
 b=Qy1ju1wk1MmFCcE0a1+oS22Lme+hmqYo0UaDfakE0nbAad5BTOSdKGt/Kf68RcNnTC
 Vn+libXHJrHFL62wBxzTFBdyco1j8+0oPzhWZSlSvge1860n11dNVoK9q9mFSbzC7WXY
 TYdDSzU1sGJkabIqTpd9wwBsrFKi0oKCrRRxhZ/5nIbFM0c68rp3EL8LLnCJNhK6lvtf
 AGPk/wUg0/Tyxopx8wV4zTRjgVoHdLWPBV+TEiZIs0oZzqwt/nXPxwMub65YOiLaMb1u
 FVR3u3zgAJvPiW7F5U3zdZGbC1NzLQVdBXSM+FaNCcYrozs8veWT4Hn5hJ4wNblyCCDC
 DqAA==
X-Gm-Message-State: APjAAAXKpZU26mmCl+VyKgL4bQFeWC/pT2iC8EP2LIP+qsYLBtv9QCrh
 jldNEGj7/C3aXJc034EXs1R2XB9T
X-Google-Smtp-Source: APXvYqxLuWH/C72kaXEWeAamaMlL3HIHXMnLSuA0bm4ScDBIwnsAoKoqtf+AEs3mmUPkoaKgbcc9eg==
X-Received: by 2002:a19:9104:: with SMTP id t4mr22353895lfd.179.1567591274431; 
 Wed, 04 Sep 2019 03:01:14 -0700 (PDT)
Received: from Timur-XPS ([185.252.118.68])
 by smtp.gmail.com with ESMTPSA id l23sm3236356lje.106.2019.09.04.03.01.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 03:01:13 -0700 (PDT)
Message-ID: <c74b5248ab0d5d5fa73226494c2179eeb767d725.camel@gmail.com>
Subject: QCA6174 ath10k firmware crash on kernel 5.x
From: Timur =?ISO-8859-1?Q?Krist=F3f?= <timur.kristof@gmail.com>
To: ath10k@lists.infradead.org, Kalle Valo <kvalo@codeaurora.org>
Date: Wed, 04 Sep 2019 13:01:10 +0300
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_030122_333995_BCEC6D22 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:134 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (timur.kristof[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi,

I've got a QCA6174 wireless device in my Dell XPS 13 9370. There is a
problematic AP, and every time I connect to this AP, the connection
only works for a couple of hours and then it stops working until I
disable and re-enable the wireless adapter.

Here is the dmesg log:
https://pastebin.com/CnbBSNg3

There is a firmware crash. Then the driver fails to read the firmware
dump.

Note that I've only seen the problem with this specific AP and not
others. Is there any way I can figure out what exactly is it with this
AP that triggers the problem?

Thanks & best regards,
Tim

ps. I'm not on the mailing list, please CC me on your replies.


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
