.class public final Lcom/google/zxing/ChecksumException;
.super Lcom/google/zxing/ReaderException;


# static fields
.field private static final c:Lcom/google/zxing/ChecksumException;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/zxing/ChecksumException;

    invoke-direct {v0}, Lcom/google/zxing/ChecksumException;-><init>()V

    sput-object v0, Lcom/google/zxing/ChecksumException;->c:Lcom/google/zxing/ChecksumException;

    sget-object v1, Lcom/google/zxing/ChecksumException;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcom/google/zxing/ChecksumException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/ReaderException;-><init>()V

    return-void
.end method
