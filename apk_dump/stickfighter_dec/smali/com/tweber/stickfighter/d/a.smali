.class public Lcom/tweber/stickfighter/d/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tweber/stickfighter/d/b;


# direct methods
.method public static a()Lcom/tweber/stickfighter/d/b;
    .locals 2

    sget-object v0, Lcom/tweber/stickfighter/d/a;->a:Lcom/tweber/stickfighter/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tweber/stickfighter/d/c;

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/d/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tweber/stickfighter/d/a;->a:Lcom/tweber/stickfighter/d/b;

    :cond_0
    sget-object v0, Lcom/tweber/stickfighter/d/a;->a:Lcom/tweber/stickfighter/d/b;

    return-object v0
.end method
