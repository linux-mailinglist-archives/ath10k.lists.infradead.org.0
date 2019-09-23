Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0B2BB2A5
	for <lists+ath10k@lfdr.de>; Mon, 23 Sep 2019 13:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5/Jspu25fa3JdNJ42oodk2v34u/bRqcs6Xtz1ldupsY=; b=iNqpjxBzeHW4MME0sET6Qbggn
	DEssFewDV1xyb7A3Q/aW46UNPhGgkeKeR29n1mztGsY/vAFAR0tAvd1QhDqsq9R3EIVgITcrGfn9x
	s33PA41MTn8CzmvSypLeyrJgnktjsU9WElaJ9BywZL1z5+AsMtRzq3xh7lIlOoW0M8bWyRD82s3h1
	LJKpnlJ999A4bIRhnaVrN/iNsrKpOf1w19KZN2waoOM2XHwTkjMnbXwUBfdkcz0Z3Yp8VQXmiIkG8
	m0zJmxgeWlCZIE9jel6nKAoNi5+i8tUaQjzkBc+V9zd8lt+U2jmjLOb5prJ+CPM7GHsIzNz3pkmH+
	n7i358EDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCMF1-0000Bs-44; Mon, 23 Sep 2019 11:10:51 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCMEw-0000Ba-U1
 for ath10k@lists.infradead.org; Mon, 23 Sep 2019 11:10:48 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 9BFE36034D; Mon, 23 Sep 2019 11:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569237046;
 bh=NS8r6+bC+2MSJe533xfyqMZy190jcWVuvxxcEET6yPc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pI5m/8FuCyIXHiDaCfzE1gitCXqccg/ok/5GTT+wzxxlw07l+Xm6X41T/Cs6pOJv2
 r3+SoQXg5kJ5iVj8CWaUcM+yn48rEaO1/2/cevv28UsAlw3jgtYhvZ0+4hLL57wUc6
 Frn2laL2wJ0jK3mOZAYjGVHgatITWlHvSu8G4Y5k=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 5B681601D4;
 Mon, 23 Sep 2019 11:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569237046;
 bh=NS8r6+bC+2MSJe533xfyqMZy190jcWVuvxxcEET6yPc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pI5m/8FuCyIXHiDaCfzE1gitCXqccg/ok/5GTT+wzxxlw07l+Xm6X41T/Cs6pOJv2
 r3+SoQXg5kJ5iVj8CWaUcM+yn48rEaO1/2/cevv28UsAlw3jgtYhvZ0+4hLL57wUc6
 Frn2laL2wJ0jK3mOZAYjGVHgatITWlHvSu8G4Y5k=
MIME-Version: 1.0
Date: Mon, 23 Sep 2019 19:10:46 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v2] ath10k: add fw coredump for sdio when firmware assert
In-Reply-To: <87zhixamyp.fsf@codeaurora.org>
References: <1567132338-7407-1-git-send-email-wgong@codeaurora.org>
 <87zhixamyp.fsf@codeaurora.org>
Message-ID: <b8298efd20f3d05a38866b687f597c30@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_041046_989114_DBF420FF 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019-09-21 19:49, Kalle Valo wrote:

> After looking more closely, the ar->bmi.done_set checks in bmi.c does
> not look necessary to me, I have never seen that warning. I would 
> remove
> those and the done_sent field altogether from ath10k to make the code
> cleaner and I avoid hacks like above. This should be done in a separate
> patch, of course.

so I will use it this patch :)

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
