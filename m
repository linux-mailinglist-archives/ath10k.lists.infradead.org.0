Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A28401CFBBC
	for <lists+ath10k@lfdr.de>; Tue, 12 May 2020 19:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j4iPdNJdwMBUbI51zPzkklkGElXfvwt0xGd8PU4WqfU=; b=cI5hKj/YUR4HfK
	FTdzLGb6Y8VNxCix/pFH6rinAYQJ9oyItoYrW7BC168Wh/dZZBVUxkFtkWyBFBYRJivRaIT6Bf0w9
	7Dlnc4kvgX7JamlTqMbq/79HG2mMoiOVTkDwF9qEycJp8DDjM4Z0l1tjS1wwCK4w4Tnsk39MpX0zP
	2hMfV8nJXjtEhVkhovN1mYCgsIX5HAZVmvR9/J9kzxYtGXY1NNfEioyQFzA1DAcGQ5GnkNpL7wA+6
	HoGaaBTMgJJ1FMUpH0NrEF3wlonciK3kBYQrRLonU2urp2quRHWkms2IwkpzKxql5caKYburytXQq
	0CG73MpLwd64zAtfmEng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYYUp-0001td-7v; Tue, 12 May 2020 17:15:11 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYUj-0000jq-Aa
 for ath10k@lists.infradead.org; Tue, 12 May 2020 17:15:07 +0000
IronPort-SDR: 1nekDI7ls16ZJqi74XdcA9QZldMZNvTNQ5gRA91/GVRMlwMJucgAUgwlJ4cNb0u0PtPQNb2gT3
 I8DWxY7vTH1Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 10:15:03 -0700
IronPort-SDR: l9PDTSDelmL/NaKBB4T0w0bnRyYUTzg6/JSxvecB3pkClMJAH5vxfkacVo+CdCf+RDN898XMN0
 TpsKAZEtRvqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="306537167"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 12 May 2020 10:15:01 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jYYUe-000CvO-OS; Wed, 13 May 2020 01:15:00 +0800
Date: Wed, 13 May 2020 01:14:40 +0800
From: kbuild test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:ath-qca] BUILD SUCCESS
 530d13da64f2b4cdef96abb28c322a8db488268d
Message-ID: <5ebad980.eGXDyIhjwKuERB1R%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_101505_429439_A4FA4495 
X-CRM114-Status: UNSURE (   6.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git  ath-qca
branch HEAD: 530d13da64f2b4cdef96abb28c322a8db488268d  Merge branch 'ath-next' into ath-qca

elapsed time: 523m

configs tested: 100
configs skipped: 3

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
m68k                             allyesconfig
sh                             sh03_defconfig
riscv                            allyesconfig
arm                         lpc32xx_defconfig
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
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20200512
i386                 randconfig-a005-20200512
i386                 randconfig-a003-20200512
i386                 randconfig-a001-20200512
i386                 randconfig-a004-20200512
i386                 randconfig-a002-20200512
x86_64               randconfig-a016-20200512
x86_64               randconfig-a012-20200512
x86_64               randconfig-a015-20200512
x86_64               randconfig-a013-20200512
x86_64               randconfig-a014-20200512
x86_64               randconfig-a011-20200512
i386                 randconfig-a012-20200512
i386                 randconfig-a016-20200512
i386                 randconfig-a014-20200512
i386                 randconfig-a011-20200512
i386                 randconfig-a013-20200512
i386                 randconfig-a015-20200512
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
x86_64                              defconfig
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
