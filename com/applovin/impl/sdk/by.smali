.class public Lcom/applovin/impl/sdk/by;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static a:I


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/applovin/impl/sdk/by;->a:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No default value specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/applovin/impl/sdk/by;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/by;->d:Ljava/lang/Object;

    sget v0, Lcom/applovin/impl/sdk/by;->a:I

    iput v0, p0, Lcom/applovin/impl/sdk/by;->b:I

    sget v0, Lcom/applovin/impl/sdk/by;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/applovin/impl/sdk/by;->a:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/applovin/impl/sdk/bx;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/by;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/by;->b:I

    return v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/by;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/by;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/by;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/applovin/impl/sdk/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/by;->c:Ljava/lang/String;

    check-cast p1, Lcom/applovin/impl/sdk/by;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/by;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
