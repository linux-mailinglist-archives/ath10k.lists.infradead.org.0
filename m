Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 358AAA7CAA
	for <lists+ath10k@lfdr.de>; Wed,  4 Sep 2019 09:21:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bV0dK3eisxyief9w2lhpT3XGFuhRFJNyyEpPy24B1Uw=; b=OEb1B9uQtDUvbcOM0+2V+1dXH
	5F7rt/tvQfrkwymSQgUw6qKehSwrBf0fEDFofXB5wzoQK9GodBi5yEkUxAmH8HlmP37lylUCSwrVK
	ELJORozqFLPSrsLPHiJhuJSrBdKzOy/8x6tagXqDxz3PFe9Y5xppuSc62ObUbdptXbGnmHO8Few/m
	2fMtH6scRPjDWReBPD1nTQnxMShqJ/f3rPQ0cjCwoPJ9cEnxhkjr0DXTiomk2ObOn/rYPOvBVO5Fe
	dedbG7R572NmDudwLcEHEiHgYDOzI17z1Wq7MsaKJ7Vi1cDUo565hZESzJwoCERpuew1N6GamlNJl
	YOMOfRIyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5PbH-00013a-Uo; Wed, 04 Sep 2019 07:21:07 +0000
Received: from icp-osb-irony-out9.external.iinet.net.au ([203.59.1.226])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Pb6-00013A-SS
 for ath10k@lists.infradead.org; Wed, 04 Sep 2019 07:20:59 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AeAADRZG9d/zXSMGcNWBkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEHAQEBAQEBgWeBaQWBF4EvhCGPXwEBAQEBAQaBNoNrhgSRJgkBAQE?=
 =?us-ascii?q?BAQEBAQErDAEBhD8Cgxw4EwILAQEBBAEBAQEBBgMBhVhDhVcBAQEDIxVBEAs?=
 =?us-ascii?q?NCwICJgICVwYNCAEBgx4BgXYjqE9zgTIahTCDMIFDBoEMKIFjii14gQeBESe?=
 =?us-ascii?q?Caz6CYQKBQQEBgymCWASMRAovh3FegTCVJYIphnSNYgYbjXUDinKVbpJkgXk?=
 =?us-ascii?q?zGggoCIMngUmBBReBBAECgkiKZWGNQoJFAQE?=
X-IPAS-Result: =?us-ascii?q?A2AeAADRZG9d/zXSMGcNWBkBAQEBAQEBAQEBAQEHAQEBA?=
 =?us-ascii?q?QEBgWeBaQWBF4EvhCGPXwEBAQEBAQaBNoNrhgSRJgkBAQEBAQEBAQErDAEBh?=
 =?us-ascii?q?D8Cgxw4EwILAQEBBAEBAQEBBgMBhVhDhVcBAQEDIxVBEAsNCwICJgICVwYNC?=
 =?us-ascii?q?AEBgx4BgXYjqE9zgTIahTCDMIFDBoEMKIFjii14gQeBESeCaz6CYQKBQQEBg?=
 =?us-ascii?q?ymCWASMRAovh3FegTCVJYIphnSNYgYbjXUDinKVbpJkgXkzGggoCIMngUmBB?=
 =?us-ascii?q?ReBBAECgkiKZWGNQoJFAQE?=
X-IronPort-AV: E=Sophos;i="5.64,465,1559491200"; d="scan'208";a="192141571"
Received: from unknown (HELO [10.44.0.22]) ([103.48.210.53])
 by icp-osb-irony-out9.iinet.net.au with ESMTP; 04 Sep 2019 15:20:51 +0800
Subject: Re: problems with a 9377 based SDIO module
To: Erik Stromdahl <erik.stromdahl@gmail.com>
References: <176a3a2d-ff81-3b72-86af-73c70df729f4@kernel.org>
 <a97cd0d2-e53e-ef3c-63e3-0d4d352c7994@kernel.org>
 <8748427f-c4cd-a223-d635-2b628ee2cfb3@gmail.com>
 <bafbc391-201a-7c60-e331-1f1cdeb0a1d7@kernel.org>
 <44b22101-734d-182f-2ed1-d2b270d71726@kernel.org>
 <303d73aa-01b4-63f8-7685-ea1e5cc07096@gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <5edf7f9b-920c-11f4-1e25-dbbd440b8999@kernel.org>
