Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC24A4153
	for <lists+ath10k@lfdr.de>; Sat, 31 Aug 2019 02:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GoOcjG7GciDO9O3qLxbHN9gwpyd7LD13mZLHSMy2Ots=; b=lK0Yfa7DHu2Dbl
	NMNaUcBScHhZzf8B+ZJ6HAOo4OrvmmXn1erVGxsZO2fepvh3NAJePnwY99HGo1fCX7xyozaO453NF
	70exI6pSXivs+uPXuUUT4Gg7ZVUKDwNUqI9zL9HLFIc6WrDBD3WqCXrPHcgpF8dQe01//ht8b740L
	kdWU29MMF8vJVdtYaosXD2+b0wUA7iNQRKb6BPdEDKvcenwHb4we4ZiEO3BU6wMI2pWPvrTRBTeTD
	4rSzuGRaWJvgWRj+XFoPC7zmo3j4mNDmdeOgIQQ0rgg8yzJnenRFjKfPrnMH9B+yzqKgoLAEZmggA
	Vz68DlhgllbNRaaZ9Pug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3rI6-00033B-TU; Sat, 31 Aug 2019 00:30:55 +0000
Received: from mail-yw1-xc30.google.com ([2607:f8b0:4864:20::c30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3rI0-00032m-Vt
 for ath10k@lists.infradead.org; Sat, 31 Aug 2019 00:30:50 +0000
Received: by mail-yw1-xc30.google.com with SMTP id z64so2984024ywe.7
 for <ath10k@lists.infradead.org>; Fri, 30 Aug 2019 17:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=vXQNyIVwxl8vIvPk12N2828MamZVgSLMDk2FHuj+gM0=;
 b=pgSMdq3Bz/AJOP1uLoaGRx0USJ1N+vHVyAU/k8+1mjlxbpqxweulcZAclDt7vWtUlh
 18bVlabIzda0UH1VMEgUpfGv+QT5q+hZ5NqxJ6YTlV4ydGMsr8ys4dNuNc2/QE8zlRye
 M/RJa9HNeW7lorEGOEBp/gQ7bKWMV9pgtTvTuTZe11AymA4cX5Xu1ZwWwbSbCFokhXiv
 7TSluigT9wOFnLcGXrRGGKbJDKY5rik1Iw8KKmMaPP+CMbuA9X6UjSH7O6PrbSwIhlY+
 dYeBC14wT3SDvNDrdlet3O3aL7dxol0vRT7pJNp7OND7dAQVIjstmMcmFYO7VEMbRJVv
 fulg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=vXQNyIVwxl8vIvPk12N2828MamZVgSLMDk2FHuj+gM0=;
 b=Jz4T9u4+QiDdIuJo2SepMvMYET8clQmBQ4cF63Ty+DEUc1AgXS0cG77VPVXsBigxci
 wP1spXxbGz4mmPWDjSr9DrRMkfg/dCY1W8Pnvw+FbFQL0JbyE12JKHg66CwZgg8CP9eC
 LlBMl5c8cl3+H0foKeBHr4HkE8Amg1ag1uX19CZglNBjI/io858JHlu/oYJo+/dFUGtV
 OFeMBrmv+xkuY88eJT/iEH1/Tpclb2Liki1K4tLpMIqtVDOmpXqQ4nI5Akn2xabbxi+Y
 Q5XsA6zR2ObLiV276oIskihd0U3UQqR5qF4TsGEy75zoStCgLryjG4t8evia0TA7oQxF
 tyTQ==
X-Gm-Message-State: APjAAAWEKwMk7AyFCEAR9Jz9UDtR/XA8a0UOn0AUoJW47QH18s8pXcok
 MEgal5IYH2v4rYidz7Cix8gOpwzTCSKqzu+8ArnodAo=
X-Google-Smtp-Source: APXvYqw5mPneuKYaLPL84nzOwv1ycG9BbjbYq2yQKPu5wtFQ34zNxtWRxrzKRL0iFm7GLifHsCGVff29xZzV9+JLIrU=
X-Received: by 2002:a81:5389:: with SMTP id
 h131mr12664617ywb.491.1567211442410; 
 Fri, 30 Aug 2019 17:30:42 -0700 (PDT)
MIME-Version: 1.0
From: Turritopsis Dohrnii Teo En Ming <tdteoenming@gmail.com>
Date: Sat, 31 Aug 2019 08:30:28 +0800
Message-ID: <CANnei0EMf-yqAZ=jv5SKi9eLfGDvurQrkRLeZL1rwP4U1tJ3Dw@mail.gmail.com>
Subject: Singaporean Mr. Teo En Ming's Refugee Seeking Attempts, In The Search
 of a Substantially Better Life
To: ath10k@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_173049_029264_758DC018 
X-CRM114-Status: UNSURE (   1.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c30 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tdteoenming[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Turritopsis Dohrnii Teo En Ming <tdteoenming@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Subject: Singaporean Mr. Teo En Ming's Refugee Seeking Attempts, In
The Search of a Substantially Better Life

In reverse chronological order:

[1] Petition to the Government of Taiwan for Refugee Status, 5th
August 2019 Monday

Photo #1: At the building of the National Immigration Agency, Ministry
of the Interior, Taipei, Taiwan, 5th August 2019

Photo #2: Queue ticket no. 515 at the National Immigration Agency,
Ministry of the Interior, Taipei, Taiwan, 5th August 2019

Photo #3: Submission of documents/petition to the National Immigration
Agency, Ministry of the Interior, Taipei, Taiwan, 5th August 2019

Photos #4 and #5: Acknowledgement of Receipt (no. 03142) for the
submission of documents/petition from the National Immigration Agency,
Ministry of the Interior, Taipei, Taiwan, 5th August 2019, 10:00 AM

References:

(a) Petition to the Government of Taiwan for Refugee Status, 5th
August 2019 Monday (Blogspot blog)

Link: https://tdtemcerts.blogspot.sg/2019/08/petition-to-government-of-taiwan-for.html

(b) Petition to the Government of Taiwan for Refugee Status, 5th
August 2019 Monday (Wordpress blog)

Link: https://tdtemcerts.wordpress.com/2019/08/23/petition-to-the-government-of-taiwan-for-refugee-status/

[2] Application for Refugee Status at the United Nations Refugee
Agency, Bangkok, Thailand, 21st March 2017 Tuesday

References:

(a) [YOUTUBE] Vlog: The Road to Application for Refugee Status at the
United Nations High Commissioner for Refugees, Bangkok

Link: https://www.youtube.com/watch?v=utpuAa1eUNI

YouTube video Published on March 22nd, 2017

Views as at 31st August 2019: 593

YouTube Channel: Turritopsis Dohrnii Teo En Ming
Subscribers as at 31st August 2019: 2815
Link: https://www.youtube.com/channel/UC__F2hzlqNEEGx-IXxQi3hA





-----BEGIN EMAIL SIGNATURE-----

The Gospel for all Targeted Individuals (TIs):

[The New York Times] Microwave Weapons Are Prime Suspect in Ills of
U.S. Embassy Workers

Link: https://www.nytimes.com/2018/09/01/science/sonic-attack-cuba-microwave.html

********************************************************************************************

Singaporean Mr. Turritopsis Dohrnii Teo En Ming's Academic
Qualifications as at 14 Feb 2019

[1] https://tdtemcerts.wordpress.com/

[2] https://tdtemcerts.blogspot.sg/

[3] https://www.scribd.com/user/270125049/Teo-En-Ming

-----END EMAIL SIGNATURE-----

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
