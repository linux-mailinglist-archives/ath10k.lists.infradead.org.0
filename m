Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 633CFD3D86
	for <lists+ath10k@lfdr.de>; Fri, 11 Oct 2019 12:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BDLsfb4Gue1zM9KByKM51li3o7WhpkexeZyE105rXmE=; b=e3wtvuD1hfm+A1
	7SHgKuMqZCu6cF7FmjUbq5201f07FPDJv+/GyA2lDphZ58BtW5gmj6CmEqwZYYRPRlJl3m0BPvW9M
	ZiikD0ImjxS6ZrGJzoS5etMFutlMlNp6m/7E0V1RX2wbhENnBCLWMvKra1vy76KbeLhW6hoJ1lMsc
	TPY41yyEQG9qJlGehw4PC/fDvsZav1g9xvHTJ7DGy1dWAL86geD2HQBU4SYm+d/3VAk7GzByH+mdP
	1aP+ooK3ZugrJhZhTx+8QNVdayHK6lopFaPXGAVEfHFlRgsb4eMCZqjvSllYfVLW79lPEh4chf3MK
	oWmA6Q7qtMlDNrM/VQcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsIm-0004oE-FE; Fri, 11 Oct 2019 10:37:40 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsIi-0004no-Fo
 for ath10k@lists.infradead.org; Fri, 11 Oct 2019 10:37:38 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BATenw031315;
 Fri, 11 Oct 2019 10:37:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : mime-version : content-type; s=corp-2019-08-05;
 bh=xovLPb/xns3A30L5OK2scEObAPLCejgVEcW2TUw5zmM=;
 b=HbzXzsqAONfUJ0oVQwnpt8Jdxe2FEw+FD2NHa2PsZRZUhlgEXbjUb5+1Ar8kmUcuPcA/
 w+VqzpNCaIo1cX8KlUG+YbZtDF3Xg+2RhZrFCwGwI7unBxmmxiATco/vL1uppIxtEAxv
 zImx4TA4HgOGxmtkWd+wIgD6ILq24jt9FQkn4Fo0g7GSlZc+jUuC/xfGrD2anNB+C/Jv
 JaBcs/XGyiiRkeEd5vnki0/HTooUMnfkoeKh8RXq91UqhHEBO13OfvcBu9bTz1GBKc8M
 f8Vrk67GXcwiiZQCfO2ZwP6RnCCgBvOE4mrOlXlG/BqOJvLzuC5Lkt9Av7zg8QNx039Z qQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2vejkv0rtx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 10:37:29 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9BAXo3Q120251;
 Fri, 11 Oct 2019 10:37:29 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2vhrxg7vtg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 11 Oct 2019 10:37:28 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9BAbRpH022329;
 Fri, 11 Oct 2019 10:37:27 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 11 Oct 2019 03:37:27 -0700
Date: Fri, 11 Oct 2019 13:37:19 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: kbuild@lists.01.org, Kalle Valo <kvalo@codeaurora.org>
Subject: [ath6kl:pending-ath11k 316/345]
 drivers/net/wireless/ath/ath11k/debug.c:575 ath11k_write_simulate_fw_crash()
 error: we previously assumed 'ar' could be null (see line 549)
Message-ID: <20191011103719.GR13286@kadam>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110100
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9406
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910110100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_033736_570020_4C201DC8 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kbuild-all@lists.01.org, ath10k@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git pending-ath11k
head:   727f4796623292eb33ce560a3e25ba0040d17871
commit: 75a016fcc8f79a7d650462c69bb28aa886b4f09e [316/345] ath11k: cleanup and rename ath11k_send_crash_inject_cmd()

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>

New smatch warnings:
drivers/net/wireless/ath/ath11k/debug.c:575 ath11k_write_simulate_fw_crash() error: we previously assumed 'ar' could be null (see line 549)

Old smatch warnings:
drivers/net/wireless/ath/ath11k/debug.c:566 ath11k_write_simulate_fw_crash() error: uninitialized symbol 'radioup'.

# https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git/commit/?id=75a016fcc8f79a7d650462c69bb28aa886b4f09e
git remote add ath6kl https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/ath.git
git remote update ath6kl
git checkout 75a016fcc8f79a7d650462c69bb28aa886b4f09e
vim +/ar +575 drivers/net/wireless/ath/ath11k/debug.c

