.class public final Lcom/google/zxing/NotFoundException;
.super Lcom/google/zxing/ReaderException;


# static fields
.field private static final c:Lcom/google/zxing/NotFoundException;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/zxing/NotFoundException;

    invoke-direct {v0}, Lcom/google/zxing/NotFoundException;-><init>()V

    sput-object v0, Lcom/google/zxing/NotFoundException;->c:Lcom/google/zxing/NotFoundException;

    sget-object v1, Lcom/google/zxing/NotFoundException;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcom/google/zxing/NotFoundException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/ReaderException;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/zxing/NotFoundException;
    .registers 1

    sget-object v0, Lcom/google/zxing/NotFoundException;->c:Lcom/google/zxing/NotFoundException;

    return-object v0
.end method
