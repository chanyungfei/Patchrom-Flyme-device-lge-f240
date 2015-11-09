.class public Lcom/lge/emoji/EmojiUtil;
.super Ljava/lang/Object;
.source "EmojiUtil.java"


# static fields
.field private static final EMOJI_HIGH_MAP:[B

.field private static final EMOJI_LOW_MAP:[B

.field private static final REGIONAL_INDICATOR_SYMBOL_A:I = 0x1f1e6

.field private static final REGIONAL_INDICATOR_SYMBOL_Z:I = 0x1f1ff


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 22
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 325
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/emoji/EmojiUtil;->EMOJI_LOW_MAP:[B

    .line 345
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lge/emoji/EmojiUtil;->EMOJI_HIGH_MAP:[B

    return-void

    .line 325
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 345
    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static filterEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 414
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/emoji/EmojiUtil;->filterEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static filterEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x25

    .line 369
    if-nez p0, :cond_1

    .line 370
    const/4 p0, 0x0

    .line 407
    .end local p0    # "text":Ljava/lang/String;
    .local v5, "isEncodedUrl":Z
    :cond_0
    :goto_0
    return-object p0

    .line 373
    .end local v5    # "isEncodedUrl":Z
    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    const/4 v5, 0x1

    .line 375
    .restart local v5    # "isEncodedUrl":Z
    :goto_1
    invoke-static {p0}, Lcom/lge/emoji/EmojiUtil;->hasEmoji(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v5, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/lge/emoji/EmojiUtil;->hasEmoji(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 376
    :cond_2
    new-instance v3, Ljava/lang/String;

    const-string v8, ""

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 377
    .local v3, "filtered":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 379
    .local v7, "textLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v7, :cond_a

    .line 380
    invoke-static {p0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 381
    .local v0, "code":I
    if-eqz v5, :cond_6

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_6

    .line 382
    const/4 v8, 0x3

    new-array v1, v8, [I

    fill-array-data v1, :array_0

    .line 383
    .local v1, "codeLen":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    array-length v8, v1

    if-ge v6, v8, :cond_3

    .line 384
    aget v8, v1, v6

    add-int/2addr v8, v4

    if-ge v8, v7, :cond_5

    .line 385
    aget v8, v1, v6

    add-int/2addr v8, v4

    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "codeText":Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/lge/emoji/EmojiUtil;->hasEmoji(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 387
    aget v8, v1, v6

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v4, v8

    .line 379
    .end local v1    # "codeLen":[I
    .end local v2    # "codeText":Ljava/lang/String;
    .end local v6    # "j":I
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 373
    .end local v0    # "code":I
    .end local v3    # "filtered":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "isEncodedUrl":Z
    .end local v7    # "textLen":I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 383
    .restart local v0    # "code":I
    .restart local v1    # "codeLen":[I
    .restart local v3    # "filtered":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "isEncodedUrl":Z
    .restart local v6    # "j":I
    .restart local v7    # "textLen":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 393
    .end local v1    # "codeLen":[I
    .end local v6    # "j":I
    :cond_6
    add-int/lit8 v8, v4, 0x1

    if-ge v8, v7, :cond_8

    invoke-static {v0}, Lcom/lge/emoji/EmojiUtil;->isInEmojiUnicodeTable(I)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {p0, v4}, Lcom/lge/emoji/EmojiUtil;->isDiacriticalMark(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 394
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 395
    :cond_8
    add-int/lit8 v8, v4, 0x3

    if-ge v8, v7, :cond_9

    invoke-static {p0, v4}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 396
    add-int/lit8 v4, v4, 0x3

    goto :goto_4

    .line 397
    :cond_9
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/lge/emoji/EmojiUtil;->isInEmojiUnicodeTable(C)Z

    move-result v8

    if-nez v8, :cond_3

    .line 398
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 402
    .end local v0    # "code":I
    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_b

    .line 403
    new-instance p0, Ljava/lang/String;

    .end local p0    # "text":Ljava/lang/String;
    const-string v8, ""

    invoke-direct {p0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local p0    # "text":Ljava/lang/String;
    :cond_b
    move-object p0, v3

    .line 405
    goto/16 :goto_0

    .line 382
    nop

    :array_0
    .array-data 4
        0x6
        0xc
        0x18
    .end array-data
.end method

.method public static hasEmoji(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 202
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v4, :cond_4

    .line 203
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 205
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 206
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 207
    .local v0, "chr":C
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 209
    .local v1, "code":I
    invoke-static {v0}, Lcom/lge/emoji/EmojiUtil;->quickRejectEmojiCode(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 210
    invoke-static {v0}, Lcom/lge/emoji/EmojiUtil;->isInEmojiUnicodeTable(C)Z

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v4, v2, 0x3

    if-ge v4, v3, :cond_0

    invoke-static {p0, v2}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_1

    invoke-static {v1}, Lcom/lge/emoji/EmojiUtil;->isInEmojiUnicodeTable(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_3

    invoke-static {p0, v2}, Lcom/lge/emoji/EmojiUtil;->isDiacriticalMark(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 214
    :cond_2
    const/4 v4, 0x1

    .line 219
    .end local v0    # "chr":C
    .end local v1    # "code":I
    .end local v2    # "i":I
    .end local v3    # "len":I
    :goto_1
    return v4

    .line 205
    .restart local v0    # "chr":C
    .restart local v1    # "code":I
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "chr":C
    .end local v1    # "code":I
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static hasSurrogatePairEmoji(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 234
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v4, :cond_4

    .line 235
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 237
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 238
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 239
    .local v0, "chr":C
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 241
    .local v1, "code":I
    invoke-static {v0}, Lcom/lge/emoji/EmojiUtil;->quickRejectEmojiCode(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 242
    add-int/lit8 v4, v2, 0x3

    if-ge v4, v3, :cond_0

    invoke-static {p0, v2}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_1

    invoke-static {p0, v2}, Lcom/lge/emoji/EmojiUtil;->isDiacriticalMark(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_3

    invoke-static {v1}, Lcom/lge/emoji/EmojiUtil;->isInEmojiUnicodeTable(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 245
    :cond_2
    const/4 v4, 0x1

    .line 250
    .end local v0    # "chr":C
    .end local v1    # "code":I
    .end local v2    # "i":I
    .end local v3    # "len":I
    :goto_1
    return v4

    .line 237
    .restart local v0    # "chr":C
    .restart local v1    # "code":I
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "chr":C
    .end local v1    # "code":I
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isDiacriticalMark(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .prologue
    .line 100
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20e3

    if-ne v0, v1, :cond_1

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDiacriticalMark([CI)Z
    .locals 2
    .param p0, "text"    # [C
    .param p1, "index"    # I

    .prologue
    .line 78
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v0, :cond_1

    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-char v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    aget-char v0, p0, p1

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    aget-char v0, p0, v0

    const/16 v1, 0x20e3

    if-ne v0, v1, :cond_1

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInCountryCodeRange(I)Z
    .locals 1
    .param p0, "codept"    # I

    .prologue
    .line 318
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v0, :cond_0

    const v0, 0x1f1e6

    if-lt p0, v0, :cond_0

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_0

    .line 320
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInCountryCodeTable(Ljava/lang/CharSequence;I)Z
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 163
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v5, :cond_2

    .line 164
    if-eqz p0, :cond_2

    if-ltz p1, :cond_2

    add-int/lit8 v5, p1, 0x3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 165
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 166
    .local v1, "codeptArray":[I
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    aput v5, v1, v4

    .line 167
    add-int/lit8 v5, p1, 0x2

    invoke-static {p0, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    aput v5, v1, v3

    .line 169
    aget v5, v1, v4

    invoke-static {v5}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeRange(I)Z

    move-result v5

    if-eqz v5, :cond_2

    aget v5, v1, v3

    invoke-static {v5}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeRange(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lcom/lge/emoji/EmojiUtil;->nativeIsInCountryCodeTable([I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "startPos":I
    move v2, p1

    :goto_0
    if-ltz v2, :cond_0

    .line 174
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 175
    .local v0, "codept":I
    invoke-static {v0}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeRange(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    .end local v0    # "codept":I
    :cond_0
    add-int/lit8 v2, v2, 0x2

    .line 181
    sub-int v5, p1, v2

    div-int/lit8 v5, v5, 0x2

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    .line 187
    .end local v1    # "codeptArray":[I
    .end local v2    # "startPos":I
    :goto_1
    return v3

    .line 173
    .restart local v0    # "codept":I
    .restart local v1    # "codeptArray":[I
    .restart local v2    # "startPos":I
    :cond_1
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .end local v0    # "codept":I
    .end local v1    # "codeptArray":[I
    .end local v2    # "startPos":I
    :cond_2
    move v3, v4

    .line 187
    goto :goto_1
.end method

.method public static isInCountryCodeTable([CI)Z
    .locals 7
    .param p0, "text"    # [C
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v5, :cond_2

    .line 123
    if-eqz p0, :cond_2

    if-ltz p1, :cond_2

    add-int/lit8 v5, p1, 0x3

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 124
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 125
    .local v1, "codeptArray":[I
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v5

    aput v5, v1, v4

    .line 126
    add-int/lit8 v5, p1, 0x2

    invoke-static {p0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v5

    aput v5, v1, v3

    .line 128
    aget v5, v1, v4

    invoke-static {v5}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeRange(I)Z

    move-result v5

    if-eqz v5, :cond_2

    aget v5, v1, v3

    invoke-static {v5}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeRange(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lcom/lge/emoji/EmojiUtil;->nativeIsInCountryCodeTable([I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "startPos":I
    move v2, p1

    :goto_0
    if-ltz v2, :cond_0

    .line 133
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    .line 134
    .local v0, "codept":I
    invoke-static {v0}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeRange(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 138
    .end local v0    # "codept":I
    :cond_0
    add-int/lit8 v2, v2, 0x2

    .line 140
    sub-int v5, p1, v2

    div-int/lit8 v5, v5, 0x2

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    .line 146
    .end local v1    # "codeptArray":[I
    .end local v2    # "startPos":I
    :goto_1
    return v3

    .line 132
    .restart local v0    # "codept":I
    .restart local v1    # "codeptArray":[I
    .restart local v2    # "startPos":I
    :cond_1
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .end local v0    # "codept":I
    .end local v1    # "codeptArray":[I
    .end local v2    # "startPos":I
    :cond_2
    move v3, v4

    .line 146
    goto :goto_1
.end method

.method public static isInEmojiUnicodeTable(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 40
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/lge/emoji/EmojiUtil;->nativeIsInEmojiUnicodeTable(I)Z

    move-result v0

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInEmojiUnicodeTable(I)Z
    .locals 1
    .param p0, "codept"    # I

    .prologue
    .line 58
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_0

    .line 59
    invoke-static {p0}, Lcom/lge/emoji/EmojiUtil;->nativeIsInEmojiUnicodeTable(I)Z

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lengthEmoji(Ljava/lang/CharSequence;)I
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 265
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 266
    .local v4, "textLen":I
    move v2, v4

    .line 268
    .local v2, "emojiLen":I
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v5, :cond_3

    .line 269
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 270
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 271
    .local v0, "chr":C
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 273
    .local v1, "code":I
    invoke-static {v0}, Lcom/lge/emoji/EmojiUtil;->quickRejectEmojiCode(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    add-int/lit8 v5, v3, 0x3

    if-ge v5, v4, :cond_1

    invoke-static {p0, v3}, Lcom/lge/emoji/EmojiUtil;->isInCountryCodeTable(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    add-int/lit8 v2, v2, -0x3

    .line 276
    add-int/lit8 v3, v3, 0x3

    .line 269
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    :cond_1
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_0

    invoke-static {v1}, Lcom/lge/emoji/EmojiUtil;->isInEmojiUnicodeTable(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p0, v3}, Lcom/lge/emoji/EmojiUtil;->isDiacriticalMark(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    .end local v0    # "chr":C
    .end local v1    # "code":I
    .end local v3    # "i":I
    :cond_3
    return v2
.end method

.method private static native nativeIsInCountryCodeTable([I)Z
.end method

.method private static native nativeIsInEmojiUnicodeTable(I)Z
.end method

.method public static quickRejectEmojiCode(C)Z
    .locals 4
    .param p0, "code"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI_DCM:Z

    if-eqz v2, :cond_0

    .line 311
    :goto_0
    return v1

    .line 307
    :cond_0
    const/16 v2, 0x100

    if-ge p0, v2, :cond_3

    sget-object v2, Lcom/lge/emoji/EmojiUtil;->EMOJI_LOW_MAP:[B

    aget-byte v2, v2, p0

    if-nez v2, :cond_2

    .local v0, "flag":Z
    :cond_1
    :goto_1
    move v1, v0

    .line 311
    goto :goto_0

    .end local v0    # "flag":Z
    :cond_2
    move v0, v1

    .line 307
    goto :goto_1

    :cond_3
    sget-object v2, Lcom/lge/emoji/EmojiUtil;->EMOJI_HIGH_MAP:[B

    shr-int/lit8 v3, p0, 0x8

    aget-byte v2, v2, v3

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1
.end method
