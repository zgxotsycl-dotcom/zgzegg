.class Lcom/tweber/stickfighter/e/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/e;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/k;->a:Lcom/tweber/stickfighter/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/e/k;->a:Lcom/tweber/stickfighter/e/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/e;->f(Lcom/tweber/stickfighter/e/e;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/tweber/stickfighter/e/k;->a:Lcom/tweber/stickfighter/e/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/e/e;->g(Lcom/tweber/stickfighter/e/e;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/e/k;->a:Lcom/tweber/stickfighter/e/e;

    iget-object v1, p0, Lcom/tweber/stickfighter/e/k;->a:Lcom/tweber/stickfighter/e/e;

    invoke-static {v1}, Lcom/tweber/stickfighter/e/e;->h(Lcom/tweber/stickfighter/e/e;)[I

    move-result-object v1

    aget v1, v1, p2

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/e/e;->a(Lcom/tweber/stickfighter/e/e;I)I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
