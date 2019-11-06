Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118E0F1D9A
	for <lists+ath10k@lfdr.de>; Wed,  6 Nov 2019 19:34:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Iz/qAP3T9zqr7w30PdBAgkc0uQYFcATJnlDVtET6X8=; b=Ud2KYpykeERbMB
	bO8B8sLXDnjH8jb4CPhO0T4MgfM/8VorWFWswI15Hvkru4YlghjupOZy/sIaDrmfpMNwQDjhWfqQy
	n+PW5AuZMoHUjet6W3V0MnKQlHNJ34Es1UzhfgqFf0+P9Az9mq+tIs/TAAPZULhNNd5nr9xF/hhRY
	7Oc5/eYEvVdJkg1N0Hi1HpQwDyLHZAYqt1m6SWofteCE9clBj+eZUI3VMSiLV5dSjbVCAQvIcdBwv
	/VjY1/VZHE+vXWSZx1BKBwftgsmhlfAcvdqvNFOjmYRGtmKO77n9/2ZBTHlVRauOYLzC7Bs+2jxZy
	yohuP0SGDJqcDA/Uwf6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSQ81-00041d-2I; Wed, 06 Nov 2019 18:34:01 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSQ7w-00040t-W2
 for ath10k@lists.infradead.org; Wed, 06 Nov 2019 18:33:58 +0000
Received: by mail-ot1-x343.google.com with SMTP id n23so11456353otr.13
 for <ath10k@lists.infradead.org>; Wed, 06 Nov 2019 10:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=NaBv7i8Bvb+Nh7AUP99bMks2ey3ZpHBIKQxNdaEVNi0=;
 b=MKc7VUJJ0V/sAeBy2uCFu+tjBwm8cteZ+cOgZQjrrliLE09kwu+UfmXKF7JAjDwONQ
 W2p5r8mxWTbA2FxYySMXEfocXYvV06JlzqK7qXB+ehgm2VjgrMa36tll1Isv0cpGeFjV
 pI02a2hAmI8rDpFpMkLI8dhzev5pKJLGmdNOHh7oWsgkay3AxJ6dyJ0U1NRXOrWAYEgZ
 hFJlfaIe1pBM4q1Tkpmm/4caWD8OADMVcuGxoQwCn8yn2P2QVXH5BQ4f1/8xW+8UQASA
 b08AD1nXVr96c3IpP0g/2m7ivr+/likVDNW7pcLA/beK5aUjerrvcvWMsx31liv0Lixt
 guAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=NaBv7i8Bvb+Nh7AUP99bMks2ey3ZpHBIKQxNdaEVNi0=;
 b=f0yjDzuYDOB4QvbHTjnXAfcRac2NWf2ecLyD8af2v6SCg0tpU8K43evyNoAFLKag0i
 ciFeFHmwNJJliJyk4en0mEtlaFRYJR42xsJg5RI71acWBDKfFnf6UNDTr05yuYsOP4qc
 3ZfyVNwKrMunKxIc0cGD8ErddVa3bV2axZnx8dxLfA/xZ7AXCjt/wQuxkVk5OJ6rZ1w5
 x5NoDjybFUedrJogw2IvUnjD2wFDeImgW2klMbNc0zw0ywyoW5P2NJPAXD/Hc3Uff2pb
 zw0IpjAsrL09NysrB0kSus8AtVPZEQV+vaBawbxNnQ3z7KhDObeCuav7PYg6VukD8A61
 c4rw==
X-Gm-Message-State: APjAAAWu8aC5B351qVGnC6Qn6cFGL2RTDd+JCdQAA9CI4VNeeO4pLj19
 7fK8rZmPh+2Rj5sjMBtw8cbsUtfpfQUteb6U744M15sZ
X-Google-Smtp-Source: APXvYqz60uFQoaLI3TGk/tRSFQHzj+M/3oJFUHnreNIoBaZNzbqvlDF3xOTdHhbBsFzjnKUwyP1Z2kE1RV9wWhUJft8=
X-Received: by 2002:a05:6830:22ef:: with SMTP id
 t15mr2900337otc.256.1573065235432; 
 Wed, 06 Nov 2019 10:33:55 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:384:0:0:0:0:0 with HTTP;
 Wed, 6 Nov 2019 10:33:54 -0800 (PST)
In-Reply-To: <87y2ws3lvh.fsf@kamboji.qca.qualcomm.com>
References: <20191101054035.42101-1-ikjn@chromium.org>
 <87y2ws3lvh.fsf@kamboji.qca.qualcomm.com>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 6 Nov 2019 19:33:54 +0100
Message-ID: <CAKR_QVKqGv+hpiENHmNFE4y=FY+Mqb7cAh7_5xhTXH27HW+Taw@mail.gmail.com>
Subject: Re: [PATCH] ath10k: disable cpuidle during downloading firmware.
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_103357_033504_F4E371A3 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
 Ikjoon Jang <ikjn@chromium.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 06/11/2019, Kalle Valo <kvalo@codeaurora.org> wrote:
> Ikjoon Jang <ikjn@chromium.org> writes:
>
>> Downloading ath10k firmware needs a large number of IOs and
>> cpuidle's miss predictions make it worse. In the worst case,
>> resume time can be three times longer than the average on sdio.
>>
>> This patch disables cpuidle during firmware downloading by
>> applying PM_QOS_CPU_DMA_LATENCY in ath10k_download_fw().
>>
>> Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
>
> On what hardware and firmware versions did you test this? I'll add that
> to the commit log.
>
> https://wireless.wiki.kernel.org/en/users/drivers/ath10k/submittingpatches#guidelines
>
> --
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
>
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k
>

Hi

I've tested this on QCA9880. No issues during firmware download.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
