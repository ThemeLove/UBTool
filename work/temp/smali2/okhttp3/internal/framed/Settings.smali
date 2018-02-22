.class public final Lokhttp3/internal/framed/Settings;
.super Ljava/lang/Object;


# static fields
.field static final CLIENT_CERTIFICATE_VECTOR_SIZE:I = 0x8

.field static final COUNT:I = 0xa

.field static final CURRENT_CWND:I = 0x5

.field static final DEFAULT_INITIAL_WINDOW_SIZE:I = 0x10000

.field static final DOWNLOAD_BANDWIDTH:I = 0x2

.field static final DOWNLOAD_RETRANS_RATE:I = 0x6

.field static final ENABLE_PUSH:I = 0x2

.field static final FLAG_CLEAR_PREVIOUSLY_PERSISTED_SETTINGS:I = 0x1

.field static final FLOW_CONTROL_OPTIONS:I = 0xa

.field static final FLOW_CONTROL_OPTIONS_DISABLED:I = 0x1

.field static final HEADER_TABLE_SIZE:I = 0x1

.field static final INITIAL_WINDOW_SIZE:I = 0x7

.field static final MAX_CONCURRENT_STREAMS:I = 0x4

.field static final MAX_FRAME_SIZE:I = 0x5

.field static final MAX_HEADER_LIST_SIZE:I = 0x6

.field static final PERSISTED:I = 0x2

.field static final PERSIST_VALUE:I = 0x1

.field static final ROUND_TRIP_TIME:I = 0x3

.field static final UPLOAD_BANDWIDTH:I = 0x1


# instance fields
.field private persistValue:I

.field private persisted:I

.field private set:I

.field private final values:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    return-void
.end method


# virtual methods
.method clear()V
    .registers 3

    const/4 v1, 0x0

    iput v1, p0, Lokhttp3/internal/framed/Settings;->persisted:I

    iput v1, p0, Lokhttp3/internal/framed/Settings;->persistValue:I

    iput v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method flags(I)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/Settings;->isPersisted(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    :cond_8
    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/Settings;->persistValue(I)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit8 v0, v0, 0x1

    :cond_10
    return v0
.end method

.method get(I)I
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    aget v0, v0, p1

    return v0
.end method

.method getClientCertificateVectorSize(I)I
    .registers 4

    const/16 v0, 0x100

    iget v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/16 v1, 0x8

    aget p1, v0, v1

    :cond_d
    return p1
.end method

.method getCurrentCwnd(I)I
    .registers 4

    const/16 v0, 0x20

    iget v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method getDownloadBandwidth(I)I
    .registers 4

    const/4 v0, 0x4

    iget v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 v1, 0x2

    aget p1, v0, v1

    :cond_b
    return p1
.end method

.method getDownloadRetransRate(I)I
    .registers 4

    const/16 v0, 0x40

    iget v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 v1, 0x6

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method getEnablePush(Z)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x4

    iget v3, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    iget-object v2, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    :goto_d
    if-ne v2, v0, :cond_16

    :goto_f
    return v0

    :cond_10
    if-eqz p1, :cond_14

    move v2, v0

    goto :goto_d

    :cond_14
    move v2, v1

    goto :goto_d

    :cond_16
    move v0, v1

    goto :goto_f
.end method

.method getHeaderTableSize()I
    .registers 3

    const/4 v0, 0x2

    iget v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_b
    return v0

    :cond_c
    const/4 v0, -0x1

    goto :goto_b
.end method

.method getInitialWindowSize(I)I
    .registers 4

    const/16 v0, 0x80

    iget v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 v1, 0x7

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method getMaxConcurrentStreams(I)I
    .registers 4

    const/16 v0, 0x10

    iget v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 v1, 0x4

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method getMaxFrameSize(I)I
    .registers 4

    const/16 v0, 0x20

    iget v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 v1, 0x5

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method getMaxHeaderListSize(I)I
    .registers 4

    const/16 v0, 0x40

    iget v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 v1, 0x6

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method getRoundTripTime(I)I
    .registers 4

    const/16 v0, 0x8

    iget v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 v1, 0x3

    aget p1, v0, v1

    :cond_c
    return p1
.end method

.method getUploadBandwidth(I)I
    .registers 4

    const/4 v0, 0x2

    iget v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/4 v1, 0x1

    aget p1, v0, v1

    :cond_b
    return p1
.end method

.method isFlowControlDisabled()Z
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x400

    iget v2, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget-object v1, p0, Lokhttp3/internal/framed/Settings;->values:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    :goto_e
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0

    :cond_14
    move v1, v0

    goto :goto_e
.end method

.method isPersisted(I)Z
    .registers 5

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lokhttp3/internal/framed/Settings;->persisted:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method isSet(I)Z
    .registers 5

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method merge(Lokhttp3/internal/framed/Settings;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1a

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->flags(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    goto :goto_b

    :cond_1a
    return-void
.end method

.method persistValue(I)Z
    .registers 5

    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Lokhttp3/internal/framed/Settings;->persistValue:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method set(III)Lokhttp3/internal/framed/Settings;
    .registers 7

    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    array-length v0, v0

    if-lt p1, v0, :cond_6

    :goto_5
    return-object p0

    :cond_6
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iget v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    or-int/2addr v1, v0

    iput v1, p0, Lokhttp3/internal/framed/Settings;->set:I

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_24

    iget v1, p0, Lokhttp3/internal/framed/Settings;->persistValue:I

    or-int/2addr v1, v0

    iput v1, p0, Lokhttp3/internal/framed/Settings;->persistValue:I

    :goto_16
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2c

    iget v1, p0, Lokhttp3/internal/framed/Settings;->persisted:I

    or-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/framed/Settings;->persisted:I

    :goto_1f
    iget-object v0, p0, Lokhttp3/internal/framed/Settings;->values:[I

    aput p3, v0, p1

    goto :goto_5

    :cond_24
    iget v1, p0, Lokhttp3/internal/framed/Settings;->persistValue:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lokhttp3/internal/framed/Settings;->persistValue:I

    goto :goto_16

    :cond_2c
    iget v1, p0, Lokhttp3/internal/framed/Settings;->persisted:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/framed/Settings;->persisted:I

    goto :goto_1f
.end method

.method size()I
    .registers 2

    iget v0, p0, Lokhttp3/internal/framed/Settings;->set:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method
