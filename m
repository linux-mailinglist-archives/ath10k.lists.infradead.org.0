Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAF41BEFDA
	for <lists+ath10k@lfdr.de>; Thu, 30 Apr 2020 07:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JeV7l35ApW+EfHYezDIdRNxcdhJrS/jat8VDGz2bq6o=; b=FoXSFFJRv1DkEo
	Scl0PJGdjZsNZAh8xZ7vuZCx0XrfX9n0iyGFOR21XokndeivLm3jWHRNO/jyDmhsprvI9MSnceSlR
	RCbgdSPBBeJRy1OQysJgb3hMTZcnuHj3dQ3RyF11Huy+zYuWyhRLU8RrCYVstUQl+4zYMVZUR2/eU
	RLsZwrm0eni/P+B7pj/3CNGRsSp13/9QT5uCVbmvjqN0SmYCUJY29A+MKlnnp/azNDa4rPDJNhf+O
	39EsGsAk0fUcqMpLQlRsJsH9LWE/FQdAnEk6MKq2NliulJkFfjHkq9+NOTSv8XdR74RO51EMvaCf6
	Bn7x/ErMQZ9f/sUzyHzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU1vI-0001jS-6C; Thu, 30 Apr 2020 05:39:48 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU1vD-0001ig-3a
 for ath10k@lists.infradead.org; Thu, 30 Apr 2020 05:39:45 +0000
Received: by mail-pj1-x1044.google.com with SMTP id 7so3219542pjo.0
 for <ath10k@lists.infradead.org>; Wed, 29 Apr 2020 22:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=p/gKyDdaPVCaYFtK1CerIM5Fe8Fs+IVXZiKsAIgbwGU=;
 b=X2V6+KWsAz3CVZ3mUy/9KtBXDR3uRheB0RGcIasJr644LclgGrUB0p9JUz4jhHBwnZ
 YfP+POaIHZY4TXy81Fpgj7rl4HCYY5lo+Co0YgqOK1d2hTtmVOU/CGJTR3yAbkqDJM2H
 k86MUTGnW+5XmCI+1osjbhNHcC+VhM/cfHDn0/NHMWAfodut049nkT5DtkEN7Ja7dxTD
 mkinzgGw4WSehmuS4/+Lcf4Vxu8nrRu5CfnmxO+UXTLkuD0mZwt8It1q79CfC7C1aSmm
 IPpFcmt1GC/ZXvPGhLhufCCeS451bCHQ2tlilkX/PCq3M6ffBWjDAeyULTbeukX3B6OY
 TkfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=p/gKyDdaPVCaYFtK1CerIM5Fe8Fs+IVXZiKsAIgbwGU=;
 b=TYabac9frIS4t71WA/dUCmDwcQqPnJDfAEkZ9CY2LwyTclIjrHeeHwO7Aw6VeF4k3m
 lJBpuzByp4XGx5mIKOR6+Cf9FQhhyqwheAfOVerOQ5kFNSrcFYDAvYUGZlGM3Sra6lSN
 Pwr7fDreHvdTKrpFJEE2KqFdBi7/M7d6Y6G3zkKPhJtw1f5LH8YIkQ555Dkw41KM95ze
 ejMCLNT9UP2z/Anm1Hz8eeMP5GU8jT8uIU8kFSY8iCq16FqIqQ7nMl97Jf6zmd4gC59X
 2gIzJ5DxHLz6e7o9G+TeidZOdooRZZB1wmY9jOiJJmhLquiMZTU7RwDiPJAxJoFXs8Kd
 LOMQ==
X-Gm-Message-State: AGi0PuZeJD8cAoPSVj46Zd/AUtMXtsItkSCL0oK3Rrt0lROe4MJBW2f3
 tIYJGHKTLhrtn2VXa4LUMFD+
