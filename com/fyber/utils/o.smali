.class public final Lcom/fyber/utils/o;
.super Ljava/lang/Object;
.source "SDKParamsProvider.java"

# interfaces
.implements Lcom/fyber/utils/n;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MPI"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "VPL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "JUD"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fyber/utils/o;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/fyber/utils/p;

    invoke-direct {v0, p0}, Lcom/fyber/utils/p;-><init>(Lcom/fyber/utils/o;)V

    iput-object v0, p0, Lcom/fyber/utils/o;->b:Ljava/util/Map;

    .line 42
    return-void
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fyber/utils/o;->a:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/fyber/utils/o;->b:Ljava/util/Map;

    return-object v0
.end method
