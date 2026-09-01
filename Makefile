.include "mb/init.mk"
.include "src/dirs.mk"

.BEGIN:
.if !make(clean)
	@mkdir -p ${OBJS_ALL:H:O:u} ${EXTRAS_ALL:H:O:u}
.endif

build: ${OBJDIR} ${OBJS_ALL} ${EXTRAS_ALL} run

run:
	@${OBJDIR}/example

clean:
.if exists(${OBJDIR})
	rm -rf ${OBJDIR}
.endif

.PHONY: build clean run
.MAIN: build
