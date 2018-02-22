.class public final Lcom/alipay/sdk/f/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/alipay/sdk/f/e;->a:Z

    invoke-static {}, Lcom/alipay/sdk/j/k;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/f/e;->b:Ljava/lang/String;

    return-void
.end method

.method private static varargs a([[B)[B
    .registers 11

    const/4 v3, 0x0

    const/4 v0, 0x0

    array-length v1, p0

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_49
    .catchall {:try_start_6 .. :try_end_b} :catchall_59

    :try_start_b
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_78
    .catchall {:try_start_b .. :try_end_10} :catchall_71

    :goto_10
    :try_start_10
    array-length v4, p0

    if-ge v3, v4, :cond_39

    aget-object v4, p0, v3

    array-length v4, v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "%05d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_39
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3f} :catch_7b
    .catchall {:try_start_10 .. :try_end_3f} :catchall_76

    move-result-object v0

    :try_start_40
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_69

    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_5

    :catch_47
    move-exception v1

    goto :goto_5

    :catch_49
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_4c
    if-eqz v2, :cond_51

    :try_start_4e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_6b

    :cond_51
    :goto_51
    if-eqz v1, :cond_5

    :try_start_53
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5

    :catch_57
    move-exception v1

    goto :goto_5

    :catchall_59
    move-exception v1

    move-object v2, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :goto_5e
    if-eqz v2, :cond_63

    :try_start_60
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_6d

    :cond_63
    :goto_63
    if-eqz v1, :cond_68

    :try_start_65
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_6f

    :cond_68
    :goto_68
    throw v0

    :catch_69
    move-exception v2

    goto :goto_43

    :catch_6b
    move-exception v2

    goto :goto_51

    :catch_6d
    move-exception v2

    goto :goto_63

    :catch_6f
    move-exception v1

    goto :goto_68

    :catchall_71
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_5e

    :catchall_76
    move-exception v0

    goto :goto_5e

    :catch_78
    move-exception v1

    move-object v1, v0

    goto :goto_4c

    :catch_7b
    move-exception v3

    goto :goto_4c
.end method


# virtual methods
.method public final a(Lcom/alipay/sdk/f/c;)Lcom/alipay/sdk/f/b;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p1, Lcom/alipay/sdk/f/c;->b:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_5b
    .catchall {:try_start_1 .. :try_end_8} :catchall_68

    const/4 v2, 0x5

    :try_start_9
    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_7c
    .catchall {:try_start_9 .. :try_end_21} :catchall_7a

    const/4 v3, 0x5

    :try_start_22
    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_83

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayInputStream;->read([B)I

    iget-boolean v4, p0, Lcom/alipay/sdk/f/e;->a:Z

    if-eqz v4, :cond_41

    iget-object v4, p0, Lcom/alipay/sdk/f/e;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alipay/sdk/d/e;->b(Ljava/lang/String;[B)[B

    move-result-object v3

    :cond_41
    iget-boolean v4, p1, Lcom/alipay/sdk/f/c;->a:Z

    if-eqz v4, :cond_81

    invoke-static {v3}, Lcom/alipay/sdk/d/c;->b([B)[B

    move-result-object v3

    move-object v4, v3

    :goto_4a
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_4f} :catch_7f
    .catchall {:try_start_22 .. :try_end_4f} :catchall_7a

    :goto_4f
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_58

    move-object v1, v3

    :goto_53
    if-nez v2, :cond_72

    if-nez v1, :cond_72

    :goto_57
    return-object v0

    :catch_58
    move-exception v1

    move-object v1, v3

    goto :goto_53

    :catch_5b
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_5e
    if-eqz v1, :cond_66

    :try_start_60
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_65

    move-object v1, v0

    goto :goto_53

    :catch_65
    move-exception v1

    :cond_66
    move-object v1, v0

    goto :goto_53

    :catchall_68
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_6c
    if-eqz v1, :cond_71

    :try_start_6e
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_78

    :cond_71
    :goto_71
    throw v0

    :cond_72
    new-instance v0, Lcom/alipay/sdk/f/b;

    invoke-direct {v0, v2, v1}, Lcom/alipay/sdk/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :catch_78
    move-exception v1

    goto :goto_71

    :catchall_7a
    move-exception v0

    goto :goto_6c

    :catch_7c
    move-exception v2

    move-object v2, v0

    goto :goto_5e

    :catch_7f
    move-exception v3

    goto :goto_5e

    :cond_81
    move-object v4, v3

    goto :goto_4a

    :cond_83
    move-object v3, v0

    goto :goto_4f
.end method

.method public final a(Lcom/alipay/sdk/f/b;Z)Lcom/alipay/sdk/f/c;
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/alipay/sdk/f/b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v1, p1, Lcom/alipay/sdk/f/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    if-eqz p2, :cond_15

    :try_start_11
    invoke-static {v1}, Lcom/alipay/sdk/d/c;->a([B)[B
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_3a

    move-result-object v1

    :cond_15
    :goto_15
    iget-boolean v3, p0, Lcom/alipay/sdk/f/e;->a:Z

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/alipay/sdk/f/e;->b:Ljava/lang/String;

    sget-object v4, Lcom/alipay/sdk/b/a;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/sdk/d/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/sdk/f/e;->b:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/alipay/sdk/d/e;->a(Ljava/lang/String;[B)[B

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [[B

    aput-object v2, v4, v0

    aput-object v3, v4, v5

    aput-object v1, v4, v6

    invoke-static {v4}, Lcom/alipay/sdk/f/e;->a([[B)[B

    move-result-object v0

    :goto_34
    new-instance v1, Lcom/alipay/sdk/f/c;

    invoke-direct {v1, p2, v0}, Lcom/alipay/sdk/f/c;-><init>(Z[B)V

    return-object v1

    :catch_3a
    move-exception v3

    move p2, v0

    goto :goto_15

    :cond_3d
    new-array v3, v6, [[B

    aput-object v2, v3, v0

    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/alipay/sdk/f/e;->a([[B)[B

    move-result-object v0

    goto :goto_34
.end method
