Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBA034898
	for <lists+ath10k@lfdr.de>; Tue,  4 Jun 2019 15:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PsLnyvRmYAYEmw4ku2Td27VxOnBgP/vlh3uLmqGRNiA=; b=XsCdb/Fsp9vSb4
	mR3xcmQW7JUBZ/JewivpS4x0epXInlO36W2Rq3wBGWi+CJbpbvjrvA4Atzv1Iq1I1NgGQkAO8P1oI
	vPexJ52Q8zD0BIsN86vw2HhPvwdcKNLx1M+vd6zYaS8rHvA9mjv2xiUeRSrD4zqGnsEhdeiHT2HrT
	beeFrLJKZb2nrqP2HxezyAADc0tRvAhweoSQzAahI/39VSzj7mZEXLrTSX5RJsYHhLlyJWNhd3oa0
	ppmYiwVYMGNx48bMtS/4Ak15yj07MPUJN7sI9KJRoca1pM6/uKt6c6WNbB3Lrv/UISP4e+qhCW5n1
	9CXpKcpNhOKN1bGUVmog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9Pt-0001wa-Hs; Tue, 04 Jun 2019 13:23:53 +0000
Received: from n7smtp2.enseeiht.fr ([147.127.176.23])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9Pp-0001wF-6U
 for ath10k@lists.infradead.org; Tue, 04 Jun 2019 13:23:50 +0000
Received: from imap.enseeiht.fr (imap.enseeiht.fr [147.127.176.21])
 by n7smtp2.enseeiht.fr (8.14.3/8.14.3/Debian-5+lenny1) with ESMTP id
 x54DNZML020174
 for <ath10k@lists.infradead.org>; Tue, 4 Jun 2019 15:23:37 +0200
Received: from [147.127.93.224] (aairit-224.enseeiht.fr [147.127.93.224])
 (authenticated bits=0)
 by imap.enseeiht.fr (8.14.3/8.14.3/Debian-5+lenny1) with ESMTP id
 x54DNXh7027472
 (version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NOT)
 for <ath10k@lists.infradead.org>; Tue, 4 Jun 2019 15:23:35 +0200
To: ath10k@lists.infradead.org
From: Kevin Jiokeng <kevin.jiokeng@enseeiht.fr>
Subject: Management frames on HT or VHT rates
Message-ID: <36d1708a-d782-9bd1-d45d-9323494c04c5@enseeiht.fr>
Date: Tue, 4 Jun 2019 15:23:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-3.0
 (n7smtp2.enseeiht.fr [147.127.176.23]); Tue, 04 Jun 2019 15:23:37 +0200 (CEST)
X-Scanned-By: MIMEDefang 2.64 on 147.127.176.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_062349_549443_12E20CDD 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [147.127.176.23 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hello,

I would like to know if it is possible to configure ath10k so that 
management frames are sent on higher (HT or VHT) data rates.

This is for test purposes.

Thanks,
Kevin


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
