<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/common/header.jsp"%>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb" style="display:none;">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">Home</a>
							</li>

							<li>
								<a href="#">Tables</a>
							</li>
							<li class="active">Simple &amp; Dynamic</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								餐厅管理
								<small>
									<i class="icon-double-angle-right"></i>
									餐厅列表
								</small>
								<small><a href="${path}/canting/add">餐厅增加</a></small>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table id="sample-table-1" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="center">
															<label>
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label>
														</th>
														<th>餐厅名称</th>
														<th>简介</th>
														<th class="hidden-480">地址</th>

														<th>
															<i class="icon-time bigger-110 hidden-480"></i>
															创建时间
														</th>
														<th class="hidden-480">操作</th>
													</tr>
												</thead>

												<tbody>
													<c:forEach items="${data.list}" var="row">
													<tr>
														<td class="center">
															<label>
																<input type="checkbox" class="ace" />
																<span class="lbl">${row.id}</span>
															</label>
														</td>

														<td>
															<a href="#">${row.title}</a>
														</td>
														<td>${row.summary}</td>
														<td class="hidden-480">${row.address}</td>
														
														<td class="hidden-480">
															<span class="label label-sm label-warning">${row.addtime}</span>
														</td> 

														<td>
															<div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
																<button class="btn btn-xs btn-success">
																	<i class="icon-ok bigger-120"></i>
																</button>

																<button class="btn btn-xs btn-info" onclick="edit(${row.id})">
																	<i class="icon-edit bigger-120"></i>
																</button>

																<button class="btn btn-xs btn-danger" onclick="del(${row.id})">
																	<i class="icon-trash bigger-120"></i>
																</button>

															</div>

														</td>
													</tr>
													</c:forEach>
													<script>
													function edit(domid){
														location.href="${path}/canting/edit/"+domid;
														
													}
													function del(domid){
														if(confirm("确定删除吗?")){
															location.href="${path}/canting/delete/"+domid;
														}
													}
													</script>
												</tbody>
											</table>
										</div><!-- /.table-responsive -->
									</div><!-- /span -->
								</div><!-- /row -->
								<c:set var="currentPage" value="${data.pageNumber}" />
								<c:set var="totalPage" value="${data.totalPage}" />
								<c:set var="actionUrl" value="${path}/canting/" />
								<c:set var="urlParas" value="" />
								<%@ include file="/common/_paginate.jsp"%>
								
								<div class="hr hr-18 dotted hr-double"></div>

								<h4 class="pink">
									<i class="icon-hand-right icon-animated-hand-pointer blue"></i>
									<a href="#modal-table" role="button" class="green" data-toggle="modal"> 弹窗效果 </a>
								</h4>

								<div class="hr hr-18 dotted hr-double"></div>

								
								<div id="modal-table" class="modal fade" tabindex="-1">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header no-padding">
												<div class="table-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														<span class="white">&times;</span>
													</button>
													Results for "Latest Registered Domains
												</div>
											</div>

											<div class="modal-body no-padding">
												<table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
													<thead>
														<tr>
															<th>Domain</th>
															<th>Price</th>
															<th>Clicks</th>

															<th>
																<i class="icon-time bigger-110"></i>
																Update
															</th>
														</tr>
													</thead>

													<tbody>
														<tr>
															<td>
																<a href="#">ace.com</a>
															</td>
															<td>$45</td>
															<td>3,330</td>
															<td>Feb 12</td>
														</tr>

														<tr>
															<td>
																<a href="#">base.com</a>
															</td>
															<td>$35</td>
															<td>2,595</td>
															<td>Feb 18</td>
														</tr>

														<tr>
															<td>
																<a href="#">max.com</a>
															</td>
															<td>$60</td>
															<td>4,400</td>
															<td>Mar 11</td>
														</tr>

														<tr>
															<td>
																<a href="#">best.com</a>
															</td>
															<td>$75</td>
															<td>6,500</td>
															<td>Apr 03</td>
														</tr>

														<tr>
															<td>
																<a href="#">pro.com</a>
															</td>
															<td>$55</td>
															<td>4,250</td>
															<td>Jan 21</td>
														</tr>
													</tbody>
												</table>
											</div>

											<div class="modal-footer no-margin-top">
												<button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
													<i class="icon-remove"></i>
													Close
												</button>

												<ul class="pagination pull-right no-margin">
													<li class="prev disabled">
														<a href="#">
															<i class="icon-double-angle-left"></i>
														</a>
													</li>

													<li class="active">
														<a href="#">1</a>
													</li>

													<li>
														<a href="#">2</a>
													</li>

													<li>
														<a href="#">3</a>
													</li>

													<li class="next">
														<a href="#">
															<i class="icon-double-angle-right"></i>
														</a>
													</li>
												</ul>
											</div>
										</div><!-- /.modal-content -->
									</div><!-- /.modal-dialog -->
								</div><!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				<%@ include file="/common/footer.jsp"%>
