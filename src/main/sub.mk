SRCS:= main.c
EXTRAS:= @example

.include "${MBDIR}/gen.mk"
.include "${MBDIR}/extras.mk"

${OBJDIR}/example: ${OBJS_ALL}
	${CC} ${CFLAGS} ${LDFLAGS} -o $@ $>
