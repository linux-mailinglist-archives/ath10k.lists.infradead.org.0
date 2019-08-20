Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF05995E54
	for <lists+ath10k@lfdr.de>; Tue, 20 Aug 2019 14:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uL0xrGmZkFyGGATyFJMJNMPE5WXn6sZY/ncvjFoGqFM=; b=YjMrCdv2Sc500q
	Lz/gxqe6qjcCeJ6hHYgHEh1Y92TiZts/VQctNoVuAKrjQ7Qo1z3XOLvTV0h9jV9pS5os3XQb7Vah4
	s7/xIlXBgUfob26vVs4S0g6nqlrVtattciF/3QySBmYrckVMWr/KaBIBijgTs2WVn3puOH/Impv6s
	xyj2USBQEXJGWXBFRws4vLgarF7uj3JrJQsYdp9mvXbhi1EHWqy6l36/G/ZFLztMcbXQQIFY0Fiya
	B4OrLrlww/4U3dwOAgvkGlPVbQqIR9HHtE/Rw9rORI2Nch7flqsyU9coAisMQhSY0ZjHkhAfX7puf
	rlJgPfhGexRlTc9s2Qaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i03BI-0002Ey-AD; Tue, 20 Aug 2019 12:24:08 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i03BC-0002EY-15
 for ath10k@lists.infradead.org; Tue, 20 Aug 2019 12:24:03 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 80F62C06511B
 for <ath10k@lists.infradead.org>; Tue, 20 Aug 2019 12:24:01 +0000 (UTC)
Received: by mail-ed1-f72.google.com with SMTP id b5so4038903eds.22
 for <ath10k@lists.infradead.org>; Tue, 20 Aug 2019 05:24:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=kmKPHTCzyy6ANatEc2iel5jOxAG7QMqVRpdxW3s1buE=;
 b=cjRBivMHayG8XBTwH/NSiA+bxwMT8TVhukUAKCCKxdrbxAcija/ud/8qi1UlTmzVQk
 +TxOpNipmIpZtMm6S1kUrFxOJKPiLoM7yCJ6flc7CaWwvPBCCflabU81ehfglFgK1Nvt
 miF8rqxbqC9cejqVie0gB8Zau+Z0I3+IdpJq4A25IIa+2cmN1ja28TEwzV0BulN4VGuJ
 crEPIjlFnd9X6dqsiuMiO8YzAacy83Q8CFnGkf8T/wEYEi1hqnlhXccrG6u4IORGsMce
 dqyx33+RMEmO/+4B2ZPyLbGzsUpxwYFamA8zPSimLJhlg5xWIp30IFi4hice3u3cYP9X
 LdnA==
X-Gm-Message-State: APjAAAVkW5V81RoOOByWXCcpSSRfNmdX0fdzgyp2yBqr1dTKBAaLgBTu
 Ob+dWVWzruRWP6pMkREvRBoaV62A014TfRKmwRA1fec0I7GsQMiilNch7HG83nkRx7xGG0xNdnA
 dZB+SyN6MV+pMlgZOaEP1vQ==
X-Received: by 2002:a05:6402:50a:: with SMTP id
 m10mr9364394edv.173.1566303840320; 
 Tue, 20 Aug 2019 05:24:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwc/mzxJ4/ZG/eZ+4iSY2PVNEH3DHKWFDx7z/DUURJS0reXNzpmnvLKKqcnHrnsuE0NrAt4BQ==
X-Received: by 2002:a05:6402:50a:: with SMTP id
 m10mr9364382edv.173.1566303840195; 
 Tue, 20 Aug 2019 05:24:00 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id 9sm2581333ejw.63.2019.08.20.05.23.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 05:23:59 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 270A5181CE4; Tue, 20 Aug 2019 14:23:59 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Wen Gong <wgong@codeaurora.org>, ath10k@lists.infradead.org
Subject: Re: [PATCH 4/7] ath10k: disable TX complete indication of htt for sdio
In-Reply-To: <1566302108-18219-5-git-send-email-wgong@codeaurora.org>
References: <1566302108-18219-1-git-send-email-wgong@codeaurora.org>
 <1566302108-18219-5-git-send-email-wgong@codeaurora.org>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 20 Aug 2019 14:23:59 +0200
Message-ID: <87blwkt480.fsf@toke.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_052402_088821_68406F9E 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Wen Gong <wgong@codeaurora.org> writes:

> Tx complete message from firmware cost bus bandwidth of sdio, and bus
> bandwidth is the bollteneck of throughput, it will effect the bandwidth
> occupancy of data packet of TX and RX.
>
> This patch disable TX complete indication from firmware for htt data
> packet, it results in significant performance improvement on TX path.

Wait, how does that work? Am I understanding it correctly that this
replaces a per-packet TX completion with a periodic one sent out of
band?

And could you explain what the credits thing is for, please? :)

-Toke

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
