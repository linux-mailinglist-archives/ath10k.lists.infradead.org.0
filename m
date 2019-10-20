Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45022DDF16
	for <lists+ath10k@lfdr.de>; Sun, 20 Oct 2019 17:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tcDsD6O9I99P65e8mO7rO1K2RJ57v64KDgQRUov1LSE=; b=WPGzsmKpcYXMg1CsZhDkQyKeRc
	a6uM6HnReECFCK8UvD7gfF23YXEAyI47OqmdOu/tGJNR4j71G0kB+4KE+1Lhg0RbYajWMaljPOJTp
	MKF9dTMvwb2pSEG7dZ8T0BmNIXk5Pi7497jxX759do8t2j6dC3zsOVhcKlXLt8KzkyzcVSFADsK6e
	I0xMj6S0r2xHl86EA6XmwQ+h5gBCH0bGA5j/ASkYYDl0gJcOeT3+YLao/gWJilwdKdp4pSTIlW9il
	3KVON/sbMwg5r2PRJOTUA6hNIMpP1XKnESZ+a0X8o8m7QOiNYZ6QAVKjLHBLeabxjad2rU/lE2yV3
	IBtumpaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMCsP-0005Sy-FC; Sun, 20 Oct 2019 15:12:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMCsK-00056d-Cr
 for ath10k@lists.infradead.org; Sun, 20 Oct 2019 15:12:09 +0000
Received: by mail-wr1-x443.google.com with SMTP id w18so10475571wrt.3
 for <ath10k@lists.infradead.org>; Sun, 20 Oct 2019 08:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sEDPpuabV3/B35Mj82XikN4wgjEHBJYpPuqoickG7cM=;
 b=qe7JRxXbGbvrO0+E0KKpDJTcZaU1q5xXn2OMubvAwzdz6DXYAFokTgupTFoolqGyjg
 A6KRGTXAyoj4xsKyZ9hk7cwVP0lmWjMLgtqa3oPhH1GCriZSTXht8bdFzzAwN3Thtm6a
 zJcjZc6VXK0ADr3Rn6HZ9t5VNQ0r2K0dcDHQbGfz97/1IJ3l1p1NVLHdJZOYCwSUsMO9
 0N75im9QJWuGekHRmtuGXTXpSLgODycgvCE+yH8zM6slPokq7DmscgUhyKkzqbZ+O6t9
 YMTNlWiGr/iC0i5HVn+9IGiN1TYHeViLEwNLYWCgUc3AIES6tKXttTV4dmkw4q4c98CC
 e68Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sEDPpuabV3/B35Mj82XikN4wgjEHBJYpPuqoickG7cM=;
 b=VCqKsOd89yLQJsd6ajW07bb/AXzJlhnLjEjsxhE4jXoPErbmLmyIjVOXZNmkIVpAvP
 l7AtLFvMzogwBlFe1IBVHtpZWgdhoFw9wVbIZndy/wltKG8qXY5Ye8oOcACCPCej+DLw
 hvH0CTK7B1mrdfv7ioOyoaHkQSS6PDyRmBfyU7thtBT3iINe9si6d0HpAfeG3TPjM7hI
 Wz9Y4OvelePX4caavuZ5L0PjpsXtMEBmmBrOxQwrMNObTRqwp2ANLA3zhtNfoFeMXu/Y
 XjRQKcbOv9aQtsPjocp7OnXTqKDim3mvI1Ra0b5d8B8hWhJjOZfHziuHM6DkUHqk4dGD
 8BjA==
X-Gm-Message-State: APjAAAUNQscu61XEHPbfx7HMOjwpYXVrZD2WhYDsm84T99nP4RzQ+HlJ
 0/sNjFUxe3lyp4D7NG/VGgY=
X-Google-Smtp-Source: APXvYqw0jfXTUHK8SC+t6VvHbj+B+5ZX/+DPYODZPb1bq/b1S92Q1hjT09/etSBReCQR1wHjlCNhTg==
X-Received: by 2002:a05:6000:12cd:: with SMTP id
 l13mr15862953wrx.181.1571584326730; 
 Sun, 20 Oct 2019 08:12:06 -0700 (PDT)
Received: from localhost.localdomain ([31.147.208.18])
 by smtp.googlemail.com with ESMTPSA id e12sm6367204wrs.49.2019.10.20.08.12.05
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Sun, 20 Oct 2019 08:12:06 -0700 (PDT)
From: =?UTF-8?q?Tomislav=20Po=C5=BEega?= <pozega.tomislav@gmail.com>
To: kvalo@codeaurora.org
Subject: Re: WARNING at net/mac80211/sta_info.c:1057
 (__sta_info_destroy_part2())
Date: Sun, 20 Oct 2019 17:12:00 +0200
Message-Id: <1571584320-29816-1-git-send-email-pozega.tomislav@gmail.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <87lfuuln5n.fsf@tynnyri.adurom.net>
References: <87lfuuln5n.fsf@tynnyri.adurom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_081208_455314_26762783 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 johannes@sipsolutions.net, torvalds@linux-foundation.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -11 is -EAGAIN which would mean that the HTC credits have run out some
>  reason for the WMI command:
> 
> if (ep->tx_credits < credits) {
>         ath10k_dbg(ar, ATH10K_DBG_HTC,
>                 "htc insufficient credits ep %d required %d available %d\n",
>                 eid, credits, ep->tx_credits);
>         spin_unlock_bh(&htc->tx_lock);
>         ret = -EAGAIN;
>         goto err_pull;
> }
> 
> Credits can run out, for example, if there's a lot of WMI command/event
> activity and are not returned during the 3s wait, firmware crashed or
> problems with the PCI bus.

Hi

Can this occur if the target memory is not properly allocated?

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
