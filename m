Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FF81917C4
	for <lists+ath10k@lfdr.de>; Tue, 24 Mar 2020 18:40:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPWHq3+iprK5ul5kUZX5Kj30+ksSPpuexmOx6dSnvU8=; b=t8xl6LQcUoYSJa
	n+Q4ec+d4eU2BaUsKQ7hkuB4L4ep+9V/hTtY7CG1QphitG1mvBsp2AtgZNHp2J6ZHNbLYc6Wh4yOF
	vYHMyq+qbbQlohDZ5yNSYgftCa2yGfZT9pSxeSzdTwziYBX/jWdwNz3RtNf2h42Xebdz8pGN9X6G4
	xaE0NW994wWNg1kwhsOSIVwokpnu/wyYPXyRRATh5KLzHYqqg55A5pbeanaaxVUa8sn5f6xp0h2EF
	l8j8Uw45UZlh/35/9QKC/jh0Qc/Ckrehebv/Sct5go1g1UQu0SjIGwwRMm0k9c/ovMfFlTUyuC/YF
	x5LuszA6+EP/xr0wi+/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGnWv-0008V1-BE; Tue, 24 Mar 2020 17:39:57 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGnWs-0008Ud-9P
 for ath10k@lists.infradead.org; Tue, 24 Mar 2020 17:39:55 +0000
Received: by mail-wm1-x344.google.com with SMTP id 26so3058704wmk.1
 for <ath10k@lists.infradead.org>; Tue, 24 Mar 2020 10:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n1xrbvg7pqH1XdeoXchzTkzHSRkIIH8T+lVpdQqkE2o=;
 b=mL5YYUb3f+WLL8KEV/dOtBcjkdt0jJPafIXNUpSHRoEAC2LI/GqzI38pUBqKpEGFo5
 isPrEX6z5AV+tg2EgfekLxkVGLAQKIPmqHP/Awe+Xcj4OQEyufslOJ1eK6ja98Hiatnj
 dVuekINX96YBn1osO3A9nhv/5WUp7khKJO93iHtxgWZxxQKjaSVYNFgZcc9QVmqltHbn
 xmcnUmwM9fshNETSnFtZynIDbTyjYOHkFNSpNkHNtFadeVzmfU0FxeYldnwadE5Dydiy
 Q8JYrhn0cQyHZZPu3oGgp0a+ePqwaKmjtMaEAklUcPGqP8ilfWf1nmEJH0NS1HAydwUH
 IRkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n1xrbvg7pqH1XdeoXchzTkzHSRkIIH8T+lVpdQqkE2o=;
 b=YvpRvgwpfMlkxzotneJ9/uhhquPt2KWsQdtDFUJCVtFWb1GomWjrtVjADX+bFHcHIU
 Sfn3E04jQzgLU+xHIJvq98or7BD95PngoxYmVtaBWDSOlfZG9rYj4IGKXi1fFk+3nJh4
 CHrSJvJj/x/wXxfAZF6CZ35EnAMfe3clpOBnqCgWFEWeJwlQ/qnLiMPYWUAkpuJ0G6vL
 4A4KfahuDDzm9n8pQWt+GMlfLdZKlHoP3HOshQ3OGkpYZJZA/QZLgVmXk4qCTPNYfWco
 aUAmlhRcpEj7BNvtlIi47LGssmEIbsCZtCc9ttS/U1Js7gmnrGdm/xc9nENrSKlwAvtU
 6CeQ==
X-Gm-Message-State: ANhLgQ0VvmsKQQ2FdJ2j7sd94MPMD5ysJSQdCEadGDAHXZpzLBotmfnw
 Ihd3cX9fgbxHDpErHJHgT8AERYQ2xIv8DKgGYEOs
X-Google-Smtp-Source: ADFU+vvhM7JSqHwBFQLC+Hhl2IqKXS4OV/ykGtbDCBHK7r1fPNexj/vInVLHfMQCY3btqKC9oE8aeBkTYqvHvIhtLYY=
X-Received: by 2002:a1c:456:: with SMTP id 83mr6930075wme.54.1585071592264;
 Tue, 24 Mar 2020 10:39:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAG2Q2vXt3af3ATRnFNW8bA2BbaQ47fLsS1dL1iJ6JGQg=kbJSQ@mail.gmail.com>
 <87ftdy7y3b.fsf@kamboji.qca.qualcomm.com>
In-Reply-To: <87ftdy7y3b.fsf@kamboji.qca.qualcomm.com>
From: Cale Collins <ccollins@gateworks.com>
Date: Tue, 24 Mar 2020 10:39:16 -0700
Message-ID: <CAG2Q2vWuGMooJJ+yiU+gBPBOubbokkLuC9JUJSf0jiF9stAFKg@mail.gmail.com>
Subject: Re: ath10k_pci rawmode = 1 requires support from firmware
To: Kalle Valo <kvalo@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_103954_468144_8B3D912E 
X-CRM114-Status: UNSURE (   4.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hello Kalle,

Ultimately I ended up using the 5.4 kernel and
firmware-6.bin_WLAN.RM.4.4.1.c3-00038. This firmware didn't work with
"iw" and required custom building "wpa_supplicant" with
"CONFIG_MESH=y" enabled in the .config.

I apologize for leaving the thread hanging, I was vacillating if this
information would be prudent or considered a regression. I'm glad to
do further testing (with the latest mainline kernel) if you need.

Best regards,

Cale Collins

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
