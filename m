Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA46122EDB
	for <lists+ath10k@lfdr.de>; Tue, 17 Dec 2019 15:35:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C+dTiJKgJYO7g3tag5fI+hNbwtHHukgGeMmLPNzAVgs=; b=AfwceVwdF8vB00
	2zMJDsemkluDpin4tsz8Iz2yxXdCCOV6QOLcisyMAf0X9Ap5wz9Q67Vo+A2+s6AyhUH0f7tblvnz6
	VSiEjImZ0QvGnTtqRKpEwlUk5e9o2Y2phO5MsMTkGEkiRRR03Cdzc2qRWEIAzLOikqNdGdPurbid3
	SgxzEaRGM0oy7m8VW3JnJqCoy2Zu4oeCZQDOyvCymaR24lALFUWqomURj8f+EGaviKNJk9EGPEk3l
	DrFNOH8WH8BdjU8xPgO3iZJmKQtXGFcH9o5N8HXxLzOt5xafrjKin/XppXSVNCl4fDzdEfh+4LW/l
	CJWYG/2tDfV6FRzhtZJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDwU-0002da-5A; Tue, 17 Dec 2019 14:35:18 +0000
Received: from mail.codm.de ([185.95.212.174] helo=tera.codm.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDwP-0002cs-7j
 for ath10k@lists.infradead.org; Tue, 17 Dec 2019 14:35:14 +0000
Received: from localhost (localhost [127.0.0.1])
 by tera.codm.de (Postfix) with ESMTP id 06F723CF002
 for <ath10k@lists.infradead.org>; Tue, 17 Dec 2019 15:35:12 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at tera.codm.de
Received: from tera.codm.de ([127.0.0.1])
 by localhost (tera.codm.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id dlmDkrxYVHtR for <ath10k@lists.infradead.org>;
 Tue, 17 Dec 2019 15:35:11 +0100 (CET)
Received: from dustins-mbp.codm.de (b2b-130-180-91-5.unitymedia.biz
 [130.180.91.5]) (Authenticated sender: dustin.utecht@codm.de)
 by tera.codm.de (Postfix) with ESMTPSA id 47A673CF001
 for <ath10k@lists.infradead.org>; Tue, 17 Dec 2019 15:35:11 +0100 (CET)
From: Dustin Utecht <dustin.utecht@codm.de>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3601.0.10\))
Subject: Re: Re: ath10k: wmi service ready event not received using QCA 9377
Message-Id: <EF17BB1E-1DB6-4AF8-8064-6FD8C16DABA4@codm.de>
Date: Tue, 17 Dec 2019 15:35:11 +0100
To: ath10k@lists.infradead.org
X-Mailer: Apple Mail (2.3601.0.10)
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_063513_425251_3A3DE376 
X-CRM114-Status: UNSURE (   2.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Are there any news about that ?

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
