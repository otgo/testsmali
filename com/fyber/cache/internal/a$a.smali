.class public final enum Lcom/fyber/cache/internal/a$a;
.super Ljava/lang/Enum;
.source "CacheConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/cache/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/cache/internal/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fyber/cache/internal/a$a;

.field public static final enum b:Lcom/fyber/cache/internal/a$a;

.field private static final synthetic c:[Lcom/fyber/cache/internal/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/fyber/cache/internal/a$a;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lcom/fyber/cache/internal/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/cache/internal/a$a;->a:Lcom/fyber/cache/internal/a$a;

    .line 18
    new-instance v0, Lcom/fyber/cache/internal/a$a;

    const-string v1, "CELLULAR"

    invoke-direct {v0, v1, v3}, Lcom/fyber/cache/internal/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/cache/internal/a$a;->b:Lcom/fyber/cache/internal/a$a;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fyber/cache/internal/a$a;

    sget-object v1, Lcom/fyber/cache/internal/a$a;->a:Lcom/fyber/cache/internal/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fyber/cache/internal/a$a;->b:Lcom/fyber/cache/internal/a$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fyber/cache/internal/a$a;->c:[Lcom/fyber/cache/internal/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/cache/internal/a$a;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/fyber/cache/internal/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/a$a;

    return-object v0
.end method

.method public static values()[Lcom/fyber/cache/internal/a$a;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/fyber/cache/internal/a$a;->c:[Lcom/fyber/cache/internal/a$a;

    invoke-virtual {v0}, [Lcom/fyber/cache/internal/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/cache/internal/a$a;

    return-object v0
.end method
