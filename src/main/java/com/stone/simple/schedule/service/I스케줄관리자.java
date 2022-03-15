package com.stone.simple.schedule.service;

import java.util.List;

import com.stone.simple.schedule.common.ScheduleDTO;

public interface I스케줄관리자 {

	List<ScheduleDTO> showSchedule(int user_no);

	void 스케줄저장하다(ScheduleDTO 새스케줄);

	void 스케줄삭제하다(int sno);

}