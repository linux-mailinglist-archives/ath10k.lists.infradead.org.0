Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EB71BF838
	for <lists+ath10k@lfdr.de>; Thu, 30 Apr 2020 14:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sQsey0vkoOAnUraaM6xaTjdkKQ2KrINls3U5QDfo0PI=; b=IWLCj0X/KQPKoIx/eEaXk8At3
	zV71m+/O2peC2xCK5RY4lpIOK4slfjRZ7fnag5uZwMCYRhd19RStHuWOhzZGJASZ+xsNjm+2qjk6W
	UmsGPcSSsIlDnMZ0d0w3yKEh5K3/pWcHt20dGDnQaJDHHZwdbTf1QRgeffO3NsI3OwsTW+4r+KqM/
	69KnwOE+u7zvHFeUNu+Wyx4OXI/qo3dDUUyljVlKgsG86+Sb5oCCkaG9cAXkHZy0LxRSR5ZUCDKdG
	Z8BIhnEAw2ffkKnDmXAOSRM+R60Onue/9843mjttNhJs5l8r89tjOxeYHwCNNUWETFOBhR24nsaeK
	Ly1P9Ayjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU8Jj-0003x3-6n; Thu, 30 Apr 2020 12:29:27 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU8Jc-0003vc-3H
 for ath10k@lists.infradead.org; Thu, 30 Apr 2020 12:29:24 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588249762; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=ojCyiSNfrEa4UUZvMapsMoAecMDfOPWBZ/exK4+RNrQ=;
 b=aL85RqJ/WwjnlHnAlOgNlctK/2HM3ud2ChHWEqLFcS84N1tv+pxyi4WLEdg/DyPhi8XFogMM
 T80f8eLq7YEe5MIe8XfBGOLbzgS0ib3oDQ7YDPilqGU7OPOhIXm5zwH8tELo1QGHGHRPNLb4
 40aVcQ0NGbW4KOfp4aSgPrzA/lo=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiZDQ3OSIsICJhdGgxMGtAbGlzdHMuaW5mcmFkZWFkLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eaac494.7f385ed06ed8-smtp-out-n01;
 Thu, 30 Apr 2020 12:29:08 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id EACC2C433BA; Thu, 30 Apr 2020 12:29:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: govinds)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3BECAC433CB;
 Thu, 30 Apr 2020 12:29:06 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 30 Apr 2020 17:59:06 +0530
From: govinds@codeaurora.org
To: manivannan.sadhasivam@linaro.org, amit.pundir@linaro.org,
 john.stultz@linaro.org, bjorn.andersson@linaro.org
Subject: Re: Ath10k reboot regression with v5.7-rc1 on dragonboard 845c
In-Reply-To: <DM5PR02MB3893EABAD0ABCCB5F6374DAC9CAA0@DM5PR02MB3893.namprd02.prod.outlook.com>
References: <CAMi1Hd1ReJnYsw3Rg6ECGM-7zzciRqJvJGUm3tuYtHhmGipnZA@mail.gmail.com>
 <DM5PR02MB38935D19B8733C543FDC8BA09CAA0@DM5PR02MB3893.namprd02.prod.outlook.com>
 <20200430053934.GA9449@Mani-XPS-13-9360>
 <SN6PR02MB462255CF0672F6BC80DB266A91AA0@SN6PR02MB4622.namprd02.prod.outlook.com>
 <DM5PR02MB3893EABAD0ABCCB5F6374DAC9CAA0@DM5PR02MB3893.namprd02.prod.outlook.com>
Message-ID: <a2bc877e49d3679b847eef9db4852367@codeaurora.org>
X-Sender: govinds@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_052922_301610_3C612507 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
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

