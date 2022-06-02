package persion.lizhiyong.javanative;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {

	@Value("${TARGET:World}")
	String target;

	@GetMapping("/")
	String hello() {
		return "Hello " + target + "!";
	}
}
