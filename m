Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2783915CCF4
	for <lists+ath10k@lfdr.de>; Thu, 13 Feb 2020 22:08:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fi3coAkdVZUoVTV0aQm7LW/nZyCztVq7FmCY7DqO/vM=; b=b04zQ9tLP8vct/
	B95eHQt74+IOhOYg08WQ2249Qx7FWYw2VEmdu1nd4MUx9jcDAvZTGvpYKuE/CL2tcGV5zeyttFZoT
	S6yw8uAmbhNt2oyP1V9QRr12fF+DT9XIUNoltWYIW3ZMKm81IoBtBaPJLLYLJUj1UJVMaV//XoyKo
	NclO4yNjHnDLXIqcJa5BdJd0Un5HjTc0onnv9ijeX+LL4c1MZrWZCNOJo47SC4IyKNfAKEHO18a6v
	Wp5qKdSYzkW5lYtwMDBR1VblekjDFUDvLVFDRiwkNqXttNsH6VrOfBRGlWwF7LUiMPOHGqaINbHy8
	vB2pktFWhExhL6sPYkpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2LiM-0007FW-As; Thu, 13 Feb 2020 21:08:02 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2LiF-00079V-Gd
 for ath10k@lists.infradead.org; Thu, 13 Feb 2020 21:07:57 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 13:07:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,438,1574150400"; d="scan'208";a="227201607"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 13 Feb 2020 13:07:50 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j2LiA-000Clg-6s; Fri, 14 Feb 2020 05:07:50 +0800
Date: Fri, 14 Feb 2020 05:07:21 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath-qca] BUILD SUCCESS
 4da861df7cbea49c045dbf4b80e84298a07b5cdd
Message-ID: <5e45ba89.+lKIXK9u4SNPSHJa%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_130755_569253_F9FC6306 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  ath-qca
branch HEAD: 4da861df7cbea49c045dbf4b80e84298a07b5cdd  Merge branch 'ath-next' into ath-qca

elapsed time: 2886m