On 2020-04-30 15:57, Govind Singh wrote:
> -----Original Message-----
> From: Rakesh Pillai <pillair@qti.qualcomm.com>
> Sent: Thursday, April 30, 2020 12:26 PM
> To: manivannan.sadhasivam@linaro.org; Govind Singh 
> <govinds@qti.qualcomm.com>
> Cc: Amit Pundir <amit.pundir@linaro.org>; John Stultz
> <john.stultz@linaro.org>; ath10k@lists.infradead.org;
> bjorn.andersson@linaro.org
> Subject: RE: [EXT] Re: Ath10k reboot regression with v5.7-rc1 on
> dragonboard 845c
> 
> Hi Mani,
> 
> Reply inline
> 
> 
> Thanks,
> Rakesh Pillai
> 
>> -----Original Message-----
>> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of
>> Manivannan Sadhasivam
>> Sent: Thursday, April 30, 2020 11:10 AM
>> To: Govind Singh <govinds@qti.qualcomm.com>
>> Cc: Amit Pundir <amit.pundir@linaro.org>; John Stultz
>> <john.stultz@linaro.org>; ath10k@lists.infradead.org;
>> bjorn.andersson@linaro.org
>> Subject: [EXT] Re: Ath10k reboot regression with v5.7-rc1 on
>> dragonboard 845c
>> 
>> Hi Govind,
>> 
>> On Thu, Apr 30, 2020 at 04:15:42AM +0000, Govind Singh wrote:
>> > Hi Amit,
>> > Seems del_server is being notified early due to qrtr-ns migration
>> > from
>> userspace to kernel prior remote(modem + wifi) actually went down.
>> 
>> Sorry I don't get this. In-kernel NS just receives DEL_SERVER message
>> from remote endpoint and it removes the entry for it and broadcasts to
>> all observers.
>> 
>> I think the issue is (as Bjorn suspected), previously we didn't catch
>> the DEL_SERVER message from modem during shutdown/reboot but now we
>> are able to do because NS is still running.

Yes, with user space qrtr-ns DEL_SERVER is not revived as NS might have 
been
terminated during reboot prior catching this from modem.


>> > As per of del_server we are removing the MSA permission via SCM
>> > call, but
>> remote(wifi user pd in modem Q6) is still accessing the region.
>> >
>> 
>> This looks odd. Why should the remote send DEL_SERVER if it is still
>> accessing the region? Or if that's the expected behavior, we
>> shouldn't remove the MSA permission at this point in ath10k?

Probably modem graceful shutdown is not happening in reboot case causing 
this issue as we don't see
this issue in normal driver recovery due to FW error fatal, there also 
we have same code flow.
Earlier we tried to register reboot 
notifier(devm_register_reboot_notifier) and skip the del_server for
such cases, but we didn't posted patch as we never hit that case and its 
WAR.

Probably we can have another qmi_ops->BYE to indicate this scenario if 
graceful shutdown is not happening or
msa map/unmap can be moved in probe/remove as most of the targets except 
APQ/MSM8998 are using MSA carve-out region.


> 
> As a part of ath10k driver unload, when we release the qmi handle, The
> ath10k qmi client receives a SERVER_EXIT (which has not been initiated
> from modem/wlan).
> In server_exit processing we unmap the MSA permissions.
> 
> I am fixing this, to not handle the SERVER_EXIT if we have released
> the qmi handle.
> 

This is reboot case, your changes seems specific to rmmod case where qmi 
is indicating false del server due
to qmi handle release.

> 
>> 
>> Thanks,
>> Mani
>> 
>> > BR,
>> > Govind
>> >
>> > -----Original Message-----
>> > From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Amit
>> Pundir
>> > Sent: Wednesday, April 29, 2020 9:51 PM
>> > To: ath10k@lists.infradead.org
>> > Cc: bjorn.andersson@linaro.org; John Stultz
>> > <john.stultz@linaro.org>;
>> manivannan.sadhasivam@linaro.org
>> > Subject: [EXT] Ath10k reboot regression with v5.7-rc1 on dragonboard
>> > 845c
>> >
>> > Hi,
>> >
>> > I see a reboot regression with v5.7-rc1 on Dragonboard 845c
>> > (wcn3990/ath10k_snoc) running AOSP. "reboot" or "reboot bootloader"
>> > commands do not work as expected when the board is connected to WiFi
>> AP. I see "ath10k_snoc 18800000.wifi: firmware crashed"... dump in
>> dmesg and board reboots into usb debug/crash mode. I do not see this
>> reboot regression when the board is not connected to WiFi.
>> >
>> > It started with qrtr-ns migration from userspace to kernel which
>> > landed in
>> v5.7-rc1. I didn't run into this reboot issue when I was running
>> qrtr-ns userspace tool. According to Mani, in-kernel qrtr-ns just live
>> long enough to catch modem shutdown requests and advertise it to the
>> modem, unlike the userspace tool. Which seem to be the case here. I
>> further narrowed it down to ath10k_qmi_remove_msa_permission()
>> > call in ath10k shutdown path. If I comment out that function call
>> > then the
>> reboot command works as expected.
>> >
>> > Any thoughts as to what might be going wrong? I do not understand
>> qrtr/ath10k/qmi to see how msa permissions are getting mapped-unmapped
>> here. I'd be happy to help debug things.
>> >
>> > Regards,
>> > Amit Pundir
>> >
>> > _______________________________________________
>> > ath10k mailing list
>> > ath10k@lists.infradead.org
>> > http://lists.infradead.org/mailman/listinfo/ath10k
>> 
>> _______________________________________________
>> ath10k mailing list
>> ath10k@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