258bbf525e652e Kalle Valo                2019-02-05  535  static ssize_t ath11k_write_simulate_fw_crash(struct file *file,
258bbf525e652e Kalle Valo                2019-02-05  536  					      const char __user *user_buf,
258bbf525e652e Kalle Valo                2019-02-05  537  					      size_t count, loff_t *ppos)
258bbf525e652e Kalle Valo                2019-02-05  538  {
d25cb35c6f10ac Sathishkumar Muruganandam 2019-02-13  539  	struct ath11k_base *ab = file->private_data;
5cf3588467b76d Pradeep Kumar Chitrapu    2019-03-15  540  	struct ath11k_pdev *pdev;
d25cb35c6f10ac Sathishkumar Muruganandam 2019-02-13  541  	struct ath11k *ar = ab->pdevs[0].ar;
258bbf525e652e Kalle Valo                2019-02-05  542  	char buf[32] = {0};
258bbf525e652e Kalle Valo                2019-02-05  543  	ssize_t rc;
5cf3588467b76d Pradeep Kumar Chitrapu    2019-03-15  544  	int i, ret, radioup;
                                                                            ^^^^^^^
The real bug is that this isn't initialized.

258bbf525e652e Kalle Valo                2019-02-05  545  
5cf3588467b76d Pradeep Kumar Chitrapu    2019-03-15  546  	for (i = 0; i < ab->num_radios; i++) {
5cf3588467b76d Pradeep Kumar Chitrapu    2019-03-15  547  		pdev = &ab->pdevs[i];
5cf3588467b76d Pradeep Kumar Chitrapu    2019-03-15  548  		ar = pdev->ar;
5cf3588467b76d Pradeep Kumar Chitrapu    2019-03-15 @549  		if (ar && ar->state == ATH11K_STATE_ON) {
5cf3588467b76d Pradeep Kumar Chitrapu    2019-03-15  550  			radioup = 1;
5cf3588467b76d Pradeep Kumar Chitrapu    2019-03-15  551  			break;
5cf3588467b76d Pradeep Kumar Chitrapu    2019-03-15  552  		}
5cf3588467b76d Pradeep Kumar Chitrapu    2019-03-15  553  	}
258bbf525e652e Kalle Valo                2019-02-05  554  	/* filter partial writes and invalid commands */
258bbf525e652e Kalle Valo                2019-02-05  555  	if (*ppos != 0 || count >= sizeof(buf) || count == 0)
258bbf525e652e Kalle Valo                2019-02-05  556  		return -EINVAL;
258bbf525e652e Kalle Valo                2019-02-05  557  
258bbf525e652e Kalle Valo                2019-02-05  558  	rc = simple_write_to_buffer(buf, sizeof(buf) - 1, ppos, user_buf, count);
258bbf525e652e Kalle Valo                2019-02-05  559  	if (rc < 0)
258bbf525e652e Kalle Valo                2019-02-05  560  		return rc;
258bbf525e652e Kalle Valo                2019-02-05  561  
258bbf525e652e Kalle Valo                2019-02-05  562  	/* drop the possible '\n' from the end */
258bbf525e652e Kalle Valo                2019-02-05  563  	if (buf[*ppos - 1] == '\n')
258bbf525e652e Kalle Valo                2019-02-05  564  		buf[*ppos - 1] = '\0';
258bbf525e652e Kalle Valo                2019-02-05  565  
5cf3588467b76d Pradeep Kumar Chitrapu    2019-03-15  566  	if (radioup == 0) {
                                                                    ^^^^^^^^^^^^
So this is meaningless.  Why not check if (i == ab->num_radios) instead?

258bbf525e652e Kalle Valo                2019-02-05  567  		ret = -ENETDOWN;
258bbf525e652e Kalle Valo                2019-02-05  568  		goto exit;
258bbf525e652e Kalle Valo                2019-02-05  569  	}
258bbf525e652e Kalle Valo                2019-02-05  570  
258bbf525e652e Kalle Valo                2019-02-05  571  	if (!strcmp(buf, "assert")) {
d25cb35c6f10ac Sathishkumar Muruganandam 2019-02-13  572  		ath11k_info(ab, "simulating firmware assert crash\n");
75a016fcc8f79a Kalle Valo                2019-08-09  573  		ret = ath11k_wmi_force_fw_hang_cmd(ar,
75a016fcc8f79a Kalle Valo                2019-08-09  574  						   ATH11K_WMI_FW_HANG_ASSERT_TYPE,
75a016fcc8f79a Kalle Valo                2019-08-09 @575  						   ATH11K_WMI_FW_HANG_DELAY);
258bbf525e652e Kalle Valo                2019-02-05  576  	} else {
258bbf525e652e Kalle Valo                2019-02-05  577  		ret = -EINVAL;
258bbf525e652e Kalle Valo                2019-02-05  578  		goto exit;
258bbf525e652e Kalle Valo                2019-02-05  579  	}
258bbf525e652e Kalle Valo                2019-02-05  580  
258bbf525e652e Kalle Valo                2019-02-05  581  	if (ret) {
d25cb35c6f10ac Sathishkumar Muruganandam 2019-02-13  582  		ath11k_warn(ab, "failed to simulate firmware crash: %d\n", ret);
258bbf525e652e Kalle Valo                2019-02-05  583  		goto exit;
258bbf525e652e Kalle Valo                2019-02-05  584  	}
258bbf525e652e Kalle Valo                2019-02-05  585  
258bbf525e652e Kalle Valo                2019-02-05  586  	ret = count;
258bbf525e652e Kalle Valo                2019-02-05  587  
258bbf525e652e Kalle Valo                2019-02-05  588  exit:
258bbf525e652e Kalle Valo                2019-02-05  589  	return ret;
258bbf525e652e Kalle Valo                2019-02-05  590  }

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
