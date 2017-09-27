.class Lcom/applovin/impl/sdk/cr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/p;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/applovin/impl/sdk/cq;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/cq;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/cr;->c:Lcom/applovin/impl/sdk/cq;

    iput-object p2, p0, Lcom/applovin/impl/sdk/cr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object p3, p0, Lcom/applovin/impl/sdk/cr;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    if-lt p1, v2, :cond_0

    const/16 v2, 0x1f4

    if-lt p1, v2, :cond_3

    :cond_0
    move v2, v1

    :goto_0
    const/16 v3, -0x67

    if-eq p1, v3, :cond_1

    move v0, v1

    :cond_1
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/cr;->c:Lcom/applovin/impl/sdk/cq;

    invoke-static {v0}, Lcom/applovin/impl/sdk/cq;->a(Lcom/applovin/impl/sdk/cq;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/cr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/br;->n:Lcom/applovin/impl/sdk/bt;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/bt;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cr;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send requset due to server failure (code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "). "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/cr;->c:Lcom/applovin/impl/sdk/cq;

    invoke-static {v5}, Lcom/applovin/impl/sdk/cq;->a(Lcom/applovin/impl/sdk/cq;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attempts left, retrying in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    long-to-double v6, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/applovin/impl/sdk/cr;->c:Lcom/applovin/impl/sdk/cq;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/cq;->b(Lcom/applovin/impl/sdk/cq;I)I

    iget-object v0, p0, Lcom/applovin/impl/sdk/cr;->c:Lcom/applovin/impl/sdk/cq;

    invoke-static {v0}, Lcom/applovin/impl/sdk/cq;->a(Lcom/applovin/impl/sdk/cq;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cr;->c:Lcom/applovin/impl/sdk/cq;

    invoke-static {v0}, Lcom/applovin/impl/sdk/cq;->b(Lcom/applovin/impl/sdk/cq;)V

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/cr;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/cr;->c:Lcom/applovin/impl/sdk/cq;

    sget-object v4, Lcom/applovin/impl/sdk/ck;->b:Lcom/applovin/impl/sdk/ck;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/applovin/impl/sdk/cj;->a(Lcom/applovin/impl/sdk/bq;Lcom/applovin/impl/sdk/ck;J)V

    :goto_1
    return-void

    :cond_3
    move v2, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/cr;->c:Lcom/applovin/impl/sdk/cq;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/cq;->a(I)V

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/cr;->c:Lcom/applovin/impl/sdk/cq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/cq;->a(Lcom/applovin/impl/sdk/cq;I)I

    iget-object v0, p0, Lcom/applovin/impl/sdk/cr;->c:Lcom/applovin/impl/sdk/cq;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/cq;->a(Lorg/json/JSONObject;I)V

    return-void
.end method
