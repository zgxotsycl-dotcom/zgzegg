.class public Landroid/support/v7/app/NotificationCompat;
.super Landroid/support/v4/app/bt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/bt;-><init>()V

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/app/bs;Landroid/support/v4/app/bz;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addMediaStyleToBuilderIcs(Landroid/support/v4/app/bs;Landroid/support/v4/app/bz;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Notification;Landroid/support/v4/app/bz;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addBigMediaStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/bz;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v4/app/bs;Landroid/support/v4/app/cm;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addMediaStyleToBuilderLollipop(Landroid/support/v4/app/bs;Landroid/support/v4/app/cm;)V

    return-void
.end method

.method private static addBigMediaStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/bz;)V
    .locals 17

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/bz;->mStyle:Landroid/support/v4/app/cm;

    instance-of v2, v2, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/bz;->mStyle:Landroid/support/v4/app/cm;

    check-cast v2, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/bz;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/bz;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/bz;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/bz;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/bz;->mNumber:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/bz;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/bz;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/support/v4/app/bz;->mUseChronometer:Z

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/bz;->mNotification:Landroid/app/Notification;

    iget-wide v12, v3, Landroid/app/Notification;->when:J

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/support/v4/app/bz;->mActions:Ljava/util/ArrayList;

    iget-boolean v15, v2, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    iget-object v0, v2, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v16}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;ZLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private static addMediaStyleToBuilderIcs(Landroid/support/v4/app/bs;Landroid/support/v4/app/bz;)V
    .locals 18

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/bz;->mStyle:Landroid/support/v4/app/cm;

    instance-of v2, v2, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/bz;->mStyle:Landroid/support/v4/app/cm;

    check-cast v2, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/bz;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/bz;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/bz;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/bz;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/bz;->mNumber:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/bz;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/bz;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/support/v4/app/bz;->mUseChronometer:Z

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/bz;->mNotification:Landroid/app/Notification;

    iget-wide v12, v3, Landroid/app/Notification;->when:J

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/support/v4/app/bz;->mActions:Ljava/util/ArrayList;

    iget-object v15, v2, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    iget-boolean v0, v2, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    move/from16 v16, v0

    iget-object v0, v2, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v17}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideContentView(Landroid/support/v4/app/bs;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;[IZLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private static addMediaStyleToBuilderLollipop(Landroid/support/v4/app/bs;Landroid/support/v4/app/cm;)V
    .locals 2

    instance-of v0, p1, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    iget-object v1, p1, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    iget-object v0, p1, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {p0, v1, v0}, Landroid/support/v7/app/NotificationCompatImpl21;->addMediaStyle(Landroid/support/v4/app/bs;[ILjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
