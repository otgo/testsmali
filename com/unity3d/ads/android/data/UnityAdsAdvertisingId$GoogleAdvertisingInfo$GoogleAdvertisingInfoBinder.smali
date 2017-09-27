.class public abstract Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;
.super Landroid/os/Binder;
.source "UnityAdsAdvertisingId.java"

# interfaces
.implements Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 132
    return-void
.end method

.method public static Create(Landroid/os/IBinder;)Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;
    .locals 2

    .prologue
    .line 104
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 105
    :cond_0
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;

    if-eqz v1, :cond_1

    .line 107
    check-cast v0, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo;

    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Lcom/unity3d/ads/android/data/a;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/android/data/a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 114
    packed-switch p1, :pswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 116
    :pswitch_0
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->getId()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :pswitch_1
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 124
    :goto_1
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/android/data/UnityAdsAdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->getEnabled(Z)Z

    move-result v0

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 123
    goto :goto_1

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
