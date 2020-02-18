Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA26163109
	for <lists+ath10k@lfdr.de>; Tue, 18 Feb 2020 20:58:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:MIME-Version:From:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LDjeUHncCKm0hFVeN0yQ8zvX/Rg87L6bqqNgy46l1Oo=; b=gIPJjWF0EujoylKft5CDLw8Ib
	7OPMHQGmKSiOnkxFNZsAFSCHYLrP5vAtF/8GOfmwV2qpiEAtKWy+6T1HJ+JmcodaLXss8oGG+Ri2s
	wxBRGxS1RBrDNWvtxQZCY0arfw5bdwlAw6LranCz1CxEndSWjQVgkgloClgQGbgsR3l8abeznk8i7
	8MccF1N6BoY34ew7P9X2lbVd1psNqxIvh5+If657x62UdZjT7g69gvSwjGDOLPBHCk9MUZlaxPpx8
	YpxWyhKW+GQjPHlSm6L8So5P7Ydcy+NdpMA3w4979+nyxhuf+e4DGzx8m+d/ToftgRez2alD8rkLG
	PDtHx7O4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j491A-0005NL-1k; Tue, 18 Feb 2020 19:58:52 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4916-0005Ml-RG
 for ath10k@lists.infradead.org; Tue, 18 Feb 2020 19:58:50 +0000
Received: from [10.5.50.155] (unknown [144.139.72.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 862131625E;
 Tue, 18 Feb 2020 11:58:46 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 862131625E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1582055927;
 bh=tdx9WA0hkfFHELZCSvwI2FN6lbf5twZ8Omt18hFsarA=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=R4+vSGr4BOiuNs92gx4on5Le9NEuzIXEWtKa3W672bGPXrmGB6kAJxSATABmB+l0I
 G9yY7iM8cFwSaujSpSvv8Mx7B/378M8YIm5PBg1Y0bWmmZEIo0VtZGTj4Ibf4pMb9F
 JssWW89ETU8uFL2eMyjUAWt+evGOun9WMBr9TnUg=
Message-ID: <5E4C41F3.2000500@candelatech.com>
Date: Tue, 18 Feb 2020 11:58:43 -0800
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: David Bauer <mail@david-bauer.net>, ath10k@lists.infradead.org
Subject: Re: Management rate-control on IPQ4019
References: <20543d04-7847-8a4f-7882-78c2f42c98c0@david-bauer.net>
In-Reply-To: <20543d04-7847-8a4f-7882-78c2f42c98c0@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_115848_933868_C9CB4DC3 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On 02/18/2020 11:12 AM, David Bauer wrote:
> Hello,
>
> while playing around with the 2.4GHz WiFi part of the IPQ4019, i was
> expecting being able to set the rate at which IPQ4019 transmits it's beacon
> frames.
>
> Using OpenWrt, setting "legacy_rates=0" on the radio leads to only advertising
> 802.11g speeds, however the beacons are still sent out at 1 Mbit/s. Using a QCA9984,
> the beacons are correctly sent out at the lowest 802.11g rate (6 Mbit/s). So i assume
> this is either a bug in the ath10k firmware or a hardware-shortcoming. Has anyone else
> experienced this bug and is it likely we'll see it fixed in a later firmware release?
>
> Hardware: IPQ4029 (Aruba AP-303)
> Firmware  Version: 10.4-3.6-00140 / 10.4-3.5.3-00078

There are separate API for setting management frame rates.  I forget exactly how
upstream supports this, but maybe check debugfs?

Thanks,
Ben


-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
