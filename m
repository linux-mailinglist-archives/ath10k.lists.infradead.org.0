Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66E11C7D84
	for <lists+ath10k@lfdr.de>; Thu,  7 May 2020 00:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y/lwtzxCFtlqv+ZT7LdIkK1zq8qurrKLdRxYZrKaeKE=; b=kRD3gxbv2U+GN8
	aLFqClDKDCqshUxQrc3Fe/+Aw6X94tZoLAiqrbT2IQA7DWk9FO3jDktGbeM1ZwBXaCGUE04EeEoAJ
	VhwIamGDvfDaSpLhsfC5wUiQB9UhoZLjryhIp65W7+J4M0InPL9sdW3nrx05JNOlIheLhRwbCXR/2
	613axAGD+EMAY60NPLFlBise4SnfvHvj2MzSzr4+EB47IRAsQeDwgdHAFwCwuO8BS1R8vJDi2LMfY
	+usXPfB05CzV4uVn+TkU2zPZe7vvaGOzOlfRtmSTxcKgLK7LDhI4VHH4BXmM3FTUlidzzBGzf0SSn
	58YyE4oOHQinz/n1qfTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWSkd-0003nk-QQ; Wed, 06 May 2020 22:42:51 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWSkZ-0003mL-A3
 for ath10k@lists.infradead.org; Wed, 06 May 2020 22:42:48 +0000
IronPort-SDR: j8o21iHI6Rw9fdX/a53BW9stOPhIrNeapwzMd8+5ce9apMXsQRBOrjZDwSVrmZMx7DRcHVJIWG
 4b3vEJbCdmhw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 15:42:46 -0700
IronPort-SDR: wVdHuJ6o5BoX1yBGj//Uv2pE6VKwgLOJaOvczlQp9LWeKhhf9IyrOKidm4eAG2iggshdGkkzOk
 cawgwjrq+ZSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,361,1583222400"; d="scan'208";a="295506498"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 06 May 2020 15:42:44 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jWSkW-000IXM-6b; Thu, 07 May 2020 06:42:44 +0800
Date: Thu, 07 May 2020 06:42:33 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:master] BUILD SUCCESS 07b1a202183db53fa4c6bc2379abf53cc1669b2d
Message-ID: <5eb33d59.rKex/0YgXSHX2SVx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_154247_393508_0B4B2A5B 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 1.8 LONGWORDS              Long string of long words
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 3.0 HEXHASH_WORD           Multiple instances of word + hexadecimal hash
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
branch HEAD: 07b1a202183db53fa4c6bc2379abf53cc1669b2d  Add localversion-wireless-testing-ath

elapsed time: 482m

configs tested: 145
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm                              allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
sparc                            allyesconfig
m68k                             allyesconfig
ia64                             allyesconfig
m68k                             allmodconfig
riscv                               defconfig
alpha                            allyesconfig
m68k                                defconfig
powerpc                           allnoconfig
ia64                             alldefconfig
m68k                           sun3_defconfig
sparc64                          allmodconfig
c6x                               allnoconfig
nds32                               defconfig
csky                             allyesconfig
s390                                defconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
m68k                          multi_defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
microblaze                       allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
openrisc                         allyesconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          alldefconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
m68k                 randconfig-a001-20200506
mips                 randconfig-a001-20200506
nds32                randconfig-a001-20200506
parisc               randconfig-a001-20200506
alpha                randconfig-a001-20200506
riscv                randconfig-a001-20200506
h8300                randconfig-a001-20200506
nios2                randconfig-a001-20200506
microblaze           randconfig-a001-20200506
c6x                  randconfig-a001-20200506
sparc64              randconfig-a001-20200506
s390                 randconfig-a001-20200506
xtensa               randconfig-a001-20200506
sh                   randconfig-a001-20200506
openrisc             randconfig-a001-20200506
csky                 randconfig-a001-20200506
xtensa               randconfig-a001-20200507
sh                   randconfig-a001-20200507
openrisc             randconfig-a001-20200507
csky                 randconfig-a001-20200507
x86_64               randconfig-a003-20200506
x86_64               randconfig-a001-20200506
x86_64               randconfig-a002-20200506
i386                 randconfig-a001-20200506
i386                 randconfig-a002-20200506
i386                 randconfig-a003-20200506
x86_64               randconfig-c002-20200507
x86_64               randconfig-c001-20200507
i386                 randconfig-c002-20200507
i386                 randconfig-c003-20200507
x86_64               randconfig-c003-20200507
i386                 randconfig-c001-20200507
i386                 randconfig-e003-20200506
x86_64               randconfig-e003-20200506
x86_64               randconfig-e001-20200506
i386                 randconfig-e002-20200506
i386                 randconfig-e001-20200506
i386                 randconfig-f003-20200506
x86_64               randconfig-f001-20200506
x86_64               randconfig-f003-20200506
x86_64               randconfig-f002-20200506
i386                 randconfig-f001-20200506
i386                 randconfig-f002-20200506
x86_64               randconfig-g003-20200506
i386                 randconfig-g003-20200506
i386                 randconfig-g002-20200506
x86_64               randconfig-g001-20200506
i386                 randconfig-g001-20200506
x86_64               randconfig-g002-20200506
i386                 randconfig-h002-20200506
i386                 randconfig-h001-20200506
i386                 randconfig-h003-20200506
x86_64               randconfig-h002-20200506
x86_64               randconfig-h003-20200506
x86_64               randconfig-h001-20200506
ia64                 randconfig-a001-20200506
arm64                randconfig-a001-20200506
arc                  randconfig-a001-20200506
powerpc              randconfig-a001-20200506
arm                  randconfig-a001-20200506
sparc                randconfig-a001-20200506
riscv                            allyesconfig
riscv                             allnoconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                             alldefconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
um                               allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
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
