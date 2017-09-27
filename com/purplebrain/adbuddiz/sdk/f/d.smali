.class public final Lcom/purplebrain/adbuddiz/sdk/f/d;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/f/c;


# direct methods
.method private constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/f/d;->a:Lcom/purplebrain/adbuddiz/sdk/f/c;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/purplebrain/adbuddiz/sdk/f/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/c;)V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
