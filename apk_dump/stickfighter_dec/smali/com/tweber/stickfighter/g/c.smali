.class public Lcom/tweber/stickfighter/g/c;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private a:Lcom/larswerkman/holocolorpicker/ColorPicker;

.field private b:Lcom/larswerkman/holocolorpicker/SVBar;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/c;->a:Lcom/larswerkman/holocolorpicker/ColorPicker;

    invoke-virtual {v0}, Lcom/larswerkman/holocolorpicker/ColorPicker;->getColor()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/tweber/stickfighter/g/c;->c:I

    iget-object v0, p0, Lcom/tweber/stickfighter/g/c;->a:Lcom/larswerkman/holocolorpicker/ColorPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/c;->a:Lcom/larswerkman/holocolorpicker/ColorPicker;

    invoke-virtual {v0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setOldCenterColor(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/c;->a:Lcom/larswerkman/holocolorpicker/ColorPicker;

    invoke-virtual {v0, p1}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setColor(I)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f03003e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c00bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/larswerkman/holocolorpicker/ColorPicker;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/c;->a:Lcom/larswerkman/holocolorpicker/ColorPicker;

    const v0, 0x7f0c00c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/larswerkman/holocolorpicker/SVBar;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/c;->b:Lcom/larswerkman/holocolorpicker/SVBar;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/c;->a:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/c;->b:Lcom/larswerkman/holocolorpicker/SVBar;

    invoke-virtual {v0, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->a(Lcom/larswerkman/holocolorpicker/SVBar;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/c;->a:Lcom/larswerkman/holocolorpicker/ColorPicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setTouchAnywhereOnColorWheelEnabled(Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/c;->a:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/tweber/stickfighter/g/c;->c:I

    invoke-virtual {v0, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setOldCenterColor(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/c;->a:Lcom/larswerkman/holocolorpicker/ColorPicker;

    iget v2, p0, Lcom/tweber/stickfighter/g/c;->c:I

    invoke-virtual {v0, v2}, Lcom/larswerkman/holocolorpicker/ColorPicker;->setColor(I)V

    return-object v1
.end method
