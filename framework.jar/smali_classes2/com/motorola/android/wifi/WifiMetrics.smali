.class public final Lcom/motorola/android/wifi/WifiMetrics;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;,
        Lcom/motorola/android/wifi/WifiMetrics$WifiStats;,
        Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG:Z

.field private static final DXE_LOCKUP_ISSUE_TYPE:I = 0x1

.field private static final ID_CONNECT:Ljava/lang/String; = "CONNECT"

.field private static final ID_DISCONNECT:Ljava/lang/String; = "DISCONNECT"

.field private static final LFR_ROAMING_METRICS:I = 0x3

.field private static final PARAMETER_BSSID:Ljava/lang/String; = "bssid_prefix"

.field private static final PARAMETER_BT:Ljava/lang/String; = "bluetooth"

.field private static final PARAMETER_LINK_SPEED:Ljava/lang/String; = "link_speed"

.field private static final PARAMETER_RSSI:Ljava/lang/String; = "rssi"

.field private static final PARAMETER_SSID:Ljava/lang/String; = "ssid"

.field private static final PARAMETER_SUPPLICANT_STATE:Ljava/lang/String; = "supplicant"

.field private static final PER_ISSUE_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiMetrics"

.field private static final TAG_BSSID:Ljava/lang/String; = "wifi_bssid"

.field private static final TAG_CAPTIVE_PORTAL_STATE:Ljava/lang/String; = "wifi_cap_port_state"

.field private static final TAG_CONNECT_DURATION:Ljava/lang/String; = "totalduration"

.field private static final TAG_DISPLAY_STATE:Ljava/lang/String; = "wifi_display_state"

.field private static final TAG_DNS:Ljava/lang/String; = "wifi_dns"

.field private static final TAG_DROP_BOX_TIME:Ljava/lang/String; = "wifi_dropbox_time"

.field private static final TAG_GW_IP:Ljava/lang/String; = "wifi_gw_add"

.field private static final TAG_ID_DRIVER_DXE_PROBLEM:Ljava/lang/String; = "WIFI_L2_TX_RX_ISSUE"

.field private static final TAG_ID_PER_ISSUE:Ljava/lang/String; = "WIFI_PER_THRESHOLD"

.field private static final TAG_ID_ROAM_ISSUE:Ljava/lang/String; = "WIFI_ROAM_ISSUES "

.field private static final TAG_IP_ADDR:Ljava/lang/String; = "wifi_ipv4"

.field private static final TAG_REASON_CODE:Ljava/lang/String; = "reason_code"

.field private static final TAG_ROAMING_STATE:Ljava/lang/String; = "wifi_roaming_state"

.field private static final TAG_ROAM_PERIOD:Ljava/lang/String; = "wifi_roam_period"

.field private static final TAG_ROAM_TRIES:Ljava/lang/String; = "wifi_roam_aps_count"

.field private static final TAG_RSSI:Ljava/lang/String; = "wifi_rssi"

.field private static final TAG_SECURTY_TYPE:Ljava/lang/String; = "wifi_security"

.field private static final TAG_SSID:Ljava/lang/String; = "wifi_ssid"

.field private static final TAG_TIME_AFTER_CONN:Ljava/lang/String; = "wifi_time_after_con"

.field private static final TAG_TIME_AFTER_WIFI_ON:Ljava/lang/String; = "wifi_time_after_turn_on"

.field private static final TAG_TIME_SINCE_LAST_STALL:Ljava/lang/String; = "wifi_laststall_timegap"

.field private static final TAG_TOTAL_CONN_TIME:Ljava/lang/String; = "wifi_total_con_time"

.field private static final TAG_TOTAL_WIFI_ON_TIME:Ljava/lang/String; = "wifi_total_wifi_enabled_time"

.field private static final TAG_WIFI_L1:Ljava/lang/String; = "MOT_WIFI_L1"

.field private static final VERSION_CONNECT:Ljava/lang/String; = "1.0.0"

.field private static final VERSION_DISCONNECT:Ljava/lang/String; = "1.1"

.field private static final VERSION_DXE_EVENT:Ljava/lang/String; = "0.1"

.field private static final VERSION_LFR_EVENT:Ljava/lang/String; = "1.0"

.field private static final VERSION_PER_EVENT:Ljava/lang/String; = "0.1"

.field private static final WIFIMETRICS_LOG_WIFIMETRICS_EVENT:I = 0x1

