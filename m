Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABC4FEC23
	for <lists+ath10k@lfdr.de>; Sat, 16 Nov 2019 12:57:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mK4lBcW7IeR2af8+NfVsunVIi1Ld9/GnUwZD9umqYp4=; b=EvwyQU58cJvLMU
	yNMRDEaI6MQ/vrDtuhTwNGpbFabR8dcfOScfzq8L7oEJZREnlejCi1c8ukScpbrQmTUoPSZ35l2Yn
	1Zyxf3HezIFwE6D0QZyvguvqx8D93ayv0PIthb/bRJsQHw2LhSE4Fw/zTrAGjf9RMwggULGNmQeRT
	KKMd67uNdejNKjoeXxPttM5ZwEP4/FtjO+VaYl64jYbcyujGa8I0FTiM7u5ePMLEY0GjogOIGwQL8
	Pj070i+3wyWWn42IfsoZ0JCoLtyIgyMjXaPeH/wLz8/os3TYTXWJ9ij6CrMiCEubbhaGx0WTTBiiB
	ct8uZvFdTsDCk4WmfDcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVwhj-0006pJ-Jq; Sat, 16 Nov 2019 11:57:27 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVwhf-0006of-QO
 for ath10k@lists.infradead.org; Sat, 16 Nov 2019 11:57:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573905442;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4HWnUEWPK5gwkihfyRUsMpaxZslmtaOtUE3W9X1WMoY=;
 b=NXidWViGL0x6FOtJtoYlFay7oO3fdtkw0mvgE3kDZCv6DSmjpk73Bl6kefIu+HfyDDjArl
 psHiK+nHHD4W+Mo/UFsgIvRSsY+fADkCDt0a8qBMPqCuteIE2NYnslsC1zgzRWlNW+7v0T
 BwKp+OHOX6YIaqsq85Ta8MXKgArZaTs=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-165-L1K1x8vVND2qxn0dlZMISA-1; Sat, 16 Nov 2019 06:57:20 -0500
Received: by mail-lf1-f70.google.com with SMTP id m2so3970938lfo.20
 for <ath10k@lists.infradead.org>; Sat, 16 Nov 2019 03:57:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=xGmfCpzNCWtkinDzNO/MRj1kwSQ0zFMoREQi5LCL/+0=;
 b=JewonndTEQx8m3VTAk28kq2Aeih4ostvjiEY4/iaOX6q37ZSKGaFeZemCUZXdBGuX5
 5dw26QmdNBHzyCfI9fbhFq5k6lipBHOy9H8AH2JzwZEiyhFbaFVxnDnfmLHbp+TgMb4h
 L+YuE//A0fAbh4TED3ZDOANfsbEGxniNa4/CE5/vT0qqzqrAXunjv7QsTqYieLDnhqg/
 kpmJPkGDJE7Hi2mbfo6Y0WpgnjUpBLtn4bJ0xOvE+jsAx/3UaIPqy1jGRgDcxIHwTzF3
 Y+ERMhq8CMOY4fVWzENAz94/FEQwbRNdJr0AAojXwk+6Nnm1CzQrHZFZFJlaMkGv1w7L
 kszA==
X-Gm-Message-State: APjAAAXTMFry3VAQocWfjSx8+afqKBTesghc/UIKvFJzZhCYCXu6a0w7
 Wx3H1Mkd8zYUgL8jzLIq9/GvwEs9FFwwTYM/heNjxkyb3iuW0iQsbXQ6f5DB5dzoBsQ++9yn1WY
 trWWfaJj6MWiygjyoBHr8dQ==
X-Received: by 2002:ac2:5685:: with SMTP id 5mr2991268lfr.32.1573905439014;
 Sat, 16 Nov 2019 03:57:19 -0800 (PST)
