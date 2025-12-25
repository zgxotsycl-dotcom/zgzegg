.class Landroid/support/v4/app/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/cd;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/bz;Landroid/support/v4/app/ca;)Landroid/app/Notification;
    .locals 5

    iget-object v0, p1, Landroid/support/v4/app/bz;->mNotification:Landroid/app/Notification;

    iget-object v1, p1, Landroid/support/v4/app/bz;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/bz;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bz;->mContentText:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/bz;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v1, p1, Landroid/support/v4/app/bz;->mPriority:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object v0
.end method

.method public a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/app/Notification;I)Landroid/support/v4/app/bv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/app/Notification;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/app/Notification;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Landroid/app/Notification;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
