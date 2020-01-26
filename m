Return-Path: <ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org>
X-Original-To: lists+ath10k@lfdr.de
Delivered-To: lists+ath10k@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E59D1499D4
	for <lists+ath10k@lfdr.de>; Sun, 26 Jan 2020 10:43:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0iR1YOM8f1FkXFG1eVDFsfikNasjYefPlqOOmtu7+HM=; b=CQWb4ayZfKYqIvLCM3NA1A4Yp6
	ashhCuSMcGQimwyWvtm8LWVX3suRZMs537rnpmAcqwIqnvJD5peIAhusvsP4KL+qdyEZUb12OpH9V
	gBQFf0SvBP0EQhJT2aI1/hlulv9mgimbNx2R3RLBO+JehCJZoOsEt9dupU5c4PIabnNwfFPHYxM9l
	Z4wTphTivUDunjSRX0mWBy5uO49Iuoj/NhWG1ybSo3Lz6M1Fhl84SNL0yg3xstxyH/DS9j5ocwrKR
	g5+cWi+TLFCB1jXV3eOOrxSszDwcvH4Kk/8NEIsCatZ7KMo1cHn9eSsRMQSAANWWbjjOkiFZrAh7P
	wcEKh57Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iveSA-00079g-N7; Sun, 26 Jan 2020 09:43:38 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iveS6-00079H-8E
 for ath10k@lists.infradead.org; Sun, 26 Jan 2020 09:43:35 +0000
Received: by mail-ot1-x335.google.com with SMTP id g64so5670779otb.13
 for <ath10k@lists.infradead.org>; Sun, 26 Jan 2020 01:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=8Fx+D12HcSHgP0C9oyX2pp57qo4nmCz29d6IghXjWcA=;
 b=WVifBF/2U3CoMeRZN90KLipAls/roKA34ptOcCaY5nhSfZgGCC09Mja6aMFR13F7mK
 CMQAEAvOVbO3725sy+t+w0aT67N5XW+B54e2kFOS7fzHyNSs00Iv5kOZZSxmVosSs8Q9
 nqc0XK7yFLxvzI/2GrUeFAdFLmDhQ6+x/F2vm7tp4SG8rgx9ExBCDZB3ZEDXMambTebL
 0UZwXPAXcjaYOM4qtmmSaMp5Hspsv4OxDuY2NTEBEMl7Ld/Cr9qcETJIvpV8gzVHHe3j
 +3vR9cCb66YyABbkoVf03Zuvuu6zYjkFKYosTh+SfaFte+cZ6wI1KXNS6J18lIy8p+7J
 AF9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=8Fx+D12HcSHgP0C9oyX2pp57qo4nmCz29d6IghXjWcA=;
 b=gccsyuT7qnJC+3FITTQvW9LTwick9mepQy3YwUkGeEDFBmIIwt2LP4YBatEaN/7I80
 3dDV9QY/12T67GtOTaCTDORIjz0CiOlxhWTL48ILxVkQMA+ALk6mFYxQbrnd7e2peZcE
 POnIfvk9BWooha6NrH4vbIAnz7tQ+L+fSLkQ9RVO9uRHH5DVZfkjuJar4uiicuCrEtAD
 G/xUvyxs068YS3l4eY4vwaqF6BxqlEAk+pyRWOoM4fT3Udz24OowSjGnm6GYTn0lSFeX
 uukwwJsyKkrMhOkeAUwAxslz7iMVWz+nGe3aNok7qOsxhFpDz/KO9mZwuqxDfKwhqtP0
 BHyg==
X-Gm-Message-State: APjAAAW0GusX0kbMqo155W6lEP9omQNJrNJdAireCktvdaUjUkTIg+gD
 8YGACYdxLvp9+ffQa0UyTkjA8g4U8hW6z0lfXvKEoA==
X-Google-Smtp-Source: APXvYqyuXBGs8SkIfbKqwXVa/WVlNRCEr6AnY5pTHmLTXiAc87/ZatFt7PacvQZvIQnTbp8AxEzaKgLCSHUHlx3X8rw=
X-Received: by 2002:a9d:7852:: with SMTP id c18mr8269862otm.247.1580031811229; 
 Sun, 26 Jan 2020 01:43:31 -0800 (PST)
