.class public final Lcom/purplebrain/adbuddiz/sdk/g/c$a;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/g/c;


# direct methods
.method private constructor <init>(Lcom/purplebrain/adbuddiz/sdk/g/c;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$a;->a:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/purplebrain/adbuddiz/sdk/g/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/purplebrain/adbuddiz/sdk/g/c$a;-><init>(Lcom/purplebrain/adbuddiz/sdk/g/c;)V

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
