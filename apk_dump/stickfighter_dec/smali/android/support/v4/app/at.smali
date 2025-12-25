.class Landroid/support/v4/app/at;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/ar;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/at;->a:Landroid/support/v4/app/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/at;->a:Landroid/support/v4/app/ar;

    invoke-static {v0}, Landroid/support/v4/app/ar;->a(Landroid/support/v4/app/ar;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/cb;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method
