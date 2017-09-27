.class public final Lcom/purplebrain/adbuddiz/sdk/j/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/purplebrain/adbuddiz/sdk/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/j/a;


# direct methods
.method public constructor <init>(Lcom/purplebrain/adbuddiz/sdk/j/a;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/j/a$1;->a:Lcom/purplebrain/adbuddiz/sdk/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/purplebrain/adbuddiz/sdk/j/a$a;

    check-cast p2, Lcom/purplebrain/adbuddiz/sdk/j/a$a;

    iget-wide v0, p1, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->b:D

    iget-wide v2, p2, Lcom/purplebrain/adbuddiz/sdk/j/a$a;->b:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    neg-int v0, v0

    return v0
.end method
