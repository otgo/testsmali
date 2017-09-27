.class final Lcom/purplebrain/adbuddiz/sdk/i/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/purplebrain/adbuddiz/sdk/i/j;


# direct methods
.method constructor <init>(Lcom/purplebrain/adbuddiz/sdk/i/j;)V
    .locals 0

    iput-object p1, p0, Lcom/purplebrain/adbuddiz/sdk/i/k;->a:Lcom/purplebrain/adbuddiz/sdk/i/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/purplebrain/adbuddiz/sdk/i/l;

    check-cast p2, Lcom/purplebrain/adbuddiz/sdk/i/l;

    iget v0, p1, Lcom/purplebrain/adbuddiz/sdk/i/l;->a:I

    iget v1, p2, Lcom/purplebrain/adbuddiz/sdk/i/l;->a:I

    sub-int/2addr v0, v1

    return v0
.end method
