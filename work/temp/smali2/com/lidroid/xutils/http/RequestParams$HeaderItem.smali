.class public Lcom/lidroid/xutils/http/RequestParams$HeaderItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/http/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeaderItem"
.end annotation


# instance fields
.field public final header:Lorg/apache/http/Header;

.field public final overwrite:Z

.field final synthetic this$0:Lcom/lidroid/xutils/http/RequestParams;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/http/RequestParams;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->this$0:Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->overwrite:Z

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v0, p2, p3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/http/RequestParams;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    iput-object p1, p0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->this$0:Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->overwrite:Z

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v0, p2, p3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/http/RequestParams;Lorg/apache/http/Header;)V
    .registers 4

    iput-object p1, p0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->this$0:Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->overwrite:Z

    iput-object p2, p0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/http/RequestParams;Lorg/apache/http/Header;Z)V
    .registers 4

    iput-object p1, p0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->this$0:Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->overwrite:Z

    iput-object p2, p0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    return-void
.end method
