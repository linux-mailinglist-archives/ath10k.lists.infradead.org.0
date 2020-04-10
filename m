Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F591A427A
	for <lists+ath10k@lfdr.de>; Fri, 10 Apr 2020 08:21:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NUQhrYyACaYBtqnqbr1i6ddo0W359kuyW/o0nuXb7Ic=; b=b3OBfwUNAQky0SNXFT3U+FaPx
	7ltmwDSNDTDZlBx8i4bZ6LtPpr4/frD1RbfXbNNThvLxr8cicuE+PzUp7Eer46j2ogNER1nIL5E6B
	w66QxG3M7M6oUrRoaBCjBX+QatUwnbJ6LcoxQku+4SvZiWWMQtaH32Fxx6UrT+uehChkZiEnST028
	u0EKcT5ColgtyD9OceKCnY7SJXxCfsNI+o67EGEtIAAt/W6hQ8wbV5hp88NVimYSYxdVyFuawm1An
	oBNDvqySodsM5h2TiWl5ZnYZs8lrl6fbKNZoaR+V7k1vt1HeNEwY3w5B5+B3rYc4mNR+yZDqORjtf
	+EUyud/PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMn2U-0000OT-KX; Fri, 10 Apr 2020 06:21:18 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMn2O-0000NZ-4y
 for ath10k@lists.infradead.org; Fri, 10 Apr 2020 06:21:16 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586499675; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=6gn2EZYGQjodcr4M8bz1Jx0pei/MET0dh1dphfH9Cp0=;
 b=nshD1C5TUGNL7JVP7V2YKCJxGzrkE6LNllxW4XJZevLXqh1v7K7/QQ6a2qYO/5/ZoxsvkjKr
 VKy+2ZxtILhP04ReIi7h121rPPW2Pqyc2OouSyYsT7QGE2TMZgZqIZbdN6h63HfziuYfca8a
 H/eowyjz8bQtTEK+qrGAo3M0tS8=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e90104f.7f6ee94fcdc0-smtp-out-n02;
 Fri, 10 Apr 2020 06:21:03 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B5461C433D2; Fri, 10 Apr 2020 06:21:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A0FB9C433CB;
 Fri, 10 Apr 2020 06:21:02 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 10 Apr 2020 14:21:02 +0800
From: Wen Gong <wgong@codeaurora.org>
To: ath10k@lists.infradead.org
Subject: Re: [PATCH v9 0/4] ath10k: improve throughout of TX of sdio
In-Reply-To: <20200212080415.31265-1-wgong@codeaurora.org>
References: <20200212080415.31265-1-wgong@codeaurora.org>
Message-ID: <54bfdf4093153ec1838881a0cf96c30f@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_232115_343631_AE5FCC77 
X-CRM114-Status: UNSURE (   5.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-wireless@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-02-12 16:04, Wen Gong wrote:

v10 sent
https://patchwork.kernel.org/cover/11482763/

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
