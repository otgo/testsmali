.class public final Lcom/purplebrain/adbuddiz/sdk/h/x;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/h/x;->a:Z

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/h/x;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/purplebrain/adbuddiz/sdk/h/x;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/purplebrain/adbuddiz/sdk/h/a/l;->c(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method
