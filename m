Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EE3109B4D
	for <lists+ath10k@lfdr.de>; Tue, 26 Nov 2019 10:36:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=biQWVjnmQ9HANMhfmTI9jrO2x/+kjSvcB6gdamXmw+g=; b=XJGCnUpLum9b25RFhVMl2MNxvm
	3Kp7BDmhHMxcTmt/GFkqQwrbl4SIeFq144l+4nENKjJHFOqOUQ9c/GZx0wSO6DiQQHWxkgjm2N3wB
	IfhIvQPt7z8pdTzXoNV08ULPkWqtrZOFksnSTCN15X1ikbD/qpsKwjszRMq97M6C4PwGRuIlzj6zd
	GtmUyfR2h1EVBneOFnORwwTxbyc+LdUNIpaNN4MyfQ3af5484QlSNs5IzDjTloCROL8koNRXJqeE/
	Z5COAy21Fa5Ng4dHFvnTbcZA8q+ukrsKa7wTpOHblwP52hU7XdCVYkuAIrXgUy/ijP5iwpJiRLsza
	YUVc9k4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZXGy-0005Jg-61; Tue, 26 Nov 2019 09:36:40 +0000
Received: from a27-188.smtp-out.us-west-2.amazonses.com ([54.240.27.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZXGt-0005Av-Nc
 for ath10k@lists.infradead.org; Tue, 26 Nov 2019 09:36:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574760993;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:Message-ID;
 bh=WqnlfxtF6WQ1UXwO3jQwpAJI3jcfSkzxdr2oXhs+rWY=;
 b=AeOzsZ0YMEplWg9qwOpibFo3DqJlBnLZtxFqVmdDH8yX18sY8AE+Hc+9gCqdDTqO
 bEklHVlPh4sj9TjTG3CNcoGHl7f70+GTtK6A5KrLwImuPZxly/ejjJzHrUDpMyQOajN
 AQWrC+rf3QXVbjO9hC+OMDNuNKH3Z43iaTE+OSLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574760993;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Cc:Subject:Message-ID:Feedback-ID;
 bh=WqnlfxtF6WQ1UXwO3jQwpAJI3jcfSkzxdr2oXhs+rWY=;
 b=DU1/cECgP+TlPQwAHMAq8ZNesuxSM6I0zHcd6gNFLerVqcsudmDY1tTKWdb7JLdf
 SlkNPucWJvQ+78Vhgh9SiWVmX+jTDE+AP+lWe23oc0OIn64nId79tuOLgsw67XZACW2
 kL4mAIvBWG9AbrcUpZMSeeE3WzS++rjAJfCZ7xc8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=3.4.0
MIME-Version: 1.0
Date: Tue, 26 Nov 2019 09:36:33 +0000
From: wgong@codeaurora.org
To: ath10k@lists.infradead.org
Subject: RE: [EXT] [PATCH] ath10k: enable firmware log by default for sdio
Message-ID: <0101016ea711d28f-004d7903-92c1-4c30-9b75-6c05d5ade612-000000@us-west-2.amazonses.com>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-SES-Outgoing: 2019.11.26-54.240.27.188
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_013635_913058_92D7AEB1 
X-CRM114-Status: UNSURE (   5.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.188 listed in list.dnswl.org]
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
Cc: linux-wireless@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Wen Gong
> Sent: Friday, November 8, 2019 5:19 PM
> To: ath10k@lists.infradead.org
> Cc: linux-wireless@vger.kernel.org
> Subject: [EXT] [PATCH] ath10k: enable firmware log by default for sdio

Hi Kalle,

I found this patch has removed from pending branch, and not in ath-next 
branch.
It is in pending branch before.
https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?h=pending&id=497363abab79eac916f2e2c6f9ab2b9bb4aa4b11

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
