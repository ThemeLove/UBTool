.class public Lcom/mchsdk/paysdk/a/j;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/mchsdk/paysdk/a/j;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Landroid/os/Handler;

.field private c:Landroid/content/Context;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/a/j$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/j$1;-><init>(Lcom/mchsdk/paysdk/a/j;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/j;->e:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/mchsdk/paysdk/a/j;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/a/j;->d:Lcom/mchsdk/paysdk/a/j;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/paysdk/a/j;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/a/j;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/a/j;->d:Lcom/mchsdk/paysdk/a/j;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/a/j;->d:Lcom/mchsdk/paysdk/a/j;

    return-object v0
.end method

.method private a(I)V
    .registers 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/j;->b:Landroid/os/Handler;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/j;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_10
    return-void

    :cond_11
    const-string v0, "LoginModel"

    const-string v1, "handler is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/j;->c()V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/j;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/j;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/j;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Lcom/mchsdk/paysdk/e/o;

    const-string v0, "wx"

    iget-object v1, p1, Lcom/mchsdk/paysdk/e/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p1, Lcom/mchsdk/paysdk/e/o;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/mchsdk/paysdk/a/c/d;->a()Lcom/mchsdk/paysdk/a/c/d;

    move-result-object v0

    iget-object v1, p1, Lcom/mchsdk/paysdk/e/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/c/d;->a(Ljava/lang/String;)V

    :goto_1d
    return-void

    :cond_1e
    const-string v0, "LoginModel"

    const-string v1, "wxappid is null!"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_26
    const-string v0, "qq"

    iget-object v1, p1, Lcom/mchsdk/paysdk/e/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p1, Lcom/mchsdk/paysdk/e/o;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {}, Lcom/mchsdk/paysdk/a/c/b;->a()Lcom/mchsdk/paysdk/a/c/b;

    move-result-object v0

    iget-object v1, p1, Lcom/mchsdk/paysdk/e/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_1d

    :cond_42
    const-string v0, "LoginModel"

    const-string v1, "qqappid is null!"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_4a
    const-string v0, "wb"

    iget-object v1, p1, Lcom/mchsdk/paysdk/e/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p1, Lcom/mchsdk/paysdk/e/o;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6a

    invoke-static {}, Lcom/mchsdk/paysdk/a/c/c;->a()Lcom/mchsdk/paysdk/a/c/c;

    move-result-object v0

    iget-object v1, p1, Lcom/mchsdk/paysdk/e/o;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/mchsdk/paysdk/e/o;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/mchsdk/paysdk/e/o;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mchsdk/paysdk/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_6a
    const-string v0, "LoginModel"

    const-string v1, "weiboappkey is null!"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_72
    const-string v0, "bd"

    iget-object v1, p1, Lcom/mchsdk/paysdk/e/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, p1, Lcom/mchsdk/paysdk/e/o;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a9

    const-string v0, "LoginModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bdclientid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mchsdk/paysdk/e/o;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/c/a;->a()Lcom/mchsdk/paysdk/a/c/a;

    move-result-object v0

    iget-object v1, p1, Lcom/mchsdk/paysdk/e/o;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/c/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_a9
    const-string v0, "LoginModel"

    const-string v1, "bdclientid is null!"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_b2
    const-string v0, "LoginModel"

    const-string v1, "\u7b2c\u4e09\u65b9\u767b\u5f55\u8fd4\u56de\u53c2\u6570\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_9
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/j;->b:Landroid/os/Handler;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V
    .registers 9

    if-eqz p3, :cond_6

    iput-object p3, p0, Lcom/mchsdk/paysdk/a/j;->b:Landroid/os/Handler;

    iput-object p2, p0, Lcom/mchsdk/paysdk/a/j;->c:Landroid/content/Context;

    :cond_6
    if-eqz p4, :cond_a

    iput-object p4, p0, Lcom/mchsdk/paysdk/a/j;->a:Landroid/app/ProgressDialog;

    :cond_a
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Lcom/mchsdk/paysdk/f/f/a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/f/a;-><init>()V

    const-string v1, "LoginModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thirdLoginType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wb"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "wb"

    iput-object v1, v0, Lcom/mchsdk/paysdk/f/f/a;->a:Ljava/lang/String;

    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/j;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/f/a;->a(Landroid/os/Handler;)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    const-string v1, "qq"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "qq"

    iput-object v1, v0, Lcom/mchsdk/paysdk/f/f/a;->a:Ljava/lang/String;

    goto :goto_41

    :cond_54
    const-string v1, "wx"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    const-string v1, "wx"

    iput-object v1, v0, Lcom/mchsdk/paysdk/f/f/a;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/mchsdk/paysdk/utils/e;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v0, "\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p2, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/j;->c()V

    sget-object v0, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->a:Lcom/mchsdk/paysdk/activity/TransparencyActivity;

    if-eqz v0, :cond_46

    sget-object v0, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->a:Lcom/mchsdk/paysdk/activity/TransparencyActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_46

    sget-object v0, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->a:Lcom/mchsdk/paysdk/activity/TransparencyActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->finish()V

    goto :goto_46

    :cond_80
    const-string v1, "bd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "bd"

    iput-object v1, v0, Lcom/mchsdk/paysdk/f/f/a;->a:Ljava/lang/String;

    goto :goto_41
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/mchsdk/paysdk/e/q;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/e/q;-><init>()V

    invoke-virtual {v0, p2}, Lcom/mchsdk/paysdk/e/q;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/mchsdk/paysdk/e/q;->c(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/q;->f(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/q;->a(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0}, Lcom/mchsdk/paysdk/a/j;->b(ZZLcom/mchsdk/paysdk/e/q;)V

    return-void
.end method

.method public a(ZZLcom/mchsdk/paysdk/e/q;)V
    .registers 9

    const/4 v4, 0x1

    new-instance v0, Lcom/mchsdk/open/GPUserResult;

    invoke-direct {v0}, Lcom/mchsdk/open/GPUserResult;-><init>()V

    const-string v1, "LoginModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-virtual {p0, p1, p2, p3}, Lcom/mchsdk/paysdk/a/j;->b(ZZLcom/mchsdk/paysdk/e/q;)V

    invoke-virtual {v0, v4}, Lcom/mchsdk/open/GPUserResult;->setmErrCode(I)V

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/GPUserResult;->setAccountNo(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/GPUserResult;->setAccount(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/GPUserResult;->setSign(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/GPUserResult;->setToken(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->b()Z

    move-result v1

    if-nez v1, :cond_6f

    sget-boolean v1, Lcom/mchsdk/paysdk/activity/a;->c:Z

    if-nez v1, :cond_6f

    invoke-static {}, Lcom/mchsdk/paysdk/a/a;->a()Lcom/mchsdk/paysdk/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/a/a;->b()V

    :cond_6f
    sput-boolean v4, Lcom/mchsdk/paysdk/a/h;->b:Z

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->getLoginCallback()Lcom/mchsdk/open/IGPUserObsv;

    move-result-object v1

    if-eqz v1, :cond_7e

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->getLoginCallback()Lcom/mchsdk/open/IGPUserObsv;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mchsdk/open/IGPUserObsv;->onFinish(Lcom/mchsdk/open/GPUserResult;)V

    :cond_7e
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j;->b:Landroid/os/Handler;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j;->b:Landroid/os/Handler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_89
    return-void

    :cond_8a
    const-string v0, "LoginModel"

    const-string v1, "#Handler is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_89

    :cond_92
    invoke-virtual {p0}, Lcom/mchsdk/paysdk/a/j;->b()V

    goto :goto_89
.end method

.method public b()V
    .registers 3

    new-instance v0, Lcom/mchsdk/open/GPUserResult;

    invoke-direct {v0}, Lcom/mchsdk/open/GPUserResult;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/GPUserResult;->setmErrCode(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/GPUserResult;->setAccountNo(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->getLoginCallback()Lcom/mchsdk/open/IGPUserObsv;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->getLoginCallback()Lcom/mchsdk/open/IGPUserObsv;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mchsdk/open/IGPUserObsv;->onFinish(Lcom/mchsdk/open/GPUserResult;)V

    :cond_1b
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j;->b:Landroid/os/Handler;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j;->b:Landroid/os/Handler;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_26
    return-void

    :cond_27
    const-string v0, "LoginModel"

    const-string v1, "#Handler is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method public b(Landroid/os/Handler;)V
    .registers 5

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/j;->b:Landroid/os/Handler;

    :cond_4
    new-instance v0, Lcom/mchsdk/paysdk/f/e/a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/e/a;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Lcom/mchsdk/paysdk/f/e/a;->g:I

    const-string v1, "ykaccount"

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/open/MCApiFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mchsdk/paysdk/f/e/a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/j;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/e/a;->a(Landroid/os/Handler;)V

    return-void
.end method

.method public b(ZZLcom/mchsdk/paysdk/e/q;)V
    .registers 8

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string v1, "LoginModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#saveUserInfoToPre name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/e/d;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/e/d;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/e/d;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/e/d;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->b()Z

    move-result v1

    if-eqz v1, :cond_7b

    const-string v1, "ykaccount"

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_a

    :cond_7b
    const-string v1, "account"

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v1, "password"

    invoke-virtual {p3}, Lcom/mchsdk/paysdk/e/q;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    if-eqz p2, :cond_98

    const-string v1, "savepwd"

    const-string v2, "1"

    invoke-static {v1, v2, v0}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_a

    :cond_98
    const-string v1, "savepwd"

    const-string v2, "0"

    invoke-static {v1, v2, v0}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_a
.end method