configs tested: 245
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm                         at91_dt_defconfig
arm                           efm32_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                        shmobile_defconfig
arm                           sunxi_defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm64                               defconfig
sparc                            allyesconfig
s390                                defconfig
mips                             allmodconfig
um                                  defconfig
nds32                               defconfig
sh                                allnoconfig
xtensa                       common_defconfig
powerpc                           allnoconfig
c6x                              allyesconfig
microblaze                      mmu_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                             defconfig
s390                             alldefconfig
sparc64                           allnoconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
s390                             allmodconfig
powerpc                       ppc64_defconfig
arc                              allyesconfig
csky                                defconfig
i386                                defconfig
openrisc                 simple_smp_defconfig
i386                             alldefconfig
i386                              allnoconfig
i386                             allyesconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                                defconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
xtensa                          iss_defconfig
alpha                               defconfig
nds32                             allnoconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                       m5475evb_defconfig
m68k                          multi_defconfig
m68k                           sun3_defconfig
arc                                 defconfig
powerpc                          rhel-kconfig
microblaze                    nommu_defconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                         b180_defconfig
parisc                        c3000_defconfig
parisc                              defconfig
x86_64               randconfig-a001-20200213
x86_64               randconfig-a002-20200213
x86_64               randconfig-a003-20200213
i386                 randconfig-a001-20200213
i386                 randconfig-a002-20200213
i386                 randconfig-a003-20200213
x86_64               randconfig-a001-20200214
x86_64               randconfig-a002-20200214
x86_64               randconfig-a003-20200214
i386                 randconfig-a001-20200214
i386                 randconfig-a002-20200214
i386                 randconfig-a003-20200214
x86_64               randconfig-a001-20200212
x86_64               randconfig-a002-20200212
x86_64               randconfig-a003-20200212
i386                 randconfig-a001-20200212
i386                 randconfig-a002-20200212
i386                 randconfig-a003-20200212
alpha                randconfig-a001-20200212
m68k                 randconfig-a001-20200212
nds32                randconfig-a001-20200212
parisc               randconfig-a001-20200212
riscv                randconfig-a001-20200212
alpha                randconfig-a001-20200213
m68k                 randconfig-a001-20200213
mips                 randconfig-a001-20200213
nds32                randconfig-a001-20200213
parisc               randconfig-a001-20200213
riscv                randconfig-a001-20200213
c6x                  randconfig-a001-20200213
h8300                randconfig-a001-20200213
microblaze           randconfig-a001-20200213
nios2                randconfig-a001-20200213
sparc64              randconfig-a001-20200213
c6x                  randconfig-a001-20200212
h8300                randconfig-a001-20200212
microblaze           randconfig-a001-20200212
nios2                randconfig-a001-20200212
sparc64              randconfig-a001-20200212
c6x                  randconfig-a001-20200211
h8300                randconfig-a001-20200211
microblaze           randconfig-a001-20200211
nios2                randconfig-a001-20200211
sparc64              randconfig-a001-20200211
csky                 randconfig-a001-20200213
openrisc             randconfig-a001-20200213
s390                 randconfig-a001-20200213
sh                   randconfig-a001-20200213
xtensa               randconfig-a001-20200213
csky                 randconfig-a001-20200212
openrisc             randconfig-a001-20200212
s390                 randconfig-a001-20200212
sh                   randconfig-a001-20200212
xtensa               randconfig-a001-20200212
x86_64               randconfig-b001-20200213
x86_64               randconfig-b002-20200213
x86_64               randconfig-b003-20200213
i386                 randconfig-b001-20200213
i386                 randconfig-b002-20200213
i386                 randconfig-b003-20200213
x86_64               randconfig-b001-20200212
x86_64               randconfig-b002-20200212
x86_64               randconfig-b003-20200212
i386                 randconfig-b001-20200212
i386                 randconfig-b002-20200212
i386                 randconfig-b003-20200212
x86_64               randconfig-b002-20200211
i386                 randconfig-b002-20200211
x86_64               randconfig-b001-20200211
i386                 randconfig-b001-20200211
i386                 randconfig-b003-20200211
x86_64               randconfig-b003-20200211
x86_64               randconfig-c001-20200213
x86_64               randconfig-c002-20200213
x86_64               randconfig-c003-20200213
i386                 randconfig-c001-20200213
i386                 randconfig-c002-20200213
i386                 randconfig-c003-20200213
x86_64               randconfig-c001-20200211
x86_64               randconfig-c002-20200211
x86_64               randconfig-c003-20200211
i386                 randconfig-c001-20200211
i386                 randconfig-c002-20200211
i386                 randconfig-c003-20200211
x86_64               randconfig-c001-20200212
x86_64               randconfig-c002-20200212
x86_64               randconfig-c003-20200212
i386                 randconfig-c001-20200212
i386                 randconfig-c002-20200212
i386                 randconfig-c003-20200212
x86_64               randconfig-d001-20200212
x86_64               randconfig-d002-20200212
x86_64               randconfig-d003-20200212
i386                 randconfig-d001-20200212
i386                 randconfig-d002-20200212
i386                 randconfig-d003-20200212
x86_64               randconfig-d001-20200213
x86_64               randconfig-d002-20200213
x86_64               randconfig-d003-20200213
i386                 randconfig-d001-20200213
i386                 randconfig-d002-20200213
i386                 randconfig-d003-20200213
x86_64               randconfig-e001-20200212
x86_64               randconfig-e002-20200212
x86_64               randconfig-e003-20200212
i386                 randconfig-e001-20200212
i386                 randconfig-e002-20200212
i386                 randconfig-e003-20200212
x86_64               randconfig-e001-20200213
x86_64               randconfig-e002-20200213
x86_64               randconfig-e003-20200213
i386                 randconfig-e001-20200213
i386                 randconfig-e002-20200213
i386                 randconfig-e003-20200213
x86_64               randconfig-f001-20200212
x86_64               randconfig-f002-20200212
x86_64               randconfig-f003-20200212
i386                 randconfig-f001-20200212
i386                 randconfig-f002-20200212
i386                 randconfig-f003-20200212
x86_64               randconfig-f001-20200213
x86_64               randconfig-f002-20200213
x86_64               randconfig-f003-20200213
i386                 randconfig-f001-20200213
i386                 randconfig-f002-20200213
i386                 randconfig-f003-20200213
x86_64               randconfig-g001-20200213
x86_64               randconfig-g002-20200213
x86_64               randconfig-g003-20200213
i386                 randconfig-g001-20200213
i386                 randconfig-g002-20200213
i386                 randconfig-g003-20200213
x86_64               randconfig-g001-20200212
x86_64               randconfig-g002-20200212
x86_64               randconfig-g003-20200212
i386                 randconfig-g001-20200212
i386                 randconfig-g002-20200212
i386                 randconfig-g003-20200212
x86_64               randconfig-h001-20200213
x86_64               randconfig-h002-20200213
x86_64               randconfig-h003-20200213
i386                 randconfig-h001-20200213
i386                 randconfig-h002-20200213
i386                 randconfig-h003-20200213
arc                  randconfig-a001-20200213
arm                  randconfig-a001-20200213
arm64                randconfig-a001-20200213
ia64                 randconfig-a001-20200213
powerpc              randconfig-a001-20200213
sparc                randconfig-a001-20200213
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                          rv32_defconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                       zfcpdump_defconfig
sh                               allmodconfig
sh                          rsk7269_defconfig
sh                            titan_defconfig
sparc                               defconfig
sparc64                          allmodconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
