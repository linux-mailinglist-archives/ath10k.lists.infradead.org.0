Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F9216171
	for <lists+ath10k@lfdr.de>; Tue,  7 May 2019 11:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TXtH9KExitZpVSFyyOyVBRdWorF5DGo6k+zJE1Z9SLA=; b=mbvaC/kPIbHYsN
	ynMIPFqePpHiXoEqbVnvj7mv+8l+tLMu7SlNl2RLdXKQWrTsAXQ8MIkPTSTITrFQh+bYUIq3exWXh
	ho1lpypHbDno+iD1mQp691WSsMNn9BeHtFP1YaYtVN2CSlJ9MlovxzTh5Tb8zWEOdoCj2KgImbIdZ
	KVZF6v4Amt+kxUmDQNGK1MAqgGQNPVgmGlg9EGwq/lSYGRCShJIoi70DRKQHGDMf5cCe9PM+/3lLz
	CjLiFYsBvBHxr94+U5+F2JT9F3DQa66yOYTTr+VBfBJfaf4LiiPqNTE1OAYanxRq/akHv8Nc+AtLL
	ThRP0V7sJmFCxfRe1bNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwlJ-0005YV-MO; Tue, 07 May 2019 09:51:49 +0000
Received: from visuela.unizar.es ([155.210.1.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwlF-0005Y2-RD
 for ath10k@lists.infradead.org; Tue, 07 May 2019 09:51:47 +0000
Received: from gtc1pc12.cps.unizar.es ([155.210.158.17] helo=usuarioPC)
 by visuela.unizar.es with esmtpa (Exim 4.89)
 (envelope-from <jsaldana@unizar.es>)
 id 1hNwlD-0006CM-W2; Tue, 07 May 2019 11:51:44 +0200
From: "Jose Saldana" <jsaldana@unizar.es>
To: <vincent.guenat@zii.aero>
Subject: Re: Re: [ath10k USB QCA9377] Driver fails to initialize Linksys device
Date: Tue, 7 May 2019 11:51:45 +0200
Message-ID: <002a01d504ba$7b3b9c30$71b2d490$@unizar.es>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdUEunsCOuxQG2D0RWWT2TnHIfLqiw==
Content-Language: es
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_025146_026405_F543BA73 
X-CRM114-Status: UNSURE (   2.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [155.210.1.100 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: ath10k@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Dear Vincent,

I have seen your post about Linksys WUSB6100M USB (QCA9377), and I would
like to know if you finally managed to make it work.

http://lists.infradead.org/pipermail/ath10k/2018-September/012071.html

I am using kernel 4.19.

Thanks in advance!

Jose


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
