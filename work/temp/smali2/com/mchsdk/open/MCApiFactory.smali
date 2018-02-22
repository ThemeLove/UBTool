.class public Lcom/mchsdk/open/MCApiFactory;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "MCApiFactory"

.field private static instance:Lcom/mchsdk/open/MCApiFactory;


# instance fields
.field private activity:Landroid/app/Activity;

.field private announceTimeCallBack:Lcom/mchsdk/open/AnnounceTimeCallBack;

.field private exitObsv:Lcom/mchsdk/open/IGPExitObsv;

.field private exitObsvPerson:Lcom/mchsdk/open/IGPExitObsv;

.field public floatingIsClose:Z

.field private floatingIsShow:Z

.field private isFirst:Z

.field private loginActivity:Lcom/mchsdk/paysdk/activity/a;

.field private loginClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLevelCallback:Lcom/mchsdk/open/ChangePlayerLevelCallback;

.field protected mUserObsv:Lcom/mchsdk/open/IGPUserObsv;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field model:Lcom/mchsdk/paysdk/miui/b;

.field private returnDownPackUrlResultHandler:Landroid/os/Handler;

.field return_msg:Ljava/lang/String;

.field status:Ljava/lang/String;

.field private uploadResultHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/mchsdk/open/MCApiFactory;->floatingIsClose:Z

    iput-boolean v0, p0, Lcom/mchsdk/open/MCApiFactory;->floatingIsShow:Z

    iput-object v1, p0, Lcom/mchsdk/open/MCApiFactory;->loginClass:Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mchsdk/open/MCApiFactory;->isFirst:Z

    iput-object v1, p0, Lcom/mchsdk/open/MCApiFactory;->map:Ljava/util/Map;

    new-instance v0, Lcom/mchsdk/open/MCApiFactory$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/open/MCApiFactory$1;-><init>(Lcom/mchsdk/open/MCApiFactory;)V

    iput-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->uploadResultHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/open/MCApiFactory$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/open/MCApiFactory$2;-><init>(Lcom/mchsdk/open/MCApiFactory;)V

    iput-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->returnDownPackUrlResultHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->map:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/mchsdk/open/MCApiFactory;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getMCApi()Lcom/mchsdk/open/MCApiFactory;
    .registers 1

    sget-object v0, Lcom/mchsdk/open/MCApiFactory;->instance:Lcom/mchsdk/open/MCApiFactory;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/open/MCApiFactory;

    invoke-direct {v0}, Lcom/mchsdk/open/MCApiFactory;-><init>()V

    sput-object v0, Lcom/mchsdk/open/MCApiFactory;->instance:Lcom/mchsdk/open/MCApiFactory;

    :cond_b
    sget-object v0, Lcom/mchsdk/open/MCApiFactory;->instance:Lcom/mchsdk/open/MCApiFactory;

    return-object v0
.end method


# virtual methods
.method public ReturnDownPackUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, "MCApiFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6bd4\u5bf9\u4fe1\u606f\u4e0a\u4f20\u4e2d: version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",      uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",       game_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",       promote_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/mchsdk/paysdk/f/c/s;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/s;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/open/MCApiFactory;->returnDownPackUrlResultHandler:Landroid/os/Handler;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mchsdk/paysdk/f/c/s;->a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changePlayerLevel(Ljava/lang/String;Lcom/mchsdk/open/ChangePlayerLevelCallback;)V
    .registers 5

    if-nez p1, :cond_a

    const-string v0, "MCApiFactory"

    const-string v1, "fun#changePlayerLevel role_level is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    new-instance v0, Lcom/mchsdk/paysdk/a/b;

    const-string v1, "2"

    invoke-direct {v0, v1, p1, p2}, Lcom/mchsdk/paysdk/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mchsdk/open/ChangePlayerLevelCallback;)V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/b;->a()V

    goto :goto_9
.end method

.method public changeRoleName(Ljava/lang/String;Lcom/mchsdk/open/ChangeRoleNameCallback;)V
    .registers 5

    if-nez p1, :cond_a

    const-string v0, "MCApiFactory"

    const-string v1, "fun#changePlayerLevel role_name is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    new-instance v0, Lcom/mchsdk/paysdk/a/c;

    const-string v1, "1"

    invoke-direct {v0, v1, p1, p2}, Lcom/mchsdk/paysdk/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mchsdk/open/ChangeRoleNameCallback;)V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/c;->a()V

    goto :goto_9
.end method

.method public dismisDialog()V
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->loginActivity:Lcom/mchsdk/paysdk/activity/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->loginActivity:Lcom/mchsdk/paysdk/activity/a;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/a;->b()V

    :cond_9
    return-void
.end method

