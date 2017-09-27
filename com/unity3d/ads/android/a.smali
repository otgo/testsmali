.class final Lcom/unity3d/ads/android/a;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/unity3d/ads/android/UnityAds;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/android/UnityAds;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/unity3d/ads/android/a;->b:Lcom/unity3d/ads/android/UnityAds;

    iput-object p2, p0, Lcom/unity3d/ads/android/a;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/unity3d/ads/android/a;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 434
    return-void
.end method
