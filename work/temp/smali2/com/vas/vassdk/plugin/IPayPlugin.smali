.class public interface abstract Lcom/vas/vassdk/plugin/IPayPlugin;
.super Ljava/lang/Object;
.source "IPayPlugin.java"


# static fields
.field public static final PLUGIN_TYPE:I = 0x2


# virtual methods
.method public abstract getPayParams()Ljava/lang/String;
.end method

.method public abstract pay(Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V
.end method
