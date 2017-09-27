.class public interface abstract annotation Lcom/fyber/mediation/configs/UnityAdsConfigs;
.super Ljava/lang/Object;
.source "UnityAdsConfigs.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
    name = "Applifier"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fyber/mediation/configs/UnityAdsConfigs;
        debugMode = false
        gameIdKey = ""
        zoneIdInterstitial = ""
        zoneIdRewardedVideo = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract debugMode()Z
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "debug.mode"
    .end annotation
.end method

.method public abstract gameIdKey()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "game.id.key"
    .end annotation
.end method

.method public abstract zoneIdInterstitial()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "zone.id.interstitial"
    .end annotation
.end method

.method public abstract zoneIdRewardedVideo()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "zone.id.rewarded.video"
    .end annotation
.end method
