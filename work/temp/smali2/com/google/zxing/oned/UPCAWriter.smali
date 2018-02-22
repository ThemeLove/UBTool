.class public final Lcom/google/zxing/oned/UPCAWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/Writer;


# instance fields
.field private final a:Lcom/google/zxing/oned/EAN13Writer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/oned/EAN13Writer;

    invoke-direct {v0}, Lcom/google/zxing/oned/EAN13Writer;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCAWriter;->a:Lcom/google/zxing/oned/EAN13Writer;

    return-void
.end method
