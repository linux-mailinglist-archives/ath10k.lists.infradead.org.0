Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E79A55D6C
	for <lists+ath10k@lfdr.de>; Wed, 26 Jun 2019 03:28:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwUZGpW0PwOsmEvXnhCeTgoWWbRAIPK+lS2UtdLgmRM=; b=VqPt6GRmI9TUD/
	MXnA5r2dQxsWQ1JBhANmqapzx3Kn4M+369a/bhGnRxFivv6UaKb4j9yAXZo17b8ALF1hltqGAgwpT
	hKbDNx9s9G+VBaQs/uOVUUbCsZt2AIKlmKjyhjafkn/VCWP6ScEur6gMn+CzLwzh6NkHtDNInSIlL
	eKk45mxNCVS/AMJXz960L8zPf0taGH+yBGwUrcAHpmdNVVRPK4QIxT6Pzkc2m2Pr4f4Ygc9QS3aV9
	RcLhvNfTB4Ms0rSszII6VHrXbyS96c8FgnHHS9o7Na0ppJW1/BTXyv0DoEN9orNMGCzBdaWK1zBi9
	zx8XuFLS0xAUnlAd89sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfwjk-0004fD-JE; Wed, 26 Jun 2019 01:28:36 +0000
Received: from ushosting.nmnhosting.com ([66.55.73.32])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfwjd-0004e8-O0
 for ath10k@lists.infradead.org; Wed, 26 Jun 2019 01:28:31 +0000
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id 1D8A72DC731F;
 Tue, 25 Jun 2019 21:28:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1561512509;
 bh=53CwIRf7Bgu2C3nB/E/dYkm1SUmyHI16H7Vrw6tYZw0=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=XYXgZQwV/JVmjvrmmpsEfrzhsSdzQz90TZ3u4A5LuvxvOBf47Fp2ZRE6sw/yQxU8X
 TpjMqn9q/O2CpE5gTKB+jX8JuW3ZvjWwRjKNgYyQtDeLqC3AOTxGIo14uCtoknu1Ie
 FG22iYtvXLRXXqfNrSrJa+rVjda1vgisi7GOJbC+jBgTu/RViRQay4OWXhgCn3Nczb
 R37TlMkpZX8Y+mP/etyzy+OqhHUjAKgompFg31JlAIqUoS4aI+1LPHijcYXXJoVYTq
 Ygr7XlPyBBKYZb2Gi7aXZQsO2+StG1sjXOx+KdwCdKzCFyEWfWEKY/tQLkurs+ph9A
 MUUYKoT1SLivN87ZIKD5usJUxI6X9VbGAq0Giu0wTPvBE4irR3Jbh5NIjNdxwD4tWj
 TuNlZSN8qLv9Snh5uGeZMKYFnfUm7WdcPupOF8k4TJ+2MhVD7L9GTL2CGk9Qoaw7Tt
 MaiNteFekcRUw59fQrYPbrAIf7xqCZ3+cibIiO+j7YlstTAk+6ESZJ9WDAtwep+vAH
 niADVBPNIHpavAj51iob25f8WoSUtiKoWtXOYdL4L28EGQ9w2ayhlYobW1Jykne0xY
 8hbzBb2ugqf6wp6vG7XdsVpanY8BP7CyvaQOvuPAyHTsyukMlhVI18R5nWD5Fmf0gP
 U/5V+IOscL3fg+gbEE7NrBI8=
Received: from adsilva.ozlabs.ibm.com (static-82-10.transact.net.au
 [122.99.82.10] (may be forged)) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x5Q1S75T029659
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Jun 2019 11:28:23 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
Message-ID: <e1b3d172f07f681fed9c311dec67cfb695408f5c.camel@d-silva.org>
Subject: Re: [PATCH v4 4/7] lib/hexdump.c: Replace ascii bool in
 hex_dump_to_buffer with flags
From: "Alastair D'Silva" <alastair@d-silva.org>
To: Joe Perches <joe@perches.com>
Date: Wed, 26 Jun 2019 11:27:53 +1000
In-Reply-To: <4ba3b835fb3675ea685390903a082bf8b7f9e955.camel@perches.com>
References: <20190625031726.12173-1-alastair@au1.ibm.com>
 <20190625031726.12173-5-alastair@au1.ibm.com>
 <3340b520a57e00a483eae170be97316c8d18c22c.camel@perches.com>
 <746098160c4ff6527d573d2af23c403b6d4e5b80.camel@d-silva.org>
 <4ba3b835fb3675ea685390903a082bf8b7f9e955.camel@perches.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Wed, 26 Jun 2019 11:28:23 +1000 (AEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_182829_841661_A4446FAF 
X-CRM114-Status: UNSURE (   5.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-fbdev@vger.kernel.org, Stanislaw Gruszka <sgruszka@redhat.com>,
 Petr Mladek <pmladek@suse.com>, David Airlie <airlied@linux.ie>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devel@driverdev.osuosl.org,
 linux-scsi@vger.kernel.org, Jassi Brar <jassisinghbrar@gmail.com>,
 ath10k@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Jose Abreu <Jose.Abreu@synopsys.com>,
 Tom Lendacky <thomas.lendacky@amd.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-fsdevel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Benson Leung <bleung@chromium.org>, Kalle Valo <kvalo@codeaurora.org>,
 Karsten Keil <isdn@linux-pingi.de>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 David Laight <David.Laight@ACULAB.COM>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

On Mon, 2019-06-24 at 22:19 -0700, Joe Perches wrote:
> On Tue, 2019-06-25 at 15:06 +1000, Alastair D'Silva wrote:
> > The change actions Jani's suggestion:
> > https://lkml.org/lkml/2019/6/20/343
> 
> I suggest not changing any of the existing uses of
> hex_dump_to_buffer and only use hex_dump_to_buffer_ext
> when necessary for your extended use cases.
> 
> 

I disagree, adding a wrapper for the benefit of avoiding touching a
handful of call sites that are easily amended would be adding technical
debt.

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva    
Twitter: @EvilDeece
blog: http://alastair.d-silva.org



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
