# (1)コンパイラ
CC  = gcc
# (2)コンパイルオプション
CFLAGS    = -Wall -Wextra
# (3)実行ファイル名
TARGET  = Bme280Test
# (4)コンパイル対象のソースコード
SRCS    = main.c
SRCS	+= Bme280.c
SRCS	+= I2cCtl.c
SRCS	+= Ssd1306.c
SRCS	+= Paint.c
SRCS	+= Font.c
# (5)オブジェクトファイル名
OBJS    = $(SRCS:%.c=%.o)
# (6)インクルードファイルのあるディレクトリパス
INCDIR  = 
# (7)ライブラリファイルのあるディレクトリパス
LIBDIR  = 
# (8)追加するライブラリファイル
LIBS    = 
# (9)ターゲットファイル生成
$(TARGET): $(OBJS)
	$(CC) -o $@ $^ $(LIBDIR) $(LIBS)
# (10)オブジェクトファイル生成
$(OBJS): $(SRCS)
	$(CC) $(CFLAGS) $(INCDIR) -c $(SRCS)
# (11)"make all"で make cleanとmakeを同時に実施。
all: clean $(OBJS) $(TARGET)
# (12).oファイル、実行ファイル、.dファイルを削除
clean:
	-rm -f $(OBJS) $(TARGET) *.d