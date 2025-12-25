.class Lcom/tweber/stickfighter/g/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/e;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/f;->a:Lcom/tweber/stickfighter/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/f;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0, p3}, Lcom/tweber/stickfighter/g/e;->a(Lcom/tweber/stickfighter/g/e;I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/f;->a:Lcom/tweber/stickfighter/g/e;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->a(Lcom/tweber/stickfighter/g/e;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
