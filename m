Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D96E51D24EB
	for <lists+ath10k@lfdr.de>; Thu, 14 May 2020 03:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U3Zwz8ChMI2VZNvCxOymeQn7zP3E4YL86xLbeNBUWlE=; b=JzkGp0ROFZsttV
	3VYpYa29hPM54fdckIldewDUoRWVsgcRZU31eMJqirsKIuDh5BR/+B1pJDpwVXxGlQP5yPzTNiHnB
	bq+nj5Qbciai6aZmPmh42J5oB1/DKWNGG0Xuqq5VX50vXbUODPqmTzlmKED+HD5VmxyMaqZ5LSTZd
	ivKQgStL4qH5jrqtQ6NSeFGZYC4DoheQHv48GIfakegk/QvS0u5q6W0SRRv5OT8pddJVJjAPvVpbg
	M5m52mHiMmbudIbLJh425UzzjR62OBH/stZx2G00FieaYJLwn7qRs2y5R4TUc0ZgLHg4IeWsakRSo
	JblakSxFfd5AdkJSn/pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ2zT-0007Eb-G4; Thu, 14 May 2020 01:48:51 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ2zO-0007B8-RW
 for ath10k@lists.infradead.org; Thu, 14 May 2020 01:48:48 +0000
IronPort-SDR: 36+YIeEhD/HcrvDj8WbfMWEmUQgWe8gMMI/EmVOoGwoXh3qTH4CygISXlW6SUEji/4aCPRn65U
 jCNRQ5pXDyfA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 18:48:45 -0700
IronPort-SDR: IgBi0BlalssnMGR47ntDdzMFb4lkmWYJrgjv/6zRyffYG4ym9VJ/nu4FfLL+dMtfng1bIp5/sl
 fLPBBGgoSUAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,389,1583222400"; d="scan'208";a="464152954"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 13 May 2020 18:48:38 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jZ2zF-0009J4-G7; Thu, 14 May 2020 09:48:37 +0800
Date: Thu, 14 May 2020 09:47:48 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath-next] BUILD SUCCESS
 ec431188b4197aaccfbc6e6ece4fb88f79723635
Message-ID: <5ebca344.J+AQqUPFWkw3H5FM%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_184847_011885_89842347 
X-CRM114-Status: UNSURE (   6.43  )
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  ath-next
branch HEAD: ec431188b4197aaccfbc6e6ece4fb88f79723635  wcn36xx: Replace zero-length array with flexible-array

elapsed time: 483m

configs tested: 151
configs skipped: 10

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
h8300                     edosk2674_defconfig
mips                     decstation_defconfig
sh                          rsk7201_defconfig
m68k                          amiga_defconfig
mips                malta_qemu_32r6_defconfig
parisc                              defconfig
i386                              allnoconfig
s390                       zfcpdump_defconfig
m68k                       m5249evb_defconfig
m68k                          sun3x_defconfig
sh                           se7619_defconfig
mips                        qi_lb60_defconfig
arc                        nsim_700_defconfig
arm                         lubbock_defconfig
arm                          tango4_defconfig
sh                            shmin_defconfig
mips                           mtx1_defconfig
riscv                    nommu_virt_defconfig
mips                        nlm_xlr_defconfig
arm                         s3c2410_defconfig
powerpc                    adder875_defconfig
mips                 pnx8335_stb225_defconfig
sh                   sh7770_generic_defconfig
arm                            dove_defconfig
mips                 decstation_r4k_defconfig
arm                          moxart_defconfig
sh                               allmodconfig
sh                             espt_defconfig
arm                            xcep_defconfig
microblaze                          defconfig
arm                         orion5x_defconfig
mips                      pic32mzda_defconfig
mips                  mips_paravirt_defconfig
riscv                          rv32_defconfig
powerpc                      ppc44x_defconfig
arm                         at91_dt_defconfig
sh                           se7724_defconfig
arc                             nps_defconfig
arm                             rpc_defconfig
powerpc                       holly_defconfig
arm                           h5000_defconfig
arm                          pxa910_defconfig
sh                          rsk7203_defconfig
arm                         assabet_defconfig
m68k                                defconfig
arm                           sama5_defconfig
sh                        sh7785lcr_defconfig
arm                         shannon_defconfig
nios2                            alldefconfig
sh                   secureedge5410_defconfig
arm                      footbridge_defconfig
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
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20200513
i386                 randconfig-a005-20200513
i386                 randconfig-a003-20200513
i386                 randconfig-a001-20200513
i386                 randconfig-a004-20200513
i386                 randconfig-a002-20200513
x86_64               randconfig-a012-20200514
x86_64               randconfig-a016-20200514
x86_64               randconfig-a015-20200514
x86_64               randconfig-a013-20200514
x86_64               randconfig-a014-20200514
x86_64               randconfig-a011-20200514
i386                 randconfig-a012-20200513
i386                 randconfig-a016-20200513
i386                 randconfig-a014-20200513
i386                 randconfig-a011-20200513
i386                 randconfig-a013-20200513
i386                 randconfig-a015-20200513
x86_64               randconfig-a005-20200513
x86_64               randconfig-a003-20200513
x86_64               randconfig-a006-20200513
x86_64               randconfig-a004-20200513
x86_64               randconfig-a001-20200513
x86_64               randconfig-a002-20200513
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
x86_64                              defconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
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
