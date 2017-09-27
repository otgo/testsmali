.class public final Lcom/fyber/cache/internal/c;
.super Ljava/lang/Object;
.source "CacheEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/fyber/cache/internal/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fyber/cache/internal/c;->d:Ljava/util/Set;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/cache/internal/c;->f:I

    .line 31
    iput-object p1, p0, Lcom/fyber/cache/internal/c;->a:Ljava/io/File;

    .line 32
    iput-object p2, p0, Lcom/fyber/cache/internal/c;->b:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/fyber/cache/internal/c;->c:I

    .line 34
    invoke-direct {p0}, Lcom/fyber/cache/internal/c;->h()V

    .line 35
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fyber/cache/internal/c;->e:J

    .line 80
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fyber/cache/internal/c;->a:Ljava/io/File;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 50
    iput p1, p0, Lcom/fyber/cache/internal/c;->c:I

    .line 51
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 52
    iget v0, p0, Lcom/fyber/cache/internal/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/cache/internal/c;->f:I

    .line 54
    :cond_0
    return-void
.end method

.method public final a(Lcom/fyber/cache/internal/h;)Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fyber/cache/internal/c;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    invoke-direct {p0}, Lcom/fyber/cache/internal/c;->h()V

    .line 71
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/fyber/cache/internal/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/fyber/cache/internal/c;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/fyber/cache/internal/c;->f:I

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/cache/internal/c;->f:I

    .line 62
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 93
    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/fyber/cache/internal/c;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/fyber/cache/internal/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fyber/cache/internal/c;->d:Ljava/util/Set;

    return-object v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/fyber/cache/internal/c;->e:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fyber/cache/internal/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
