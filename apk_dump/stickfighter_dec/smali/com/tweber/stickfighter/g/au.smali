.class Lcom/tweber/stickfighter/g/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/ae;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->d(Lcom/tweber/stickfighter/g/ae;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->e(Lcom/tweber/stickfighter/g/ae;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iget-object v0, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->f(Lcom/tweber/stickfighter/g/ae;)Landroid/support/v7/widget/SwitchCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v4

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "PlayerFPS"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "PlayerKeyFPS"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v5, "PlayerRepeat"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->g(Lcom/tweber/stickfighter/g/ae;)I

    move-result v0

    iget-object v5, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v5}, Lcom/tweber/stickfighter/g/ae;->h(Lcom/tweber/stickfighter/g/ae;)[I

    move-result-object v5

    aget v5, v5, v2

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->i(Lcom/tweber/stickfighter/g/ae;)I

    move-result v0

    iget-object v5, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v5}, Lcom/tweber/stickfighter/g/ae;->j(Lcom/tweber/stickfighter/g/ae;)[I

    move-result-object v5

    aget v5, v5, v3

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->k(Lcom/tweber/stickfighter/g/ae;)Z

    move-result v0

    if-eq v4, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v5, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v6, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v6}, Lcom/tweber/stickfighter/g/ae;->h(Lcom/tweber/stickfighter/g/ae;)[I

    move-result-object v6

    aget v2, v6, v2

    invoke-static {v5, v2}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;I)I

    iget-object v2, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v5, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v5}, Lcom/tweber/stickfighter/g/ae;->j(Lcom/tweber/stickfighter/g/ae;)[I

    move-result-object v5

    aget v3, v5, v3

    invoke-static {v2, v3}, Lcom/tweber/stickfighter/g/ae;->b(Lcom/tweber/stickfighter/g/ae;I)I

    iget-object v2, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v2, v4}, Lcom/tweber/stickfighter/g/ae;->b(Lcom/tweber/stickfighter/g/ae;Z)Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/g/ae;->c(Lcom/tweber/stickfighter/g/ae;I)I

    iget-object v0, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/g/ae;->d(Lcom/tweber/stickfighter/g/ae;I)I

    iget-object v0, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->l(Lcom/tweber/stickfighter/g/ae;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->m(Lcom/tweber/stickfighter/g/ae;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v2}, Lcom/tweber/stickfighter/g/ae;->n(Lcom/tweber/stickfighter/g/ae;)Lcom/tweber/stickfighter/h/p;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;Landroid/graphics/Canvas;Lcom/tweber/stickfighter/h/k;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->m(Lcom/tweber/stickfighter/g/ae;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/au;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->o(Lcom/tweber/stickfighter/g/ae;)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
