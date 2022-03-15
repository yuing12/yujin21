package com.stone.simple.schedule.dataservice;

import java.util.List;

import com.stone.simple.schedule.common.ScheduleDTO;

public interface I스케줄DAO {

	List<ScheduleDTO> showSchedule(int user_no);

	void 스케줄저장하다(ScheduleDTO 새스케줄);

	void 스케줄삭제하다(int title);

}