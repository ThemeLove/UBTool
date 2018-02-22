.class public final enum Lcom/lidroid/xutils/http/HttpHandler$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/http/HttpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lidroid/xutils/http/HttpHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

.field private static final synthetic ENUM$VALUES:[Lcom/lidroid/xutils/http/HttpHandler$State;

.field public static final enum FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

.field public static final enum LOADING:Lcom/lidroid/xutils/http/HttpHandler$State;

.field public static final enum STARTED:Lcom/lidroid/xutils/http/HttpHandler$State;

.field public static final enum SUCCESS:Lcom/lidroid/xutils/http/HttpHandler$State;

.field public static final enum WAITING:Lcom/lidroid/xutils/http/HttpHandler$State;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v4, v4}, Lcom/lidroid/xutils/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->WAITING:Lcom/lidroid/xutils/http/HttpHandler$State;

    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/lidroid/xutils/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->STARTED:Lcom/lidroid/xutils/http/HttpHandler$State;

    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v6, v6}, Lcom/lidroid/xutils/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->LOADING:Lcom/lidroid/xutils/http/HttpHandler$State;

    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v7, v7}, Lcom/lidroid/xutils/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v8, v8}, Lcom/lidroid/xutils/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    const-string v1, "SUCCESS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/lidroid/xutils/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->SUCCESS:Lcom/lidroid/xutils/http/HttpHandler$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->WAITING:Lcom/lidroid/xutils/http/HttpHandler$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->STARTED:Lcom/lidroid/xutils/http/HttpHandler$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->LOADING:Lcom/lidroid/xutils/http/HttpHandler$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lidroid/xutils/http/HttpHandler$State;->SUCCESS:Lcom/lidroid/xutils/http/HttpHandler$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->ENUM$VALUES:[Lcom/lidroid/xutils/http/HttpHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lidroid/xutils/http/HttpHandler$State;->value:I

    iput p3, p0, Lcom/lidroid/xutils/http/HttpHandler$State;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/lidroid/xutils/http/HttpHandler$State;
    .registers 2

    packed-switch p0, :pswitch_data_18

    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->WAITING:Lcom/lidroid/xutils/http/HttpHandler$State;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->STARTED:Lcom/lidroid/xutils/http/HttpHandler$State;

    goto :goto_5

    :pswitch_c
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->LOADING:Lcom/lidroid/xutils/http/HttpHandler$State;

    goto :goto_5

    :pswitch_f
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

    goto :goto_5

    :pswitch_12
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    goto :goto_5

    :pswitch_15
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->SUCCESS:Lcom/lidroid/xutils/http/HttpHandler$State;

    goto :goto_5

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lidroid/xutils/http/HttpHandler$State;
    .registers 2

    const-class v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/http/HttpHandler$State;

    return-object v0
.end method

.method public static values()[Lcom/lidroid/xutils/http/HttpHandler$State;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->ENUM$VALUES:[Lcom/lidroid/xutils/http/HttpHandler$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/lidroid/xutils/http/HttpHandler$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()I
    .registers 2

    iget v0, p0, Lcom/lidroid/xutils/http/HttpHandler$State;->value:I

    return v0
.end method
