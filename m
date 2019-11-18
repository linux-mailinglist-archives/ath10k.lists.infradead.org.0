Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF72FFD51
	for <lists+ath10k@lfdr.de>; Mon, 18 Nov 2019 04:25:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sB+zuWZ5XB5nV8fjlxGJ0oD2x5WR72FHlJwF4OpeNPw=; b=UK71lJc9U8FDaesg5AUUHA2xr4
	1cWH+d00F5IpOHi6iQSQQWrdaeRLv1ia2qvnrK3s2VSzWwaGwOVfdkjZcE9ZqzaFZ/DWs+5SJ+PQ/
	h8dqMlyr3eAwNogQoGQ50So3PnEtRz8jh6FEFMU5kvuWViKHo5gtKc4K8VZVmLQd+FDeeoYXOq0o5
	+1+tTTXcCdUXqUuawFdRpINR7qtsqTKXqPTehjgFE2xWFpKKwaBDF3OKRsAxDLyxxGDzMdC0n6oSZ
	4tCjMaStTuW3A0cQdlNOD4FdzDGxbW7HrQEmfoLYPtR7fk0qfSsejPx3GGQT5NnmPSxVIy5K2Xs7m
	hBmaOJrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWXfJ-00066b-IR; Mon, 18 Nov 2019 03:25:25 +0000
Received: from a27-21.smtp-out.us-west-2.amazonses.com ([54.240.27.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWXfF-00051v-F9
 for ath10k@lists.infradead.org; Mon, 18 Nov 2019 03:25:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574047511;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:Message-ID;
 bh=sP0RVI9gRbWx48Xnruy9t2o5xosiItcne3JL1huN1Qs=;
 b=MFFaQOOdeFXI4q1lVVm+Pwj7PLZ6rQTEz+euzuW9IdWA6u8D7jt3kYBHD3vQBwJm
 VGWS10+Ng2fab8HtNYcsUWIp8M2QtJDFq9qCUrBkLdGhkxgvpKzRnePbJIK9ID1pDhZ
 ajRWc9BpkDxGX27xSwSaEXDgn2zmEhFCAN9u712U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574047511;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:Message-ID:Feedback-ID;
 bh=sP0RVI9gRbWx48Xnruy9t2o5xosiItcne3JL1huN1Qs=;
 b=WGtZgr9cysit54nuQ/merCbFM3VVFzkeZGyobORxIo/y1STzUGVW/rqzeOkFvBH0
 o/i1TdKFHKYJS/ihgHV2UY5IcswFqw5aDoKrR+Ls+U77NbDgVD5EqvxJ54sb3yQGmK2
 mceg/sc6abEl8is2AxbwlvO6wMp/jEh1b1XneGMI=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
MIME-Version: 1.0
Date: Mon, 18 Nov 2019 03:25:11 +0000
From: wgong@codeaurora.org
To: ath10k@lists.infradead.org
Subject: [PATCH] ath10k: remove the max_sched_scan_reqs value
Message-ID: <0101016e7c8af159-a84989ae-e16b-4142-b78c-2f2296501590-000000@us-west-2.amazonses.com>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-SES-Outgoing: 2019.11.18-54.240.27.21
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_192521_572043_2CA76313 
X-CRM114-Status: UNSURE (   2.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-wireless@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

patch v2 sent:
https://patchwork.kernel.org/patch/11243015/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
