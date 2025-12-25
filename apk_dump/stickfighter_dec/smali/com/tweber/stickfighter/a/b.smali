.class Lcom/tweber/stickfighter/a/b;
.super Lcom/google/android/gms/ads/a;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/a/a;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/a/b;->a:Lcom/tweber/stickfighter/a/a;

    invoke-direct {p0}, Lcom/google/android/gms/ads/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/tweber/stickfighter/a/b;->a:Lcom/tweber/stickfighter/a/a;

    invoke-static {v0}, Lcom/tweber/stickfighter/a/a;->a(Lcom/tweber/stickfighter/a/a;)V

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastAdShowTime"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