.method public exitDialog(Landroid/content/Context;Lcom/mchsdk/open/IGPExitObsv;)V
    .registers 5

    if-nez p1, :cond_a

    const-string v0, "MCApiFactory"

    const-string v1, "fun#startlogin context is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    if-eqz p2, :cond_12

    iput-object p2, p0, Lcom/mchsdk/open/MCApiFactory;->exitObsv:Lcom/mchsdk/open/IGPExitObsv;

    :goto_e
    invoke-static {p1, p1}, Lcom/mchsdk/paysdk/dialog/a;->a(Landroid/content/Context;Landroid/content/Context;)V

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->exitObsv:Lcom/mchsdk/open/IGPExitObsv;

    const-string v0, "MCApiFactory"

    const-string v1, "fun#startlogin IGPExitObsv is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getAnnounceTimeCallBack()Lcom/mchsdk/open/AnnounceTimeCallBack;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->announceTimeCallBack:Lcom/mchsdk/open/AnnounceTimeCallBack;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->announceTimeCallBack:Lcom/mchsdk/open/AnnounceTimeCallBack;

    goto :goto_5
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceNo(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/g;->a()Lcom/mchsdk/paysdk/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitFromPersonInfo()Lcom/mchsdk/open/IGPExitObsv;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->exitObsvPerson:Lcom/mchsdk/open/IGPExitObsv;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->exitObsvPerson:Lcom/mchsdk/open/IGPExitObsv;

    goto :goto_5
.end method

.method protected getExitObsv()Lcom/mchsdk/open/IGPExitObsv;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->exitObsv:Lcom/mchsdk/open/IGPExitObsv;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/mchsdk/paysdk/utils/f;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/utils/f;-><init>()V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginCallback()Lcom/mchsdk/open/IGPUserObsv;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->mUserObsv:Lcom/mchsdk/open/IGPUserObsv;

    return-object v0
.end method

.method public getLoginClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->loginClass:Ljava/lang/Class;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->loginClass:Ljava/lang/Class;

    goto :goto_5
.end method

.method public getMCHSdkVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "3.2.0"

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->map:Ljava/util/Map;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->map:Ljava/util/Map;

    goto :goto_9
.end method

.method public getNetMode(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/g;->a()Lcom/mchsdk/paysdk/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/a/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/g;->a()Lcom/mchsdk/paysdk/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/a/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOS()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/mchsdk/paysdk/a/g;->a()Lcom/mchsdk/paysdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/g;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneModel()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/mchsdk/paysdk/a/g;->a()Lcom/mchsdk/paysdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromoteId()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/mchsdk/paysdk/utils/f;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/utils/f;-><init>()V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/f;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolution(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/g;->a()Lcom/mchsdk/paysdk/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/a/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xiantu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/mchsdk/paysdk/utils/f;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/utils/f;-><init>()V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/f;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmUserObsv()Lcom/mchsdk/open/IGPUserObsv;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->mUserObsv:Lcom/mchsdk/open/IGPUserObsv;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->mUserObsv:Lcom/mchsdk/open/IGPUserObsv;

    goto :goto_5
.end method

.method public hideLog(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/mchsdk/paysdk/utils/Lolly;->a()Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {p1}, Lcom/mchsdk/paysdk/utils/Lolly;->a(Landroid/content/Context;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mchsdk/open/MCApiFactory;->init(Landroid/content/Context;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/mchsdk/open/IGPSDKInitObsv;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mchsdk/open/MCApiFactory;->init(Landroid/content/Context;Lcom/mchsdk/open/IGPSDKInitObsv;Z)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/mchsdk/open/IGPSDKInitObsv;Z)V
    .registers 6

    if-nez p1, :cond_a

    const-string v0, "MCApiFactory"

    const-string v1, "\u521d\u59cb\u5316\u4e0a\u4e0b\u6587\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    sput-boolean p3, Lcom/mchsdk/paysdk/utils/h;->a:Z

    invoke-static {}, Lcom/mchsdk/paysdk/a/i;->a()Lcom/mchsdk/paysdk/a/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mchsdk/paysdk/a/i;->a(Landroid/content/Context;Lcom/mchsdk/open/IGPSDKInitObsv;)V

    goto :goto_9
.end method

.method public init(Landroid/content/Context;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mchsdk/open/MCApiFactory;->init(Landroid/content/Context;Lcom/mchsdk/open/IGPSDKInitObsv;Z)V

    return-void
.end method

.method public initAnnounceTimeCallBack(Lcom/mchsdk/open/AnnounceTimeCallBack;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/MCApiFactory;->announceTimeCallBack:Lcom/mchsdk/open/AnnounceTimeCallBack;

    return-void
.end method

.method public initExitFromPersonInfoParams(Lcom/mchsdk/open/IGPExitObsv;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/mchsdk/open/MCApiFactory;->exitObsvPerson:Lcom/mchsdk/open/IGPExitObsv;

    :cond_4
    return-void
.end method

.method public initIGPUserObsv(Lcom/mchsdk/open/IGPUserObsv;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/MCApiFactory;->mUserObsv:Lcom/mchsdk/open/IGPUserObsv;

    return-void
.end method

.method public isLogin()Z
    .registers 2

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public login(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mchsdk/open/MCApiFactory;->startlogin(Landroid/content/Context;Lcom/mchsdk/open/IGPUserObsv;)V

    return-void
.end method

.method public loginout(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/a/m;->a(Landroid/content/Context;)V

    return-void
.end method

.method public offLineAnnounce(Landroid/content/Context;)V
    .registers 3

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->b:Z

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->d:Z

    if-nez v0, :cond_10

    new-instance v0, Lcom/mchsdk/paysdk/a/l;

    invoke-direct {v0, p1}, Lcom/mchsdk/paysdk/a/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/l;->b()V

    :cond_10
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->requestAntiAddiction()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mchsdk/paysdk/a/h;->e:Z

    return-void
.end method

.method public onStop(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mchsdk/open/MCApiFactory;->offLineAnnounce(Landroid/content/Context;)V

    return-void
.end method

.method public pay(Landroid/content/Context;Lcom/mchsdk/open/OrderInfo;Lcom/mchsdk/open/PayCallback;)V
    .registers 5

    invoke-static {}, Lcom/mchsdk/paysdk/a/k;->a()Lcom/mchsdk/paysdk/a/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mchsdk/paysdk/a/k;->a(Landroid/content/Context;Lcom/mchsdk/open/OrderInfo;Lcom/mchsdk/open/PayCallback;)V

    return-void
.end method

.method public requestAntiAddiction()V
    .registers 2

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->b:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->c:Z

    if-nez v0, :cond_f

    invoke-static {}, Lcom/mchsdk/paysdk/a/a;->a()Lcom/mchsdk/paysdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/a;->b()V

    :cond_f
    return-void
.end method

.method public setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->map:Ljava/util/Map;

    const-string v1, "paysdk_promoteid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->map:Ljava/util/Map;

    const-string v1, "paysdk_promotename"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->map:Ljava/util/Map;

    const-string v1, "paysdk_gameid"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->map:Ljava/util/Map;

    const-string v1, "paysdk_gamename"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->map:Ljava/util/Map;

    const-string v1, "paysdk_gameappid"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->map:Ljava/util/Map;

    const-string v1, "paysdk_signkey"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->map:Ljava/util/Map;

    const-string v1, "paysdk_address"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setParamsUnity(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->map:Ljava/util/Map;

    const-string v1, "paysdk_signkey_unity"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public showLog(Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/utils/Lolly;->a()Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {p1, p2}, Lcom/mchsdk/paysdk/utils/Lolly;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void
.end method

.method public startFloating(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/mchsdk/open/MCApiFactory;->floatingIsShow:Z

    if-nez v0, :cond_42

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mchsdk/open/MCApiFactory;->floatingIsShow:Z

    const-string v0, "MCApiFactory"

    const-string v1, "fun#startFloating"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->model:Lcom/mchsdk/paysdk/miui/b;

    if-nez v0, :cond_19

    new-instance v0, Lcom/mchsdk/paysdk/miui/b;

    invoke-direct {v0, p1}, Lcom/mchsdk/paysdk/miui/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->model:Lcom/mchsdk/paysdk/miui/b;

    :cond_19
    invoke-static {}, Lcom/mchsdk/paysdk/miui/a;->b()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->model:Lcom/mchsdk/paysdk/miui/b;

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/miui/b;->a(Landroid/content/Context;)V

    :cond_24
    invoke-static {}, Lcom/mchsdk/paysdk/miui/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/mchsdk/open/MCApiFactory;->isFirst:Z

    if-eqz v0, :cond_4e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mchsdk/open/MCApiFactory;->isFirst:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_43

    invoke-static {p1}, Lcom/mchsdk/paysdk/miui/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory;->model:Lcom/mchsdk/paysdk/miui/b;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/miui/b;->a()V

    :cond_42
    :goto_42
    return-void

    :cond_43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_42

    :cond_4e
    invoke-static {}, Lcom/mchsdk/paysdk/miui/a;->b()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/mchsdk/open/MCApiFactory;->isFirst:Z

    if-nez v0, :cond_42

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_42
.end method

.method public startlogin(Landroid/content/Context;Lcom/mchsdk/open/IGPUserObsv;)V
    .registers 5

    if-nez p1, :cond_a

    const-string v0, "MCApiFactory"

    const-string v1, "fun#startlogin context is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    if-eqz p2, :cond_e

    iput-object p2, p0, Lcom/mchsdk/open/MCApiFactory;->mUserObsv:Lcom/mchsdk/open/IGPUserObsv;

    :cond_e
    iput-object p1, p0, Lcom/mchsdk/open/MCApiFactory;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mchsdk/paysdk/activity/TransparencyActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/mchsdk/open/MCApiFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method public stopFloating(Landroid/content/Context;)V
    .registers 4

    iget-boolean v0, p0, Lcom/mchsdk/open/MCApiFactory;->floatingIsShow:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mchsdk/open/MCApiFactory;->floatingIsShow:Z

    const-string v0, "MCApiFactory"

    const-string v1, "fun#stopFloating"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_18
    return-void
.end method

.method public stopService()V
    .registers 2

    invoke-static {}, Lcom/mchsdk/paysdk/utils/Lolly;->a()Lcom/mchsdk/paysdk/utils/Lolly;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->b()V

    return-void
.end method

.method public uploadRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    new-instance v0, Lcom/mchsdk/paysdk/f/c/w;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/w;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/open/MCApiFactory;->uploadResultHandler:Landroid/os/Handler;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mchsdk/paysdk/f/c/w;->a(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
