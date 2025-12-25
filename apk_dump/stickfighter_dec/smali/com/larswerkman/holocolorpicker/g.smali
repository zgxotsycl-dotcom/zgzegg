.class public final Lcom/larswerkman/holocolorpicker/g;
.super Ljava/lang/Object;


# static fields
.field public static final ColorBars:[I

.field public static final ColorBars_bar_length:I = 0x1

.field public static final ColorBars_bar_orientation_horizontal:I = 0x4

.field public static final ColorBars_bar_pointer_halo_radius:I = 0x3

.field public static final ColorBars_bar_pointer_radius:I = 0x2

.field public static final ColorBars_bar_thickness:I = 0x0

.field public static final ColorPicker:[I

.field public static final ColorPicker_color_center_halo_radius:I = 0x3

.field public static final ColorPicker_color_center_radius:I = 0x2

.field public static final ColorPicker_color_pointer_halo_radius:I = 0x5

.field public static final ColorPicker_color_pointer_radius:I = 0x4

.field public static final ColorPicker_color_wheel_radius:I = 0x0

.field public static final ColorPicker_color_wheel_thickness:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/larswerkman/holocolorpicker/g;->ColorBars:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/larswerkman/holocolorpicker/g;->ColorPicker:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010046
        0x7f010047
        0x7f010048
        0x7f010049
        0x7f01004a
    .end array-data

    :array_1
    .array-data 4
        0x7f01004b
        0x7f01004c
        0x7f01004d
        0x7f01004e
        0x7f01004f
        0x7f010050
    .end array-data
.end method
