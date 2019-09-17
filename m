Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B044AB4F6C
	for <lists+ath10k@lfdr.de>; Tue, 17 Sep 2019 15:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:
	MIME-Version:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sO2DV2yseAle7QihgsgjUxz8BbIq9pfpWqN8VU9Jp3g=; b=EX6QASZ1GAOAMQ
	7vRnYqO6vR+EzIyDBVIrPXzm6Xga7H6eMg2ZFHgKKvPsUFkL/vp+TfblST+Ts2h3Ux4g5/MocCh3U
	UfPbsxCbxsakFKCKhEE/NqQnDUqvCfdMU4JKUrt/dQfk9HnqESYRKF9uwYW5DvGRNVmtyQDLoxfqx
	uuWewcBhehTev6mAEJtWhlx0HkGHJqFS1AfuuLdjiIts+MEfbiNEMQC2+twdJjwP4wdb0yBct9Y/u
	96yKmlBikbBjzT0lL2ehaOkbLYftPiIRu+pojTiD5uoS38xNP015ZWAu0+LLnhDj36ovoGCEjxYKP
	XCvod92VyXIkZHTh4EKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADfV-0005MU-R1; Tue, 17 Sep 2019 13:37:21 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADfP-0005La-Cd
 for ath10k@lists.infradead.org; Tue, 17 Sep 2019 13:37:18 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 18446C2E2417DE0954E7;
 Tue, 17 Sep 2019 21:37:07 +0800 (CST)
Received: from [127.0.0.1] (10.177.29.68) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Tue, 17 Sep 2019
 21:37:02 +0800
Message-ID: <5D80E17D.2000800@huawei.com>
Date: Tue, 17 Sep 2019 21:37:01 +0800
From: zhong jiang <zhongjiang@huawei.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
 rv:12.0) Gecko/20120428 Thunderbird/12.0.1
MIME-Version: 1.0
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH] ath10k: Use ARRAY_SIZE instead of dividing sizeof array
 with sizeof an element
References: <1567582878-18739-1-git-send-email-zhongjiang@huawei.com>
 <20190917071632.001AC6155E@smtp.codeaurora.org>
In-Reply-To: <20190917071632.001AC6155E@smtp.codeaurora.org>
X-Originating-IP: [10.177.29.68]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_063715_618820_2F419CD6 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org, davem@davemloft.net,
 ath10k@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2019/9/17 15:16, Kalle Valo wrote:
> zhong jiang <zhongjiang@huawei.com> wrote:
>
>> With the help of Coccinelle, ARRAY_SIZE can be replaced in ath10k_snoc_wlan_enable.
>>
>> Signed-off-by: zhong jiang <zhongjiang@huawei.com>
> I already got an identical patch so dropping this one.
>
> error: patch failed: drivers/net/wireless/ath/ath10k/snoc.c:976
> error: drivers/net/wireless/ath/ath10k/snoc.c: patch does not apply
> stg import: Diff does not apply cleanly
>
Thank for your remainder.

Sincerely,
zhong jiang


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
