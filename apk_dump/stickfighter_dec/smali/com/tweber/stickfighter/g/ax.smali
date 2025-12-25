.class Lcom/tweber/stickfighter/g/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/ae;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/ax;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ax;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->q(Lcom/tweber/stickfighter/g/ae;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ax;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ae;->r(Lcom/tweber/stickfighter/g/ae;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
