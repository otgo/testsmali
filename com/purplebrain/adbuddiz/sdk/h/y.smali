.class public final Lcom/purplebrain/adbuddiz/sdk/h/y;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field public b:Lcom/purplebrain/adbuddiz/sdk/h/ac;

.field public c:Lcom/purplebrain/adbuddiz/sdk/h/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/y;->b:Lcom/purplebrain/adbuddiz/sdk/h/ac;

    iput-object v0, p0, Lcom/purplebrain/adbuddiz/sdk/h/y;->c:Lcom/purplebrain/adbuddiz/sdk/h/z;

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/h/y;->a:Landroid/content/Context;

    return-void
.end method
