package config

import (
		"sina/model"
 		"encoding/json"
		"fmt"
		)

func GetSinaUrl() map[string]interface{} {
	// 初始化数据库配置map
	urlConfig := make(map[string]interface{})

	var sina_config model.SinaConfig 
	urlConfig["SUB"]  =  sina_config.GetSinaConfigByName("SUB")
	urlConfig["LUCKING"] = sina_config.GetSinaConfigByName("LUCKING")
	urlConfig["LUCKING_TIME"] = sina_config.GetSinaConfigByName("LUCKING_TIME")
	urlConfig["LUCKING_SEARCH"] = sina_config.GetSinaConfigByName("LUCKING_SEARCH")  //关键词1
	urlConfig["LUCKING_SEARCH_ZHUANFA"] = sina_config.GetSinaConfigByName("LUCKING_SEARCH_ZHUANFA") //关键词2
	urlConfig["LUCKING_SEARCH_XIANGQING"] = sina_config.GetSinaConfigByName("LUCKING_SEARCH_XIANGQING") //关键词3
	urlConfig["LUCKING_STATUS"] = sina_config.GetSinaConfigByName("LUCKING_STATUS")   //查看是否存在页面


	urlConfig["REFERER"] = sina_config.GetSinaConfigByName("REFERER")
	urlConfig["PDETAIL"] = sina_config.GetSinaConfigByName("PDETAIL")
	//urlConfig["PAGE_ID"] = "page_100808_super_index"
	urlConfig["LOCATION"] = sina_config.GetSinaConfigByName("LOCATION")

	// urlConfig["SUB"] = "_2A25N8XMhDeRhGeRK6FcZ8S3Jzz6IHXVuh-PprDV8PUNbmtAKLUvVkW9NU20U9CpWtN3FZa86ryKeEyb-WJji4m-V"  //微博的sub，再cookie查找
	urlConfig["UID"] = sina_config.GetSinaConfigByName("UID")  //自己的uid


	urlConfig["COMMENT_URL"] = sina_config.GetSinaConfigByName("COMMENT_URL")
	urlConfig["FOLLOW_URL"] = sina_config.GetSinaConfigByName("FOLLOW_URL")
	urlConfig["LIKE_URL"] = sina_config.GetSinaConfigByName("LIKE_URL")
	urlConfig["PAGE_ID"] = sina_config.GetSinaConfigByName("PAGE_ID")
	urlConfig["ZHUANFA_URL"] = sina_config.GetSinaConfigByName("ZHUANFA_URL")
	urlConfig["PAGES_ID"] = sina_config.GetSinaConfigByName("PAGES_ID")
	mjson,_ :=json.Marshal(urlConfig)
	mString :=string(mjson)
	fmt.Printf("print mString:%s",mString)

	return urlConfig
}

