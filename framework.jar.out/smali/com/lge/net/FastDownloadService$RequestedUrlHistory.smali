.class Lcom/lge/net/FastDownloadService$RequestedUrlHistory;
.super Ljava/lang/Object;
.source "FastDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/net/FastDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestedUrlHistory"
.end annotation


# static fields
.field private static final REQUESTED_URL_HISTORY_LIST_MAX_SIZE:I = 0xa

.field private static final TTL_NANOS:J = 0x8bb2c97000L


# instance fields
.field private expiryNanos:J

.field private mUrlHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/net/FastDownloadService;


# direct methods
.method public constructor <init>(Lcom/lge/net/FastDownloadService;Ljava/lang/String;)V
    .locals 4
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->this$0:Lcom/lge/net/FastDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->mUrlHistory:Ljava/util/ArrayList;

    .line 1554
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->mUrlHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->mUrlHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1557
    :cond_0
    iget-object v0, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->mUrlHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1558
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide v2, 0x8bb2c97000L

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->expiryNanos:J

    .line 1559
    return-void
.end method


# virtual methods
.method public getExpiryNanos()J
    .locals 2

    .prologue
    .line 1584
    iget-wide v0, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->expiryNanos:J

    return-wide v0
.end method

.method public isUrlAvailable(Ljava/lang/String;)Z
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1562
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v3, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->mUrlHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1563
    iget-object v3, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->mUrlHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1564
    .local v1, "urlHistory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[RequestedUrlHistory] isUrlAvailable index("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") urlHistory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1566
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->expiryNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 1569
    const-string v3, "[RequestedUrlHistory] Requested URL is exist in URL History"

    # invokes: Lcom/lge/net/FastDownloadService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/lge/net/FastDownloadService;->access$100(Ljava/lang/String;)V

    .line 1580
    .end local v1    # "urlHistory":Ljava/lang/String;
    :goto_1
    return v2

    .line 1562
    .restart local v1    # "urlHistory":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1574
    .end local v1    # "urlHistory":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->mUrlHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_2

    .line 1575
    iget-object v3, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->mUrlHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1577
    :cond_2
    iget-object v2, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->mUrlHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1578
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide v4, 0x8bb2c97000L

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/net/FastDownloadService$RequestedUrlHistory;->expiryNanos:J

    .line 1580
    const/4 v2, 0x1

    goto :goto_1
.end method
