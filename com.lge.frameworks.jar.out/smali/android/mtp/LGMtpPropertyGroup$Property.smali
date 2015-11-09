.class Landroid/mtp/LGMtpPropertyGroup$Property;
.super Ljava/lang/Object;
.source "LGMtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/LGMtpPropertyGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Property"
.end annotation


# instance fields
.field code:I

.field column:I

.field final synthetic this$0:Landroid/mtp/LGMtpPropertyGroup;

.field type:I


# direct methods
.method constructor <init>(Landroid/mtp/LGMtpPropertyGroup;III)V
    .locals 0
    .param p2, "code"    # I
    .param p3, "type"    # I
    .param p4, "column"    # I

    .prologue
    .line 28
    iput-object p1, p0, Landroid/mtp/LGMtpPropertyGroup$Property;->this$0:Landroid/mtp/LGMtpPropertyGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p2, p0, Landroid/mtp/LGMtpPropertyGroup$Property;->code:I

    .line 30
    iput p3, p0, Landroid/mtp/LGMtpPropertyGroup$Property;->type:I

    .line 31
    iput p4, p0, Landroid/mtp/LGMtpPropertyGroup$Property;->column:I

    .line 32
    return-void
.end method
