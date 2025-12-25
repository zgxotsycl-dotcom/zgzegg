.class Lcom/google/android/gms/ads/internal/overlay/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/google/android/gms/ads/internal/overlay/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/p;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/q;->b:Lcom/google/android/gms/ads/internal/overlay/p;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/q;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/q;->b:Lcom/google/android/gms/ads/internal/overlay/p;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/p;->a:Lcom/google/android/gms/ads/internal/overlay/k;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/k;->a(Lcom/google/android/gms/ads/internal/overlay/k;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/q;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
