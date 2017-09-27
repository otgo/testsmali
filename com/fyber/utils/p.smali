.class final Lcom/fyber/utils/p;
.super Ljava/util/HashMap;
.source "SDKParamsProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/utils/o;


# direct methods
.method constructor <init>(Lcom/fyber/utils/o;)V
    .locals 3

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fyber/utils/p;->a:Lcom/fyber/utils/o;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 35
    const-string v0, "sdk_version"

    sget-object v1, Lcom/fyber/Fyber;->RELEASE_VERSION_STRING:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "platform"

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "client"

    const-string v1, "sdk"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "sdk_features"

    const-string v1, ","

    invoke-static {}, Lcom/fyber/utils/o;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method
