.class public final Lcom/purplebrain/adbuddiz/sdk/h/b/d;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:I

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/h/b/d;->a:Landroid/content/Context;

    iput p2, p0, Lcom/purplebrain/adbuddiz/sdk/h/b/d;->b:I

    iput p3, p0, Lcom/purplebrain/adbuddiz/sdk/h/b/d;->c:I

    return-void
.end method
