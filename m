Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC431F037C
	for <lists+ath10k@lfdr.de>; Sat,  6 Jun 2020 01:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FdXh84AxzTEiiPNpJKJtdSgKVNyspQfQtx/jz0+QE3s=; b=EevDJ6jPGTVZfG
	vwjxI+N2J4P2VQcOBhCGFfdQYVNR+35AOb3iVCBbBI4XiH+WKHx3u7AvkoKBKmBE9a7KlgKVlkh+p
	/wJxS7FDHce8WgQ2x/K5HntS6WCaS5jN0G249vXVJLNlCZ3jXgtNnGNd+FpcHt8lHRDg6rKMYzC6m
	hyNH9hdv/3h/OuQKJJxYM3vzZWO+NK6+Ev//rZ5sfy86DGfjKDoAc7/3FuQHAfWhCp4vVPOg7+QVd
	52j+sO3BnjAqR3xY3PQBIDzRKSXL6eEh5ZzQdCXTHB4jfw7dx3i+B9A7nQqeBEnMwLIFdr5vEtiwP
	FlCMxeKzFQz2Der2zUpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhLjX-0001JH-SX; Fri, 05 Jun 2020 23:26:43 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhLjT-0001IH-7Z
 for ath10k@lists.infradead.org; Fri, 05 Jun 2020 23:26:40 +0000
IronPort-SDR: NNti8cbAqtggx43VIGMR+6MsS9DL49SeXJ94ViKdbVFOx8NEcVAXj/1XngAMR+kdOJOEmrXMNk
 X6ayJGV4zs/Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 16:26:38 -0700
IronPort-SDR: GfA14OOnITzEqQxy6DZrMMU29pBa36IQ7lMdSg7BRTJeue5ItXb5m5s80C5IvxKOYiINjghD8Y
 RXnyMTFGfDNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,478,1583222400"; d="scan'208";a="417428761"
Received: from lkp-server02.sh.intel.com (HELO 85fa322b0eb2) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 05 Jun 2020 16:26:36 -0700
Received: from kbuild by 85fa322b0eb2 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jhLjP-0000RD-Vn; Fri, 05 Jun 2020 23:26:35 +0000
Date: Sat, 06 Jun 2020 07:26:11 +0800
From: kernel test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath11k-qca6390-bringup] BUILD SUCCESS
 6f57a4d38b4e79c1d97a251040e7cb354da9778d
Message-ID: <5edad493.jIuBHymrecgGgWt2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_162639_326508_E853BA59 
X-CRM114-Status: UNSURE (   4.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  ath11k-qca6390-bringup
branch HEAD: 6f57a4d38b4e79c1d97a251040e7cb354da9778d  HACK: ath11k: get board file from QCA6390 directory

elapsed time: 485m

configs tested: 126
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
powerpc                          allyesconfig
m68k                       m5475evb_defconfig
nios2                         10m50_defconfig
mips                      malta_kvm_defconfig
m68k                        mvme147_defconfig
arm                          imote2_defconfig
powerpc                     mpc5200_defconfig
arc                        vdk_hs38_defconfig
sh                           se7724_defconfig
powerpc                     mpc512x_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                           ip28_defconfig
sparc64                             defconfig
arm                         s5pv210_defconfig
mips                           ip32_defconfig
sh                          polaris_defconfig
mips                        jmr3927_defconfig
arm                           spitz_defconfig
m68k                         apollo_defconfig
csky                                defconfig
arm                        magician_defconfig
arm                        spear3xx_defconfig
mips                         tb0287_defconfig
ia64                        generic_defconfig
arc                             nps_defconfig
s390                             alldefconfig
h8300                               defconfig
i386                              allnoconfig
sh                          urquell_defconfig
arc                     haps_hs_smp_defconfig
arm                          ep93xx_defconfig
c6x                               allnoconfig
sh                           cayman_defconfig
powerpc                      mgcoge_defconfig
mips                      bmips_stb_defconfig
arm                              alldefconfig
powerpc                      pasemi_defconfig
arc                    vdk_hs38_smp_defconfig
s390                              allnoconfig
arm                         lpc32xx_defconfig
riscv                             allnoconfig
mips                          ath79_defconfig
mips                     loongson1c_defconfig
arm                          pxa910_defconfig
arc                     nsimosci_hs_defconfig
alpha                            alldefconfig
arm                        mvebu_v5_defconfig
mips                        qi_lb60_defconfig
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
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
xtensa                              defconfig
h8300                            allmodconfig
h8300                            allyesconfig
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
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20200605
x86_64               randconfig-a001-20200605
x86_64               randconfig-a006-20200605
x86_64               randconfig-a003-20200605
x86_64               randconfig-a004-20200605
x86_64               randconfig-a005-20200605
riscv                            allyesconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
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
