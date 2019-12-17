Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E20123010
	for <lists+ath10k@lfdr.de>; Tue, 17 Dec 2019 16:20:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GQtH1uxXVzJj3V7FbLC7mSYVrA2G/ZbhVM0i6B5caA=; b=Z9ZJGQqa7K6Tcm
	k9chTiprwQULDiIcDuMXu7gdL0+lX8tKIGIUq7Uml/WdnS+V5VGdW/2bdozkZfqKtkJRtd0mRggaG
	ey7GPDvFl4YdZDs5yLOR4m/rC+sgaKbqy5gQmEuMAdgchOQvmSYXZBPiJ3HgEYRcRBq6L0WKJpRN2
	OH8jKAlLVMmqii5eZ20zwVqHXqjwBORsmiEQZ7Js/IQ9Kq9vhplHk0y+29vnsk9gcFbQQIG0Mnovo
	+mFRiOT9seEPX5WC1f6psBzbnhBpT5WjOHdjr8rEES7PYRWExLo1vIr2EfZQl9toXwSfA3NVBiuKY
	CNYpAqqCUfKWOhSGXUzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihEeE-0003zG-QZ; Tue, 17 Dec 2019 15:20:30 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihEe9-0003xi-Sv
 for ath10k@lists.infradead.org; Tue, 17 Dec 2019 15:20:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576596022;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=NjTz7LOmmrU7defJswKhdMHwuqxWQ3iCJF5TdK3gajs=;
 b=Rv0HK6pLJUr8DXIxG8R5x1HnsJQbSm+DcTUs5vY9BfgTRsBoBRYL9MIkECcUA1rVn1YNXc
 RF4TUpCCaD977NFeJdhjVEjmC6pk3Dx5DQquQF5gcikMSwuUxlY4jjZ4GeXi141WrWRqER
 KMTtCLfvIhavN6H/OLgnf1JZHmZEM7Q=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-biZDI8D5OPOWUzFcGKwMtg-1; Tue, 17 Dec 2019 10:20:17 -0500
Received: by mail-lf1-f70.google.com with SMTP id d6so1043621lfl.3
 for <ath10k@lists.infradead.org>; Tue, 17 Dec 2019 07:20:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=NjTz7LOmmrU7defJswKhdMHwuqxWQ3iCJF5TdK3gajs=;
 b=R3k2XuT5tQZd9qBEZmFIvDDaUfY8oz6Bjrk8jbOnxwQFgVUAgD4MtXISL642mboJUR
 Sy8o6X4yMmAS56W44Fn+XIsqKLrAms4/14bhlB9BwWvYutOME1e2gtoJjbLyYwAIxjMI
 WR6PmGjnAhZBUIeiNwwI54p6Wr+mp+P1FIDke/uNVD6Ih7E3g1O9qEgbC2YuXV2w6tKd
 aNgab23RFoILx5+iduLi9LRywHo3XsjFFOUDwBROld+blOW/1oUHaUCtWm9iqJGHstXI
 FU26aqFDy9eBvN8BBIFSgKaVuIRlYfuM0Nlz3uBUBPJ+QlVmrQFseMtlLGcdx6sNjZfB
 EgEw==
X-Gm-Message-State: APjAAAV51yswXRhRHPOrubVUcuSh+e1Hx7dBuDqBH24T0ouh5HNa1rCA
 7XWt2FAH9SustBUFyTfeLbR+caMHMAVRKs+fOiTzDKyxbDHZcmZqBdKPwOD3T+0GqFDhzo1+Pwc
 WmbkveGDo/r6MdbD7aPdv+A==
X-Received: by 2002:a2e:a0c6:: with SMTP id f6mr3590610ljm.46.1576596016284;
 Tue, 17 Dec 2019 07:20:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqztxgpKt/OSWn6SzHt4oocpDc3uFmJvtqVjNlgXLq4a034Zy2YphmRg5xQxdRLqtAjIGV0oow==
X-Received: by 2002:a2e:a0c6:: with SMTP id f6mr3590604ljm.46.1576596016143;
 Tue, 17 Dec 2019 07:20:16 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id i9sm7236641lfd.6.2019.12.17.07.20.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 07:20:15 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 5CE361800B3; Tue, 17 Dec 2019 16:20:14 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>, Yibo Zhao <yiboz@codeaurora.org>,
 linux-wireless@vger.kernel.org
Subject: Re: [PATCH 4/4] mac80211: Sync airtime weight sum with per AC synced
 sta airtime weight together
In-Reply-To: <fd7b4cb48f3510d81d227ae8020c3b6c46f4a4b0.camel@sipsolutions.net>
References: <1576221593-1086-1-git-send-email-yiboz@codeaurora.org>
 <1576221593-1086-5-git-send-email-yiboz@codeaurora.org>
 <fd7b4cb48f3510d81d227ae8020c3b6c46f4a4b0.camel@sipsolutions.net>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 17 Dec 2019 16:20:14 +0100
Message-ID: <87v9qf6ksx.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: biZDI8D5OPOWUzFcGKwMtg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_072026_008469_9495616E 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Johannes Berg <johannes@sipsolutions.net> writes:

> I'm going to assume that Toke will review all of this and there will be
> changes, so you'd resend anyway ...

Yeah, this series doesn't even apply in its current form. I'll try to
fix that, and do a few other updates that are needed while I'm at it.
And to answer your question in the other email, yeah, this should
probably be squashed to a single patch...

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
