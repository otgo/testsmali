.class public final Lcom/purplebrain/adbuddiz/sdk/h/p;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/purplebrain/adbuddiz/sdk/e/d;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/g/g;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/g/g;-><init>()V

    iput-object p1, v0, Lcom/purplebrain/adbuddiz/sdk/g/g;->d:Lcom/purplebrain/adbuddiz/sdk/e/a/a;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->UNKNOWN_EXCEPTION_RAISED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    iput-object v1, v0, Lcom/purplebrain/adbuddiz/sdk/g/g;->c:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/g/g;->f:Lcom/purplebrain/adbuddiz/sdk/e/d;

    invoke-virtual {v0, p2}, Lcom/purplebrain/adbuddiz/sdk/g/g;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/g/g;->e()V

    return-void
.end method

.method public static a(Lcom/purplebrain/adbuddiz/sdk/e/e;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/d;

    invoke-direct {v0, p0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/e/e;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Lcom/purplebrain/adbuddiz/sdk/e/d;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/e/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/purplebrain/adbuddiz/sdk/e/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/h/p;->a(Lcom/purplebrain/adbuddiz/sdk/e/d;Lcom/purplebrain/adbuddiz/sdk/e/a/a;Ljava/lang/Throwable;)V

    return-void
.end method
