.class public Lcom/mchsdk/paysdk/d/a;
.super Ljava/lang/Object;


# static fields
.field protected static a:Landroid/database/sqlite/SQLiteDatabase;

.field public static b:Landroid/content/Context;


# instance fields
.field private c:Lcom/mchsdk/paysdk/d/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    const-string v0, "sdk.db"

    new-instance v0, Lcom/mchsdk/paysdk/d/c;

    sget-object v1, Lcom/mchsdk/paysdk/d/a;->b:Landroid/content/Context;

    const-string v2, "sdk.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mchsdk/paysdk/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/d/a;->c:Lcom/mchsdk/paysdk/d/c;

    :try_start_f
    iget-object v0, p0, Lcom/mchsdk/paysdk/d/a;->c:Lcom/mchsdk/paysdk/d/c;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/d/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/mchsdk/paysdk/d/a;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    iget-object v0, p0, Lcom/mchsdk/paysdk/d/a;->c:Lcom/mchsdk/paysdk/d/c;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/d/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/mchsdk/paysdk/d/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_17
.end method

.method public b()V
    .registers 2

    sget-object v0, Lcom/mchsdk/paysdk/d/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/mchsdk/paysdk/d/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/mchsdk/paysdk/d/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_c
    return-void
.end method
