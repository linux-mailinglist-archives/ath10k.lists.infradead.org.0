Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD5011E29D
	for <lists+ath10k@lfdr.de>; Fri, 13 Dec 2019 12:16:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=63a2KzIvJoqy1SzJUYS3qRi6/8yJOZVj5AnDkqrv0yA=; b=RNanCrnkuXGfnB
	jOweBRDMxgGK+Vefa+gAaRhVJ99wIyZvv2Q4qXpcltj9gYnJUbUtSK5nfGX6DWyzANbE3hGGJd0ZY
	joP0MPLOihWfg5YhYDshuqWw02I8QISMKt46n7kYSFl/Njv+MSPBEq3G60D1Ol5ZIudeq+251hyP5
	oyIEZa8c11lUeu81989oXG2+AtcDmbSj1SFzhxH7vta0Ef9wTXtU1cG0hkggyJSOgDf/aQdpNXkJM
	o3CjgBg/kQCtS2mhfU3MnZvHAheyLPGDAqMyLxNvzxIwYMns3joD97pdB8lfcgbd8K9+0H2avnqgV
	FX4NKfpRuafvCoLKn0OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifive-0000Fl-QA; Fri, 13 Dec 2019 11:16:14 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifiva-0000F7-L7
 for ath10k@lists.infradead.org; Fri, 13 Dec 2019 11:16:12 +0000
Received: by mail-oi1-x235.google.com with SMTP id v10so715336oiv.12
 for <ath10k@lists.infradead.org>; Fri, 13 Dec 2019 03:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=zGbUusGmcKHHNzvysS5kwUk1GddQwYh5NDnDa6dHUBo=;
 b=osaGSDGfM0tPh1+raplBcHZz68ZqlZDak4koYhwOpun5uU6HmYjK72z9jH6ohxX2XW
 XbIkMTBrqfxRoU1SujGQoQt1QTOeo07GTAtbm7ticIWs2lamS2y5c+dm5SdfEyWoAyIj
 a98QUr7UxaLpO9ud8XiPvYl1UiTUQSxE0t41vlK0Uk3/m1alAKuXq7SmQOFdBBhYdLAb
 UjCNL9QBEsGC1Hq4Q18A14FOwYJbI/qRc8u/zasKArIhYPpHp0HEQXptNFf0Kx+9GcWO
 CYJ8iTCgrjXb9atKK5cGcGJUUOCozr1IQdpMQ1poYX4iFpUxAfpbRcALoiGF7t2bxwNG
 jcNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=zGbUusGmcKHHNzvysS5kwUk1GddQwYh5NDnDa6dHUBo=;
 b=QuM/8NgCLJAiJpHKD+t2zl4SKmB38NaQMUYegGJcF7DuTEh68uR0h4IIB50lqGGRaN
 QCUazfexvxUYdqei1pbFPnNkH37kqh/+EOaA/vpOtMgt1T5IlQLvvbCHcWrRGa278Zz9
 TFpR/OiKLc2Dfo2LGWMH7tEYQSxiqlC9CJxGi4sAtS3Ep7jzHgZhceBaf9irrj8lEL78
 eJeU7t9fYxP+tMWlOW6RQZaVouiEhScQwBu4rbHUoW2EwRWVYvc6mP5C3Cimwgz5pITo
 nZane+U3k12myzRkcX0ou3VZNlNJez8NVIV4vSx3Zs+1+ilQjfvIQ+uv2PX3NR+bS2ma
 XSjg==
X-Gm-Message-State: APjAAAWam6OrXZM4TB5oNRlcQfs5KPM/Dv4pRxGrGSmccZMb3P9srTRt
 qcHeVvxxDpRvvi9LZAaIGbnXL7zbVIYRrJiFwajQ7drxUSh4ug==
X-Google-Smtp-Source: APXvYqzSNKX83LpVNNklonOI5C4CGJHCHoZjTfea2UBGAbrKu/Hk9mhTudM5cNg50G6pJMZ1ueohPde5kuNRjEX3KBY=
X-Received: by 2002:aca:f305:: with SMTP id r5mr6906930oih.174.1576235769044; 
 Fri, 13 Dec 2019 03:16:09 -0800 (PST)
MIME-Version: 1.0
From: Justin Capella <justincapella@gmail.com>
Date: Fri, 13 Dec 2019 03:15:57 -0800
Message-ID: <CAMrEMU9Mz+0RNmmGQHic_cWPf45LHeK3Mzcy6a=GuYkvgdN+RQ@mail.gmail.com>
Subject: qca988x fw crash/unrecoverable pcie errors causes error loop
To: ath10k <ath10k@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_031610_714184_1F970D3D 
X-CRM114-Status: UNSURE (   2.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (justincapella[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Paste: http://ix.io/24hJ

I think a station went out of range, and somehow that crashed the fw,
but when it tried to recover it was unable to read CE, and so fails to
recover, eventually an correctable PCI error occurred but *80211_ in
an attempt to reconfig is trying to stop all interfaces, which
includes stopping aggregation for the peers...

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
