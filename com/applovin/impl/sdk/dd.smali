.class Lcom/applovin/impl/sdk/dd;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/db;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Z


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/db;Ljava/lang/String;JZ)V
    .locals 1

    iput-object p1, p0, Lcom/applovin/impl/sdk/dd;->a:Lcom/applovin/impl/sdk/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/dd;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/applovin/impl/sdk/dd;->c:J

    iput-boolean p5, p0, Lcom/applovin/impl/sdk/dd;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/db;Ljava/lang/String;JZLcom/applovin/impl/sdk/dc;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/applovin/impl/sdk/dd;-><init>(Lcom/applovin/impl/sdk/db;Ljava/lang/String;JZ)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/dd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/dd;->c:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/dd;->d:Z

    return v0
.end method
