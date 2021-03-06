<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="col-xs-6 team_regist_form_layout">
		<div class="row team_regist_whole">
			<div class="row team_regist_form_title">
				<label class="team_regist_text_title team_regist_text_blue">팀
					등록</label>
			</div>
			<hr class="team_regist_hr">
			<form id="registForm" action="./teamRegister.do" method="post"
				class="team_regist_whole">
				<input type="hidden" name="job" value="addTeam">
				<div class="row team_regist_row">
					<div class="col-xs-6 team_regist_form_col team_regist_form_text">프로젝트
						제목</div>
					<div class="col-xs-6 team_regist_form_col team_regist_form_input">
						<input name="team_project_name" type="text"
							class="form-control team_regist_form_inputbox_mendatory">
					</div>
				</div>
				<div class="row team_regist_row">
					<div class="col-xs-6 team_regist_form_col team_regist_form_text">팀
						명</div>
					<div class="col-xs-6 team_regist_form_col team_regist_form_input">
						<input name="team_name" type="text"
							class="form-control team_regist_form_inputbox_mendatory">
					</div>
				</div>
				<div class="row team_regist_row">
					<div class="col-xs-6 team_regist_form_col team_regist_form_text">팀
						개요</div>
					<div class="col-xs-6 team_regist_form_col team_regist_form_input">
						<input name="team_summary" type="text"
							class="form-control team_regist_form_inputbox_mendatory">
					</div>
				</div>
				<div class="row team_regist_row">
					<div class="col-xs-6 team_regist_form_col team_regist_form_text">팀
						소개</div>
					<div class="col-xs-6 team_regist_form_col team_regist_form_input">
						<textarea name="team_content"
							class="form-control team_regist_form_inputbox_mendatory"
							style="resize: none"></textarea>
					</div>
				</div>
				<div class="row team_regist_row">
					<div class="col-xs-6 team_regist_form_col team_regist_form_text">팀
						소개 사진</div>
					<div class="col-xs-6 team_regist_form_col team_regist_form_input">
						<input name="team_pic" type="file"
							class="form-control team_regist_form_inputbox">
					</div>
				</div>
				<hr class="team_regist_hr">
				<div class="row team_regist_row">
					<div class="col-xs-6 team_regist_form_col team_regist_form_text">참여
						공모전 이름</div>
					<div class="col-xs-6 team_regist_form_col team_regist_form_input">
						<input name="team_contest_name" type="text"
							class="form-control team_regist_form_inputbox">
					</div>
				</div>
				<div class="row team_regist_row">
					<div class="col-xs-6 team_regist_form_col team_regist_form_text">참여
						공모전 링크</div>
					<div class="col-xs-6 team_regist_form_col team_regist_form_input">
						<input name="team_contest_link" type="text"
							class="form-control team_regist_form_inputbox">
					</div>
				</div>
				<hr class="team_regist_hr">
				<div class="row team_regist_row">
					<div class="col-xs-6 team_regist_form_col team_regist_form_text">팀
						분야</div>
					<div class="col-xs-6 team_regist_form_col team_regist_form_input">
						<button type="button" class="btn btn-md team_regist_btn_color"
							data-toggle="modal" data-target="#categoryModal">분야 선택</button>
					</div>
					<!-- 분야 선택 모달 -->
					<div class="modal team_regist_modal_font" id="categoryModal">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header team_regist_modal_title">분야 선택</div>
								<!-- Modal body -->
								<div class="modal-body">
									<div class="row">
										<div class="col team_regist_modal_element">
											<input name="region_id" type="checkbox"
												class="form-check-input" name="region" id="region-1"
												value="region-1">분야1
										</div>
										<div class="col team_regist_modal_element">
											<input name="region_id" type="checkbox"
												class="form-check-input" name="region" id="region-2"
												value="region-2">분야2
										</div>
										<div class="col team_regist_modal_element">
											<input name="region_id" type="checkbox"
												class="form-check-input" name="region" id="region-3"
												value="region-3">분야3
										</div>
									</div>
									<div class="row">
										<button type="button"
											class="btn btn-mid team_regist_btn_color team_regist_modal_btn_position"
											data-dismiss="modal">확인</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 분야 선택 모달 끝 -->
				</div>
				<div class="row team_regist_row">
					<div class="col-xs-6 team_regist_form_col team_regist_form_text">팀
						활동지역</div>
					<div class="col-xs-6 team_regist_form_col  team_regist_form_input">
						<button type="button" class="btn btn-md team_regist_btn_color"
							data-toggle="modal" data-target="#regionModal">지역 선택</button>
					</div>
				</div>
				<!-- 활동 지역 선택 모달 -->
				<div class="modal team_regist_modal_font" id="regionModal">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header team_regist_modal_title">활동지역 선택</div>
							<!-- Modal body -->
							<div class="modal-body">
								<div class="row">
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-1"
											value="region-1">서울
									</div>
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-2"
											value="region-2">인천
									</div>
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-3"
											value="region-3">부산
									</div>
								</div>
								<div class="row">
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-4"
											value="region-4">대전
									</div>
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-5"
											value="region-5">대구
									</div>
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-6"
											value="region-6">광주
									</div>
								</div>
								<div class="row">
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-7"
											value="region-7">울산
									</div>
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-8"
											value="region-8">제주
									</div>
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-9"
											value="region-9">세종
									</div>
								</div>
								<div class="row">
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-10"
											value="region-10">경기도
									</div>
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-11"
											value="region-11">강원도
									</div>
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-12"
											value="region-12">충청북도
									</div>
								</div>
								<div class="row">
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-13"
											value="region-13">충청남도
									</div>
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-14"
											value="region-14">경상북도
									</div>
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-15"
											value="region-15">경상남도
									</div>
								</div>
								<div class="row">
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-16"
											value="region-16">전라북도
									</div>
									<div class="col team_regist_modal_element">
										<input name="region_id" type="checkbox"
											class="form-check-input" name="region" id="region-17"
											value="region-17">전라남도
									</div>
									<div class="col team_regist_modal_element">&nbsp;</div>

								</div>

								<div class="row">
									<button type="button"
										class="btn btn-mid team_regist_btn_color team_regist_modal_btn_position"
										data-dismiss="modal">확인</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 활동 지역 선택 모달 끝 -->
				<div class="row team_regist_row">
					<div class="col-xs-6 team_regist_form_col team_regist_form_text">팀
						지원 마감 일자</div>
					<div class="col-xs-6 team_regist_form_col  team_regist_form_input">
						<input name="team_end_date" type="date"
							class="form-control team_regist_form_inputbox_mendatory">
					</div>
				</div>
				<hr class="team_regist_hr">
				<div id="faq" class="faq">
					<div class="row team_regist_row">
						<div class="col-xs-6 team_regist_form_col team_regist_form_text">FAQ
							Question</div>
						<div class="col-xs-6 team_regist_form_col  team_regist_form_input">
							<input name="faq_question" type="text"
								class="form-control team_regist_form_inputbox">
						</div>
					</div>
					<div class="row team_regist_row">
						<div class="col-xs-6 team_regist_form_col team_regist_form_text">FAQ
							Answer</div>
						<div class="col-xs-6 team_regist_form_col  team_regist_form_input">
							<input name="faq_answer" type="text"
								class="form-control team_regist_form_inputbox">
							<button type="button" class="btn btn-md team_regist_btn_color"
								id="btn_remove_faq" onclick="remove_faq(this)">삭제하기</button>
						</div>
					</div>
				</div>
				<div id="addFaq"></div>
				<div class="row team_regist_row">
					<div class="col-xs-6 team_regist_form_col team_regist_form_text"></div>
					<div class="col-xs-6 team_regist_form_col">
						<button type="button" class="btn"
							style="background-color: white; color: blue;" onclick="add_faq()">추가하기</button>
					</div>
				</div>
				<hr class="team_regist_hr">
				<div id="interview" class="interview">
					<div class="row team_regist_row">
						<div class="col-xs-6 team_regist_form_col team_regist_form_text">간단
							면접 질문</div>
						<div class="col-xs-6 team_regist_form_col team_regist_form_input">
							<input name="interview_question_content" type="text"
								class="form-control team_regist_form_inputbox">
							<button type="button" class="btn btn-md team_regist_btn_color"
								id="btn_remove_interview" onclick="remove_interview(this)">삭제하기</button>
						</div>
					</div>
				</div>
				<div id="addInterview"></div>
				<div class="row team_regist_row">
					<div class="col-xs-6 team_regist_form_col team_regist_form_text"></div>
					<div class="col-xs-6 team_regist_form_col">
						<button type="button" class="btn"
							style="background-color: white; color: blue;"
							onclick="add_interview()">추가하기</button>
					</div>
				</div>
				<hr class="team_regist_hr">
				<div id="role" class="role">
					<div class="row team_regist_row">
						<div class="col-xs-6 team_regist_form_col team_regist_form_text">모집
							분야</div>
						<div class="col-xs-6 team_regist_form_col">
							<button type="button" class="btn btn-md team_regist_btn_color"
								data-toggle="modal" data-target="#myModal2">모집 분야 선택</button>
						</div>
					</div>
					<!-- 모집 분야 선택 모달 -->
					<div class="modal team_regist_modal_font" id="myModal2">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header team_regist_modal_title">모집 분야 선택</div>
								<!-- Modal body -->
								<div class="modal-body">
									<div class="row">
										<div class="col team_regist_modal_element">
											<input class="form-check-input" type="checkbox"
												name="role_id" value="role-1">기획자
										</div>
										<div class="col team_regist_modal_element">
											<input name="role_id" type="checkbox"
												class="form-check-input" value="role-2">디자이너
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input name="role_id" type="checkbox"
												class="form-check-input" value="role-3">개발자
										</div>
										<div class="col team_regist_modal_element">
											<input name="role_id" type="checkbox"
												class="form-check-input" value="role-4">기타
										</div>
									</div>
									<div class="row">
										<button type="button"
											class="btn btn-mid team_regist_btn_color team_regist_modal_btn_position"
											data-dismiss="modal">확인</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 모집 분야 선택 모달 끝 -->
					<div class="row team_regist_row">
						<div class="col-xs-6 team_regist_form_col team_regist_form_text">모집
							인원</div>
						<div class="col-xs-6 team_regist_form_col team_regist_form_input">
							<input name="recruit_people" type="number"
								class="form-control team_regist_form_inputbox">
						</div>
					</div>
					<div class="row team_regist_row">
						<div class="col-xs-6 team_regist_form_col team_regist_form_text">필요
							역량</div>
						<div class="col-xs-6 team_regist_form_col team_regist_form_input">
							<button type="button" class="btn btn-md team_regist_btn_color"
								data-toggle="modal" data-target="#skillModal">필요 역량 선택</button>
						</div>
					</div>
					<!-- 필요 역량 선택 모달 -->
					<div class="modal team_regist_modal_font" id="skillModal">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header team_regist_modal_title">기술 선택</div>
								<!-- Modal body -->
								<div class="modal-body">
									<h4>기획자 역량</h4>
									<hr>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input name="skill" type="checkbox" class="form-check-input"
												id="skill-1" value="skill-1">브랜딩
										</div>
										<div class="col team_regist_modal_element">
											<input name="skill" type="checkbox" class="form-check-input"
												id="skill-2" value="skill-2">스토리보드
										</div>
										<div class="col team_regist_modal_element">
											<input name="skill" type="checkbox" class="form-check-input"
												id="skill-3" value="skill-3">데이터분석
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input name="skill" type="checkbox" class="form-check-input"
												id="skill-4" value="skill-4">마케팅
										</div>
										<div class="col team_regist_modal_element">
											<input name="skill" type="checkbox" class="form-check-input"
												id="skill-5" value="skill-5">SNS운영
										</div>
										<div class="col team_regist_modal_element">
											<input name="skill" type="checkbox" class="form-check-input"
												id="skill-50" value="skill-50">재무/회계
										</div>
									</div>
									<hr>
									<h4>디자이너 역량</h4>
									<hr>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input name="skill" type="checkbox" class="form-check-input"
												id="skill-6" value="skill-6">포토샵
										</div>
										<div class="col team_regist_modal_element">
											<input name="skill" type="checkbox" class="form-check-input"
												id="skill-7" value="skill-7">일러스트레이터
										</div>
										<div class="col team_regist_modal_element">
											<input name="skill" type="checkbox" class="form-check-input"
												id="skill-8" value="skill-8">브랜딩 디자인
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input name="skill" type="checkbox" class="form-check-input"
												id="skill-9" value="skill-9">포스터 디자인
										</div>
										<div class="col team_regist_modal_element">
											<input name="skill" type="checkbox" class="form-check-input"
												id="skill-10" value="skill-10">PPT 제작
										</div>
										<div class="col team_regist_modal_element">
											<input name="skill" type="checkbox" class="form-check-input"
												id="skill-11" value="skill-11">영상 편집
										</div>
									</div>
									<hr>
									<h4>개발자 역량</h4>
									<hr>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-12">C
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-13">C#
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-14">Object-C
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-15">JAVA
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-16">Ruby
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-17">CSS
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-18">HTML
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-19">Django
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-20">JavaScript
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-21">jQuery
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-22">AngularJS
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-23">PHP
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-24">iOS
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-25">Swift
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-26">Android
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-27">Web
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-28">Mobile
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-29">BackEnd
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-30">FrontEnd
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-31">Embeded
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-32">Rails
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-33">AWS
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-34">Ngnix
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-35">MySQL
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-36">Oracle
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-37">Machine
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-38">Git
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-39">Assembly
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-40">Azure
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-41">Rails
										</div>
									</div>
									<hr>
									<h4>기타 역량</h4>
									<hr>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-42">발표
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-43">영어
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-44">일본어
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-45">중국어
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-46">창업 경험
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-47">공모전 경험
										</div>
									</div>
									<div class="row">
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-48">영상 촬영
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-49">문서 작성
										</div>
										<div class="col team_regist_modal_element">
											<input type="checkbox" class="form-check-input" name="skill"
												value="skill-51">기타
										</div>
									</div>
									<div class="row">
										<button type="button"
											class="btn btn-mid team_regist_btn_color team_regist_modal_btn_position"
											data-dismiss="modal">확인</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 필요 역량 선택 모달 끝 -->
					<div class="row team_regist_row">
						<div class="col-xs-6 team_regist_form_col team_regist_form_text">우대
							조건</div>
						<div class="col-xs-6 team_regist_form_col team_regist_form_input">
							<input name="recruit_preference" type="text"
								class="form-control team_regist_form_inputbox">
						</div>
					</div>
					<div class="row team_regist_row">
						<div class="col-xs-6 team_regist_form_col team_regist_form_text">모집
							상세 설명</div>
						<div class="col-xs-6 team_regist_form_col team_regist_form_input">
							<textarea name="recruit_explain"
								class="form-control team_regist_form_inputbox"
								style="resize: none"></textarea>
							<button type="button" class="btn btn-md team_regist_btn_color"
								id="btn_remove_role" onclick="remove_item(this)">삭제하기</button>
						</div>
					</div>
				</div>
				<div id="addRole"></div>
				<div class="row team_regist_row">
					<div class="col-xs-6 team_regist_form_col team_regist_form_text"></div>
					<div class="col-xs-6 team_regist_form_col">
						<button type="button" class="btn"
							style="background-color: white; color: blue;"
							onclick="add_item()">추가하기</button>
					</div>
				</div>
				<div class="row team_regist_row team_regist_row_btns">
					<button type="button" class="btn btn-md team_regist_btn_cancel">취소하기</button>
					<button id="registBtn" type="button"
						class="btn btn-md team_regist_btn_submit">등록하기</button>
				</div>
			</form>
		</div>
	</div>
