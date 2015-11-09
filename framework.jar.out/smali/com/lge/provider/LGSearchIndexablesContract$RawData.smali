.class public final Lcom/lge/provider/LGSearchIndexablesContract$RawData;
.super Lcom/lge/provider/LGSearchIndexablesContract$BaseColumns;
.source "LGSearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/LGSearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawData"
.end annotation


# static fields
.field public static final COLUMN_CURRENT_ENABLE:Ljava/lang/String; = "currentEnable"

.field public static final COLUMN_ENTRIES:Ljava/lang/String; = "entries"

.field public static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final COLUMN_PEPERENCE_TYPE:Ljava/lang/String; = "preperenceType"

.field public static final COLUMN_SCREEN_TITLE:Ljava/lang/String; = "screenTitle"

.field public static final COLUMN_SETTINGS_DB_FIELD:Ljava/lang/String; = "settingsDBField"

.field public static final COLUMN_SETTINGS_DB_TABLE:Ljava/lang/String; = "settingsDBTableName"

.field public static final COLUMN_SUMMARY_OFF:Ljava/lang/String; = "summaryOff"

.field public static final COLUMN_SUMMARY_ON:Ljava/lang/String; = "summaryOn"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_USER_ID:Ljava/lang/String; = "user_id"

.field public static final MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/indexables_raw"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/provider/LGSearchIndexablesContract$BaseColumns;-><init>(Lcom/lge/provider/LGSearchIndexablesContract$1;)V

    .line 183
    return-void
.end method
