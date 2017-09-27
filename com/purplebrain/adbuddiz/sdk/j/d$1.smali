.class final Lcom/purplebrain/adbuddiz/sdk/j/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/purplebrain/adbuddiz/sdk/j/d;-><init>(Lcom/purplebrain/adbuddiz/sdk/f/a/a/c;Landroid/media/MediaPlayer;Ljava/lang/Integer;Lcom/purplebrain/adbuddiz/sdk/i/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/j/d;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/j/d;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/j/d$1;->a:Lcom/purplebrain/adbuddiz/sdk/j/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/purplebrain/adbuddiz/sdk/j/d$a;

    check-cast p2, Lcom/purplebrain/adbuddiz/sdk/j/d$a;

    iget v0, p1, Lcom/purplebrain/adbuddiz/sdk/j/d$a;->a:I

    iget v1, p2, Lcom/purplebrain/adbuddiz/sdk/j/d$a;->a:I

    sub-int/2addr v0, v1

    return v0
.end method
