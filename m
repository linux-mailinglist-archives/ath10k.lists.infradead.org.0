Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7243E125F97
	for <lists+ath10k@lfdr.de>; Thu, 19 Dec 2019 11:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vyoCcG8FCtjnoGLlbARYSkVZdoyNQwhwzOtfflEvmNc=; b=poWHPcelrffTuVkLpuUlrxUM/
	aOuU7ldGH4H2fk6ZoO3ilPfRuynBsTK1OM8nD97aOIQL35jPjNOrNhJuyXrnByhr0SEaSbQFoNyQR
	5QZLOG6um/58kYoa4Yaw4rQzTcOvTzeWdkDJAvac9XhEXcsruc7MDIjwIJk8HZK1QbrpIzMym6j8d
	/VB4lHagLnfd2JZrGQVBhc2YYTn0RJQjO2fqK+Uq4M17NXT0zLdscvxfXepZPrRx+wdVO6nyfR332
	mf8cme5r0KXUgllb4Gxn+MdNe5u3TJz/hCDXyuGHammEkFEItkuCaFb10EMo72UEcN9HSWgRudaZ+
	99iS52nVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihtJ5-00031w-Ko; Thu, 19 Dec 2019 10:45:23 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihtHv-0000tW-Ks
 for ath10k@lists.infradead.org; Thu, 19 Dec 2019 10:44:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=OsohWArkWEPoVS5FuJVbMQnUzuUpi+LDCzCNrpipREo=; 
 b=hk7wgjV5PMFoURiB+dqYPuMjG+bE0b47BfJIKA3InTw6LwRy5ff3I/gF6HKeDuWjxJnDrVvQkPohtB6wORlIxZcWfXKO3ftFGdLLjVIEx/r6VxwhvUzodqagKKE3xTA5G+x/NrY10L0YoGrn4P0k3UbBTaJnRivYg1AET+8laVE=;
Subject: Re: [RESEND] ath10k: add tx hw 802.11 encapusaltion offloading support
To: Tom Psyborg <pozega.tomislav@gmail.com>
References: <20191216092207.31032-1-john@phrozen.org>
 <20191217153000.76AB1C4479C@smtp.codeaurora.org>
 <CAKR_QVJVfqid8i5PXj3Yg8VJjht=MF2fZg+twkLgEkKuMB2bbQ@mail.gmail.com>
 <CAKR_QVJ1PhCHfAO5Rp6pm-wjAO-HcZiq-9Lw67FzBFO5jjYtbA@mail.gmail.com>
 <d24c7821-4e5e-28b5-5d1d-f076cfd762fc@newmedia-net.de>
 <CAKR_QVLKfoo15EqszGSZ9zf6YnfEkih9=PeB0d92k3i0SJZfxQ@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <000eaa2a-4798-a855-93a9-c9679b8860c8@newmedia-net.de>
Date: Thu, 19 Dec 2019 11:44:04 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAKR_QVLKfoo15EqszGSZ9zf6YnfEkih9=PeB0d92k3i0SJZfxQ@mail.gmail.com>
X-Received: from [2a01:7700:8040:3500:48a8:bbb8:ef3d:ceb1]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1ihtGT-0007Xt-PP; Thu, 19 Dec 2019 11:42:41 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_024412_975161_1EDB851F 
X-CRM114-Status: UNSURE (   5.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vasanthakumar Thiagarajan <vthiagar@qti.qualcomm.com>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org


> no way. check that you applied code correctly and enabled ethernetmode
> parameter. iperf or ping also wouldn't start from wired machine in
> ethernetmode unless pinged from wireless machine first
let me verify this again. maybe i'm wrong.
>

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
