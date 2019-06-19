Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A494C408
	for <lists+ath10k@lfdr.de>; Thu, 20 Jun 2019 01:16:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSSWUE0sS+U+KEQqB7+r8uy1aUm5S2DKNshjVQbUevI=; b=rhtH51Jd5zrmIB
	4ptr9OZtKTKfWEk7pyBRFyUV+wc6klXxKw5vjK0eoiSrppD8h2EtnwTpPh8kZxQX+XrfmQbZMCOAh
	7KW/jmXC9V6WWI6l0V5nZb5P0Hn4gZ7/piM3sJCRQe7db3NFxepQ46H1QmewkB8/cV79IO/FfiqW1
	33B/D5Nc/VycIQEEgfXF3ExjYFZ26sTlnHMWt33nuHaE/6U3SdjB++a+0LHvkT+53EOyGY0HFVX9b
	sCJe4GpU18VpCYd4ZLBAO/bCM4TkYef+qWrPF0ELQOLtvozQ7arDMovI1Nl1gPM4Q+dnSXoIq8NnT
	/AOtQ7QadADqOIk1S39A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdjot-0002vo-M4; Wed, 19 Jun 2019 23:16:47 +0000
Received: from ushosting.nmnhosting.com ([66.55.73.32])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdjoj-0002kP-St
 for ath10k@lists.infradead.org; Wed, 19 Jun 2019 23:16:39 +0000
Received: from mail2.nmnhosting.com (unknown [202.169.106.97])
 by ushosting.nmnhosting.com (Postfix) with ESMTPS id 5F37E2DC005B;
 Wed, 19 Jun 2019 19:16:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=d-silva.org;
 s=201810a; t=1560986188;
 bh=P+nFrCYIAy9nbAT3inDjyh5Nu1AGlpkuYDjYYSTo8SU=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=UMKHysbwL4zdfy50KqutmgBEIg3sB7A1AG+8ItwZQtNEjbw3/kefwvZoa3HJ/qPue
 FtHy3iQpmn+NaSFA3Mu2gOfCMETJuOCnHShThOrTrRi0524godGZCgjbLwEXdIrujV
 xDt+bXPG551xLU30DowKCzCX4sh2ZLCYlpwKny3nSfu6TdTO04XxEEAerz4PtGaObB
 mK5WkSsuK3ES4PAPxgZb+pSYtoFroMpH18T3PLybvLGSjfjyn/CtIMs+blM8XYmdPJ
 TvkZW6Ca8pzYT9RsBfJRAJWjf4qfNG6J0j+xJvEaD7SP/MIMGo1VZ5d/zw4b3FdeYt
 JetXAd65Zd6yavahdde3VtkKoryPECl8+glQZ+N2eRG9ycQ1RafCdpTqdv72F0hGkL
 4apz6zp0SeF0J1KA9qT4u68PJKa7dlMEnKXEomd5VE+2hLj+H2XT6HltLJdB5+pK9G
 cMe1+bLK+ayAWxIXuyZ1/r/oJ5pzAFraInvomTVKBkCfLFy8CdlSIihUmPfej/4psJ
 72/lVeYRJl+IifxxJ9hEA9A+QWlY8W986ROsAQ5xOTxmaRzXMnnZRdFLVPZt5axFGD
 EQ+IOd3b5ZUWjk3U7T3wAvcchJQaqLNw/Njxg2yMVkYsKSYnAMuX4DYn+A7LJX3oLF
 sv3nSS3HZsRxp6mS1j36fWkI=
Received: from adsilva.ozlabs.ibm.com (static-82-10.transact.net.au
 [122.99.82.10] (may be forged)) (authenticated bits=0)
 by mail2.nmnhosting.com (8.15.2/8.15.2) with ESMTPSA id x5JNFxcT078663
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 20 Jun 2019 09:16:14 +1000 (AEST)
 (envelope-from alastair@d-silva.org)
Message-ID: <c68cb819257f251cbb66f8998a95c31cebe2d72e.camel@d-silva.org>
Subject: Re: [PATCH v3 0/7] Hexdump Enhancements
From: "Alastair D'Silva" <alastair@d-silva.org>
To: Joe Perches <joe@perches.com>
Date: Thu, 20 Jun 2019 09:15:58 +1000
In-Reply-To: <9a000734375c0801fc16b71f4be1235f9b857772.camel@perches.com>
References: <20190617020430.8708-1-alastair@au1.ibm.com>
 <9a000734375c0801fc16b71f4be1235f9b857772.camel@perches.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.2
 (mail2.nmnhosting.com [10.0.1.20]); Thu, 20 Jun 2019 09:16:24 +1000 (AEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_161637_951577_614F00C9 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, 2019-06-19 at 09:31 -0700, Joe Perches wrote:
> On Mon, 2019-06-17 at 12:04 +1000, Alastair D'Silva wrote:
> > From: Alastair D'Silva <alastair@d-silva.org>
> > 
> > Apologies for the large CC list, it's a heads up for those
> > responsible
> > for subsystems where a prototype change in generic code causes a
> > change
> > in those subsystems.
> > 
> > This series enhances hexdump.
> 
> Still not a fan of these patches.

I'm afraid there's not too much action I can take on that, I'm happy to
address specific issues though.

> 
> > These improve the readability of the dumped data in certain
> > situations
> > (eg. wide terminals are available, many lines of empty bytes exist,
> > etc).
> 
> Changing hexdump's last argument from bool to int is odd.
> 

Think of it as replacing a single boolean with many booleans.

> Perhaps a new function should be added instead of changing
> the existing hexdump.
> 

There's only a handful of consumers, I don't think there is a value-add 
in creating more wrappers vs updating the existing callers.

-- 
Alastair D'Silva           mob: 0423 762 819
skype: alastair_dsilva    
Twitter: @EvilDeece
blog: http://alastair.d-silva.org



_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
