.class public final enum Lcom/fanwei/bluearty/simplejson/BasicType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fanwei/bluearty/simplejson/BasicType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fanwei/bluearty/simplejson/BasicType;

.field public static final enum BOOLEAN:Lcom/fanwei/bluearty/simplejson/BasicType;

.field public static final enum DOUBLE:Lcom/fanwei/bluearty/simplejson/BasicType;

.field public static final enum FLOAT:Lcom/fanwei/bluearty/simplejson/BasicType;

.field public static final enum INT:Lcom/fanwei/bluearty/simplejson/BasicType;

.field public static final enum LONG:Lcom/fanwei/bluearty/simplejson/BasicType;

.field public static final enum OTHER:Lcom/fanwei/bluearty/simplejson/BasicType;

.field public static final enum STRING:Lcom/fanwei/bluearty/simplejson/BasicType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/fanwei/bluearty/simplejson/BasicType;

    const-string v1, "INT"

    invoke-direct {v0, v1, v3}, Lcom/fanwei/bluearty/simplejson/BasicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->INT:Lcom/fanwei/bluearty/simplejson/BasicType;

    new-instance v0, Lcom/fanwei/bluearty/simplejson/BasicType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v4}, Lcom/fanwei/bluearty/simplejson/BasicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->LONG:Lcom/fanwei/bluearty/simplejson/BasicType;

    new-instance v0, Lcom/fanwei/bluearty/simplejson/BasicType;

    const-string v1, "BOOLEAN"

    invoke-direct {v0, v1, v5}, Lcom/fanwei/bluearty/simplejson/BasicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->BOOLEAN:Lcom/fanwei/bluearty/simplejson/BasicType;

    new-instance v0, Lcom/fanwei/bluearty/simplejson/BasicType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v6}, Lcom/fanwei/bluearty/simplejson/BasicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->DOUBLE:Lcom/fanwei/bluearty/simplejson/BasicType;

    new-instance v0, Lcom/fanwei/bluearty/simplejson/BasicType;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v7}, Lcom/fanwei/bluearty/simplejson/BasicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->FLOAT:Lcom/fanwei/bluearty/simplejson/BasicType;

    new-instance v0, Lcom/fanwei/bluearty/simplejson/BasicType;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fanwei/bluearty/simplejson/BasicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->STRING:Lcom/fanwei/bluearty/simplejson/BasicType;

    new-instance v0, Lcom/fanwei/bluearty/simplejson/BasicType;

    const-string v1, "OTHER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fanwei/bluearty/simplejson/BasicType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->OTHER:Lcom/fanwei/bluearty/simplejson/BasicType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/fanwei/bluearty/simplejson/BasicType;

    sget-object v1, Lcom/fanwei/bluearty/simplejson/BasicType;->INT:Lcom/fanwei/bluearty/simplejson/BasicType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fanwei/bluearty/simplejson/BasicType;->LONG:Lcom/fanwei/bluearty/simplejson/BasicType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fanwei/bluearty/simplejson/BasicType;->BOOLEAN:Lcom/fanwei/bluearty/simplejson/BasicType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fanwei/bluearty/simplejson/BasicType;->DOUBLE:Lcom/fanwei/bluearty/simplejson/BasicType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fanwei/bluearty/simplejson/BasicType;->FLOAT:Lcom/fanwei/bluearty/simplejson/BasicType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/fanwei/bluearty/simplejson/BasicType;->STRING:Lcom/fanwei/bluearty/simplejson/BasicType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fanwei/bluearty/simplejson/BasicType;->OTHER:Lcom/fanwei/bluearty/simplejson/BasicType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->$VALUES:[Lcom/fanwei/bluearty/simplejson/BasicType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static check(Ljava/lang/reflect/Type;)Lcom/fanwei/bluearty/simplejson/BasicType;
    .registers 2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_8

    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_b

    :cond_8
    sget-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->INT:Lcom/fanwei/bluearty/simplejson/BasicType;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_13

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_16

    :cond_13
    sget-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->LONG:Lcom/fanwei/bluearty/simplejson/BasicType;

    goto :goto_a

    :cond_16
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1e

    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_21

    :cond_1e
    sget-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->BOOLEAN:Lcom/fanwei/bluearty/simplejson/BasicType;

    goto :goto_a

    :cond_21
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_29

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_2c

    :cond_29
    sget-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->DOUBLE:Lcom/fanwei/bluearty/simplejson/BasicType;

    goto :goto_a

    :cond_2c
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_34

    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_37

    :cond_34
    sget-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->FLOAT:Lcom/fanwei/bluearty/simplejson/BasicType;

    goto :goto_a

    :cond_37
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_3e

    sget-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->STRING:Lcom/fanwei/bluearty/simplejson/BasicType;

    goto :goto_a

    :cond_3e
    sget-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->OTHER:Lcom/fanwei/bluearty/simplejson/BasicType;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fanwei/bluearty/simplejson/BasicType;
    .registers 2

    const-class v0, Lcom/fanwei/bluearty/simplejson/BasicType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fanwei/bluearty/simplejson/BasicType;

    return-object v0
.end method

.method public static values()[Lcom/fanwei/bluearty/simplejson/BasicType;
    .registers 1

    sget-object v0, Lcom/fanwei/bluearty/simplejson/BasicType;->$VALUES:[Lcom/fanwei/bluearty/simplejson/BasicType;

    invoke-virtual {v0}, [Lcom/fanwei/bluearty/simplejson/BasicType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fanwei/bluearty/simplejson/BasicType;

    return-object v0
.end method
