Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EDE1F2B0E
	for <lists+ath10k@lfdr.de>; Tue,  9 Jun 2020 02:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n12zR0ZWasblErXl2XZZejCJKZUPjZXr7Y+iDPfthpY=; b=Ct1MyM17eg5oCd
	5twrrOq3/LMh7yfKHPc4zSmzeawDWFfChi+hPRslSZYgd3I8QgiLDHC4fETMOjf7VpbKL905wUwz6
	aParlsoTglMwVcR+LEnODgtY0LtIiwFdA2KmFrLqMZZBHRIP0DjyKfsogZi/TvodkYUdCymmm70hU
	z0IlAp7QMBa5im+YqiUln/1P06B9UV4I0g2t3J0H4z9q93zGXJni4E2Ohs3RegCNKfGW5pcusXXgx
	3ER/umUkr9XEJE/kI4KcHMAvjA9EldUEdJfDQapMYcr6DmrvinQYJvqnONTaez9kLlrNqJR5NJkvT
	HGtkvNeVGjL56XOyeTZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRwQ-0005x3-M0; Tue, 09 Jun 2020 00:16:34 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiRwJ-0005wN-LZ
 for ath10k@lists.infradead.org; Tue, 09 Jun 2020 00:16:31 +0000
IronPort-SDR: qT7zyyFNqJX5jXEvVP6v1shnTz3aA/pzX1r4fn/+qy3egE4B3f/DNTnap2yzgOA1g84Z5gNJPd
 oprh/RHrw9Vg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 17:16:26 -0700
IronPort-SDR: fjEpYmiGb+heslmgaqSRkDg6fa+uRL/RRRG6bM7FswuiPJ5DEgEy1F+UYpgVdvIBNKawHKZRAB
 60NpF984yCAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,489,1583222400"; d="scan'208";a="274412650"
Received: from lkp-server01.sh.intel.com (HELO 12d5c0ac8e64) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 08 Jun 2020 17:16:25 -0700
Received: from kbuild by 12d5c0ac8e64 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jiRwD-000056-Iz; Tue, 09 Jun 2020 00:16:21 +0000
Date: Tue, 09 Jun 2020 08:15:36 +0800
From: kernel test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master-pending] BUILD SUCCESS
 4d6b8d0837bbfbfec7b96018e76e993835c33eae
Message-ID: <5eded4a8.fvCUiimr4n2MPHcV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_171627_745959_8083D2A0 
X-CRM114-Status: UNSURE (   5.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
branch HEAD: 4d6b8d0837bbfbfec7b96018e76e993835c33eae  Merge branch 'pending' into master-pending

i386-tinyconfig vmlinux size:

+-------+------------------------------------+---------------------------------------------------------+
| DELTA |               SYMBOL               |                         COMMIT                          |
+-------+------------------------------------+---------------------------------------------------------+
|  +221 | TOTAL                              | b2a5ac927378..4d6b8d0837bb (ALL COMMITS)                |
|  +217 | TOTAL                              | 4d6b8d0837bb Merge branch 'pending' into master-pending |
|  +217 | TEXT                               | 4d6b8d0837bb Merge branch 'pending' into master-pending |
|  +136 | arch/x86/events/zhaoxin/built-in.* | 7f69bf1ddcc3 Merge branch 'ath-next'                    |
|  +109 | copy_xstate_to_kernel()            | 4d6b8d0837bb Merge branch 'pending' into master-pending |
|   +96 | copy_part()                        | 4d6b8d0837bb Merge branch 'pending' into master-pending |
+-------+------------------------------------+---------------------------------------------------------+

elapsed time: 483m

configs tested: 110
configs skipped: 6

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
mips                           gcw0_defconfig
arc                                 defconfig
sh                          r7785rp_defconfig
ia64                              allnoconfig
um                            kunit_defconfig
sh                        sh7757lcr_defconfig
arm                           h3600_defconfig
sparc                            allyesconfig
powerpc                    mvme5100_defconfig
openrisc                 simple_smp_defconfig
sh                           se7705_defconfig
mips                     decstation_defconfig
csky                             allyesconfig
arm                    vt8500_v6_v7_defconfig
mips                         tb0219_defconfig
m68k                        mvme16x_defconfig
mips                          malta_defconfig
arm                         shannon_defconfig
arm                         socfpga_defconfig
sh                   sh7724_generic_defconfig
powerpc                    amigaone_defconfig
arc                        nsim_700_defconfig
arm                          exynos_defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
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
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
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
i386                 randconfig-a001-20200607
i386                 randconfig-a006-20200607
i386                 randconfig-a002-20200607
i386                 randconfig-a005-20200607
i386                 randconfig-a004-20200607
i386                 randconfig-a003-20200607
i386                 randconfig-a014-20200607
i386                 randconfig-a015-20200607
i386                 randconfig-a011-20200607
i386                 randconfig-a016-20200607
i386                 randconfig-a012-20200607
i386                 randconfig-a013-20200607
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                                allnoconfig
um                                  defconfig
um                               allmodconfig
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
