Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1B01A74A7
	for <lists+ath10k@lfdr.de>; Tue, 14 Apr 2020 09:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:MIME-Version:Date:Message-ID:Subject:From
	:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Owner;
	 bh=l5Y/fYj6ncP4kILgnArzv1NxJ2zZuqCNLYGF7/Uyxhg=; b=onQwmH1oiqYoZ1lBZENNTCeXW
	sOfzJ895DcdHT9Nnxf+Oac93jSll2lDvsqu015pEGlrozWMKzk3aIMChcZLKAiEybJUPR4R33Z0Zo
	jIhqyZza7yQaK0nIouDzoA9T3PM3Tvpmgl45sECOy0KY0jiDwsXM8gWPSktBHbkbgU+wlzF4sb019
	5C7WHwZgSBQ+qJwe9ZyhMiqmups6kBr8IwN5+j6SS+u+XGkvxfd14agZmpWbX5ioR/qSQeDyKtLDS
	EMNdzNglcDQbV9ClCMZIJXnF/leDdbds0yPivWKMBacekzvuHQpSNag5lwVdADolUL4fGkH3DvQ6F
	96WujZ81A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOFxq-00057O-5i; Tue, 14 Apr 2020 07:26:34 +0000
Received: from sonic307-56.consmr.mail.ne1.yahoo.com ([66.163.190.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOFxm-00056h-63
 for ath10k@lists.infradead.org; Tue, 14 Apr 2020 07:26:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1586849181; bh=szgpje1dhCElM72a8LmBd0zpAXqCoOA6+NZY5gzNaBI=;
 h=To:From:Subject:Date:References:From:Subject;
 b=LksFpdM6Z+8A80MOOJIRa3m89+eQT9VcIpiAvm53ygAFmWvS80aFQ0zwDFTCwj5hprtyXip6uSgjvLTV7SCVert4FjWM9b46gMk8H0qJbqYVq1o1rNjgefgDW7PPHUXmcSZJKj/hFLWEo+SA7k6Xe4Si6++zunGhy2WqCBJJn6GHbtnzzVWIenEXkKbyXcecGXpWz1EelWsF2CajAUAeGzHmHEVnHEvWFaZ5+3Jpu2btfgyZQw5d6UqIpKwLkQ9jFF1XEi+y+8UHf9akuha6lhhcBmlnVjmzzkiHq266+JYRMyiG1f7zHwcnmiwfoCkRlvApvT2TvaBc953Sl6qksw==
X-YMail-OSG: uTvnPFIVM1neRqprXqWQjY4OAJ2K08Tzawl.2KI5oB63PqUafCRm1CZu.OwDfjo
 3TQg9ge0963w5u9cYevN8yWMIYePs7Nl0nWbzP6k_4rp6LSJH4TYqDQcxyzgBw7XojBz6rregnBz
 QwzSoasBIFdR22Uy0m.FuWl7wISIS.8PbJVtwpVdEoVrEDZinhD.EDkWZE.q1GAAdy_nSKHe3QGI
 _5cTbIp1K4ayb6Dn5K1NGojmfBboABRuOiFHiaXdAzqAxbe06Ia5q9Z_1M6zox2Nxi3WXiY8RniI
 Pdx_qkj54dIm2Q92iXwrmPcVTECodXE9NMlt4g2pX3CnJZAwXtxTgeIeypknCsZbUceaNK6zMV4w
 xoKtFEjRAWmpUQka8O_z5Us2rS5RmCYkivzoVLKIOSYbYO6i0eJaH3.FsKZhtATPmnsZotB6toJY
 x8iDQgSx0f6XyWm8hstqbiRdQCNQVaxs.8fwrAvvpT7B7aeYn7xmoJWr8RUYCenBCeM1YVO.IdOE
 DULgrjOZBWrz2H_9eBdyowOwZneb1IRuf2.ZDxCx8rR22xtv8WeXKYEYvWiTBWiBTwvwo9XQ_.xh
 CHd64aIDqG4gcN3dR6ns9fHBuQwzX9yuxTDX2o2ASGBmHG_kI18G1gfRACKM2dYfXDtOijH91Rn.
 eO0Qxa8Q6eHUtg8vXhsOuUonmlj9vXX.AbliMvhxEfLxWc3DFwuxu1XB4GGp2rtDs0BF42guOt_3
 u_3ou4XdsLiLKnXQQmWe5ijaWUlTtv6fdh047vzEfLLCklbzxLMTFMzkwhnvVNViApScjjFCgWO3
 E3IeGKNzo7PXKgtsOyodo9MUL4EKRX_DhRMHG1zwmhLlNxffqBjVKyX.pLdu2iQojXbXQx6ua.sK
 xXbhud.qgu7_6os6VIOWghneRZSoD3njGAmoyxmB8OQhExz4hJ_7CyXcyZdDrv9GDlLH2EkPwl5I
 .M8c2PiskeyGCz9rv8cN1LD8UdQ1iSLvhbVzjX63KNsW5jFmJelOomvbxmFaChYzjvW6YPDZqe.l
 9o8TIlcvC7c4rpm5VplXuvdvci1Pg1g4aboGznZt0N1Cp1sTBW1P8IbSltrbPOOjkbFcwvAKAfLU
 SvjgRHPWRzAIAWQgsaAg_xohjln_12x6DOCBCJSCi_HemI8c3BjOoKmjGdJBfWZzQq6gYbDszxkZ
 OBihCkTSVucj2cXnf6nJhEYyTn7dKZ4pslw6BBM3b_AQTcBRwkRxMV8Nfij3pNv64ao0EXnKSu5v
 _onUXW9aF167fh62CP_PJCYjnyfq5tpQU3Li0x6uC8r6LcY5kpBOSC7IaHwdPillObl7XRmbnjei
 suAlFvx_FygqlpoopW_MkfBvOAhgASh0GK8sL7X0-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.ne1.yahoo.com with HTTP; Tue, 14 Apr 2020 07:26:21 +0000
Received: by smtp403.mail.ir2.yahoo.com (VZM Hermes SMTP Server) with ESMTPA
 ID 9c669cfd73f7b4baad151dfdc18d0be8; 
 Tue, 14 Apr 2020 07:26:18 +0000 (UTC)
To: ath10k@lists.infradead.org
From: Nicola Mori <nicolamori@aol.com>
Subject: Killer WiFi card keeps disconnecting due to latest firmware
Message-ID: <b07a7ea1-7ab2-8ce3-95d7-6726e7708749@aol.com>
Date: Tue, 14 Apr 2020 09:26:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
References: <b07a7ea1-7ab2-8ce3-95d7-6726e7708749.ref@aol.com>
X-Mailer: WebService/1.1.15651 hermes Apache-HttpAsyncClient/4.1.4
 (Java/11.0.6)
X-Bad-Reply: References but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_002630_276969_E1CC7811 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [66.163.190.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [66.163.190.31 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nicolamori[at]aol.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi, I have an issue with the WiFi card in my laptop, that keeps 
disconnecting from the network in a strange way: randomly every 1-2 
hours I can't access web pages or even ping the gateway, but existing 
connections (like existing ssh sessions or Zoom videoconferences) 
continue to work. The only solution is to restart the network connection.

The fix for me has been to downgrade the firmware by removing 
/usr/lib/firmware/ath10k/QCA6174/hw3.0/firmware-6.bin so that 
/usr/lib/firmware/ath10k/QCA6174/hw3.0/firmware-4.bin is used; with 
this, I have no issues.

The problem is described in details in this Archlinux forum thread:

   https://bbs.archlinux.org/viewtopic.php?pid=1898028

I can provide additional information if needed.
Thanks,

Nicola

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
