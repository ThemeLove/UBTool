.class public abstract Lcom/google/zxing/oned/rss/AbstractRSSReader;
.super Lcom/google/zxing/oned/OneDReader;


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[F

.field private final d:[F

.field private final e:[I

.field private final f:[I


# direct methods
.method protected constructor <init>()V
    .registers 3

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->a:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->b:[I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->c:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->d:[F

    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->b:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->e:[I

    iget-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->b:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/AbstractRSSReader;->f:[I

    return-void
.end method
