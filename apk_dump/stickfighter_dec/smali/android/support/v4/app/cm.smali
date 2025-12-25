.class public abstract Landroid/support/v4/app/cm;
.super Ljava/lang/Object;


# instance fields
.field mBigContentTitle:Ljava/lang/CharSequence;

.field mBuilder:Landroid/support/v4/app/bz;

.field mSummaryText:Ljava/lang/CharSequence;

.field mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/cm;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/cm;->mBuilder:Landroid/support/v4/app/bz;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/cm;->mBuilder:Landroid/support/v4/app/bz;

    invoke-virtual {v0}, Landroid/support/v4/app/bz;->build()Landroid/app/Notification;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public setBuilder(Landroid/support/v4/app/bz;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/cm;->mBuilder:Landroid/support/v4/app/bz;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/cm;->mBuilder:Landroid/support/v4/app/bz;

    iget-object v0, p0, Landroid/support/v4/app/cm;->mBuilder:Landroid/support/v4/app/bz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/cm;->mBuilder:Landroid/support/v4/app/bz;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/bz;->setStyle(Landroid/support/v4/app/cm;)Landroid/support/v4/app/bz;

    :cond_0
    return-void
.end method
