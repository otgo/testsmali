.class public interface abstract annotation Lcom/fyber/mediation/configs/AdColonyConfigs;
.super Ljava/lang/Object;
.source "AdColonyConfigs.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
    name = "AdColony"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/fyber/mediation/configs/AdColonyConfigs;
        appId = ""
        clientOptions = ""
        zoneIdsInterstitial = {
            ""
        }
        zoneIdsRewardedVideo = {
            ""
        }
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
.method public abstract appId()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "app.id"
    .end annotation
.end method

.method public abstract clientOptions()Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "client.options"
    .end annotation
.end method

.method public abstract zoneIdsInterstitial()[Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "zone.ids.interstitial"
    .end annotation
.end method

.method public abstract zoneIdsRewardedVideo()[Ljava/lang/String;
    .annotation runtime Lcom/fyber/mediation/annotations/ConfigKey;
        name = "zone.ids.rewarded.video"
    .end annotation
.end method
