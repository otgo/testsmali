.class final Lcom/purplebrain/adbuddiz/sdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/a;->c:Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    iput-object p2, p0, Lcom/purplebrain/adbuddiz/sdk/a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/purplebrain/adbuddiz/sdk/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/a;->c:Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;

    iget-object v1, p0, Lcom/purplebrain/adbuddiz/sdk/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/purplebrain/adbuddiz/sdk/a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddiz;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
