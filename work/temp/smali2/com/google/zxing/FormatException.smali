.class public final Lcom/google/zxing/FormatException;
.super Lcom/google/zxing/ReaderException;


# static fields
.field private static final c:Lcom/google/zxing/FormatException;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/zxing/FormatException;

    invoke-direct {v0}, Lcom/google/zxing/FormatException;-><init>()V

    sput-object v0, Lcom/google/zxing/FormatException;->c:Lcom/google/zxing/FormatException;

    sget-object v1, Lcom/google/zxing/FormatException;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcom/google/zxing/FormatException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/ReaderException;-><init>()V

    return-void
.end method
