Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC581DE4E6
	for <lists+ath10k@lfdr.de>; Fri, 22 May 2020 12:54:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:
	Content-Description:MIME-Version:Message-ID:Cc:Content-ID:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=x5pP9Rt/13S45XBKp2P/xHOrUsLyQmwzPto56BKKpjM=; b=eWV
	R6Dd3dTNHaNv3RW4H9viDHw3HBttpQ0ZX8iCdOtR2lO6eHlvHJhFg8cS6TnnJHVemh2kW+NAdQUvL
	skHmDeaeyBLaXhuCQKs1ZFZU8C6qoE3crNyEmKSBRbP/IIpk3Zlqt3IM4KVvHkIFqIaxdxJ1O169d
	IKlsuZWVpIoX9XVneiXNmZhiyfspfivRLRQCEAlHSN2afkkKTzXqALezF23C2yN2rc/Mh4sVkUEuv
	TlrgVzXVFtUi7fAjDR2/kwtRfRDDdN5QQ2DkXCgtTRYSw8llFQJKacbVkJHr1GX26Rvru4HW4ZXSM
	0ufqaxXJXwAk6+vL3YBjeOc27GNppbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc5K7-0007C3-NZ; Fri, 22 May 2020 10:54:43 +0000
Received: from buffalo.elm.relay.mailchannels.net ([23.83.212.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc5K4-00077U-Hd
 for ath10k@lists.infradead.org; Fri, 22 May 2020 10:54:41 +0000
X-Sender-Id: sozotechnologies|x-authuser|ocean@soweboarts.org
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id E21679202E2
 for <ath10k@lists.infradead.org>; Fri, 22 May 2020 10:53:56 +0000 (UTC)
Received: from server801.thehostgroup.com
 (100-96-9-26.trex.outbound.svc.cluster.local [100.96.9.26])
 (Authenticated sender: sozotechnologies)
 by relay.mailchannels.net (Postfix) with ESMTPA id 474F4920935
 for <ath10k@lists.infradead.org>; Fri, 22 May 2020 10:53:56 +0000 (UTC)
X-Sender-Id: sozotechnologies|x-authuser|ocean@soweboarts.org
Received: from server801.thehostgroup.com (server801.thehostgroup.com
 [65.49.39.15]) (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
 by 0.0.0.0:2500 (trex/5.18.8); Fri, 22 May 2020 10:53:56 +0000
X-MC-Relay: Junk
X-MailChannels-SenderId: sozotechnologies|x-authuser|ocean@soweboarts.org
X-MailChannels-Auth-Id: sozotechnologies
Message-ID: <1590144836582.063e442756066e73@soweboarts.org>
X-Left-Arch: 063e442756066e73_1590144836581_1872696389
X-MC-Loop-Signature: 1590144836581:1152221740
X-MC-Ingress-Time: 1590144836581
Received: from [205.234.159.68] (port=53428)
 by server801.thehostgroup.com with esmtpsa (TLS1) tls
 TLS_DHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93)
 (envelope-from <ocean@soweboarts.org>) id 1jc5Ix-0003rz-Gr
 for ath10k@lists.infradead.org; Fri, 22 May 2020 06:53:31 -0400
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Reminder - [Fri, May 22, 2020 at 10:00 AM]
To: ath10k@lists.infradead.org
From: "Tata Power - DDL"<ocean@soweboarts.org>
Date: Fri, 22 May 2020 03:53:33 -0700
X-Priority: 1 (High)
X-TheHostGroup-MailScanner-Information: Please contact the ISP for more
 information
X-TheHostGroup-MailScanner-ID: 1jc5Ix-0003rz-Gr
X-TheHostGroup-MailScanner: Found to be clean
X-TheHostGroup-MailScanner-SpamCheck: 
X-TheHostGroup-MailScanner-From: ocean@soweboarts.org
X-Spam-Status: No
X-AuthUser: ocean@soweboarts.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_035440_725076_BA648673 
X-CRM114-Status: UNSURE (  -4.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 6.1 (++++++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (6.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [23.83.212.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [dnyy6800[at]rediffmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [23.83.212.24 listed in wl.mailspike.net]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 0.0 FROM_MISSP_XPRIO       Misspaced FROM + X-Priority
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 FROM_MISSPACED         From: missing whitespace
 1.7 FROM_MISSP_REPLYTO     From misspaced, has Reply-To
 1.6 TO_NO_BRKTS_FROM_MSSP  Multiple header formatting problems
 0.0 FROM_MISSP_EH_MATCH    From misspaced, matches envelope
X-Spam-Flag: YES
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
Reply-To: dnyy6800@rediffmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Dear ,

The UN and the  (IMF) has chosen to support 150 Private individuals and small scale business owners from
Pakistan,India,United Arab Emirates, Bahrain, Qatar and Africa.

We have arranged $500K USD  which will be paid to your bank account over there in your country.

In this regards, you are to furnish the requested information to the Directorate of International Payment and transfer.

Contact E-mail:    dnyy6800@rediffmail.com

Best Regards
Director of International Payment

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
