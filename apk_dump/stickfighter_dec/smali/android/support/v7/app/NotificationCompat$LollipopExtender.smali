.class Landroid/support/v7/app/NotificationCompat$LollipopExtender;
.super Landroid/support/v4/app/ca;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/NotificationCompat$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/NotificationCompat$LollipopExtender;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/support/v4/app/bz;Landroid/support/v4/app/bs;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p1, Landroid/support/v4/app/bz;->mStyle:Landroid/support/v4/app/cm;

    invoke-static {p2, v0}, Landroid/support/v7/app/NotificationCompat;->access$500(Landroid/support/v4/app/bs;Landroid/support/v4/app/cm;)V

    invoke-interface {p2}, Landroid/support/v4/app/bs;->b()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
