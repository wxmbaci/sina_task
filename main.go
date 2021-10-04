package main

import (
	"sina/function"
	"time"
	"fmt"
)

func draw( ) {


	fmt.Println("draw start")
	for {
		function.GetLuckSearchApi()
		function.FollowSet()
		function.HuaTiZhuanFa()
		function.LikeSet()
		time.Sleep(5*time.Minute)
	}

}
