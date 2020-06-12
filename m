Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBD21F7373
	for <lists+ath10k@lfdr.de>; Fri, 12 Jun 2020 07:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CrV5YaeSIDufjhqjEC40DGv+g0aJiZAZp4pbpwEMhJ4=; b=Pq7dFRIzRmSTxH
	FOjSbWndV9udilf6ZhyyNkbDIbqD9EMSE0gds/JrrBEEPgpfu6/OhXJ3aSqgV2eQUvUOGcLBRBnOf
	Bmfs9AXa0+wpzJRNVbviozDPeuLHC+LUmfddnJZqttLfZtR3kMYUASHAicmWH+n1JM2i8j04f2/eb
	o4K9QeUxoRpvL4OfCJ57Z8vw0mkaSl2el3t95YSBpJilDcaEybDp4lyMIXyJzFxYhmPPzNEow1oV+
	yWQcEwXAEiUMZZfNtqzDqfOCaQN6XqiBPtriqXrvhZ9rpjL0NaqECEyQyhviSDQl03eCrSN6Pw489
	8QISzJZMt4zr6Df4386w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjcCq-0003F3-47; Fri, 12 Jun 2020 05:26:20 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjcCm-0003EQ-Fi
 for ath10k@lists.infradead.org; Fri, 12 Jun 2020 05:26:18 +0000
IronPort-SDR: i6E5wlkpmG2uM9HL2EjciD4JHiIUcH9TXTZZwK/4Cg7wCEAQMmMSm9GagUXzGM2XIG6UTDUtsi
 4fmacS0xrRpQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 22:26:15 -0700
IronPort-SDR: b24dbH77FDUlAlSb34/NnxtPfnLd5Rdw02Cqo72Hg9rmuG0xJLMF3e9mawXhyKnDbd28p/biZb
 qN5gjnaW8WYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,501,1583222400"; d="scan'208";a="350429035"
Received: from lkp-server01.sh.intel.com (HELO b6eec31c25be) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 11 Jun 2020 22:26:13 -0700
Received: from kbuild by b6eec31c25be with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jjcCj-0000X7-9Y; Fri, 12 Jun 2020 05:26:13 +0000
Date: Fri, 12 Jun 2020 13:25:23 +0800
From: kernel test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master] BUILD SUCCESS 2eaa0906683c7d26a52b2e3ae993e58c3edb4be9
Message-ID: <5ee311c3.xmarsKHiiSOOCwxU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_222616_565535_16E3AA8F 
X-CRM114-Status: UNSURE (   5.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -3.2 (---)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  master
branch HEAD: 2eaa0906683c7d26a52b2e3ae993e58c3edb4be9  Add localversion-wireless-testing-ath

i386-tinyconfig vmlinux size:

=======================================================================================================
 TOTAL  TEXT  copy_xstate_to_kernel()  copy_part()                                                     
=======================================================================================================
  +217  +217                     +109          +96  52c0ae2b89e3 Merge branch 'ath-next'               
    +4     0                        0            0  2eaa0906683c Add localversion-wireless-testing-ath 
  +221  +217                     +109          +96  b2a5ac927378..2eaa0906683c (ALL COMMITS)           
=======================================================================================================

elapsed time: 1449m

configs tested: 115
configs skipped: 5

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
sh                          sdk7780_defconfig
s390                             alldefconfig
ia64                         bigsur_defconfig
arm                  colibri_pxa300_defconfig
arm                       imx_v4_v5_defconfig
xtensa                         virt_defconfig
mips                            ar7_defconfig
arm                            mmp2_defconfig
m68k                            mac_defconfig
mips                     loongson1b_defconfig
arm                       imx_v6_v7_defconfig
m68k                             allyesconfig
sh                     magicpanelr2_defconfig
m68k                        mvme16x_defconfig
riscv                            alldefconfig
powerpc                      ppc64e_defconfig
mips                            gpr_defconfig
i386                              allnoconfig
mips                           ip27_defconfig
sh                               alldefconfig
xtensa                              defconfig
arm                            zeus_defconfig
arm                       aspeed_g4_defconfig
arm                      tct_hammer_defconfig
arc                           tb10x_defconfig
sh                            migor_defconfig
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
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
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
um                               allyesconfig
um                                  defconfig
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
