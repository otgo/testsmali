.class final Lcom/purplebrain/adbuddiz/sdk/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/purplebrain/adbuddiz/sdk/c/a;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/c/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$1;->c:Lcom/purplebrain/adbuddiz/sdk/c/a;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$1;->c:Lcom/purplebrain/adbuddiz/sdk/c/a;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/c/a$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/c/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