MIME-Version: 1.0
References: <CAMb0i+QX-Y=TUf1d0J9aTR8GUO42T=7XfGFERer5PyFByOk3Tg@mail.gmail.com>
In-Reply-To: <CAMb0i+QX-Y=TUf1d0J9aTR8GUO42T=7XfGFERer5PyFByOk3Tg@mail.gmail.com>
From: Tim Klicks <tim.klicks@gmail.com>
Date: Sun, 26 Jan 2020 10:43:19 +0100
Message-ID: <CAMb0i+Tp6rKBLAZP1z2NNhWSa9Oa7=H1ygvQ4QUGZ764DRH=Vg@mail.gmail.com>
Subject: Fwd: QCA6174 - failed to fetch board data
To: ath10k@lists.infradead.org
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_014334_320271_4033A910 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tim.klicks[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "ath10k" <ath10k-bounces@lists.infradead.org>
Errors-To: ath10k-bounces+lists+ath10k=lfdr.de@lists.infradead.org

Dear Sir or Madam,

I have installed Fedora Workstation 31 on my new laptop (Redmibook 14)
and the wifi is not working. When checking journalctl I am seeing the
following messages regarding ath10k:

Jan 25 16:37:36 kernel: ath10k_pci 0000:01:00.0: pci irq msi
oper_irq_mode 2 irq_mode 0 reset_mode 0
Jan 25 16:37:36 kernel: ath10k_pci 0000:01:00.0: qca6174 hw3.2 target
0x05030000 chip_id 0x00340aff sub 11ad:0847
Jan 25 16:37:36 kernel: ath10k_pci 0000:01:00.0: kconfig debug 0
debugfs 1 tracing 0 dfs 0 testmode 0
Jan 25 16:37:36 kernel: ath10k_pci 0000:01:00.0: firmware ver
WLAN.RM.4.4.1-00140-QCARMSWPZ-1 api 6 features wowlan,ignore-otp,mfp
crc32 29eb8ca1
Jan 25 16:37:36 kernel: ath10k_pci 0000:01:00.0: failed to fetch board
data for bus=pci,vendor=168c,device=003e,subsystem-vendor=11ad,subsystem-device=0847
from ath10k/QCA6174/hw3.0/board-2.bin
Jan 25 16:37:36 kernel: ath10k_pci 0000:01:00.0: board_file api 1
bmi_id N/A crc32 ed5f849a
Jan 25 16:37:37 kernel: ath10k_pci 0000:01:00.0: unsupported HTC
service id: 1536
Jan 25 16:37:40 kernel: ath10k_pci 0000:01:00.0: failed to ping firmware: -110
Jan 25 16:37:40 kernel: ath10k_pci 0000:01:00.0: failed to reset rx filter: -110
Jan 25 16:37:40 kernel: ath10k_pci 0000:01:00.0: could not init core (-110)
Jan 25 16:37:40 kernel: ath10k_pci 0000:01:00.0: could not probe fw (-110)

I have found a solution and gotten the wifi to work, following the
Gentoo Linux wiki
(https://wiki.gentoo.org/wiki/Qualcomm_Atheros_QCA6174)
Looks like this solution, replacing board.bin file, references the
following github pull request:
https://github.com/kvalo/ath10k-firmware/pull/3

However, after replacing the board.bin file and checking journalctl,
following messages are shown:

Jan 25 16:42:08 kernel: ath10k_pci 0000:01:00.0: pci irq msi
oper_irq_mode 2 irq_mode 0 reset_mode 0
Jan 25 16:42:08 kernel: ath10k_pci 0000:01:00.0: qca6174 hw3.2 target
0x05030000 chip_id 0x00340aff sub 11ad:0847
Jan 25 16:42:08 kernel: ath10k_pci 0000:01:00.0: kconfig debug 0
debugfs 1 tracing 0 dfs 0 testmode 0
Jan 25 16:42:08 kernel: ath10k_pci 0000:01:00.0: firmware ver
WLAN.RM.4.4.1-00140-QCARMSWPZ-1 api 6 features wowlan,ignore-otp,mfp
crc32 29eb8ca1
Jan 25 16:42:08 kernel: ath10k_pci 0000:01:00.0: failed to fetch board
data for bus=pci,vendor=168c,device=003e,subsystem-vendor=11ad,subsystem-device=0847
from ath10k/QCA6174/hw3.0/board-2.bin
Jan 25 16:42:08 kernel: ath10k_pci 0000:01:00.0: board_file api 1
bmi_id N/A crc32 872f3cc5
Jan 25 16:42:08 kernel: ath10k_pci 0000:01:00.0: unsupported HTC
service id: 1536
Jan 25 16:42:08 kernel: ath10k_pci 0000:01:00.0: htt-ver 3.60 wmi-op 4
htt-op 3 cal otp max-sta 32 raw 0 hwcrypto 1
Jan 25 16:42:09 kernel: ath10k_pci 0000:01:00.0 wlp1s0: renamed from wlan0
Jan 25 16:42:10 kernel: ath10k_pci 0000:01:00.0: unsupported HTC
service id: 1536
Jan 25 16:42:10 kernel: ath10k_pci 0000:01:00.0: unsupported HTC
service id: 1536

So the main message stays the same :-(, but wifi is working :-)

Here is also the output of lspci -vvv

01:00.0 Network controller: Qualcomm Atheros QCA6174 802.11ac Wireless
Network Adapter (rev 32)
Subsystem: Lite-On Communications Inc Device 0847
Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr-
Stepping- SERR- FastB2B- DisINTx+
Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort-
<TAbort- <MAbort- >SERR- <PERR- INTx-
Latency: 0, Cache Line Size: 64 bytes
Interrupt: pin A routed to IRQ 61
Region 0: Memory at c0200000 (64-bit, non-prefetchable) [size=2M]
Capabilities: [40] Power Management version 3
Flags: PMEClk- DSI- D1- D2- AuxCurrent=375mA PME(D0+,D1-,D2-,D3hot+,D3cold+)
Status: D0 NoSoftRst- PME-Enable- DSel=0 DScale=0 PME-
Capabilities: [50] MSI: Enable+ Count=1/8 Maskable+ 64bit-
Address: fee00000  Data: 0000
Masking: 000000fe  Pending: 00000000
Capabilities: [70] Express (v2) Endpoint, MSI 00
DevCap: MaxPayload 256 bytes, PhantFunc 0, Latency L0s unlimited, L1 <64us
ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset- SlotPowerLimit 0.000W
DevCtl: CorrErr- NonFatalErr- FatalErr- UnsupReq-
RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop-
MaxPayload 128 bytes, MaxReadReq 512 bytes
DevSta: CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr+ TransPend-
LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Exit Latency
L0s <4us, L1 <64us
ClockPM+ Surprise- LLActRep- BwNot- ASPMOptComp+
LnkCtl: ASPM L1 Enabled; RCB 64 bytes Disabled- CommClk+
ExtSynch- ClockPM+ AutWidDis- BWInt- AutBWInt-
LnkSta: Speed 2.5GT/s (ok), Width x1 (ok)
TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
DevCap2: Completion Timeout: Not Supported, TimeoutDis+, LTR+, OBFF Via message
AtomicOpsCap: 32bit- 64bit- 128bitCAS-
DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis-, LTR-, OBFF Disabled
AtomicOpsCtl: ReqEn-
LnkCtl2: Target Link Speed: 2.5GT/s, EnterCompliance- SpeedDis-
Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
Compliance De-emphasis: -6dB
LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete-,
EqualizationPhase1-
EqualizationPhase2-, EqualizationPhase3-, LinkEqualizationRequest-
Capabilities: [100 v2] Advanced Error Reporting
UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF-
MalfTLP- ECRC- UnsupReq- ACSViol-
UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt- UnxCmplt- RxOF-
MalfTLP- ECRC- UnsupReq- ACSViol-
UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO- CmpltAbrt- UnxCmplt- RxOF+
MalfTLP+ ECRC- UnsupReq- ACSViol-
CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr-
CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout- AdvNonFatalErr+
AERCap: First Error Pointer: 00, ECRCGenCap- ECRCGenEn- ECRCChkCap- ECRCChkEn-
MultHdrRecCap- MultHdrRecEn- TLPPfxPres- HdrLogCap-
HeaderLog: 00000000 00000000 00000000 00000000
Capabilities: [148 v1] Virtual Channel
Caps: LPEVC=0 RefClk=100ns PATEntryBits=1
Arb: Fixed- WRR32- WRR64- WRR128-
Ctrl: ArbSelect=Fixed
Status: InProgress-
VC0: Caps: PATOffset=00 MaxTimeSlots=1 RejSnoopTrans-
Arb: Fixed- WRR32- WRR64- WRR128- TWRR128- WRR256-
Ctrl: Enable+ ID=0 ArbSelect=Fixed TC/VC=ff
Status: NegoPending- InProgress-
Capabilities: [168 v1] Device Serial Number 00-00-00-00-00-00-00-00
Capabilities: [178 v1] Latency Tolerance Reporting
Max snoop latency: 0ns
Max no snoop latency: 0ns
Capabilities: [180 v1] L1 PM Substates
L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+ ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substates+
 PortCommonModeRestoreTime=50us PortTPowerOnTime=10us
L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1+ ASPM_L1.2- ASPM_L1.1+
  T_CommonMode=0us LTR1.2_Threshold=0ns
L1SubCtl2: T_PwrOn=10us
Kernel driver in use: ath10k_pci
Kernel modules: ath10k_pci


Could you please take a look at it when having?
If you need anything else from my side, don't hesitate to ask for it.

Best Regards,
Tim.

_______________________________________________
ath10k mailing list
ath10k@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/ath10k
