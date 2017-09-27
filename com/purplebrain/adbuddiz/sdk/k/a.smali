.class public final Lcom/purplebrain/adbuddiz/sdk/k/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/purplebrain/adbuddiz/sdk/k/a$c;,
        Lcom/purplebrain/adbuddiz/sdk/k/a$b;,
        Lcom/purplebrain/adbuddiz/sdk/k/a$a;
    }
.end annotation


# static fields
.field private static e:Z


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/purplebrain/adbuddiz/sdk/f/a/c;

.field public c:Landroid/webkit/WebView;

.field public d:Lcom/purplebrain/adbuddiz/sdk/k/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/purplebrain/adbuddiz/sdk/k/a;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/purplebrain/adbuddiz/sdk/f/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/k/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/k/a;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    return-void
.end method

.method static synthetic a(Lcom/purplebrain/adbuddiz/sdk/k/a;)Lcom/purplebrain/adbuddiz/sdk/k/a$c;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/k/a;->d:Lcom/purplebrain/adbuddiz/sdk/k/a$c;

    return-object v0
.end method

.method public static a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean v0, Lcom/purplebrain/adbuddiz/sdk/k/a;->e:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method static synthetic b(Lcom/purplebrain/adbuddiz/sdk/k/a;)Lcom/purplebrain/adbuddiz/sdk/f/a/c;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/k/a;->b:Lcom/purplebrain/adbuddiz/sdk/f/a/c;

    return-object v0
.end method

.method static synthetic c(Lcom/purplebrain/adbuddiz/sdk/k/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/k/a;->a:Landroid/content/Context;

    return-object v0
.end method