X-Google-Smtp-Source: APXvYqzzRBzAMxYEZHZsVAtvcDEJQdEDJ3P0ayzDpX+t+c91Igqa6iN1JaFun4iF1Kzjh2WJ+O8B4A==
X-Received: by 2002:ac2:5685:: with SMTP id 5mr2991257lfr.32.1573905438787;
 Sat, 16 Nov 2019 03:57:18 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (borgediget.toke.dk.
 [85.204.121.218])
 by smtp.gmail.com with ESMTPSA id 12sm5429980lju.55.2019.11.16.03.57.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Nov 2019 03:57:17 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 01170181910; Sat, 16 Nov 2019 12:57:16 +0100 (CET)
Subject: [PATCH v10 0/4] Add Airtime Queue Limits (AQL) to mac80211
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Johannes Berg <johannes@sipsolutions.net>
Date: Sat, 16 Nov 2019 12:57:16 +0100
Message-ID: <157390543688.662247.3735146484299260207.stgit@toke.dk>
User-Agent: StGit/0.21
MIME-Version: 1.0
X-MC-Unique: L1K1x8vVND2qxn0dlZMISA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_035723_934535_E6BC1FE8 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kan Yan <kyan@google.com>, Rajkumar Manoharan <rmanohar@codeaurora.org>,
 Kevin Hayes <kevinhayes@google.com>, make-wifi-fast@lists.bufferbloat.net,
 linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
 John Crispin <john@phrozen.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

