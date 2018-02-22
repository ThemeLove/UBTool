.class public final Lokhttp3/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/d$a;
    }
.end annotation


# static fields
.field public static final a:Lokhttp3/d;

.field public static final b:Lokhttp3/d;


# instance fields
.field c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lokhttp3/d$a;

    invoke-direct {v0}, Lokhttp3/d$a;-><init>()V

    invoke-virtual {v0}, Lokhttp3/d$a;->a()Lokhttp3/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/d$a;->c()Lokhttp3/d;

    move-result-object v0

    sput-object v0, Lokhttp3/d;->a:Lokhttp3/d;

    new-instance v0, Lokhttp3/d$a;

    invoke-direct {v0}, Lokhttp3/d$a;-><init>()V

    invoke-virtual {v0}, Lokhttp3/d$a;->b()Lokhttp3/d$a;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Lokhttp3/d$a;->a(ILjava/util/concurrent/TimeUnit;)Lokhttp3/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/d$a;->c()Lokhttp3/d;

    move-result-object v0

    sput-object v0, Lokhttp3/d;->b:Lokhttp3/d;

    return-void
.end method

.method private constructor <init>(Lokhttp3/d$a;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lokhttp3/d$a;->a:Z

    iput-boolean v0, p0, Lokhttp3/d;->d:Z

    iget-boolean v0, p1, Lokhttp3/d$a;->b:Z

    iput-boolean v0, p0, Lokhttp3/d;->e:Z

    iget v0, p1, Lokhttp3/d$a;->c:I

    iput v0, p0, Lokhttp3/d;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/d;->g:I

    iput-boolean v1, p0, Lokhttp3/d;->h:Z

    iput-boolean v1, p0, Lokhttp3/d;->i:Z

    iput-boolean v1, p0, Lokhttp3/d;->j:Z

    iget v0, p1, Lokhttp3/d$a;->d:I

    iput v0, p0, Lokhttp3/d;->k:I

    iget v0, p1, Lokhttp3/d$a;->e:I

    iput v0, p0, Lokhttp3/d;->l:I

    iget-boolean v0, p1, Lokhttp3/d$a;->f:Z

    iput-boolean v0, p0, Lokhttp3/d;->m:Z

    iget-boolean v0, p1, Lokhttp3/d$a;->g:Z

    iput-boolean v0, p0, Lokhttp3/d;->n:Z

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/d$a;Lokhttp3/d$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lokhttp3/d;-><init>(Lokhttp3/d$a;)V

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/d;->d:Z

    iput-boolean p2, p0, Lokhttp3/d;->e:Z

    iput p3, p0, Lokhttp3/d;->f:I

    iput p4, p0, Lokhttp3/d;->g:I

    iput-boolean p5, p0, Lokhttp3/d;->h:Z

    iput-boolean p6, p0, Lokhttp3/d;->i:Z

    iput-boolean p7, p0, Lokhttp3/d;->j:Z

    iput p8, p0, Lokhttp3/d;->k:I

    iput p9, p0, Lokhttp3/d;->l:I

    iput-boolean p10, p0, Lokhttp3/d;->m:Z

    iput-boolean p11, p0, Lokhttp3/d;->n:Z

    iput-object p12, p0, Lokhttp3/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lokhttp3/r;)Lokhttp3/d;
    .registers 24

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lokhttp3/r;->a()I

    move-result v19

    move/from16 v18, v2

    move-object v2, v3

    move/from16 v3, v16

    :goto_18
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1a5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lokhttp3/r;->a(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lokhttp3/r;->b(I)Ljava/lang/String;

    move-result-object v14

    const-string v17, "Cache-Control"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_95

    if-eqz v2, :cond_93

    const/4 v15, 0x0

    :goto_39
    const/16 v16, 0x0

    move/from16 v22, v16

    move/from16 v16, v3

    move/from16 v3, v22

    :cond_41
    :goto_41
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_19d

    const-string v17, "=,;"

    move-object/from16 v0, v17

    invoke-static {v14, v3, v0}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    if-eq v0, v3, :cond_7b

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v21, 0x2c

    move/from16 v0, v21

    if-eq v3, v0, :cond_7b

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v21, 0x3b

    move/from16 v0, v21

    if-ne v3, v0, :cond_9f

    :cond_7b
    add-int/lit8 v17, v17, 0x1

    const/4 v3, 0x0

    move-object/from16 v22, v3

    move/from16 v3, v17

    move-object/from16 v17, v22

    :goto_84
    const-string v21, "no-cache"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_eb

    const/16 v16, 0x1

    goto :goto_41

    :cond_93
    move-object v2, v14

    goto :goto_39

    :cond_95
    const-string v17, "Pragma"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_19b

    const/4 v15, 0x0

    goto :goto_39

    :cond_9f
    add-int/lit8 v3, v17, 0x1

    invoke-static {v14, v3}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v3, v0, :cond_d2

    invoke-virtual {v14, v3}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v21, 0x22

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_d2

    add-int/lit8 v3, v3, 0x1

    const-string v17, "\""

    move-object/from16 v0, v17

    invoke-static {v14, v3, v0}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v22, v3

    move/from16 v3, v17

    move-object/from16 v17, v22

    goto :goto_84

    :cond_d2
    const-string v17, ",;"

    move-object/from16 v0, v17

    invoke-static {v14, v3, v0}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    move/from16 v3, v17

    move-object/from16 v17, v22

    goto :goto_84

    :cond_eb
    const-string v21, "no-store"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_fa

    const/4 v4, 0x1

    goto/16 :goto_41

    :cond_fa
    const-string v21, "max-age"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10f

    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_41

    :cond_10f
    const-string v21, "s-maxage"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_124

    const/4 v6, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_41

    :cond_124
    const-string v21, "private"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_133

    const/4 v7, 0x1

    goto/16 :goto_41

    :cond_133
    const-string v21, "public"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_142

    const/4 v8, 0x1

    goto/16 :goto_41

    :cond_142
    const-string v21, "must-revalidate"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_151

    const/4 v9, 0x1

    goto/16 :goto_41

    :cond_151
    const-string v21, "max-stale"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_168

    const v10, 0x7fffffff

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v10

    goto/16 :goto_41

    :cond_168
    const-string v21, "min-fresh"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_17d

    const/4 v11, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v11

    goto/16 :goto_41

    :cond_17d
    const-string v17, "only-if-cached"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18c

    const/4 v12, 0x1

    goto/16 :goto_41

    :cond_18c
    const-string v17, "no-transform"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_41

    const/4 v13, 0x1

    goto/16 :goto_41

    :cond_19b
    move/from16 v16, v3

    :cond_19d
    add-int/lit8 v3, v18, 0x1

    move/from16 v18, v3

    move/from16 v3, v16

    goto/16 :goto_18

    :cond_1a5
    if-nez v15, :cond_1ae

    const/4 v14, 0x0

    :goto_1a8
    new-instance v2, Lokhttp3/d;

    invoke-direct/range {v2 .. v14}, Lokhttp3/d;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v2

    :cond_1ae
    move-object v14, v2

    goto :goto_1a8
.end method

.method private j()Ljava/lang/String;
    .registers 5

    const/4 v3, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lokhttp3/d;->d:Z

    if-eqz v1, :cond_f

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-boolean v1, p0, Lokhttp3/d;->e:Z

    if-eqz v1, :cond_18

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    iget v1, p0, Lokhttp3/d;->f:I

    if-eq v1, v3, :cond_2d

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/d;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    iget v1, p0, Lokhttp3/d;->g:I

    if-eq v1, v3, :cond_42

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/d;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    iget-boolean v1, p0, Lokhttp3/d;->h:Z

    if-eqz v1, :cond_4b

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4b
    iget-boolean v1, p0, Lokhttp3/d;->i:Z

    if-eqz v1, :cond_54

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    iget-boolean v1, p0, Lokhttp3/d;->j:Z

    if-eqz v1, :cond_5d

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5d
    iget v1, p0, Lokhttp3/d;->k:I

    if-eq v1, v3, :cond_72

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/d;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    iget v1, p0, Lokhttp3/d;->l:I

    if-eq v1, v3, :cond_87

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/d;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    iget-boolean v1, p0, Lokhttp3/d;->m:Z

    if-eqz v1, :cond_90

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_90
    iget-boolean v1, p0, Lokhttp3/d;->n:Z

    if-eqz v1, :cond_99

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a2

    const-string v0, ""

    :goto_a1
    return-object v0

    :cond_a2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a1
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/d;->d:Z

    return v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/d;->e:Z

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lokhttp3/d;->f:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/d;->h:Z

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/d;->i:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/d;->j:Z

    return v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lokhttp3/d;->k:I

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lokhttp3/d;->l:I

    return v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/d;->m:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-direct {p0}, Lokhttp3/d;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/d;->c:Ljava/lang/String;

    goto :goto_4
.end method
