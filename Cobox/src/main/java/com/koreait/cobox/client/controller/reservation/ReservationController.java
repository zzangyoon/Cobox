package com.koreait.cobox.client.controller.reservation;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.servlet.ModelAndView;

import com.koreait.cobox.model.common.MessageData;
import com.koreait.cobox.model.domain.ResSummary;
import com.koreait.cobox.model.domain.Reservation;
import com.koreait.cobox.model.domain.Schedule;
import com.koreait.cobox.model.domain.Seat;
import com.koreait.cobox.model.domain.Theater;
import com.koreait.cobox.model.movie.service.MovieService;
import com.koreait.cobox.model.payment.service.PaymentService;
import com.koreait.cobox.model.reservation.service.LocationService;
import com.koreait.cobox.model.reservation.service.ReservationService;
import com.koreait.cobox.model.reservation.service.ScheduleService;
import com.koreait.cobox.model.reservation.service.TheaterService;

@Controller
public class ReservationController implements ServletContextAware {
   private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
   @Autowired
   private MovieService movieService;
   @Autowired
   private LocationService locationService;
   @Autowired
   private TheaterService theaterService;
   @Autowired
   private ReservationService reservationService;
   @Autowired
   private ScheduleService scheduleService;
   @Autowired
   private PaymentService paymentService;

   @Override
   public void setServletContext(ServletContext servletContext) {
   }

   //첫번째 예약페이지 생성
   @GetMapping("/movie/reservation")
   public ModelAndView reserMovie(HttpServletRequest request) {
      List movieList = movieService.selectAll();
      List locationList = locationService.selectAll();
      //List theaterList = theaterService.selectAll();
      
      ModelAndView mav = new ModelAndView();
      mav.addObject("movieList", movieList);
      mav.addObject("locationList", locationList);
      //mav.addObject("theaterList", theaterList);
      mav.setViewName("client/payment/reservation5");
      return mav;
   }

   //비동기방식 극장 가져오기
   @RequestMapping(value = "/movie/theater", method = RequestMethod.GET)
   @ResponseBody
   public List getTheaterList(int location_id) {
      logger.debug("location_id:" + location_id);
      List<Theater> theaterList = theaterService.selectAllById(location_id);
      return theaterList;
   }

   //가져온 영화,극정,시간 선택 후 넘기기 
   @RequestMapping(value = "/movie/reserRegist", method = RequestMethod.POST )
   public String reserMovie(HttpServletRequest request, Schedule schedule) {

      logger.debug("movie_id는? "+schedule.getMovie().getMovie_id());
      logger.debug("theater_id는? "+schedule.getTheater().getTheater_id());
      logger.debug("sdate는? "+schedule.getSdate());
      logger.debug("stime는? "+schedule.getStime());

      scheduleService.insert(schedule);
      
      return "/client/payment/reservation2";
   }
   
   //앞페이지 값 가져오고 좌석선택한 값과(세션으로) 같이 예매페이지로 보내기(2->3)
   @RequestMapping(value = "/movie/reserRegist2", method = RequestMethod.GET)
   public String reservationfinal(Seat seat) {
      
         logger.debug("seat_id는? " +seat.getSeat_id());
         logger.debug("seat_name은? "+seat.getSeat_name());
         //logger.debug("seat_price는? "+seat.getSeat_price());
         
         return "redirect:/client/movie/reservationfinal";
   }
   
   //예약하기(이건 paymentService에서??!)
   @RequestMapping(value = "/movie/reservationfinal", method = RequestMethod.POST)
   public MessageData setReser(Schedule schedule, Reservation reservation, ResSummary resSummary) {
      scheduleService.insert(schedule);
      
      reservation.setSchedule(schedule);
      reservationService.insert(reservation);
      
      logger.debug("schedule "+reservation.getSchedule().getSchedule_id());
      logger.debug("resSummary "+reservation.getResSummary().getRes_summay_id());
      
      MessageData messageData=new MessageData();
      messageData.setResultCode(1);
      messageData.setMsg("영화가 예매되었습니다.");
      messageData.setUrl("/client/payment/reservationfinal");
      
      return messageData;
   }

}
