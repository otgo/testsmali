.class Lcom/applovin/impl/sdk/df;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/p;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/de;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/de;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/de;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/de;->a(Lcom/applovin/impl/sdk/de;I)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/df;->a:Lcom/applovin/impl/sdk/de;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/de;->a(Lcom/applovin/impl/sdk/de;Lorg/json/JSONObject;)V

    return-void
.end method
