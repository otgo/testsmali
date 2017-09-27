.class final Lcom/purplebrain/adbuddiz/sdk/g/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/purplebrain/adbuddiz/sdk/g/c;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/g/c;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$1;->b:Lcom/purplebrain/adbuddiz/sdk/g/c;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$1;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$1;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/g/c$1;->b:Lcom/purplebrain/adbuddiz/sdk/g/c;

    invoke-static {v1}, Lcom/purplebrain/adbuddiz/sdk/g/c;->a(Lcom/purplebrain/adbuddiz/sdk/g/c;)Lcom/purplebrain/adbuddiz/sdk/f/a/f;

    move-result-object v1

    iget-object v1, v1, Lcom/purplebrain/adbuddiz/sdk/f/a/f;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/g/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
