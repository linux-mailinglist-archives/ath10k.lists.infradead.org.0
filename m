Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AC81B57E9
	for <lists+ath10k@lfdr.de>; Thu, 23 Apr 2020 11:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kvDLM+Mtm0dG3n8l1Fn9Rt9q66F5tQhaqVblwhYuJ/4=; b=dwF1Jbx/KO6t9NAsvVbukzAaw
	qc62yyWillS4rnktsFvTt4EO1tWs0bbJXHjDi93cHUH7GgMD/YO2KXQ0SzsAxDIvB1513jZbv9CQC
	127+KIBCJ7+waTAGfw26sNjGDHrJX+bvlXa2jpsLCopUgxMTxpSJ0X09uIAbkt7cYGLXWaCpOOyTW
	Hfbz01ZrFky/Nb5e1FRphzlqjRTHlF1O9eX31z/jlU96TE7FXgyoaHkxC7A3OIiCVhLfIIkh9YsWo
	P5cutQFPSlZuzzvJUajAqwsbmdnMwSgDPRju1egoGOSRuyl4IWG7NDtBw7pExf0m/tKlOlWvPutep
	0rOv+4YVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRXwc-0008FS-CO; Thu, 23 Apr 2020 09:14:54 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRXwV-0008DV-97
 for ath10k@lists.infradead.org; Thu, 23 Apr 2020 09:14:51 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587633290; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=iq4g5E5VQINCc2CtaiWpy0Flx3rzDWj7HLPn+4IoiJ8=;
 b=uT9HXLfwMeMikLjKpJxh/2SCZiplNXSBXgqBRGnW+ulQwXKZzbGwIMCuiRGEki5otFoImT68
 V3uNKg1IflX09lv0DmZSsBf1pjnYTCSlEnTK8b2kTwfs7fTwEXWALJjgxh8KULIR6b8yQev4
 bK+Fa2wCoPHPE+XZFBwhbcNvssY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea15c7b.7f7eecd29500-smtp-out-n05;
 Thu, 23 Apr 2020 09:14:35 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 56AC5C433BA; Thu, 23 Apr 2020 09:14:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id ED17BC433CB;
 Thu, 23 Apr 2020 09:14:33 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 23 Apr 2020 17:14:33 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>, Nicola Mori <nicolamori@aol.com>
Subject: Re: Killer WiFi card keeps disconnecting due to latest firmware
In-Reply-To: <87k128ng9e.fsf@kamboji.qca.qualcomm.com>
References: <b07a7ea1-7ab2-8ce3-95d7-6726e7708749.ref@aol.com>
 <b07a7ea1-7ab2-8ce3-95d7-6726e7708749@aol.com>
 <87ftd3r4lt.fsf@kamboji.qca.qualcomm.com>
 <87k128ng9e.fsf@kamboji.qca.qualcomm.com>
Message-ID: <57cd41942128e71f971b132df3dc403a@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_021450_594899_D10A286E 
X-CRM114-Status: UNSURE (   6.49  )
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
Cc: ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-04-22 15:14, Kalle Valo wrote:
> Kalle Valo <kvalo@codeaurora.org> writes:
> 
>> Nicola Mori <nicolamori@aol.com> writes:
>> 
>>> Hi, I have an issue with the WiFi card in my laptop, that keeps
>>> disconnecting from the network in a strange way: randomly every 1-2
>>> hours I can't access web pages or even ping the gateway, but existing
>>> connections (like existing ssh sessions or Zoom videoconferences)
>>> continue to work. The only solution is to restart the network
>>> connection.
Nicola Mori,
Could you tell us the AP model and AP configure(WPA-PSK/WEP...., ssid 
name/password...,dhcp timeout period...)?
We prepare to try it.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