.field private static final WIFI_STAT_VERSION:Ljava/lang/String; = "metrics.wifi.version"

.field private static mContext:Landroid/content/Context;

.field private static mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

.field private static mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

.field private static roamRetries:I


# instance fields
.field bssidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dxeBlockupTime:J

.field private isConnectLogged:Z

.field private lfrReportTime:J

.field public mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

.field private mWorkHandler:Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;

.field private mWorkThread:Landroid/os/HandlerThread;

.field private perReportTime:J

.field private roamingPeriod:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 56
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/android/wifi/WifiMetrics;->DEBUG:Z

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    .line 132
    sput v1, Lcom/motorola/android/wifi/WifiMetrics;->roamRetries:I

    return-void

    :cond_0
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkHandler:Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;

    .line 114
    iput-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkThread:Landroid/os/HandlerThread;

    .line 116
    iput-wide v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->dxeBlockupTime:J

    .line 117
    iput-wide v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->perReportTime:J

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->isConnectLogged:Z

    .line 129
    iput-wide v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->lfrReportTime:J

    .line 130
    iput-wide v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    .line 146
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Default:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 215
    sput-object p1, Lcom/motorola/android/wifi/WifiMetrics;->mContext:Landroid/content/Context;

    .line 216
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiMetricsWorkerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkThread:Landroid/os/HandlerThread;

    .line 218
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 219
    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;-><init>(Lcom/motorola/android/wifi/WifiMetrics;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkHandler:Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;

    .line 220
    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200()Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/wifi/WifiMetrics;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/wifi/WifiMetrics;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/motorola/android/wifi/WifiMetrics;->isConnectLogged:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/android/wifi/WifiMetrics;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/wifi/WifiMetrics;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/motorola/android/wifi/WifiMetrics;->isConnectLogged:Z

    return p1
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "wifi_info"    # Landroid/net/wifi/WifiInfo;
    .param p4, "bt_state"    # Ljava/lang/String;

    .prologue
    .line 539
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 541
    .local v6, "cr":Landroid/content/ContentResolver;
    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/wifi/WifiMetrics$1;-><init>(Lcom/motorola/android/wifi/WifiMetrics;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/motorola/android/wifi/WifiMetrics$1;->start()V

    .line 626
    return-void
.end method

.method private fillCheckinData(Lcom/motorola/android/provider/CheckinEvent;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;I)V
    .locals 12
    .param p1, "event"    # Lcom/motorola/android/provider/CheckinEvent;
    .param p2, "wifiStats"    # Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    .param p3, "stallType"    # I

    .prologue
    .line 463
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v6

    .line 464
    .local v6, "timeStamp":J
    const-wide/16 v4, 0x0

    .line 465
    .local v4, "timeGapLastEvent":J
    sget-object v8, Lcom/motorola/android/wifi/WifiMetrics;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 466
    .local v2, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 467
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 468
    .local v1, "dhcpInfo":Landroid/net/DhcpInfo;
    const/4 v8, 0x1

    if-ne p3, v8, :cond_5

    .line 469
    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->dxeBlockupTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    iget-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics;->dxeBlockupTime:J

    .line 470
    :goto_0
    iput-wide v6, p0, Lcom/motorola/android/wifi/WifiMetrics;->dxeBlockupTime:J

    .line 480
    :cond_0
    :goto_1
    sget-boolean v8, Lcom/motorola/android/wifi/WifiMetrics;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 481
    if-nez v3, :cond_9

    .line 482
    const-string v8, "wifi_ssid"

    const-string v9, "none"

    invoke-virtual {p1, v8, v9}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v8, "wifi_bssid"

    const-string v9, "none"

    invoke-virtual {p1, v8, v9}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_1
    :goto_2
    const-string v9, "wifi_rssi"

    if-nez v3, :cond_d

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {p1, v9, v8}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 500
    const/4 v8, 0x3

    if-eq p3, v8, :cond_2

    .line 502
    if-nez v1, :cond_e

    const-string v0, "DNS empty"

    .line 504
    .local v0, "addr":Ljava/lang/String;
    :goto_4
    const-string v8, "wifi_dns"

    invoke-virtual {p1, v8, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    if-nez v1, :cond_f

    const-string v0, "GW_ADDR empty"

    .line 507
    :goto_5
    const-string v8, "wifi_gw_add"

    invoke-virtual {p1, v8, v0}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .end local v0    # "addr":Ljava/lang/String;
    :cond_2
    const-string v8, "wifi_cap_port_state"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 514
    const-string v8, "wifi_display_state"

    invoke-virtual {p2}, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->getScreenState()Z

    move-result v9

    invoke-virtual {p1, v8, v9}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    .line 516
    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    .line 517
    const-string v8, "wifi_laststall_timegap"

    invoke-virtual {p1, v8, v4, v5}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    .line 518
    move-wide v4, v6

    .line 520
    const/4 v8, 0x3

    if-ne p3, v8, :cond_3

    .line 521
    const-string v8, "wifi_roam_aps_count"

    sget v9, Lcom/motorola/android/wifi/WifiMetrics;->roamRetries:I

    invoke-virtual {p1, v8, v9}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 522
    const-string v8, "wifi_roaming_state"

    iget-object v9, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    invoke-virtual {v9}, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v8, "wifi_roam_period"

    iget-wide v10, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    invoke-virtual {p1, v8, v10, v11}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    .line 526
    :cond_3
    return-void

    .line 469
    :cond_4
    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->dxeBlockupTime:J

    sub-long v4, v6, v8

    goto :goto_0

    .line 471
    :cond_5
    const/4 v8, 0x2

    if-ne p3, v8, :cond_7

    .line 472
    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->perReportTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    iget-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics;->perReportTime:J

    .line 473
    :goto_6
    iput-wide v6, p0, Lcom/motorola/android/wifi/WifiMetrics;->perReportTime:J

    goto :goto_1

    .line 472
    :cond_6
    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->perReportTime:J

    sub-long v4, v6, v8

    goto :goto_6

    .line 475
    :cond_7
    const/4 v8, 0x3

    if-ne p3, v8, :cond_0

    .line 476
    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->lfrReportTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    iget-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics;->lfrReportTime:J

    .line 477
    :goto_7
    iput-wide v6, p0, Lcom/motorola/android/wifi/WifiMetrics;->lfrReportTime:J

    goto/16 :goto_1

    .line 476
    :cond_8
    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->lfrReportTime:J

    sub-long v4, v6, v8

    goto :goto_7

    .line 485
    :cond_9
    const-string v9, "wifi_ssid"

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_a

    const-string v8, "none"

    :goto_8
    invoke-virtual {p1, v9, v8}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const/4 v8, 0x3

    if-ne p3, v8, :cond_b

    .line 488
    const-string v8, "wifi_bssid"

    iget-object v9, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 485
    :cond_a
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    .line 492
    :cond_b
    const-string v9, "wifi_bssid"

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c

    const-string v8, "none"

    :goto_9
    invoke-virtual {p1, v9, v8}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    .line 498
    :cond_d
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v8

    goto/16 :goto_3

    .line 502
    :cond_e
    iget v8, v1, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v8}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 505
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_f
    iget v8, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v8}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5
.end method

.method private getBTState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 251
    const-string v1, "na"

    .line 252
    .local v1, "bt_state":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 254
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v2

    .line 258
    .local v2, "conn_state":I
    packed-switch v2, :pswitch_data_0

    .line 279
    .end local v2    # "conn_state":I
    :cond_0
    :goto_0
    return-object v1

    .line 260
    .restart local v2    # "conn_state":I
    :pswitch_0
    const-string v1, "connected"

    .line 261
    goto :goto_0

    .line 263
    :pswitch_1
    const-string v1, "connecting"

    .line 264
    goto :goto_0

    .line 266
    :pswitch_2
    const-string v1, "disconnecting"

    .line 267
    goto :goto_0

    .line 269
    :pswitch_3
    const-string v1, "disconnected"

    .line 270
    goto :goto_0

    .line 276
    .end local v2    # "conn_state":I
    :cond_1
    const-string v1, "off"

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/android/wifi/WifiMetrics;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics;

    invoke-direct {v0, p0}, Lcom/motorola/android/wifi/WifiMetrics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    .line 226
    :cond_0
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;-><init>(Lcom/motorola/android/wifi/WifiMetrics;Lcom/motorola/android/wifi/WifiMetrics$1;)V

    sput-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    .line 229
    :cond_1
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    return-object v0
.end method

.method private logCheckinEvent(Lcom/motorola/android/provider/CheckinEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/motorola/android/provider/CheckinEvent;

    .prologue
    .line 529
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics;->mWifiMetrics:Lcom/motorola/android/wifi/WifiMetrics;

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mWorkHandler:Lcom/motorola/android/wifi/WifiMetrics$MetricsHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 532
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 534
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static now()J
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    sput-object p0, Lcom/motorola/android/wifi/WifiMetrics;->mContext:Landroid/content/Context;

    .line 338
    return-void
.end method


# virtual methods
.method public getWifiStats()Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    return-object v0
.end method

.method public logWifiConnection(Landroid/net/wifi/WifiInfo;)V
    .locals 3
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/motorola/android/wifi/WifiMetrics;->getBTState()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "btState":Ljava/lang/String;
    const-string v1, "MOT_WIFI_L1"

    const-string v2, "CONNECT"

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/motorola/android/wifi/WifiMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public logWifiDisConnection(Landroid/net/wifi/WifiInfo;)V
    .locals 3
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/motorola/android/wifi/WifiMetrics;->getBTState()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "btState":Ljava/lang/String;
    const-string v1, "MOT_WIFI_L1"

    const-string v2, "DISCONNECT"

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/motorola/android/wifi/WifiMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public logWifiStateChange(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/wifi/WifiInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "network_info"    # Landroid/net/NetworkInfo;
    .param p4, "link_properties"    # Landroid/net/LinkProperties;
    .param p5, "wifi_info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 285
    if-nez p1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 295
    invoke-static {p1}, Lcom/motorola/android/wifi/WifiMetrics;->setContext(Landroid/content/Context;)V

    .line 297
    const-string v1, "na"

    .line 298
    .local v1, "bt_state":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 300
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 302
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v2

    .line 304
    .local v2, "conn_state":I
    packed-switch v2, :pswitch_data_0

    .line 326
    .end local v2    # "conn_state":I
    :cond_2
    :goto_1
    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 328
    .local v3, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_4

    .line 329
    const-string v4, "MOT_WIFI_L1"

    const-string v5, "CONNECT"

    invoke-direct {p0, v4, v5, p5, v1}, Lcom/motorola/android/wifi/WifiMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    .restart local v2    # "conn_state":I
    :pswitch_0
    const-string v1, "connected"

    .line 307
    goto :goto_1

    .line 309
    :pswitch_1
    const-string v1, "connecting"

    .line 310
    goto :goto_1

    .line 312
    :pswitch_2
    const-string v1, "disconnecting"

    .line 313
    goto :goto_1

    .line 315
    :pswitch_3
    const-string v1, "disconnected"

    .line 316
    goto :goto_1

    .line 322
    .end local v2    # "conn_state":I
    :cond_3
    const-string v1, "off"

    goto :goto_1

    .line 331
    .restart local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_4
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 332
    const-string v4, "MOT_WIFI_L1"

    const-string v5, "DISCONNECT"

    invoke-direct {p0, v4, v5, p5, v1}, Lcom/motorola/android/wifi/WifiMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reportDxeStall(Landroid/net/wifi/WifiInfo;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;)V
    .locals 6
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "wifiStats"    # Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    .prologue
    .line 447
    const-string v1, "metrics.wifi.version"

    const-string v2, "0.1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "version":Ljava/lang/String;
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_WIFI_L1"

    const-string v2, "WIFI_L2_TX_RX_ISSUE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 450
    .local v0, "event":Lcom/motorola/android/provider/CheckinEvent;
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/motorola/android/wifi/WifiMetrics;->fillCheckinData(Lcom/motorola/android/provider/CheckinEvent;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;I)V

    .line 451
    invoke-direct {p0, v0}, Lcom/motorola/android/wifi/WifiMetrics;->logCheckinEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    .line 452
    return-void
.end method

.method public reportLFRmetrics(Landroid/net/wifi/WifiInfo;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;Ljava/lang/String;)V
    .locals 10
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "wifiStats"    # Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    .param p3, "lfrEvent"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    .line 358
    const-string v1, "metrics.wifi.version"

    const-string v2, "1.0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "version":Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "splitter":[Ljava/lang/String;
    array-length v1, v6

    if-lt v1, v7, :cond_0

    const-string v1, "PREAUTH_INIT"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Init:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 369
    aget-object v1, v6, v7

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/wifi/WifiMetrics;->updateBssidlist(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    .line 376
    :cond_0
    array-length v1, v6

    if-lt v1, v7, :cond_4

    const-string v1, "PREAUTH_STATUS"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "TRUE"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 378
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 379
    aget-object v1, v6, v7

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/wifi/WifiMetrics;->updateBssidlist(Ljava/lang/String;)V

    .line 429
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Failed:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Failed_Bssid_Mismatch:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Failed_Disconnected:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    if-ne v1, v2, :cond_3

    .line 432
    :cond_2
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_WIFI_L1"

    const-string v2, "WIFI_ROAM_ISSUES "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 434
    .local v0, "event":Lcom/motorola/android/provider/CheckinEvent;
    const/4 v1, 0x3

    invoke-direct {p0, v0, p2, v1}, Lcom/motorola/android/wifi/WifiMetrics;->fillCheckinData(Lcom/motorola/android/provider/CheckinEvent;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;I)V

    .line 435
    invoke-direct {p0, v0}, Lcom/motorola/android/wifi/WifiMetrics;->logCheckinEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    .line 436
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    if-ne v1, v2, :cond_3

    .line 437
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Default:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 438
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 439
    const/4 v1, 0x0

    sput v1, Lcom/motorola/android/wifi/WifiMetrics;->roamRetries:I

    .line 440
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    .line 443
    .end local v0    # "event":Lcom/motorola/android/provider/CheckinEvent;
    :cond_3
    return-void

    .line 385
    :cond_4
    array-length v1, v6

    if-lt v1, v7, :cond_5

    const-string v1, "PREAUTH_STATUS"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "FALSE"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 387
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Preauth_Failed:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 388
    aget-object v1, v6, v7

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/wifi/WifiMetrics;->updateBssidlist(Ljava/lang/String;)V

    .line 389
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    .line 390
    sget v1, Lcom/motorola/android/wifi/WifiMetrics;->roamRetries:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/motorola/android/wifi/WifiMetrics;->roamRetries:I

    goto :goto_0

    .line 396
    :cond_5
    array-length v1, v6

    if-lt v1, v7, :cond_7

    const-string v1, "PREAUTH_HANDOVER"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "HANDOVER_CONNECT"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 398
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Started:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 399
    aget-object v1, v6, v7

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/wifi/WifiMetrics;->updateBssidlist(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    .line 404
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    sget-object v2, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Started:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    if-ne v1, v2, :cond_1

    .line 405
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 407
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Success:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 410
    :goto_1
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    goto/16 :goto_0

    .line 409
    :cond_6
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Failed_Bssid_Mismatch:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    goto :goto_1

    .line 418
    :cond_7
    array-length v1, v6

    if-lt v1, v7, :cond_1

    const-string v1, "PREAUTH_HANDOVER"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HANDOVER_DISCONNECT"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    sget-object v1, Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;->Handover_Failed_Disconnected:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiMetrics;->mLfrPreauth:Lcom/motorola/android/wifi/WifiMetrics$LfrPreauth;

    .line 421
    aget-object v1, v6, v7

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/wifi/WifiMetrics;->updateBssidlist(Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->now()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics;->roamingPeriod:J

    goto/16 :goto_0
.end method

.method public reportPERIssue(Lcom/motorola/android/wifi/WifiMetrics$WifiStats;)V
    .locals 6
    .param p1, "wifiStats"    # Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    .prologue
    .line 455
    const-string v1, "metrics.wifi.version"

    const-string v2, "0.1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "version":Ljava/lang/String;
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_WIFI_L1"

    const-string v2, "WIFI_PER_THRESHOLD"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 458
    .local v0, "event":Lcom/motorola/android/provider/CheckinEvent;
    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/motorola/android/wifi/WifiMetrics;->fillCheckinData(Lcom/motorola/android/provider/CheckinEvent;Lcom/motorola/android/wifi/WifiMetrics$WifiStats;I)V

    .line 459
    invoke-direct {p0, v0}, Lcom/motorola/android/wifi/WifiMetrics;->logCheckinEvent(Lcom/motorola/android/provider/CheckinEvent;)V

    .line 460
    return-void
.end method

.method public updateBssidlist(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventBssid"    # Ljava/lang/String;

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "mTemp":I
    const-string v1, ""

    .line 346
    .local v1, "strTemp":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 350
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "strTemp":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 351
    .restart local v1    # "strTemp":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v2, p0, Lcom/motorola/android/wifi/WifiMetrics;->bssidList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
