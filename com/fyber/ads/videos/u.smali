.class public final enum Lcom/fyber/ads/videos/u;
.super Ljava/lang/Enum;
.source "RewardedVideoOffersStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/ads/videos/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fyber/ads/videos/u;

.field public static final enum b:Lcom/fyber/ads/videos/u;

.field public static final enum c:Lcom/fyber/ads/videos/u;

.field public static final enum d:Lcom/fyber/ads/videos/u;

.field public static final enum e:Lcom/fyber/ads/videos/u;

.field private static final synthetic i:[Lcom/fyber/ads/videos/u;


# instance fields
.field private final f:Z

.field private final g:Z

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/fyber/ads/videos/u;

    const-string v1, "MUST_QUERY_SERVER_FOR_OFFERS"

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/fyber/ads/videos/u;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/fyber/ads/videos/u;->a:Lcom/fyber/ads/videos/u;

    .line 16
    new-instance v5, Lcom/fyber/ads/videos/u;

    const-string v6, "QUERYING_SERVER_FOR_OFFERS"

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/fyber/ads/videos/u;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/fyber/ads/videos/u;->b:Lcom/fyber/ads/videos/u;

    .line 18
    new-instance v5, Lcom/fyber/ads/videos/u;

    const-string v6, "READY_TO_SHOW_OFFERS"

    move v7, v11

    move v8, v4

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/fyber/ads/videos/u;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/fyber/ads/videos/u;->c:Lcom/fyber/ads/videos/u;

    .line 20
    new-instance v5, Lcom/fyber/ads/videos/u;

    const-string v6, "SHOWING_OFFERS"

    move v7, v12

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/fyber/ads/videos/u;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/fyber/ads/videos/u;->d:Lcom/fyber/ads/videos/u;

    .line 22
    new-instance v5, Lcom/fyber/ads/videos/u;

    const-string v6, "USER_ENGAGED"

    move v7, v13

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/fyber/ads/videos/u;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/fyber/ads/videos/u;->e:Lcom/fyber/ads/videos/u;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fyber/ads/videos/u;

    sget-object v1, Lcom/fyber/ads/videos/u;->a:Lcom/fyber/ads/videos/u;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fyber/ads/videos/u;->b:Lcom/fyber/ads/videos/u;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/ads/videos/u;->c:Lcom/fyber/ads/videos/u;

    aput-object v1, v0, v11

    sget-object v1, Lcom/fyber/ads/videos/u;->d:Lcom/fyber/ads/videos/u;

    aput-object v1, v0, v12

    sget-object v1, Lcom/fyber/ads/videos/u;->e:Lcom/fyber/ads/videos/u;

    aput-object v1, v0, v13

    sput-object v0, Lcom/fyber/ads/videos/u;->i:[Lcom/fyber/ads/videos/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-boolean p3, p0, Lcom/fyber/ads/videos/u;->f:Z

    .line 31
    iput-boolean p4, p0, Lcom/fyber/ads/videos/u;->h:Z

    .line 32
    iput-boolean p5, p0, Lcom/fyber/ads/videos/u;->g:Z

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/ads/videos/u;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/fyber/ads/videos/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/videos/u;

    return-object v0
.end method

.method public static values()[Lcom/fyber/ads/videos/u;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/fyber/ads/videos/u;->i:[Lcom/fyber/ads/videos/u;

    invoke-virtual {v0}, [Lcom/fyber/ads/videos/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/ads/videos/u;

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/fyber/ads/videos/u;->f:Z

    return v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/fyber/ads/videos/u;->g:Z

    return v0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/fyber/ads/videos/u;->h:Z

    return v0
.end method
