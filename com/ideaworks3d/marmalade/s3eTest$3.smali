.class Lcom/ideaworks3d/marmalade/s3eTest$3;
.super Ljava/lang/Object;
.source "s3eTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ideaworks3d/marmalade/s3eTest;->PostResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ideaworks3d/marmalade/s3eTest;


# direct methods
.method constructor <init>(Lcom/ideaworks3d/marmalade/s3eTest;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ideaworks3d/marmalade/s3eTest$3;->this$0:Lcom/ideaworks3d/marmalade/s3eTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/ideaworks3d/marmalade/LoaderActivity;->m_Activity:Lcom/ideaworks3d/marmalade/LoaderActivity;

    invoke-virtual {v0}, Lcom/ideaworks3d/marmalade/LoaderActivity;->onResume()V

    .line 43
    return-void
.end method
