.class public Lcom/lidroid/xutils/ViewUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Landroid/app/Activity;)V
    .registers 2

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Landroid/preference/PreferenceActivity;)V
    .registers 2

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Landroid/view/View;)V
    .registers 2

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/preference/PreferenceActivity;)V
    .registers 3

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/preference/PreferenceGroup;)V
    .registers 3

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/preference/PreferenceGroup;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method public static inject(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    new-instance v0, Lcom/lidroid/xutils/view/ViewFinder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/view/ViewFinder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/lidroid/xutils/ViewUtils;->injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V

    return-void
.end method

.method private static injectObject(Ljava/lang/Object;Lcom/lidroid/xutils/view/ViewFinder;)V
    .registers 20

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v3, Lcom/lidroid/xutils/view/annotation/ContentView;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/lidroid/xutils/view/annotation/ContentView;

    if-eqz v3, :cond_2f

    :try_start_e
    const-string v4, "setContentView"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v3}, Lcom/lidroid/xutils/view/annotation/ContentView;->value()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2f} :catch_4c

    :cond_2f
    :goto_2f
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    if-eqz v6, :cond_3d

    array-length v3, v6

    if-lez v3, :cond_3d

    array-length v7, v6

    const/4 v3, 0x0

    move v4, v3

    :goto_3b
    if-lt v4, v7, :cond_55

    :cond_3d
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    if-eqz v9, :cond_4b

    array-length v3, v9

    if-lez v3, :cond_4b

    array-length v10, v9

    const/4 v3, 0x0

    move v8, v3

    :goto_49
    if-lt v8, v10, :cond_df

    :cond_4b
    return-void

    :catch_4c
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    :cond_55
    aget-object v8, v6, v4

    const-class v3, Lcom/lidroid/xutils/view/annotation/ViewInject;

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/lidroid/xutils/view/annotation/ViewInject;

    if-eqz v3, :cond_87

    :try_start_61
    invoke-interface {v3}, Lcom/lidroid/xutils/view/annotation/ViewInject;->value()I

    move-result v9

    invoke-interface {v3}, Lcom/lidroid/xutils/view/annotation/ViewInject;->parentId()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v3}, Lcom/lidroid/xutils/view/ViewFinder;->findViewById(II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7a

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_7a} :catch_7e

    :cond_7a
    :goto_7a
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3b

    :catch_7e
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    :cond_87
    const-class v3, Lcom/lidroid/xutils/view/annotation/ResInject;

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/lidroid/xutils/view/annotation/ResInject;

    if-eqz v3, :cond_b6

    :try_start_91
    invoke-interface {v3}, Lcom/lidroid/xutils/view/annotation/ResInject;->type()Lcom/lidroid/xutils/view/ResType;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/lidroid/xutils/view/ViewFinder;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-interface {v3}, Lcom/lidroid/xutils/view/annotation/ResInject;->id()I

    move-result v3

    invoke-static {v9, v10, v3}, Lcom/lidroid/xutils/view/ResLoader;->loadRes(Lcom/lidroid/xutils/view/ResType;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7a

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_ac} :catch_ad

    goto :goto_7a

    :catch_ad
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    :cond_b6
    const-class v3, Lcom/lidroid/xutils/view/annotation/PreferenceInject;

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/lidroid/xutils/view/annotation/PreferenceInject;

    if-eqz v3, :cond_7a

    :try_start_c0
    invoke-interface {v3}, Lcom/lidroid/xutils/view/annotation/PreferenceInject;->value()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/lidroid/xutils/view/ViewFinder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_7a

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_d5} :catch_d6

    goto :goto_7a

    :catch_d6
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7a

    :cond_df
    aget-object v11, v9, v8

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v12

    if-eqz v12, :cond_ef

    array-length v3, v12

    if-lez v3, :cond_ef

    array-length v13, v12

    const/4 v3, 0x0

    move v7, v3

    :goto_ed
    if-lt v7, v13, :cond_f4

    :cond_ef
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_49

    :cond_f4
    aget-object v14, v12, v7

    invoke-interface {v14}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    const-class v3, Lcom/lidroid/xutils/view/annotation/event/EventBase;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_132

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :try_start_106
    const-string v3, "value"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_10e
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_10e} :catch_171

    move-result-object v5

    const/4 v3, 0x0

    :try_start_110
    const-string v6, "parentId"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_110 .. :try_end_118} :catch_17a

    move-result-object v3

    :goto_119
    const/4 v4, 0x0

    :try_start_11a
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v14, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v3, :cond_136

    const/4 v3, 0x0

    move-object v6, v3

    :goto_124
    if-nez v6, :cond_13f

    const/4 v3, 0x0

    move v5, v3

    :goto_128
    invoke-static {v15}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v16

    const/4 v3, 0x0

    move v4, v3

    :goto_12e
    move/from16 v0, v16

    if-lt v4, v0, :cond_145

    :cond_132
    :goto_132
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_ed

    :cond_136
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v14, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    goto :goto_124

    :cond_13f
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    move v5, v3

    goto :goto_128

    :cond_145
    new-instance v17, Lcom/lidroid/xutils/view/ViewInjectInfo;

    invoke-direct/range {v17 .. v17}, Lcom/lidroid/xutils/view/ViewInjectInfo;-><init>()V

    invoke-static {v15, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    if-le v5, v4, :cond_16f

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_15e
    move-object/from16 v0, v17

    iput v3, v0, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-static {v0, v1, v14, v2, v11}, Lcom/lidroid/xutils/view/EventListenerManager;->addEventMethod(Lcom/lidroid/xutils/view/ViewFinder;Lcom/lidroid/xutils/view/ViewInjectInfo;Ljava/lang/annotation/Annotation;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_16b
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_16b} :catch_171

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_12e

    :cond_16f
    const/4 v3, 0x0

    goto :goto_15e

    :catch_171
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_132

    :catch_17a
    move-exception v4

    goto :goto_119
.end method
