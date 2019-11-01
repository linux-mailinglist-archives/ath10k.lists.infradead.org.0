Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E200EC731
	for <lists+ath10k@lfdr.de>; Fri,  1 Nov 2019 18:03:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hIGCiAMtAgRBJYBZnnUbr3mw06QfxCG8DAJctpauETo=; b=lVpZ1Nq5lAZ4gb
	5RSa95XtVeCzIinGq/R0ZuAkh7XLw6oZv23SB7oR883O8jOALcI6zllO9gAXgRn4ztfCjefCtwplw
	GBKWKsK6jldmdgHhvcj72L1HLim4HjIyxFq4/uERBrLqvhOBt574k4lw+z1TS3SUw9hwRVJ+LbXuI
	0j8Fu+Xj39BysALylklQH7VVzHHdu/l1BpLuHa6v+rtn/XuR8GeDy+vTZ8ZiqBvFRM1ixxgqCacmL
	TSxB6fbYB1KrHQXQR5ptcaOnDR+ceaWHvM8z10+5ITKHDVuG3UOSt3ufes1pe4UqVDDifHK1ke9/c
	4PlZM5tQOt0P178Crwng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQaKr-00009p-Ep; Fri, 01 Nov 2019 17:03:41 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQaKo-00009Q-En
 for ath10k@lists.infradead.org; Fri, 01 Nov 2019 17:03:39 +0000
Received: by mail-oi1-x230.google.com with SMTP id n16so8749873oig.2
 for <ath10k@lists.infradead.org>; Fri, 01 Nov 2019 10:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=nbSFtak1O3UwnxaQBm0ucn+fe7UGXwhE5nnddEBZqow=;
 b=r7O0Yy+VgEy6hVKre4HYjx+85FRbDNOEWAlZSR08Ks/9lhBzd0R9pPYZdG5gInjNOO
 diKWMdxGQpMLVG+2sTYFMZ+uGm1LJfyR7WroDFaPgUNNLDrZv0+dUy73B6QpthaI56Ms
 FSj1DGT/kPYMUo4cpQnALnnB2gSajwINozpP0jW0cEmd6d9PUahgUTT/1pak+o4eKLpJ
 C0TugoH7lz/G/dd0hGVbBSlFRPNp232lB986xDsEudvtn+w59UfQcyhSWoBQ8w0I93dK
 xLIMKGPnFF/VBp6shCrR8x6ewf9Yed6UkD/RK2iG7MQB++4/yLnI8eughHJMx7TycUXr
 KtWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=nbSFtak1O3UwnxaQBm0ucn+fe7UGXwhE5nnddEBZqow=;
 b=X7Qln/l3rWvwWXILz0i7JOol4AwhGXO/62GH9jm/ydv40ckgn4QApY5VayNrRaZFoI
 iGUUqjRHzC/fI0seLN50VmgWkIdQm29Hm3f9gUg5+iowoobtlHY7kI48F3oBHTFZsF9P
 8DUGuwCl3MfA2tWSzrQtJhq610VdAtKxsnQZ02S16d1z1K00vyuBjWpQYhTaIPxYibl2
 jwmIi6OGWhumoG1MaGi6Z7PUTDNeQicZQCTOnTDB6laJjyZ1+aLU16RfevxUmOPCegmF
 gdZ2IvxEuBi61mW/OGLCME2v0LuZ/kc8uwH6ImVJ6QEt1xFPvw6BlqRgrjjL0d7D0KFJ
 HQKw==
X-Gm-Message-State: APjAAAXAHfavvqpY0f0doVofwQgQnL6beTIdVN4T4wlFsj5+2C+B1bZZ
 4iMErQpGftINM5okPf0IuJMi6bO97puLs386Y8mAHYYu
X-Google-Smtp-Source: APXvYqwhy7pq2vWx+VYPLaYlpEadZ5guse7bAZE+zzN+Zm7Elv6Ty+NGak7Koaz+IHjmCj9GjUYFwdd4WYKVhR5Xs1Q=
X-Received: by 2002:a54:448b:: with SMTP id v11mr3944220oiv.155.1572627817258; 
 Fri, 01 Nov 2019 10:03:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7511:0:0:0:0:0 with HTTP;
 Fri, 1 Nov 2019 10:03:36 -0700 (PDT)
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Fri, 1 Nov 2019 18:03:36 +0100
Message-ID: <CAKR_QVJ2eHrESLOEqiKxbjr0SoZh3oJydtgcebBOXSpspbquWA@mail.gmail.com>
Subject: [RFC] ath10k: interface combination with monitor
To: ath10k <ath10k@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_100338_496905_9A737C39 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:230 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Hi

Is there a way to run monitor mode interface independent on STA/AP
interface presence or their state?
I am using airodump-ng/airmon-ng and I've noticed that while mon
interface is brought up airodump-ng is unable to find any beacons
unless sta interface is brought down. That is with QCA9880 devices,
while with QCA9377 airodump-ng only finds beacons if the sta interface
is associated to an AP.
Does this need firmware change to work or driver changes are sufficient?

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