X-Google-Smtp-Source: APiQypJ0BHCnjv4H104ubleIF2Y2HtQ9kX/hHVPG96TUCbEYppijCWmHzuRos4dGwHbidHM8ZpvVfQ==
X-Received: by 2002:a17:90a:db83:: with SMTP id
 h3mr1007759pjv.87.1588225181660; 
 Wed, 29 Apr 2020 22:39:41 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6081:946c:419e:a71:7237:1613])
 by smtp.gmail.com with ESMTPSA id g10sm2509539pfk.103.2020.04.29.22.39.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 22:39:40 -0700 (PDT)
Date: Thu, 30 Apr 2020 11:09:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Govind Singh <govinds@qti.qualcomm.com>
Subject: Re: Ath10k reboot regression with v5.7-rc1 on dragonboard 845c
Message-ID: <20200430053934.GA9449@Mani-XPS-13-9360>
References: <CAMi1Hd1ReJnYsw3Rg6ECGM-7zzciRqJvJGUm3tuYtHhmGipnZA@mail.gmail.com>
 <DM5PR02MB38935D19B8733C543FDC8BA09CAA0@DM5PR02MB3893.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM5PR02MB38935D19B8733C543FDC8BA09CAA0@DM5PR02MB3893.namprd02.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_223943_316054_2F7EE628 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Amit Pundir <amit.pundir@linaro.org>, John Stultz <john.stultz@linaro.org>,
 "ath10k@lists.infradead.org" <ath10k@lists.infradead.org>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Govind,

On Thu, Apr 30, 2020 at 04:15:42AM +0000, Govind Singh wrote:
> Hi Amit,
> Seems del_server is being notified early due to qrtr-ns migration from userspace to kernel prior remote(modem + wifi) actually went down.

Sorry I don't get this. In-kernel NS just receives DEL_SERVER message from
remote endpoint and it removes the entry for it and broadcasts to all observers.

I think the issue is (as Bjorn suspected), previously we didn't catch the
DEL_SERVER message from modem during shutdown/reboot but now we are able to do
because NS is still running.

> As per of del_server we are removing the MSA permission via SCM call, but remote(wifi user pd in modem Q6) is still accessing the region.
> 

This looks odd. Why should the remote send DEL_SERVER if it is still accessing
the region? Or if that's the expected behaviour, we shouldn't remove the MSA
permission at this point in ath10k?

Thanks,
Mani

> BR,
> Govind
> 
> -----Original Message-----
> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Amit Pundir
> Sent: Wednesday, April 29, 2020 9:51 PM
> To: ath10k@lists.infradead.org
> Cc: bjorn.andersson@linaro.org; John Stultz <john.stultz@linaro.org>; manivannan.sadhasivam@linaro.org
> Subject: [EXT] Ath10k reboot regression with v5.7-rc1 on dragonboard 845c
> 
> Hi,
> 
> I see a reboot regression with v5.7-rc1 on Dragonboard 845c
> (wcn3990/ath10k_snoc) running AOSP. "reboot" or "reboot bootloader"
> commands do not work as expected when the board is connected to WiFi AP. I see "ath10k_snoc 18800000.wifi: firmware crashed"... dump in dmesg and board reboots into usb debug/crash mode. I do not see this reboot regression when the board is not connected to WiFi.
> 
> It started with qrtr-ns migration from userspace to kernel which landed in v5.7-rc1. I didn't run into this reboot issue when I was running qrtr-ns userspace tool. According to Mani, in-kernel qrtr-ns just live long enough to catch modem shutdown requests and advertise it to the modem, unlike the userspace tool. Which seem to be the case here. I further narrowed it down to ath10k_qmi_remove_msa_permission()
> call in ath10k shutdown path. If I comment out that function call then the reboot command works as expected.
> 
> Any thoughts as to what might be going wrong? I do not understand qrtr/ath10k/qmi to see how msa permissions are getting mapped-unmapped here. I'd be happy to help debug things.
> 
> Regards,
> Amit Pundir
> 
> _______________________________________________
> ath10k mailing list
> ath10k@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
