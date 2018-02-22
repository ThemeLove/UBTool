.class final Lokhttp3/ab$1;
.super Lokhttp3/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/ab;->create(Lokhttp3/u;JLokio/BufferedSource;)Lokhttp3/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/u;

.field final synthetic b:J

.field final synthetic c:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokhttp3/u;JLokio/BufferedSource;)V
    .registers 5

    iput-object p1, p0, Lokhttp3/ab$1;->a:Lokhttp3/u;

    iput-wide p2, p0, Lokhttp3/ab$1;->b:J

    iput-object p4, p0, Lokhttp3/ab$1;->c:Lokio/BufferedSource;

    invoke-direct {p0}, Lokhttp3/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/ab$1;->b:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/u;
    .registers 2

    iget-object v0, p0, Lokhttp3/ab$1;->a:Lokhttp3/u;

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .registers 2

    iget-object v0, p0, Lokhttp3/ab$1;->c:Lokio/BufferedSource;

    return-object v0
.end method
