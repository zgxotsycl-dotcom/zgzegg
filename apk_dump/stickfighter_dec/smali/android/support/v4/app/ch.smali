.class Landroid/support/v4/app/ch;
.super Landroid/support/v4/app/cg;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/cg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/bz;Landroid/support/v4/app/ca;)Landroid/app/Notification;
    .locals 6

    iget-object v0, p1, Landroid/support/v4/app/bz;->mNotification:Landroid/app/Notification;

    iget-object v1, p1, Landroid/support/v4/app/bz;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/bz;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bz;->mContentText:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/bz;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p1, Landroid/support/v4/app/bz;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/bz;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bz;->mContentText:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/bz;->mContentIntent:Landroid/app/PendingIntent;

    iget-object v5, p1, Landroid/support/v4/app/bz;->mFullScreenIntent:Landroid/app/PendingIntent;

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/cu;->a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/bz;->mPriority:I

    if-lez v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-object v0
.end method
