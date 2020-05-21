Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2391DD0A3
	for <lists+ath10k@lfdr.de>; Thu, 21 May 2020 17:00:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqYZXUcw9kgoFRurPXrt8dQT8f5LvkFSati3if/sjKA=; b=cOilJ1wT9IM6XQ
	CF0ug7CwoSiH6ihGwzS5lTmHwyhPJRuIyuPfq/u+TtD8cT29wJ+lIvKkS3VSFRAMK4HtB2iotIto3
	lSPNQPmLGo1YOxD5aLgBROhhNTpLUfyqWoVVor2ABFO91qsdKjQt2swZ7EhZH3luDIfnHF9xPfGV/
	TKwCvlHrhdgZ8irQcgqushsl/2EozgE0koPUiAxJbh3XCBbBU3A9dCkL36z5464TNKU4cnm3JG5dr
	M1SZuuXXL6NWTRQvLmxpeGeme5/8B6QIBdV15SW1BpVKxblWvS2YfjcNL8uNwnkvSs5DNJrTK2l0r
	/0H7aFbmvH/5hBzMm4lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmgG-000647-Fp; Thu, 21 May 2020 15:00:20 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmfx-0003ji-V7
 for ath10k@lists.infradead.org; Thu, 21 May 2020 15:00:04 +0000
Received: by mail-wm1-x342.google.com with SMTP id u12so1880444wmd.3
 for <ath10k@lists.infradead.org>; Thu, 21 May 2020 08:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gAQ32JWtKPSrfGQrOpujZ3nfctU4zuik8GynA62n7Ww=;
 b=F+l0Z7hkFloW1eAzyoyfqIgc1DrpMnFCBTWq13645jaSwR45MkaJDKVa5+irV1dmyg
 rAOXLxgPG/8gNZZ10GGDO4NMjjr5wkGYuZSLneAXHj6L2/d/PKktrgGhp5BWFOXXBDr2
 4mlJV5rNuTL7Ps3ZZLibtYIhq1ujx30Igzq/4Q/lFHjXBtJTfZ0psrxhYSJgtc4DsUeQ
 gxDrLe5p0wSno/x72UrjN2E2FQDJTh5iZuNZP1I3277NSIFxGqMbmAs7/UTSXXlKlMpD
 04IyWBubd+h0cLjHg/PRSfCv3/tvdLuFeLCCVXKGa8b4/snxvewdmpUyRvqVkOqgHNE6
 55SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gAQ32JWtKPSrfGQrOpujZ3nfctU4zuik8GynA62n7Ww=;
 b=KUkl6NM5f8/AWwMo9EP2FIx7VLdN4VkfQ/wY4tZIIZWvJj6gGNXsScWFcSuTWwsQET
 MYz/usZpgGO+M8jYWb2kl0RZd0GOZ25v/2S08jXANWSaYWL+q0vMFOJ//iaxH9zQ/O5b
 L6VajsP6FVLFUo9ahEdYnMGwNYICC5wsXiC9DbJR5OiYTIM1QAuKtZDDqaoTTZyzv8Ip
 sO5PAPlQtkpJH1CyntKmHzLJ9+vPs9UH5jvrb27fvwqYeBf1/sywRhP75wx5Z6ObdvFd
 tXNxD6t0mkKzFrpebm7JB8M+6i4YkSiiekp82XK3R9aUUQ5HFLOkDOzDFOMKGs6BgPFl
 N9vg==
X-Gm-Message-State: AOAM532rfMBr0siM0ot8HH/Rmulpb6KV8DIdDernsWQ4U4vy9y19MWx0
 wSy4wcYHvS9zEvgWsLhPzXa9UKoQQSh5/bTgvTLXig==
