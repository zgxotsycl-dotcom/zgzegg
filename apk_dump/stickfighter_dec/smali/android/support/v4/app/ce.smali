.class Landroid/support/v4/app/ce;
.super Landroid/support/v4/app/cl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/cl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/bz;Landroid/support/v4/app/ca;)Landroid/app/Notification;
    .locals 26

    new-instance v2, Landroid/support/v4/app/co;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/bz;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/bz;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/bz;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/bz;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/bz;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/support/v4/app/bz;->mTickerView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/support/v4/app/bz;->mNumber:I

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/bz;->mContentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/bz;->mFullScreenIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v4/app/bz;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/bz;->mProgressMax:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/support/v4/app/bz;->mProgress:I

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/bz;->mProgressIndeterminate:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/bz;->mShowWhen:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/bz;->mUseChronometer:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/bz;->mPriority:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bz;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/bz;->mLocalOnly:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bz;->mPeople:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bz;->mExtras:Landroid/os/Bundle;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bz;->mGroupKey:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/bz;->mGroupSummary:Z

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bz;->mSortKey:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v2 .. v25}, Landroid/support/v4/app/co;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/bz;->mActions:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/support/v4/app/bt;->access$000(Landroid/support/v4/app/br;Ljava/util/ArrayList;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/bz;->mStyle:Landroid/support/v4/app/cm;

    invoke-static {v2, v3}, Landroid/support/v4/app/bt;->access$100(Landroid/support/v4/app/bs;Landroid/support/v4/app/cm;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ca;->build(Landroid/support/v4/app/bz;Landroid/support/v4/app/bs;)Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method

.method public a(Landroid/app/Notification;I)Landroid/support/v4/app/bv;
    .locals 2

    sget-object v0, Landroid/support/v4/app/bv;->d:Landroid/support/v4/app/ct;

    sget-object v1, Landroid/support/v4/app/dc;->a:Landroid/support/v4/app/dl;

    invoke-static {p1, p2, v0, v1}, Landroid/support/v4/app/cn;->a(Landroid/app/Notification;ILandroid/support/v4/app/ct;Landroid/support/v4/app/dl;)Landroid/support/v4/app/cs;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/bv;

    return-object v0
.end method

.method public d(Landroid/app/Notification;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/cn;->a(Landroid/app/Notification;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/cn;->b(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/app/Notification;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/cn;->c(Landroid/app/Notification;)Z

    move-result v0

    return v0
.end method

.method public g(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/cn;->d(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
