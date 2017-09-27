.class public Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;
.super Ljava/lang/Object;
.source "SPCacheEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATED:I = 0x0

.field public static final DOWNLOADING:I = 0x3

.field public static final DOWNLOAD_COMPLETED:I = 0x2

.field public static final INCOMPLETE_DOWNLOAD:I = 0x1

.field public static final NOT_DOWNLOADABLE:I = 0x4


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sponsorpay/publisher/mbe/player/caching/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->d:Ljava/util/Set;

    .line 30
    iput-object p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->a:Ljava/io/File;

    .line 31
    iput-object p2, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->b:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->c:I

    .line 33
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->updateTimestamp()V

    .line 34
    return-void
.end method


# virtual methods
.method public addVideoEntry(Lcom/sponsorpay/publisher/mbe/player/caching/h;)Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 58
    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->updateTimestamp()V

    .line 59
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 81
    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->hashCode()I

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

.method public getCreatedAt()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->e:J

    return-wide v0
.end method

.method public getDownloadState()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->c:I

    return v0
.end method

.method public getLocalFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->a:Ljava/io/File;

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sponsorpay/publisher/mbe/player/caching/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->d:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public removeVideoEntry(Lcom/sponsorpay/publisher/mbe/player/caching/h;)Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDownloadState(I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->c:I

    .line 50
    return-void
.end method

.method public updateTimestamp()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sponsorpay/publisher/mbe/player/caching/SPCacheEntry;->e:J

    .line 68
    return-void
.end method