</body>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$('document').ready(function(e) {
		$("#registBtn").click(function(e) {
			$('#registForm').submit();
		});
	});

	function add_item() {
		if ($("#addRole").children().length == 2) {
			alert("생성할 수 없습니다.");
		} else {
			var div = document.createElement('div');
			div.innerHTML = '<hr class="team_regist_hr">'
					+ document.getElementById('role').innerHTML;
			document.getElementById('addRole').appendChild(div);
		}
	}

	function remove_item(obj) {
		if (obj.parentNode.parentNode.parentNode.id == 'role') {
			alert("삭제할 수 없습니다.");
		} else {
			obj.parentNode.parentNode.parentNode.remove();
		}
	}

	function add_interview() {
		if ($("#addInterview").children().length == 2) {
			alert("생성할 수 없습니다.");
		} else {
			var div = document.createElement('div');
			div.innerHTML = '<hr class="team_regist_hr">'
					+ document.getElementById('interview').innerHTML;
			document.getElementById('addInterview').appendChild(div);
		}
	}

	function remove_interview(obj) {
		if (obj.parentNode.parentNode.parentNode.id == 'interview') {
			alert("삭제할 수 없습니다.");
		} else {
			obj.parentNode.parentNode.parentNode.remove();
		}
	}

	function add_faq() {
		if ($("#addFaq").children().length == 2) {
			alert("생성할 수 없습니다.");
		} else {
			var div = document.createElement('div');
			div.innerHTML = '<hr class="team_regist_hr">'
					+ document.getElementById('faq').innerHTML;
			document.getElementById('addFaq').appendChild(div);
		}
	}

	function remove_faq(obj) {
		if (obj.parentNode.parentNode.parentNode.id == 'faq') {
			alert("삭제할 수 없습니다.");
		} else {
			obj.parentNode.parentNode.parentNode.remove();
		}
	}
</script>
</html>