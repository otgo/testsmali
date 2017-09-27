.class final Lcom/fyber/cache/CacheVideoDownloadService$d;
.super Ljava/lang/Enum;
.source "CacheVideoDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/cache/CacheVideoDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/cache/CacheVideoDownloadService$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 96
    sput v3, Lcom/fyber/cache/CacheVideoDownloadService$d;->a:I

    .line 97
    sput v4, Lcom/fyber/cache/CacheVideoDownloadService$d;->b:I

    .line 98
    sput v0, Lcom/fyber/cache/CacheVideoDownloadService$d;->c:I

    .line 95
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/fyber/cache/CacheVideoDownloadService$d;->a:I

    aput v2, v0, v1

    sget v1, Lcom/fyber/cache/CacheVideoDownloadService$d;->b:I

    aput v1, v0, v3

    sget v1, Lcom/fyber/cache/CacheVideoDownloadService$d;->c:I

    aput v1, v0, v4

    sput-object v0, Lcom/fyber/cache/CacheVideoDownloadService$d;->d:[I

    return-void
.end method