Date: Wed, 4 Sep 2019 17:20:49 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <303d73aa-01b4-63f8-7685-ea1e5cc07096@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_002057_167140_52B0B079 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [203.59.1.226 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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

Hi Erik,

On 4/9/19 6:00 am, Erik Stromdahl wrote:
> On 9/3/19 1:37 PM, Greg Ungerer wrote:
>> On 2/9/19 4:58 pm, Greg Ungerer wrote:
>>> On 1/9/19 12:49 am, Erik Stromdahl wrote:
>>>> On 8/30/19 4:52 PM, Greg Ungerer wrote:
>>>>> On 29/8/19 4:33 pm, Greg Ungerer wrote:
[snip]
>>>> I was actually trying my v5.2 branch with my QCA9377 SDIO device today,
>>>> and everything was running without any problems.
>>>
>>> So do you mean you can use your v5.2 branch with no other kernel
>>> changes and get a QCA9377 module to work?
>>>
> Yes, this is what I have been running
>>> I could not do that (as per my original mail that started this thread).
>>> I took just your changes and applied to my v5.2 tree, they all applied
>>> cleanly and compile cleanly. But do not work.
>>>
>>> I had to apply a lot of patches from the kvalo/ath tree first. And that
>>> was a real can of worms - I mostly applied patches that appeared to be
>>> part of changes submitted for v5.3.
>>
>> I tried a lightly different approach and had more success.
>>
>> I started with my linux-5.2 kernel. Copied the entire ath10k driver
>> sources from linux-5.3-rc7 (drivers/net/wireless/ath/ath10k/*)
>> and then applied the patches from your master branch at
>> https://github.com/erstrom/linux-ath.git.
>>
>> That produced a working client wlan interface.
>>
> Good that you got it working, but it is really odd that it didn't work
> with my 5.2 branch (as I said, I have been running that branch as-is without
> any other patches and it has been working fine).

I was testing in AP mode today and came across another problem.

Immediately on starting up the AP interface I get a dump:

------------[ cut here ]------------^M
WARNING: CPU: 0 PID: 18675 at kernel/dma/mapping.c:247 dma_alloc_attrs+0xb8/0xec^M
Modules linked in: nf_conntrack_netlink xt_realm arptable_filter arp_tables ip6table_mangle ip6table_raw ip6table_nat nf_log_ipv6 ip6table_filter ip6_tables xt_TCPMSS xt_mark xt_connmark iptable_mangle xt_CT iptable_raw iptable_nat nf_log_ipv4 nf_log_common xt_set xt_tcpudp xt_conntrack xt_LOG xt_limit xt_addrtype ip_set_hash_netiface ip_set_hash_net ip_set_hash_ip ip_set nfnetlink nf_nat_pptp nf_conntrack_pptp nf_nat_tftp nf_conntrack_tftp nf_nat_ftp ath10k_sdio nf_conntrack_ftp ath10k_core nf_nat nf_conntrack nf_defrag_ipv6 ath nf_defrag_ipv4 imx_sdma virt_dma iptable_filter ip_tables x_tables^M
CPU: 0 PID: 18675 Comm: hostapd Not tainted 5.2.0-ac0 #1^M
Hardware name: Freescale i.MX6 Ultralite (Device Tree)^M
[<c010c120>] (unwind_backtrace) from [<c010aa34>] (show_stack+0x10/0x14)^M
[<c010aa34>] (show_stack) from [<c011a5bc>] (__warn+0xf8/0x110)^M
[<c011a5bc>] (__warn) from [<c011a69c>] (warn_slowpath_null+0x40/0x48)^M
[<c011a69c>] (warn_slowpath_null) from [<c014e3b8>] (dma_alloc_attrs+0xb8/0xec)^M
[<c014e3b8>] (dma_alloc_attrs) from [<bf052eb8>] (ath10k_add_interface+0x5f0/0x144c [ath10k_core])^M
[<bf052eb8>] (ath10k_add_interface [ath10k_core]) from [<c05f06b8>] (drv_add_interface+0x30/0x7c)^M
[<c05f06b8>] (drv_add_interface) from [<c060330c>] (ieee80211_do_open+0x450/0x900)^M
[<c060330c>] (ieee80211_do_open) from [<c0468d20>] (__dev_open+0xc0/0x144)^M
[<c0468d20>] (__dev_open) from [<c04690ac>] (__dev_change_flags+0x154/0x1ac)^M
[<c04690ac>] (__dev_change_flags) from [<c046911c>] (dev_change_flags+0x18/0x48)^M
[<c046911c>] (dev_change_flags) from [<c0510e98>] (devinet_ioctl+0x688/0x768)^M
[<c0510e98>] (devinet_ioctl) from [<c0512da8>] (inet_ioctl+0x1f0/0x3b4)^M
[<c0512da8>] (inet_ioctl) from [<c044936c>] (sock_ioctl+0x21c/0x6d8)^M
[<c044936c>] (sock_ioctl) from [<c01bd84c>] (do_vfs_ioctl+0x9c/0x850)^M
[<c01bd84c>] (do_vfs_ioctl) from [<c01be034>] (ksys_ioctl+0x34/0x5c)^M
[<c01be034>] (ksys_ioctl) from [<c0101000>] (ret_fast_syscall+0x0/0x54)^M
Exception stack(0xc2aadfa8 to 0xc2aadff0)^M
dfa0:                   00000007 000f8080 00000007 00008914 bea71d68 00000000^M
dfc0: 00000007 000f8080 00000007 00000036 000f8080 00000001 000f7f58 000f9594^M
dfe0: 000f5d08 bea71d30 00071604 b6be65e4^M
---[ end trace 6b49e67b28c15dab ]---^M
ath10k_sdio mmc0:0001:1: coherent DMA mask is unset^M
ath10k_sdio mmc0:0001:1: failed to allocate beacon buffer: -12^M

It is failing at a dma_alloc_coherent() call in ath10k_add_interface(),
drivers/net/wireless/ath/ath10k/mac.c.

That is pretty easy to work around, by setting the coherent_dma_mask to
something like DMA_BIT_MASK(32) when it is 0. But I am wondering why
it is not initially getting that passed down from the bus driver?

Anyway with that hacked fix in the AP works (at least at 2.4GHz).

Regards
Greg


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