VGhpcyBzZXJpZXMgaXMgYSBmaXJzdCBhdHRlbXB0IGF0IHBvcnRpbmcgdGhlIEFpcnRpbWUgUXVl
dWUgTGltaXRzIGNvbmNlcHQgZnJvbQp0aGUgb3V0LW9mLXRyZWUgYXRoMTBrIGltcGxlbWVudGF0
aW9uWzBdIHRvIG1hYzgwMjExLiBUaGlzIHZlcnNpb24gdGFrZXMgS2FuJ3MKcGF0Y2ggdG8gZG8g
dGhlIHRocm90dGxpbmcgaW4gbWFjODAyMTEsIGFuZCByZXBsYWNlcyB0aGUgZHJpdmVyIEFQSSB3
aXRoIHRoZQptZWNoYW5pc20gZnJvbSB0aGUgcHJldmlvdXMgdmVyc2lvbiBvZiBteSBzZXJpZXMs
IHdoaWNoIGluc3RlYWQgY2FsY3VsYXRlZCB0aGUKZXhwZWN0ZWQgYWlydGltZSBhdCBkZXF1ZXVl
IHRpbWUgaW5zaWRlIG1hYzgwMjExLCBzdG9yaW5nIGl0IGluIHRoZSBTS0IgY2IKZmllbGQuCgpU
aGlzIHNlcmllcyBhbHNvIGltcG9ydHMgRmVsaXgnIGFpcnRpbWUgY2FsY3VsYXRpb24gY29kZSBm
cm9tIG10NzYgaW50bwptYWM4MDIxMSwgYWRqdXN0aW5nIHRoZSBBUEkgc28gaXQgY2FuIGJlIHVz
ZWQgZnJvbSBUWCBkZXF1ZXVlLCBieSBleHRyYWN0aW5nIHRoZQpsYXRlc3QgVFggcmF0ZSBmcm9t
IHRoZSB0eF9zdGF0cyBzdHJ1Y3R1cmUga2VwdCBmb3IgZWFjaCBzdGF0aW9uLgoKQXMgYmVmb3Jl
LCBJJ3ZlIG9ubHkgY29tcGlsZSB0ZXN0ZWQgdGhpcyAobGFja2luZyB0aGUgcHJvcGVyIGhhcmR3
YXJlIHRvIGRvIG1vcmUKdGVzdGluZyksIGJ1dCBLYW4gaGFzIHRlc3RlZCBpbiBvbiB0aGUgUUNB
OTk4NCBwbGF0Zm9ybS4KClRoZSBzZXJpZXMgaXMgYWxzbyBhdmFpbGFibGUgaW4gbXkgZ2l0IHJl
cG8gaGVyZToKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
dG9rZS9saW51eC5naXQvbG9nLz9oPW1hYzgwMjExLWFxbC0xMAoKWzBdIGh0dHBzOi8vY2hyb21p
dW0tcmV2aWV3Lmdvb2dsZXNvdXJjZS5jb20vYy9jaHJvbWl1bW9zL3RoaXJkX3BhcnR5L2tlcm5l
bC8rLzE3MDMxMDUvNwoKQ2hhbmdlbG9nOgoKdjEwOgogIC0gRml4IHJldHVybiB2YWx1ZSBmcm9t
IGllZWU4MDIxMV9pbmZvX3NldF90eF90aW1lX2VzdCgpCgp2OToKICAtIFVzZSBhdG9taWNfc3Vi
X3JldHVybigpIGluc3RlYWQgb2Ygc2VwYXJhdGUgYXRvbWljX3N1YigpIGFuZCBhdG9taWNfcmVh
ZCgpCiAgLSBBZGQgZ2V0dGVyL3NldHRlciBmb3IgdHhfdGltZV9lc3QKICAtIFVzZSBnZXRfc3Rh
X2luZm9fYnlfYWRkcnMoKSB0byBmaW5kIHRoZSBzdGF0aW9uIGluCiAgICBpZWVlODAyMTFfcmVw
b3J0X3VzZWRfc2tiKCkKICAtIEludGVncmF0ZSBldmVyeXRoaW5nIGJhY2sgaW50byBvbmUgc2Vy
aWVzCgp2ODoKICAtIEluY2x1ZGVzIFRva2UncyB2NyB2ZXJzaW9uIG9mICJtYWM4MDIxMTogSW1w
b3J0IGFpcnRpbWUgY2FsY3VsYXRpb24gY29kZSBmcm9tIG10NzYiCiAgLSBEb24ndCBjbG9iYmVy
IHN0YSdzIGN1c3RvbWl6ZWQgcXVldWUgbGltaXQgd2hlbiBjb25maWd1cmluZyB0aGUgZGVmYXVs
dCB2aWEgZGVidWdmcwogIC0gRml4IGEgcmFjaW5nIGNvbmRpdGlvbiB3aGVuIHJlc2V0IGFxbF90
eF9wZW5kaW5nLgoKdjc6CiAgLSBGaXggYXFsX3RvdGFsX3BlbmRpbmdfYWlydGltZSB1bmRlcmZs
b3cgZHVlIHRvIGluc3VmZmljaWVudCBsb2NraW5nLgoKdjY6CiAgLSBGaXggc3RhIGxvb2t1cCBp
biBpZWVlODAyMTFfcmVwb3J0X3VzZWRfc2tiKCkuCiAgLSBNb3ZlIGNhbGwgdG8gaWVlZTgwMjEx
X3N0YV91cGRhdGVfcGVuZGluZ19haXJ0aW1lKCkgdG8gYSBiaXQgbGF0ZXIgaW4KICAgIF9faWVl
ZTgwMjExX3R4X3N0YXR1cygpIAp2NToKICAtIEFkZCBtaXNzaW5nIGV4cG9ydCBvZiBpZWVlODAy
MTFfY2FsY19yeF9haXJ0aW1lKCkgYW5kIG1ha2UKICAgIGllZWU4MDIxMV9jYWxjX3R4X2FpcnRp
bWVfcmF0ZSgpIHN0YXRpYyAoa2J1aWxkYm90KS4KICAtIFVzZSBza2JfZ2V0X3F1ZXVlX21hcHBp
bmcoKSB0byBnZXQgdGhlIEFDIGZyb20gdGhlIHNrYi4KICAtIFRha2UgYmFzaWMgcmF0ZSBjb25m
aWd1cmF0aW9uIGZvciB0aGUgQlNTIGludG8gYWNjb3VudCB3aGVuIGNhbGN1bGF0aW5nCiAgICBt
dWx0aWNhc3QgcmF0ZS4KdjQ6CiAgLSBGaXggY2FsY3VsYXRpb24gdGhhdCBjbGFtcHMgdGhlIG1h
eGltdW0gYWlydGltZSB0byBmaXQgaW50byAxMCBiaXRzCiAgLSBJbmNvcnBvcmF0ZSBSaWNoIEJy
b3duJ3Mgbml0cyBmb3IgdGhlIGNvbW1pdCBtZXNzYWdlIGluIEthbidzIHBhdGNoCiAgLSBBZGQg
ZmV3ZXIgbG9jYWwgdmFyaWFibGVzIHRvIGllZWU4MDIxMV90eF9kZXF1ZXVlKCkKdjM6CiAgLSBN
b3ZlIHRoZSB0eF90aW1lX2VzdCBmaWVsZCBzbyBpdCdzIHNoYXJlZCB3aXRoIGFja19mcmFtZV9p
ZCwgYW5kIHVzZSB1bml0cwogICAgb2YgNHVzIGZvciB0aGUgdmFsdWUgc3RvcmVkIGluIGl0Lgog
IC0gTW92ZSB0aGUgYWRkaXRpb24gb2YgdGhlIEV0aGVybmV0IGhlYWRlciBzaXplIGludG8gaWVl
ZTgwMjExX2NhbGNfZXhwZWN0ZWRfdHhfYWlydGltZSgpCnYyOgogIC0gSW50ZWdyYXRlIEthbidz
IGFwcHJvYWNoIHRvIGFpcnRpbWUgdGhyb3R0bGluZy4KICAtIEhvcGVmdWxseSBmaXggdGhlIGNi
IHN0cnVjdCBhbGlnbm1lbnQgb24gYmlnLWVuZGlhbiBhcmNoaXRlY3R1cmVzLgoKLS0tCgpLYW4g
WWFuICgxKToKICAgICAgbWFjODAyMTE6IEltcGxlbWVudCBBaXJ0aW1lLWJhc2VkIFF1ZXVlIExp
bWl0IChBUUwpCgpUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gKDMpOgogICAgICBtYWM4MDIxMTog
QWRkIG5ldyBzdGFfaW5mbyBnZXR0ZXIgYnkgc3RhL3ZpZiBhZGRycwogICAgICBtYWM4MDIxMTog
SW1wb3J0IGFpcnRpbWUgY2FsY3VsYXRpb24gY29kZSBmcm9tIG10NzYKICAgICAgbWFjODAyMTE6
IFVzZSBBaXJ0aW1lLWJhc2VkIFF1ZXVlIExpbWl0cyAoQVFMKSBvbiBwYWNrZXQgZGVxdWV1ZQoK
CiBpbmNsdWRlL25ldC9jZmc4MDIxMS5oICAgICB8ICAgIDcgKwogaW5jbHVkZS9uZXQvbWFjODAy
MTEuaCAgICAgfCAgIDU3ICsrKysKIG5ldC9tYWM4MDIxMS9NYWtlZmlsZSAgICAgIHwgICAgMyAK
IG5ldC9tYWM4MDIxMS9haXJ0aW1lLmMgICAgIHwgIDU5NyArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKwogbmV0L21hYzgwMjExL2RlYnVnZnMuYyAgICAgfCAgIDg1
ICsrKysrKwogbmV0L21hYzgwMjExL2RlYnVnZnNfc3RhLmMgfCAgIDQzICsrLQogbmV0L21hYzgw
MjExL2llZWU4MDIxMV9pLmggfCAgICA4ICsKIG5ldC9tYWM4MDIxMS9tYWluLmMgICAgICAgIHwg
ICAxMCArCiBuZXQvbWFjODAyMTEvc3RhX2luZm8uYyAgICB8ICAgNTggKysrKwogbmV0L21hYzgw
MjExL3N0YV9pbmZvLmggICAgfCAgIDExICsKIG5ldC9tYWM4MDIxMS9zdGF0dXMuYyAgICAgIHwg
ICAzNiArKy0KIG5ldC9tYWM4MDIxMS90eC5jICAgICAgICAgIHwgICA2NSArKysrKwogMTIgZmls
ZXMgY2hhbmdlZCwgOTU3IGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQogY3JlYXRlIG1v
ZGUgMTAwNjQ0IG5ldC9tYWM4MDIxMS9haXJ0aW1lLmMKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwphdGgxMGsgbWFpbGluZyBsaXN0CmF0aDEwa0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vYXRoMTBrCg==
