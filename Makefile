CC =  g++

SRCS+= \
	main.cpp \
	CThread.cpp \
	COperatingSystem.cpp \
	COperatingSystemFactory.cpp \
	CLinuxOperatingSystem.cpp  \
	TestThread.cpp  \
	CCountingSem.cpp \
	CLinuxCountingSem.cpp \
	CMutex.cpp \
	CLinuxMutex.cpp \
	CMsgQueue.cpp \
	CLinuxMsgQueue.cpp \
	TestThreadB.cpp

OBJS = $(SRCS:.cpp=.o)

TARGET=operation

$(TARGET):$(OBJS)
	@echo "Making $(TARGET)..."
	$(CC) $(OBJS) -o $(TARGET) $(LIB) -lpthread


%.o:%.cpp
	@echo "=======>>Making $(CC) $< -w -c -o $@"
	@$(CC) $(CFLAGS) -c $< -w -o $@


clean:
	rm -f *.o
	
