Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDDA1F7342
	for <lists+ath10k@lfdr.de>; Fri, 12 Jun 2020 07:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=graHvs4MeRfT1Z4Ryztb0UJrzJAEb32k/CFlAPpEnbI=; b=g0Wu7z3dp7OaR6
	WbNA7PBmInQYxLbKkK1tPcor7oQKpcif14/MBc6Y4apHKFWhJP5pDaRpYTJyvovC3CvlVbqK2Bd0w
	T8r2oFDjuuG3Zlio0wfQ/3R3TJUXLgoPm+ss7Vo/HDr1cLBh/Iuvl+vHafWuLZSEmzNWs3y5uY2K3
	R982MnJ5I/BFQbegSbUnAB79tjUKSoY1DyJTVGEZzwxUZl2tUzpHse8cgl5+Zz8RBDDODQ6p1Z1Di
	M5xOYTzrYSPu9fuu1O/g5ycr9v2JZ85qNRa9Xpa2jyxRN7u6XlNg50d5n6rQAaUsHBAjs2bobI/ct
	gss6dcjhy9RU5bef4P5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjbpN-0005mo-L2; Fri, 12 Jun 2020 05:02:05 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjbpH-0005mN-OB
 for ath10k@lists.infradead.org; Fri, 12 Jun 2020 05:02:02 +0000
IronPort-SDR: 9/WLvnQMqjjTxo94PRzb/T/QWS1BQLspQLHRuBD1k23IxhSuFNM6Q4mdfmKxy8r8v7OXLuEcvL
 yaWBtThgRfcw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 22:01:58 -0700
IronPort-SDR: Ih+47Jgj2RfgKuSiPG26fUQUozVmQQS5BFFeKno57Dzpzmbe5g4lEqvToPvmYvyGXC6VoLF/St
 zfyTdtHKHk3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,501,1583222400"; d="scan'208";a="473940599"
Received: from lkp-server01.sh.intel.com (HELO b6eec31c25be) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 11 Jun 2020 22:01:57 -0700
Received: from kbuild by b6eec31c25be with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jjbpF-0000W6-3M; Fri, 12 Jun 2020 05:01:57 +0000
Date: Fri, 12 Jun 2020 13:01:11 +0800
From: kernel test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master-pending] BUILD SUCCESS
 d1ae5ad3ba258477fca10c8c5eefb8ab7fd85da3
Message-ID: <5ee30c17.DeNFSkEp9ZyDNrfp%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_220201_295113_743742A7 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.2 (---)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 1.8 LONGWORDS              Long string of long words
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  master-pending
branch HEAD: d1ae5ad3ba258477fca10c8c5eefb8ab7fd85da3  Merge branch 'pending' into master-pending

elapsed time: 1371m

configs tested: 110
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
sh                          sdk7780_defconfig
s390                             alldefconfig
ia64                         bigsur_defconfig
arm                  colibri_pxa300_defconfig
arm                       imx_v4_v5_defconfig
xtensa                         virt_defconfig
mips                            ar7_defconfig
arm                            mmp2_defconfig
m68k                            mac_defconfig
arm                    vt8500_v6_v7_defconfig
arm                           sama5_defconfig
powerpc                    mvme5100_defconfig
arm                        trizeps4_defconfig
arm                            zeus_defconfig
arm                       aspeed_g4_defconfig
arm                      tct_hammer_defconfig
arc                           tb10x_defconfig
sh                            migor_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
i386                 randconfig-a006-20200611
i386                 randconfig-a002-20200611
i386                 randconfig-a001-20200611
i386                 randconfig-a004-20200611
i386                 randconfig-a005-20200611
i386                 randconfig-a003-20200611
i386                 randconfig-a015-20200611
i386                 randconfig-a011-20200611
i386                 randconfig-a014-20200611
i386                 randconfig-a013-20200611
i386                 randconfig-a016-20200611
i386                 randconfig-a012-20200611
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allyesconfig
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
