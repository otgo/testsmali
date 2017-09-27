.class public final Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/i/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:I

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;->a:Landroid/content/Context;

    iput p2, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;->b:I

    iput p3, p0, Lcom/purplebrain/adbuddiz/sdk/i/b/c$a;->c:I

    return-void
.end method
