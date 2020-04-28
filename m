Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240A91BBA53
	for <lists+ath10k@lfdr.de>; Tue, 28 Apr 2020 11:49:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OoVlnUe8yFCEx8x/2EI/iLd+XMeBBqpz/7b1N8goKvM=; b=qwYuZ1N7inFaYe/XzSl+szwfN
	4CECaC+tkgCIhCC6VfA3H5es6pRQ0HeYx0k1WiTPwA/YYQuKHIp+vx/mgmFiHnorrG0DUQIRwFq8m
	PT1VET0RnwcTzKNEtMPMJqMwKJaTVGXPe3MzcMQpOEb565VcqanMxS4Ip8LAEaElsiotc8pB0DxJW
	NMTlOtnQzxRgiijXVxkeCOfOW/wE/IrAjX4TxCM9DYe1myjRTA6DD7QMldSByzcXTJRJh7Oo0+47w
	y9LZjUPJs587o7UapN9gMe+lpU+8BbFJtUlIz2/iEvm66yGC8WUU6CA4boGa19gQRVTeM2+to8Dj0
	Andq8JHfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMs8-00058e-K5; Tue, 28 Apr 2020 09:49:48 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMrz-00057n-E7
 for ath10k@lists.infradead.org; Tue, 28 Apr 2020 09:49:43 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588067382; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=Ot1JE8mGrLeKXjW9jNRp/7RM3Thoh3OD95x4qaOK1m4=;
 b=xMbteysmk+I+qDEqxYoQLgrj5Nn3LA1mn0nRZubduLo8m5xy1aeLNDlDJ9iOl0qTPrLq2kZ3
 NghJsFYrlMHDw5QyLpHvyBuCk5iLmmvmGlcy4MgE2ut9UDNa+Kt1zDgh5oGtglkq27u5Hfcz
 VZmCH541i+mRhHm/1a4IUm2t+3E=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea7fc27.7f460f4bb650-smtp-out-n04;
 Tue, 28 Apr 2020 09:49:27 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6C103C433CB; Tue, 28 Apr 2020 09:49:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: wgong)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 28260C433D2;
 Tue, 28 Apr 2020 09:49:27 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 28 Apr 2020 17:49:27 +0800
From: Wen Gong <wgong@codeaurora.org>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [PATCH v2 1/4] ath10k: enable firmware peer stats info for wmi tlv
In-Reply-To: <87k120eyyl.fsf@kamboji.qca.qualcomm.com>
References: <20200427080416.8265-2-wgong@codeaurora.org>
 <20200428091303.089AEC433D2@smtp.codeaurora.org>
 <87k120eyyl.fsf@kamboji.qca.qualcomm.com>
Message-ID: <2c0d03590f2ecf55aaff86e760232807@codeaurora.org>
X-Sender: wgong@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_024942_734312_443A0085 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-wireless@vger.kernel.org, ath10k@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 2020-04-28 17:33, Kalle Valo wrote:
> Kalle Valo <kvalo@codeaurora.org> writes:
> 
>> Wen Gong <wgong@codeaurora.org> wrote:
>> 
>>> For wmi tlv type, firmware disable peer stats info by default, after
>>> enable it, firmware will report WMI_TLV_PEER_STATS_INFO_EVENTID if
>>> ath10k send WMI_TLV_REQUEST_PEER_STATS_INFO_CMDID to firmware.
>>> 
>>> Enable it will only set a flag in firmware, firmware will not report
>>> it without receive request WMI command.
>>> 
>>> Tested with QCA6174 SDIO with firmware WLAN.RMH.4.4.1-00042.
>>> 
>>> Signed-off-by: Wen Gong <wgong@codeaurora.org>
>>> Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>> 
>> 4 patches applied to ath-next branch of ath.git, thanks.
>> 
>> 2289bef25e32 ath10k: enable firmware peer stats info for wmi tlv
>> 0f7cb26830a6 ath10k: add rx bitrate report for SDIO
>> 3344b99d69ab ath10k: add bitrate parse for peer stats info
>> 4cc02c7c1494 ath10k: correct tx bitrate of iw for SDIO
> 
> I think these caused a new warning which I missed:
> 
> drivers/net/wireless/ath/ath10k/wmi-tlv.c:3013:34: warning: incorrect
> type in assignment (different base types)
> drivers/net/wireless/ath/ath10k/wmi-tlv.c:3013:34:    expected
> restricted __le32 [usertype] reset_after_request
> drivers/net/wireless/ath/ath10k/wmi-tlv.c:3013:34:    got unsigned int
> [usertype] reset
ok. I will give new patch to fix the 3 warning.
> 
> Please send a followup patch to fix that.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
