.class public Lcom/google/android/gms/games/appcontent/AppContentActionEntityCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/games/appcontent/AppContentActionEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/appcontent/AppContentActionEntity;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzac(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzrO()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzrP()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzrN()Lcom/google/android/gms/games/appcontent/AppContentAnnotation;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;->zzrQ()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzH(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/appcontent/AppContentActionEntityCreator;->zzdw(Landroid/os/Parcel;)Lcom/google/android/gms/games/appcontent/AppContentActionEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/appcontent/AppContentActionEntityCreator;->zzfs(I)[Lcom/google/android/gms/games/appcontent/AppContentActionEntity;

    move-result-object v0

    return-object v0
.end method

.method public zzdw(Landroid/os/Parcel;)Lcom/google/android/gms/games/appcontent/AppContentActionEntity;
    .locals 11

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzab(Landroid/os/Parcel;)I

    move-result v9

    const/4 v1, 0x0

    move-object v7, v8

    move-object v6, v8

    move-object v5, v8

    move-object v4, v8

    move-object v3, v8

    move-object v2, v8

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v9, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzaa(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzbA(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_0
    sget-object v2, Lcom/google/android/gms/games/appcontent/AppContentConditionEntity;->CREATOR:Lcom/google/android/gms/games/appcontent/AppContentConditionEntityCreator;

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzc(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :sswitch_2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzo(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :sswitch_3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzq(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :sswitch_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzo(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :sswitch_5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzo(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :sswitch_6
    sget-object v7, Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;->CREATOR:Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntityCreator;

    invoke-static {p1, v0, v7}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;

    move-object v7, v0

    goto :goto_0

    :sswitch_7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzo(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v9, :cond_1

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/games/appcontent/AppContentActionEntity;-><init>(ILjava/util/ArrayList;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/appcontent/AppContentAnnotationEntity;Ljava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public zzfs(I)[Lcom/google/android/gms/games/appcontent/AppContentActionEntity;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/games/appcontent/AppContentActionEntity;

    return-object v0
.end method
