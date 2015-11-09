.class Lcom/lge/net/FastDownloadService$FDSTrafficStats;
.super Ljava/lang/Object;
.source "FastDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/net/FastDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FDSTrafficStats"
.end annotation


# instance fields
.field private mMobileRxBytes:J

.field private mTrafficStatsStatus:Z

.field private mWiFiRxBytes:J

.field final synthetic this$0:Lcom/lge/net/FastDownloadService;


# direct methods
.method public constructor <init>(Lcom/lge/net/FastDownloadService;)V
    .locals 0

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1271
    invoke-virtual {p0}, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->reset()V

    .line 1272
    return-void
.end method

.method public constructor <init>(Lcom/lge/net/FastDownloadService;JJ)V
    .locals 0
    .param p2, "wifiRxBytes"    # J
    .param p4, "mobileRxBytes"    # J

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1275
    iput-wide p2, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mWiFiRxBytes:J

    .line 1276
    iput-wide p4, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mMobileRxBytes:J

    .line 1277
    return-void
.end method

.method public constructor <init>(Lcom/lge/net/FastDownloadService;Lcom/lge/net/FastDownloadService$FDSTrafficStats;)V
    .locals 2
    .param p2, "stats"    # Lcom/lge/net/FastDownloadService$FDSTrafficStats;

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1280
    iget-wide v0, p2, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mWiFiRxBytes:J

    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mWiFiRxBytes:J

    .line 1281
    iget-wide v0, p2, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mMobileRxBytes:J

    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mMobileRxBytes:J

    .line 1282
    return-void
.end method

.method static synthetic access$2000(Lcom/lge/net/FastDownloadService$FDSTrafficStats;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService$FDSTrafficStats;

    .prologue
    .line 1265
    iget-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mWiFiRxBytes:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/lge/net/FastDownloadService$FDSTrafficStats;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/net/FastDownloadService$FDSTrafficStats;

    .prologue
    .line 1265
    iget-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mMobileRxBytes:J

    return-wide v0
.end method


# virtual methods
.method public getMobileRxBytes()J
    .locals 2

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mMobileInterface:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$1100(Lcom/lge/net/FastDownloadService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiRxBytes()J
    .locals 2

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mWifiInterface:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$1500(Lcom/lge/net/FastDownloadService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 1293
    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mWiFiRxBytes:J

    .line 1294
    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mMobileRxBytes:J

    .line 1295
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mWiFiRxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mWiFiRxBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMobileRxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mMobileRxBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRxBytesSum()V
    .locals 2

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mWifiInterface:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$1500(Lcom/lge/net/FastDownloadService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mWiFiRxBytes:J

    .line 1304
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->this$0:Lcom/lge/net/FastDownloadService;

    # getter for: Lcom/lge/net/FastDownloadService;->mMobileInterface:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/net/FastDownloadService;->access$1100(Lcom/lge/net/FastDownloadService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$FDSTrafficStats;->mMobileRxBytes:J

    .line 1305
    return-void
.end method
