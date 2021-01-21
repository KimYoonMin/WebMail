<c:if test="${ empty user }">
	<%session.invalidate(); %>
	<c:redirect url="/a_team/110_login.jsp"/>
</c:if>