X-Google-Smtp-Source: ABdhPJyU2X8bbdHV5RAd4+JDr3jU/wAgC9wsNnUU+JzeMcu3Ed6XN+1oakrBNfIr16sxH8p9K+ZDdCxrHPPHxM+Alr8=
X-Received: by 2002:a1c:3d08:: with SMTP id k8mr9391550wma.16.1590073199569;
 Thu, 21 May 2020 07:59:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAMi1Hd1ReJnYsw3Rg6ECGM-7zzciRqJvJGUm3tuYtHhmGipnZA@mail.gmail.com>
 <DM5PR02MB38935D19B8733C543FDC8BA09CAA0@DM5PR02MB3893.namprd02.prod.outlook.com>
 <20200430053934.GA9449@Mani-XPS-13-9360>
 <SN6PR02MB462255CF0672F6BC80DB266A91AA0@SN6PR02MB4622.namprd02.prod.outlook.com>
 <DM5PR02MB3893EABAD0ABCCB5F6374DAC9CAA0@DM5PR02MB3893.namprd02.prod.outlook.com>
 <a2bc877e49d3679b847eef9db4852367@codeaurora.org>
In-Reply-To: <a2bc877e49d3679b847eef9db4852367@codeaurora.org>
From: Amit Pundir <amit.pundir@linaro.org>
Date: Thu, 21 May 2020 20:29:23 +0530
Message-ID: <CAMi1Hd2xDPbbDr4hB1mNgp_Y0sKHLLauS7uYdJjHMWC5C3+QWQ@mail.gmail.com>
Subject: Re: Ath10k reboot regression with v5.7-rc1 on dragonboard 845c
To: govinds@codeaurora.org, Rakesh Pillai <pillair@qti.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_080002_130898_FDDE429F 
X-CRM114-Status: GOOD (  26.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 John Stultz <john.stultz@linaro.org>, ath10k@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi Govind, Rakesh,

On Thu, 30 Apr 2020 at 17:59, <govinds@codeaurora.org> wrote:
>
> On 2020-04-30 15:57, Govind Singh wrote:
> > -----Original Message-----
> > From: Rakesh Pillai <pillair@qti.qualcomm.com>
> > Sent: Thursday, April 30, 2020 12:26 PM
> > To: manivannan.sadhasivam@linaro.org; Govind Singh
> > <govinds@qti.qualcomm.com>
> > Cc: Amit Pundir <amit.pundir@linaro.org>; John Stultz
> > <john.stultz@linaro.org>; ath10k@lists.infradead.org;
> > bjorn.andersson@linaro.org
> > Subject: RE: [EXT] Re: Ath10k reboot regression with v5.7-rc1 on
> > dragonboard 845c
> >
> > Hi Mani,
> >
> > Reply inline
> >
> >
> > Thanks,
> > Rakesh Pillai
> >
> >> -----Original Message-----
> >> From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of
> >> Manivannan Sadhasivam
> >> Sent: Thursday, April 30, 2020 11:10 AM
> >> To: Govind Singh <govinds@qti.qualcomm.com>
> >> Cc: Amit Pundir <amit.pundir@linaro.org>; John Stultz
> >> <john.stultz@linaro.org>; ath10k@lists.infradead.org;
> >> bjorn.andersson@linaro.org
> >> Subject: [EXT] Re: Ath10k reboot regression with v5.7-rc1 on
> >> dragonboard 845c
> >>
> >> Hi Govind,
> >>
> >> On Thu, Apr 30, 2020 at 04:15:42AM +0000, Govind Singh wrote:
> >> > Hi Amit,
> >> > Seems del_server is being notified early due to qrtr-ns migration
> >> > from
> >> userspace to kernel prior remote(modem + wifi) actually went down.
> >>
> >> Sorry I don't get this. In-kernel NS just receives DEL_SERVER message
> >> from remote endpoint and it removes the entry for it and broadcasts to
> >> all observers.
> >>
> >> I think the issue is (as Bjorn suspected), previously we didn't catch
> >> the DEL_SERVER message from modem during shutdown/reboot but now we
> >> are able to do because NS is still running.
>
> Yes, with user space qrtr-ns DEL_SERVER is not revived as NS might have
> been
> terminated during reboot prior catching this from modem.
>
>
> >> > As per of del_server we are removing the MSA permission via SCM
> >> > call, but
> >> remote(wifi user pd in modem Q6) is still accessing the region.
> >> >
> >>
> >> This looks odd. Why should the remote send DEL_SERVER if it is still
> >> accessing the region? Or if that's the expected behavior, we
> >> shouldn't remove the MSA permission at this point in ath10k?
>
> Probably modem graceful shutdown is not happening in reboot case causing
> this issue as we don't see
> this issue in normal driver recovery due to FW error fatal, there also
> we have same code flow.
> Earlier we tried to register reboot
> notifier(devm_register_reboot_notifier) and skip the del_server for
> such cases, but we didn't posted patch as we never hit that case and its
> WAR.
>
> Probably we can have another qmi_ops->BYE to indicate this scenario if
> graceful shutdown is not happening or
> msa map/unmap can be moved in probe/remove as most of the targets except
> APQ/MSM8998 are using MSA carve-out region.
>
>
> >
> > As a part of ath10k driver unload, when we release the qmi handle, The
> > ath10k qmi client receives a SERVER_EXIT (which has not been initiated
> > from modem/wlan).
> > In server_exit processing we unmap the MSA permissions.
> >
> > I am fixing this, to not handle the SERVER_EXIT if we have released
> > the qmi handle.
> >
>
> This is reboot case, your changes seems specific to rmmod case where qmi
> is indicating false del server due
> to qmi handle release.
>

Any updates on this? I'm happy to take a swing at any
intermediate/in-progress solution available if it is helpful.

Regards,
Amit Pundir

> >
> >>
> >> Thanks,
> >> Mani
> >>
> >> > BR,
> >> > Govind
> >> >
> >> > -----Original Message-----
> >> > From: ath10k <ath10k-bounces@lists.infradead.org> On Behalf Of Amit
> >> Pundir
> >> > Sent: Wednesday, April 29, 2020 9:51 PM
> >> > To: ath10k@lists.infradead.org
> >> > Cc: bjorn.andersson@linaro.org; John Stultz
> >> > <john.stultz@linaro.org>;
> >> manivannan.sadhasivam@linaro.org
> >> > Subject: [EXT] Ath10k reboot regression with v5.7-rc1 on dragonboard
> >> > 845c
> >> >
> >> > Hi,
> >> >
> >> > I see a reboot regression with v5.7-rc1 on Dragonboard 845c
> >> > (wcn3990/ath10k_snoc) running AOSP. "reboot" or "reboot bootloader"
> >> > commands do not work as expected when the board is connected to WiFi
> >> AP. I see "ath10k_snoc 18800000.wifi: firmware crashed"... dump in
> >> dmesg and board reboots into usb debug/crash mode. I do not see this
> >> reboot regression when the board is not connected to WiFi.
> >> >
> >> > It started with qrtr-ns migration from userspace to kernel which
> >> > landed in
> >> v5.7-rc1. I didn't run into this reboot issue when I was running
> >> qrtr-ns userspace tool. According to Mani, in-kernel qrtr-ns just live
> >> long enough to catch modem shutdown requests and advertise it to the
> >> modem, unlike the userspace tool. Which seem to be the case here. I
> >> further narrowed it down to ath10k_qmi_remove_msa_permission()
> >> > call in ath10k shutdown path. If I comment out that function call
> >> > then the
> >> reboot command works as expected.
> >> >
> >> > Any thoughts as to what might be going wrong? I do not understand
> >> qrtr/ath10k/qmi to see how msa permissions are getting mapped-unmapped
> >> here. I'd be happy to help debug things.
> >> >
> >> > Regards,
> >> > Amit Pundir
> >> >
> >> > _______________________________________________
> >> > ath10k mailing list
> >> > ath10k@lists.infradead.org
> >> > http://lists.infradead.org/mailman/listinfo/ath10k
> >>
> >> _______________________________________________
> >> ath10k mailing list
> >> ath10k@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/ath10k

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
