Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ECAF2CE1
	for <lists+ath10k@lfdr.de>; Thu,  7 Nov 2019 11:55:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTcySkddjTcODn6fLsFHasipfahJIK39X1978pULh84=; b=udEHtMXKo1V3Gg
	21T8Sf4qH1IX19Acev17i8HgD9Fh4pAJvf09HHVGuS/r3gAVo1ZDrDilIbBct1W/sqvAn+dvNrgMh
	+td6jk1Qugznwv58C/4niIBbo102ohOhxqA8h+cUo4erEx80RnmC0eHpiQej1OBHPo2OcJXyOiWZV
	2ryOERaKZ2b/8B2oHnxKJy5iC5f38aYGXaHnfYzRMpjbCdu0h/hVfKZ1b0EGHibGLhWr3ltCbLSR1
	y2+WocSxdUBwP4iCQ0UfMVFqayDUuyNPGEdQxW/iCoeVfzHGZO5bsjXb/WyaNLlgV++HLpV2x2wob
	kkxwPZoLz1tLHY/Jj8HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSfRb-0002X6-5V; Thu, 07 Nov 2019 10:55:15 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSfRX-0002RF-AA
 for ath10k@lists.infradead.org; Thu, 07 Nov 2019 10:55:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573124109;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q4pL4jpvKYALp1ZmBjwLiX5kLjNlt9sKgPX3+ptzxho=;
 b=hBeWLmJg0N+Sf+bzGXoQaVHGqCWgT97zgYCwFcRSBCoE3SlMEdwEGsU6h6Cw29cNgQ+NM2
 Pit1L9Vbtc92+V9g0eIJ+z+80vrNCUvBPMKepBnEzXDGJgd1RZriEo2TPIAwYQiYj1j4Rq
 7JfU6WImq3/26VM+2L6DgbQct/jvecQ=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-5-bNdJ10mbOf2rLadHcHbGNg-1; Thu, 07 Nov 2019 05:55:07 -0500
Received: by mail-ed1-f70.google.com with SMTP id j21so1105690edv.20
 for <ath10k@lists.infradead.org>; Thu, 07 Nov 2019 02:55:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Q4pL4jpvKYALp1ZmBjwLiX5kLjNlt9sKgPX3+ptzxho=;
 b=sXluZv7NhlLWON/vi/Ci20vk2iqlVcc6Gs98jEaT/d0s0ewuhoCCZM2CRTY74KWyDv
 /fROeokOlRuoj27lAagC2QpxIUi+QUFtqLCqmCPJGgcuZIJC+sUSxR2aEGuygDYoTPhB
 yub4ZrmYQds0hxCcslTxgJliTawYEHmZI//XPUxojLsBFSetT8F530qSeUw7p9Azlc5R
 FloCEvW71gt07zlQwPwe/H6CR7/LPnJGeVcnsz9gM3Z4/YQdFdU1fgRCeDQgIaPigaEs
 H9C3fr5yY8yJe6YN/tL30vdqPwy/kznTJmnNCZtSzUOcWWCzxx4UWVC3v38T4PZYcJ9P
 TxqQ==
X-Gm-Message-State: APjAAAUatp799YPYHxSZE6vI7awo8JcIBL2QyywbVShMDmIkOy05iaaa
 W/f1pa5ObqawU++0/ADPBIJjCLsrmUr8wnsQL80QijlGju+bo1hQF3sY6Ssk6rLFV89aysj2yOr
 oyl1ndpRiDKcEcn6TVaL4Ow==
X-Received: by 2002:a17:907:36e:: with SMTP id
 rs14mr2343749ejb.330.1573124106644; 
 Thu, 07 Nov 2019 02:55:06 -0800 (PST)
X-Google-Smtp-Source: APXvYqyEpX0MtxlKhDZdMCOWAf1U4DukYDNvzzciu6G2l7tjeepUbmDJuI635gQspWdEjys3zMh9Jg==
X-Received: by 2002:a17:907:36e:: with SMTP id
 rs14mr2343731ejb.330.1573124106481; 
 Thu, 07 Nov 2019 02:55:06 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id x6sm54134edc.50.2019.11.07.02.55.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 02:55:05 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 2B6091818B5; Thu,  7 Nov 2019 11:55:05 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Kan Yan <kyan@google.com>
Subject: Re: [PATCH v6 0/4] Add Airtime Queue Limits (AQL) to mac80211
In-Reply-To: <CA+iem5s6jDNR+yA21UB_zJiZeVxix_QaO6RYw6sN69j2859zFw@mail.gmail.com>
References: <157182473951.150713.7978051149956899705.stgit@toke.dk>
 <CA+iem5s6jDNR+yA21UB_zJiZeVxix_QaO6RYw6sN69j2859zFw@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 07 Nov 2019 11:55:05 +0100
Message-ID: <874kzggdme.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: bNdJ10mbOf2rLadHcHbGNg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_025511_432278_B2175818 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Johannes Berg <johannes@sipsolutions.net>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Kan Yan <kyan@google.com> writes:

> Patchset v6 works for me with ath10k driver.  AQL does its job as
> expected and tests show very significant reduction in latency in
> congested environment. The txq stuck issue in patchset v4 got fixed.

Awesome! Thank you for testing!

> However, the device's total pending airtime count still underflows
> sometimes. Even though it doesn't cause apparent side effect, there is
> some issue with the pending airtime update and needs further
> debugging.

Huh, it *under*flows? That's... interesting. Cloned SKBs? Or maybe the
tx_time_est field is being set in some other place?

Could I get you to add a dump_stack() to the underflow test so we can
get an idea of where that happens?

-Toke


_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
