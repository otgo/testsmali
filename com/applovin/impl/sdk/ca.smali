.class public Lcom/applovin/impl/sdk/ca;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/bz;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/bz;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/bz;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aZ:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->ba:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public C()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->bb:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public D()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->bd:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public E()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->bc:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->bf:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public G()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->bg:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->bn:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->bo:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public J()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->bs:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public K()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->bt:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->bu:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->O:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aw:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->ax:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->R:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->T:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aJ:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aK:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aL:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aI:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->W:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->ao:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aq:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->ar:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->as:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->au:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->at:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->av:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->ay:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->az:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aO:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public u()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aP:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aQ:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aW:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aU:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aV:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/bz;

    sget-object v1, Lcom/applovin/impl/sdk/bw;->aX:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bz;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
