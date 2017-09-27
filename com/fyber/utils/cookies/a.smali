.class final Lcom/fyber/utils/cookies/a;
.super Ljava/lang/Object;
.source "ParcelableHttpCookie.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/fyber/utils/cookies/ParcelableHttpCookie;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1080
    new-instance v0, Lcom/fyber/utils/cookies/ParcelableHttpCookie;

    invoke-direct {v0, p1}, Lcom/fyber/utils/cookies/ParcelableHttpCookie;-><init>(Landroid/os/Parcel;)V

    .line 71
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    .line 1075
    new-array v0, p1, [Lcom/fyber/utils/cookies/ParcelableHttpCookie;

    .line 71
    return-object v0
.end method
