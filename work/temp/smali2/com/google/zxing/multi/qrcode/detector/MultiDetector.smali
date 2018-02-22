.class public final Lcom/google/zxing/multi/qrcode/detector/MultiDetector;
.super Lcom/google/zxing/qrcode/detector/Detector;


# static fields
.field private static final a:[Lcom/google/zxing/common/DetectorResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/common/DetectorResult;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->a:[Lcom/google/zxing/common/DetectorResult;

    return-void
.end method
