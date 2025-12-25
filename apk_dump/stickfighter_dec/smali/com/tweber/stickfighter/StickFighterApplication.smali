.class public Lcom/tweber/stickfighter/StickFighterApplication;
.super Landroid/app/Application;


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tweber/stickfighter/StickFighterApplication;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static b()Landroid/content/SharedPreferences;
    .locals 3

    sget-object v0, Lcom/tweber/stickfighter/StickFighterApplication;->a:Landroid/content/Context;

    const-string v1, "SharedPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/tweber/stickfighter/StickFighterApplication;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tweber/stickfighter/a/a;->a()Lcom/tweber/stickfighter/a/a;

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/c/a;->c()V

    :cond_0
    return-void
.end method
