Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BADE1DFC7B
	for <lists+ath10k@lfdr.de>; Sun, 24 May 2020 04:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k3xZ6F0kT+fI9RetL/FZF5n8NSsykYkFuwab2bEuHwM=; b=l/NjI/UOjJrPf9
	UD6Gbhg8OXLyq3aYvbsOC4WUHu3/VPzpm877PHIJVsuhQ3gMNRz3+lJUIt2Z/tS0vZhbL5WJb6E1i
	2WMFaH5glDqZ/bYCE5me/I7z/XvUYBkPKBxH/wUzM8EUXZbLvkODOlrwtYzcS85ZSJKT2lbUytaKN
	g/OGVjISjRi/+jo8E7vAP4udZKVMrkAY9IbndyXafilSKbnQsu6f9LuAUUVGZ6Ya37hFYB6+dN6eY
	RTQTsIa05kOGhq2wT+XvSUYSVbwSUqwFnYPm15FZswwFrr5AHtFtC6UqN9oicAeBz0yBgtPgydmRV
	n72Jq72oZueV2cL8NW9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcgVz-0003SI-Bo; Sun, 24 May 2020 02:37:27 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcgVw-0003Rp-6l
 for ath10k@lists.infradead.org; Sun, 24 May 2020 02:37:25 +0000
Received: by mail-ot1-x342.google.com with SMTP id v17so11453056ote.0
 for <ath10k@lists.infradead.org>; Sat, 23 May 2020 19:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:autocrypt:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=lrVCtleLtJIrzjLbQpabb/vql97INFrN53+4ZNyHqBw=;
 b=kMekauL3h2LGqTPqrShB+ogkHQk15L7rQttsRr8e6hnOtYClI+gjRCc1ntoVqlnqsE
 4t+Z/9qBwKIszN7+PjBWSzWriHgiAmUF39DxlKj0YfNd61MAxYDOfEAiLlEcSeXk9BzW
 kWIK5ZHrqWydXj4anSSwkvqocMy5M/yTHMmvBd4IK+ugx6Cdqfs+9I5OWLkOZ7XVb+os
 zTbHAx4Ze/96yWiSIo+kqGvw3rgs+e3nKwhaHbmqhvmVRPxMlPZALhjN2GLQ904XqNcR
 nuuSJpRpPVhJuol+GKY2hqqnl8vgeb1iCf/DaDceY0Bgh/HjfP9BYqdMrFYrvJMFIfys
 6XDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:autocrypt:message-id:date
 :user-agent:mime-version:content-transfer-encoding:content-language;
 bh=lrVCtleLtJIrzjLbQpabb/vql97INFrN53+4ZNyHqBw=;
 b=e9Ut9gSDlD+aR0mmI083feDA7K0W41QCUMnSPzQcOMWlebRtnvHMC4kCBl2bVJ/GcZ
 ZdYyRHSqr0Er+6P2uK2k68V25wjjFBdOKAAOlu6JTlI2pD8mhRseHbqW6nOEH2lB9Ijn
 DOUlpt7uV0yQYNsYR8SbzvBtdYL/bsnzXs5qj4UXm4a1ELW0+3edw0eGeV6YSHCTuXdv
 9hQIrEnXn/EI6ZtGsqmy7ua/4LUoa6YzeP/faEnf83idBgZXFVCx4J6n5BFifTW6S1oA
 WGiMgMofMG0cbNSR5YN1N3JKLCf6uIXt8eEJmBDUXsA0w/t39aBgo8lZdWEGdqMZalP2
 vcrQ==
X-Gm-Message-State: AOAM5311uzQFxi3x/ulC3w7blZpWcdiZi43sZ6of4/xMbUNETEiusw3T
 bfWc02/PYjAjH8iIHs/zAYbwMFQ7
X-Google-Smtp-Source: ABdhPJzqJ6sixJpKGHd0ScwPrUJ/D30Yx2ihOdXVHNK+dfXTkm4Y39FGzm46/Ls3thGOLJDaNl+2zg==
X-Received: by 2002:a9d:7a50:: with SMTP id z16mr17586373otm.292.1590287841952; 
 Sat, 23 May 2020 19:37:21 -0700 (PDT)
Received: from laptop.home.misumasu.com
 ([2601:8c1:181:8611:3406:b6b6:de56:fb05])
 by smtp.gmail.com with ESMTPSA id y89sm3868228ota.16.2020.05.23.19.37.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 May 2020 19:37:21 -0700 (PDT)
