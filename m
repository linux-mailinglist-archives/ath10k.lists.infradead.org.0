Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80907BD7F3
	for <lists+ath10k@lfdr.de>; Wed, 25 Sep 2019 07:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YD0ftoNl718R1bva98TJA7O5y2q+Wm0zKXNM9+BtgA=; b=T3/kOB+LLGPuHx
	DfdhOrU3vYdTrrBK9pUQRqt+vTYbgQZjfEXoDlCPZcPTyq/yl5J1f13JdA1KR4DzwS7eggiKw/W7B
	vE8wyVLChsDs5uuh+srSUR/GQc60jtyV+h0oSq56AaGUw2kX41wS1zih0N4aed+TlEBiQphiyJqTC
	ywJA84KfpugpQ4Ckokogu6Zj6tVhilN5t0RSEP/yw4wECvTezEwcbDQ5zaQOhc/67o9RQto3Z2p7L
	j6Sk7fme70jSkEwK/wG0T6C2gkh27RROaUp/ReIKrwCbR7fwPwUJZUP0jgv80wBVtDSxdGe5+dwPb
	wkwnQ4g6pXGy9Dh9zNLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD0DR-00029w-6i; Wed, 25 Sep 2019 05:51:53 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD0DK-00029W-DS
 for ath10k@lists.infradead.org; Wed, 25 Sep 2019 05:51:47 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id DFCB460397; Wed, 25 Sep 2019 05:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569390703;
 bh=NeEFZDrD5NaVYEmvXkuToUi48FcsuLzZxJyEwdPTkGE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ZuUtTWbVRuRvXPCjtRcyqxH4jRE/x0q3ryyGQHBc15TZiOj/YHlCVRo1VS3bUkCqU
 6gbckZcqXlVzTWVE6jdEizsCc7CihjxyZo775K1Jjlv9mPgG39/X0Hy7F4DQwgK+c2
 Pe3ysytiP8HcV5nTLkEyOuDHTOe0FpQeWxGcxHQo=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from x230.qca.qualcomm.com (37-136-106-186.rev.dnainternet.fi
 [37.136.106.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3996C602F2;
 Wed, 25 Sep 2019 05:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1569390703;
 bh=NeEFZDrD5NaVYEmvXkuToUi48FcsuLzZxJyEwdPTkGE=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=ZuUtTWbVRuRvXPCjtRcyqxH4jRE/x0q3ryyGQHBc15TZiOj/YHlCVRo1VS3bUkCqU
 6gbckZcqXlVzTWVE6jdEizsCc7CihjxyZo775K1Jjlv9mPgG39/X0Hy7F4DQwgK+c2
 Pe3ysytiP8HcV5nTLkEyOuDHTOe0FpQeWxGcxHQo=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 3996C602F2
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Erik Stromdahl <erik.stromdahl@gmail.com>
Subject: Re: [PATCH v2 3/5] ath10k: sdio: read RX packets in bundles
References: <20190417191503.18814-4-erik.stromdahl@gmail.com>
 <20190925054517.11D3E611FA@smtp.codeaurora.org>
Date: Wed, 25 Sep 2019 08:51:39 +0300
In-Reply-To: <20190925054517.11D3E611FA@smtp.codeaurora.org> (Kalle Valo's
 message of "Wed, 25 Sep 2019 05:45:17 +0000 (UTC)")
Message-ID: <87o8z82aac.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_225146_482879_2A94D610 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alagu Sankar <alagusankar@silex-india.com>, linux-wireless@vger.kernel.org,
 ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kalle Valo <kvalo@codeaurora.org> writes:

> Erik Stromdahl <erik.stromdahl@gmail.com> wrote:
>
>> From: Alagu Sankar <alagusankar@silex-india.com>
>> 
>> The existing implementation of initiating multiple sdio transfers for
>> receive bundling is slowing down the receive speed.
>> 
>> Instead of having one sdio transfer for each packet in the bundle, we
>> read all packets in one sdio transfer.
>> 
>> This results in significant performance improvement on some targets.
>> 
>> On an imx6dl together with a QCA9377 SDIO device, the following
>> performance increase was obtained with iperf:
>> 
>> Before:
>> 
>> [  3]  0.0- 1.0 sec  3.38 MBytes  28.3 Mbits/sec
>> 
>> After:
>> 
>> [  3]  0.0- 1.0 sec  7.12 MBytes  59.8 Mbits/sec
>> 
>> Co-developed-by: Erik Stromdahl <erik.stromdahl@gmail.com>
>> Signed-off-by: Alagu Sankar <alagusankar@silex-india.com>
>> Signed-off-by: Erik Stromdahl <erik.stromdahl@gmail.com>
>
> Wen is working on this:
>
> [v5,2/8] ath10k: enable RX bundle receive for sdio
>
> https://patchwork.kernel.org/patch/11132661/
>
> So I'll drop this version. Patch set to Superseded.

There were invalid characters and linux-wireless dropped my mail,
resending now.

-- 
Kalle Valo

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
