obj-m += ib_rxe.o

ib_rxe-y := \
	rxe.o \
	rxe_comp.o \
	rxe_req.o \
	rxe_resp.o \
	rxe_recv.o \
	rxe_pool.o \
	rxe_queue.o \
	rxe_verbs.o \
	rxe_av.o \
	rxe_srq.o \
	rxe_qp.o \
	rxe_cq.o \
	rxe_mr.o \
	rxe_dma.o \
	rxe_opcode.o \
	rxe_mmap.o \
	rxe_icrc.o \
	rxe_mcast.o \
	rxe_task.o \
	rxe_net.o \
	rxe_net_sysfs.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

install:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules_install

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean