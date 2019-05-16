Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E040620FA7
	for <lists+ath10k@lfdr.de>; Thu, 16 May 2019 22:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eoYvnsLe2X3xamNARMUDOf73numZx9lWh/ovfdp5ho=; b=DpMTDPXh3JvsD8
	Ixz/3O99FJVprcjeMYS4LrPnQG+BxYBjpWBosU9Hk2KWSCcAsKG29TUcNPfGn3vtn0rySzwhYAV3X
	UtMS6syac6FSCmpd083fvcnD6RAbfzgV82QaMaGzE2oSdjfvkxYvfLBWDalN2yVGRfBOgtZnP4cmQ
	2mHiIrhz6ecEAC3ci3xxWk5Igmmmu4u223XoqpTmyhIUSI7hTXD+UTJWy0TdiG3/z5vvL2cO7ENy3
	4+UO5Nbylqsje2dCVNnRWgHBOjsIZfXOreDxE0RGQnCOi2MXIB181z/ui9QKCqczyvrAIIeSSp1WY
	g40XGVF39Q0zwjhj/rHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRN6e-0006Jm-1S; Thu, 16 May 2019 20:36:00 +0000
Received: from mail-wr1-f50.google.com ([209.85.221.50])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRN6Z-0006JD-F8
 for ath10k@lists.infradead.org; Thu, 16 May 2019 20:35:56 +0000
Received: by mail-wr1-f50.google.com with SMTP id d9so4851331wrx.0
 for <ath10k@lists.infradead.org>; Thu, 16 May 2019 13:35:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qoDXSALEr6vRmsV9bc6llAiYeWmwxSfrKSwI6Pckf+U=;
 b=s9IrPlmvJkqWejFgrs+GoTl36MZCtwGjTEock0PQpmQP4rOyzVgwYfEY9yepD0r0Ud
 FZWuS19My/ACNKei6WZN+HeDa/iX3poKas6Z0fR3+t+hk0gPD/FIRxRNiH15GhdCsl4N
 FZ1UI8rulFyhCgR1s5EpiTsiael+p+MBC6EGjpAxJPi6sqTHgx3ICGa2DaOKx13o8E78
 wc2bvwTdJhXUOMGhjeoz6a5iuO2mze8v+sNSeMasnNTopB2JSzFljlI8UlGi8/gqvQVn
 TTtaYrUWgi9zaqSCSmCdohmxxR17+vNMr2i7n+JMLk+90D51NxgEqUNeeRfcf97bWgzY
 tBhg==
X-Gm-Message-State: APjAAAVw4J/TO+BlMxGdCr94YgN0XiBvhev9wJQPvQzNXIFr0HVcQZ51
 bpw8HgqRD1GnVfGfYYh/IbuPYx1ExrAQG+YExqs=
X-Google-Smtp-Source: APXvYqyTyT24Halh+UUcBe1UdcjN2RtzBvE2JlWKb15Rg+DhjgvPY67hSgvAPYxuCtp4Y8DMRV6o822f286mVD+oU4w=
X-Received: by 2002:adf:f1c3:: with SMTP id z3mr13243489wro.263.1558038953818; 
 Thu, 16 May 2019 13:35:53 -0700 (PDT)
MIME-Version: 1.0
References: <e11b8d7f-bc28-bc66-fb8c-ff4db22d7c46@candelatech.com>
 <daaad6d3-cf60-4ddc-af20-279a0cbbbe0c@newmedia-net.de>
 <10ed4e39-4364-c8ef-2b38-15ea7672ad94@candelatech.com>
 <2ec6f626-6391-f9b5-918c-99ad7e6b3e31@newmedia-net.de>
 <ad97576c-d6dd-e29c-10d4-00b8aff77805@candelatech.com>
 <55b50a9a-49f4-d669-22d4-84e2efabf451@candelatech.com>
 <CAJ-Vmo=MgeKdUj+d7L6oJKfdSMb84D_nYHZ+BMSr6guB4Q_Y2Q@mail.gmail.com>
 <a41b74e9-230d-1094-cb86-3b105e602788@candelatech.com>
 <CAJ-VmokYa4LpQCokRu_7gp1LsV+-1fS=UmWd=6SZ07F-O5cw+w@mail.gmail.com>
 <958466d1-2d3a-d1cd-e1f6-65e032f15e15@candelatech.com>
In-Reply-To: <958466d1-2d3a-d1cd-e1f6-65e032f15e15@candelatech.com>
From: Adrian Chadd <adrian@freebsd.org>
Date: Thu, 16 May 2019 13:35:41 -0700
Message-ID: <CAJ-VmoksXc_f2R+acVCdLH0dtriv06cWYxw04v1Sq=ezHn-A1Q@mail.gmail.com>
Subject: Re: Problem with 9984 in routed mode with 512b frames.
To: Ben Greear <greearb@candelatech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_133555_507634_9097C207 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.50 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (adrian.chadd[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <ath10k.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/ath10k/>
List-Post: <mailto:ath10k@lists.infradead.org>
List-Help: <mailto:ath10k-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/ath10k>,
 <mailto:ath10k-request@lists.infradead.org?subject=subscribe>
Cc: Sebastian Gottschall <s.gottschall@newmedia-net.de>,
 ath10k <ath10k@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Thu, 16 May 2019 at 13:20, Ben Greear <greearb@candelatech.com> wrote:
>
> On 5/16/19 1:16 PM, Adrian Chadd wrote:
> > You can't do AMPDU with OFDM/CCK. If they're setting the AMPDU bit
> > then that's wrong. it needs to be individual MPDU/PPDUs.
> >
> > There's a benefit for CCK. OFDM 6M is I think roughly the same as OFDM
> > MCS0. But CCK is a lot more reliable.
>
> 5Ghz can (should) not do CCK anyway.  Do you have any reference for why
> you think CCK will be better?  The one I found shows otherwise:
>
> https://d2cpnw0u24fjm4.cloudfront.net/wp-content/uploads/LaminatedCard_RevolutionWiFiMCStoSNRSinglePage.png

Well, you should try measuring it :-) I remember stories of decoding
CCK frames with MRC-CCK at an RSSI of 0 or -1...

And yes, you shouldn't do CCK on 5G, but some wifi PHYs do support it
("support" "it")...



-adrian

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
