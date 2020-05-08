Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E9D1CB8EB
	for <lists+ath10k@lfdr.de>; Fri,  8 May 2020 22:26:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F3XModQ+Z+tup+sg6AKJpuQICRRSjMUKruHfpnLzlAo=; b=A1+zG3En/tNoTq
	H7HMOI6xhuYk9QH+2hPEbi6xinrWoVrp6EXSP93yHj2XN4pYX9zkiPBWi+9w+uTQ9LnkacXbNyXXl
	NmhjdcW8e7m+AJIe16aK52h/mrQjFHs8ohG4Na6tMFwJE8V6mjhBW50BPk8jVkXxhqLuIIBIJqmLg
	/kcTvqaCfmX0GayaCnCsuzWWdVnGpyPPn04UjChK+CF5zjECr9vAu8POJSYstSh+Wtr3aDYcM0YMO
	8gHjW5eLLUjV12zTqnSeJTOjn7SNAv2SQ4tpH8JXIXchmXKrAySuZdofw02sGbIX17HGf83DlkSrt
	D3eLVaxlKKGpZV9Ea4Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX9ZO-0005XX-UW; Fri, 08 May 2020 20:26:06 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX9ZH-0005VZ-DV
 for ath10k@lists.infradead.org; Fri, 08 May 2020 20:26:03 +0000
IronPort-SDR: XAnNzUDPMO/Zxh1OfiTCjkoZEN2d00D8BEM4vQmiIlpJLMX8bHtDow2RK2R8FTz+ekXY4ekByS
 1mzKdqAhGpyA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 13:25:58 -0700
IronPort-SDR: aFxQY5KU4XrOca17dYQPuSwHmv0wUmpaXu99r0kkSVYl1ZjH0AnVCU1/Pf06PlSbsyLB1mLwJo
 h2JVPM/WjNLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,369,1583222400"; d="scan'208";a="435906407"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 08 May 2020 13:25:56 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jX9ZE-000ISi-3r; Sat, 09 May 2020 04:25:56 +0800
Date: Sat, 09 May 2020 04:25:36 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:pending] BUILD SUCCESS
 1c174ab15ba3d21ddb541fc1671c5b6db06d6f2c
Message-ID: <5eb5c040.xodxADbnehe8SFrv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_132559_489233_3F7CB6A0 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  pending
branch HEAD: 1c174ab15ba3d21ddb541fc1671c5b6db06d6f2c  ath10k: remove experimental tag from SDIO and SNOC busses in Kconfig

Warning in current branch:

drivers/net/wireless/ath/ath11k/debug_htt_stats.c:4613:2-8: preceding lock on line 4604

Warning ids grouped by kconfigs:

recent_errors
|-- i386-allmodconfig
|   `-- drivers-net-wireless-ath-ath11k-debug_htt_stats.c:preceding-lock-on-line
|-- m68k-allyesconfig
|   `-- drivers-net-wireless-ath-ath11k-debug_htt_stats.c:preceding-lock-on-line
|-- sparc-allyesconfig
|   `-- drivers-net-wireless-ath-ath11k-debug_htt_stats.c:preceding-lock-on-line
`-- x86_64-allyesconfig
    `-- drivers-net-wireless-ath-ath11k-debug_htt_stats.c:preceding-lock-on-line

elapsed time: 594m

configs tested: 92
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
sparc                            allyesconfig
m68k                             allyesconfig
parisc                              defconfig
parisc                            allnoconfig
s390                                defconfig
c6x                              allyesconfig
alpha                            allyesconfig
nds32                               defconfig
powerpc                             defconfig
sparc64                             defconfig
um                                  defconfig
alpha                               defconfig
arc                              allyesconfig
mips                             allyesconfig
ia64                                defconfig
sh                                allnoconfig
s390                             allyesconfig
microblaze                        allnoconfig
c6x                               allnoconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
openrisc                         allyesconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
microblaze                       allyesconfig
sh                               allmodconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20200508
i386                 randconfig-a004-20200508
i386                 randconfig-a003-20200508
i386                 randconfig-a002-20200508
i386                 randconfig-a001-20200508
i386                 randconfig-a006-20200508
i386                 randconfig-a012-20200508
i386                 randconfig-a014-20200508
i386                 randconfig-a016-20200508
i386                 randconfig-a011-20200508
i386                 randconfig-a013-20200508
i386                 randconfig-a015-20200508
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                              allnoconfig
s390                             allmodconfig
sparc                               defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