From: Michael Berg <michaeljberg@gmail.com>
Subject: Re: Compex WLE600VX AP mode 5GHz doesn't work since kernel 5.6
To: ath10k@lists.infradead.org, nick@marriott.org, wgong@codeaurora.org,
 kvalo@codeaurora.org
Autocrypt: addr=michaeljberg@gmail.com; keydata=
 mQINBFeVcL4BEADwxUS9FNGIh8EMeInFv7AnfZDbvJiTU+UUeXApG9x0N365yscLRuS8B1fV
 GcQ/guHRCRJ2SoPOYuICGQb7X+eCJZDC3V3+jX8gCpLfVJ8MtyGwwZhrcqo20eoiU4x2QfL1
 MdM4B8kdv2FT3plokQ6EXUNZPlcBU2tslTukp4A1n4sdxlirq+I18F4YdLd6zTpeAOW6Xd5n
 Y3HuH8HsDmxLECJqnSxYNmCixjURufrv3Q8ynyhoXI27qW1A/XW82rpAkWD7rMogCkzYn2sx
 jhDeuD2prb0YJ3WLjNNNTqk2nOD+RvEEDXCtGwbZ3DWTTB329r/GIF6hkiobd6101XWGp173
 902RS73s/y3WsD5RC6Wq+SS7nHx/ilUWFiC9PKOvi+gA7TvXM2u3NMW6ytSYsGD/+4MUvoY/
 DBRYEMjCH6N7ncF6BUYGGKD6EmcPObQpWIsw5llUjIe6NNEUzSy/B90MYRT8O/p4Oc5PELGG
 LssL9yEZCqtS2lVWWe5y/H0SBxJzHaSkISoVT6v8HHPM63lb8b4ky/dJj7stIUud3RHzcQvv
 l1pkSD6d+ckB5x0PPGnYoehPNIhFkQCNBtQCX54fH7npmexTm5/XxIFZ4p7Lz3gDYjay5PIk
 1kh+V00QAXlVpZ/+aAShXUbfNzlf++vILBq6Zj7Sz695XumcfwARAQABtCVNaWNoYWVsIEJl
 cmcgPG1pY2hhZWxqYmVyZ0BnbWFpbC5jb20+iQJTBBMBCgA9AhsBAh4BAheABAsJCAcFFQoJ
 CAsFFgIDAQAWIQSKHL/sl4YFaMbj57ytW45Trxl+JgUCXY/ETAUJDgL3jgAKCRCtW45Trxl+
 JoFrEACeHSwosDamG0Ld1YXGCrm95nct1KPxpHRqyAK/XteJwWLlRDUNLPXBTbzDQUXHWhVM
 HKzXkTfc5wX6SpSkvsHixeI/J/wuz+PdAyhHxlhJNtfXpN822kM1o9npohZLtt3a0SxvZz8g
 QP6ZK0J6e+l95vYRjkXxdi4LL0yrpsCixXmpCZqR8csy3AChxMjP5/Re1g0LAFYput15NH/4
 FewjduXqCk4tOslw7ck2mZksxo0wYoDk76RpTT6cJk6VWBNPjuO/tAHqH4ifzUe3LI+A1OdW
 4wBTyX+2m6/+tGAJHXXx597JCR7A1nJm6S27BzhM2itJKV5c7dfoDSlTgEnv+lFGhxh27GrN
 WyQAraMlEIguKogPt7jm2usOLAUa0BDwu8WNwALoFr28ozT1IrIwte1rXq49s0olnBKvTXSV
 LAQwNQxJisJKashDVB0TTYHh4XLFs6sP+qO0m1fsM6STO0z2PVh17ifKDAZobGb00lmbVUHA
 qHKe+SaS8ocNinBA5MP32j08JJLARiBIbKHhI+2ggHaaJHQHpxkdoOXCtwru3ngfCAOgyptU
 aUAkqxFFuaZvfQaDi0ATlxr8xnedTMhYwC7FDQL6ZQ9Cu3GTiSemK1Qdi4hOQUw9a53M/U5c
 URCOq3iTX+yU+N4glVxb5RV/Vcl5s8vcLMXhhbQOzLkCDQRXlXEZARAAt9o3/5hBnyzm7+SC
 djdi+t2oebHIaHE0Lv2NTB0YgwCqGuap4QzcDqu/TR5mMRQ68OsMCEEmokkmeUd3hGJt/GRn
 Klylyl8AQnY3ZFhkJLcXL7ZwPhsWZaU9RkzxFgzZATO9pI8Lv+U2EmNkhojZ/fafWyPcJjdi
 dN6T+75/nXeANMX+tgBCvP46KG9lTdK39ejHcw96Gv2S+8ZUeWgNNzjq4m0sKZPKYYG06qJB
 YeI24CnYi7Y3UZwSOgakTbvj+wJyUsbQxps8gZD4hqrVqnxFgRUcdJbtTJM+8UXf5ZdJk5Yz
 gVWfPhZOTjAn+GwK0DyeXVs2DqChoJ+M2wPxaiqbeIfX6M2FdNt9DCIjs8vo82+ZwT8xYfX4
 76x6f3wTeRACGkLb3dLaSrjAyagoD+2JSd3XYc3I7VzAS79K/FLSQCkrt3vwxFjacgBrBdpk
 PfOqsUMXDW1GWJms6azKf81IbEYItsILnIcfx29aQU7HdTyLuHwBOcqz854pncehe7tBJhAJ
 gfs5CzqFgdGsbRecXKsIxo9GE/l4k33GcH1xg3BqUKAhh6OS9eTRmxaxvMv0m3IrygHzYjF/
 yN/hDcWDknyA1ArYVIyij9zrCPrafZOlIoYGPyT00wJzzFG4TLwIVzQfl6JdTK07nDvG/2E2
 99mu2IcEP2MAK1Tszq0AEQEAAYkCPAQYAQoAJgIbDBYhBIocv+yXhgVoxuPnvK1bjlOvGX4m
 BQJdj8RaBQkOAvdBAAoJEK1bjlOvGX4mjEkQANKhgIgRx9e3qUlAzh7R3kgo8BCsIg5J4WF1
 J/Fww6u1VHfbbwymPu8Xz3d9Uy9jfrurBKpGL8/QUEX9pmdM7aWFPJBZOW1gw02ZHZvX6I1T
 b+krMjoLqrE1U9SaTCI63NtFhTxPUvvprgcLi2Ye+zuUzClHigH+dxqUSuqWqbBl2eFew+Ei
 087VZlz3NASAEp1+01VT5nd7t9ct9bucHiWRtIWPaiA3/r3NF+XsuYZuTNc7CSE/8O+dBmCc
 GfEyzrC/mxWqkCFMRTsMiwzvg4Y1juLE2ITu6VOAOargzxJTddodfConE3GiRfn0wsJld8LW
 SWLa2WofAd3r4d+DMEdnghezTtU9eLpPfeLFAvrDwELAz5QiQnJR5u87k3sZO1Ev2Yjv5lrC
 KM02L5/xqKma7eB6LbV5zdVG7iWjwW4p3Q2/yx306PPXBawHXPETh6C8X1IGrKY0+bq7NuoG
 i9bn9B+slgQ64FmhOkMirAk88Cc7ULdFbbfL1xywocv7uwYdglIb7CTxugVioLWVYkG2u99u
 +dQjZ4+C9UMiQbtfFquMEvfdI5mCl57D/ZbqgT+DwFlP+OCAQLMqFGHL3POkSfCaD5G5k90c
 Ha/rg4iRVvTDY59pP0ZMS3enQdgVIwsJy6Jil1OhBYvQJs59b6htZav10Dt1RshGW+1aLXf+
 uQINBFeVcPIBEADlPi3RVg7RwOxQyTI3AnGmZpH0FtgJ2hI5NLcAhi021JHx4ZXX4RBjAnuH
 OMi9kRFLJsghaoVdnsz3CstAz7203abvpdOI06H2NpCSIB0dyxdWuDgQJp07+dXhN/xvOmg1
 H0NHd0x4CAUAWq0dlUl8gZ1nw+jrReDprkBqcTQXyGCviPmr/1F0/zJiCEWZ8e7itMYKo93E
 mm0eamiz8X7SHLJepyZX9oZ/dMtvsNKakul8HCaG9bSHrgy8G06KVcsIKYPMhgTc6Lp+Z1zQ
 BXB1fCk6UWqm0A9eT+zOzA05yuOpzoRSGhpgt8rzJALApriRj7X0VaGwyU4Yw+Cp+1JI5y3q
 47QDDSgq3GrqSw/KlY8he1nQ5tVi4Z56BOFxMSFPWae63DcAw74JtHB91KbdIGy7BuiD1upy
 YfqVIble2V1mlZXxqJAGMB9XomZBhg6dYqDJx4RJpgtOoTWdGjx/yyEkPyzPenHnh7OcuafK
 35zWKAkh45dKuVGlp82/XsBFnBvnfalHpWPpa8cWgEkxG9tyGOTOZtRzGi7npM7VEcNBNw1w
 Hq0PZ/RlU1B2mccXD4Gz85J2Hw8swZDN/wHp+675nxqMCwYJT3NgI1aTs4gKlGjQtigtNHRB
 G7ZPFXKBeopvGJpF5bthIWARBaB98LB7EvSdxJ9frv4bBpWYSQARAQABiQRbBBgBCgAmAhsC
 FiEEihy/7JeGBWjG4+e8rVuOU68ZfiYFAl2PxFoFCQ4C92gCKcFdIAQZAQoABgUCV5Vw8gAK
 CRCslf7pM37a3OzMEACM6Q1Ip2oU+MC17Usv3pntOv7+JZ4QApYsacr73/ChR/v8hLhtIk4I
 7ouKFodWWLa6KaYjti8Qs0c6WhDy+Hjd/4hSQjHhUeKu+nkoPwoYmQHw9NPCVLK9RsQ4+xpo
 1XTjXXdc59qeOgfVV37LXbKe4oyQiRlw4ZHbzc3yJWj5OBjE/OO6n7Hz4cYUy8fb3FBeJPBw
 9ilDYM6VN7gjwwFOrrAGTAzMpb0OyC0lq2hPMkgeRKnfiDS7j41KDy9qnv4jqS07oU4MIE6+
 beoOFbW2R89pm5h2M04oOYJqwIdtJXjk0a/q2d4NZDcwm80kq22Z+M+IpDY3k7Ag3lXmLz+j
 Vr6FSUFwTL/3ux1EH1OEFVIe3vuXAY9puvmgY9O4owpX4P0BGwYxXLfKIp1gHw5EnUzpF5c8
 AP/5nSASK49KvBUmd4VKz8GR7ZZ+2EQkc1j8JEv4GugtjGB9vDS0kbHPJ/W7Wl5vVl/De8gp
 ioIYfeMOx9WP/qkOHWwuIPfsPDp5dPpr7uAXjdAvIsGf2u6QM3Amnele8kxXAw0tNConTa94
 VnZdHKJX0wEA2sJpJP7+OSmuD4b+Zzc0/MJUO+obK8N5iVTY6A8hDwVIRrW7HYz/wo0uJOdo
 PeNfmWzW/+qEi/ci83lPwGFAj1ik5nJpOeAJn6W7F3SILKQ/LMeEPAkQrVuOU68ZfiaY6xAA
 yaPlG0vgXveuQvVoHijCt+tRKT1IFswpVY7SZCLjj9cDlXTYfrmdueTsfJYFTQGHYGqJlLcz
 Itr0GF6dFeARoYPLpcoVVfLiJXjoJuY1fwkC7OXaxtn0PFgtx87aXjV/VqU4ierwdff5Fdzg
 RiyL4wY7ewrdHVUHPPj8p6raNX36riXjUP1FJQcNVS4cWJbxfm2qq4avkuO1iyQLoqI7Q+yN
 V3/L7gRxsD4zNEyvjZhiM5mTgUZBf+XcHpwBWOCL6nGAOQl7JHcJg5hKXvkmtaxpp9VRxLcX
 hLOug9ZOZDlBlAhA6Ms/lvbRos5Xw0f24oiFT7fUgpXGEUlcJ8n2QNN5HwIsIOc/7KqoeOhL
 uuvs+ZaGbevu30rnhcw6CPAC8Xa6tvArGDLqMpb5Cr35LZP6nX/mRsXSe4w01rLZy8jjdqQT
 acymLWwrYwAaB1uuaxlq67Ofp3PioKR6+gxNF6e357x2MV1YGgljxnpyR5YAc6oFT5Z5szKi
 +wPl5Zg9H9QFZ8QUFMN3P/mKL3pXMgWqYz1L9XZ/YckjVIRy2uhVLYxhshSq17mS0DWFAoOl
 YkKAzFEznrhfD5VaQBcj4uknMI5FrQh4SQDso6N4BiKH6+n6MHn3DfJIHP3Wr94apeXxXiOs
 BnQbnHW+YuJ2XiQvh3ZXwaySETsJpAnYrNg=
Message-ID: <24512086-0248-d273-5255-7d6504b0ad2c@gmail.com>
Date: Sat, 23 May 2020 20:37:21 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
Content-Language: en-US
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_193724_250975_849061D9 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michaeljberg[at]gmail.com]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

More follow up on the following patch that broke 5GHz AP mode on Compex
cards
https://github.com/torvalds/linux/commit/2dc016599cfa9672a147528ca26d70c3654a5423

I just downloaded and checked the linux-5.7-rc6 kernel source,
and the problematic code is still in drivers/net/wireless/ath/regd.c.

Are they any updates on when this patch will be corrected/reverted?

Thank you for you time.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
