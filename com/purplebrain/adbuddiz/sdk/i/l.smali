.class public final Lcom/purplebrain/adbuddiz/sdk/i/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/d;

    invoke-direct {v0, p0, v1}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/d$a;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/h/g;

    invoke-direct {v0}, Lcom/purplebrain/adbuddiz/sdk/h/g;-><init>()V

    iput-object p1, v0, Lcom/purplebrain/adbuddiz/sdk/h/g;->g:Lcom/purplebrain/adbuddiz/sdk/f/a/a;

    sget-object v1, Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;->UNKNOWN_EXCEPTION_RAISED:Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;

    invoke-virtual {v0, v1}, Lcom/purplebrain/adbuddiz/sdk/h/g;->a(Lcom/purplebrain/adbuddiz/sdk/AdBuddizError;)V

    iput-object p0, v0, Lcom/purplebrain/adbuddiz/sdk/h/g;->i:Lcom/purplebrain/adbuddiz/sdk/f/d;

    invoke-virtual {v0, p2}, Lcom/purplebrain/adbuddiz/sdk/h/g;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/purplebrain/adbuddiz/sdk/h/g;->f()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lcom/purplebrain/adbuddiz/sdk/f/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/purplebrain/adbuddiz/sdk/f/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/purplebrain/adbuddiz/sdk/i/l;->a(Lcom/purplebrain/adbuddiz/sdk/f/d;Lcom/purplebrain/adbuddiz/sdk/f/a/a;Ljava/lang/Throwable;)V

    return-void
.end method
