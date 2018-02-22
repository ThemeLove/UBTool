.class public final Lcom/google/zxing/oned/UPCAReader;
.super Lcom/google/zxing/oned/UPCEANReader;


# instance fields
.field private final a:Lcom/google/zxing/oned/UPCEANReader;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    new-instance v0, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v0}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCAReader;->a:Lcom/google/zxing/oned/UPCEANReader;

    return-void
.end method
