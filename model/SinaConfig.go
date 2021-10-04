package model

import (
	"errors"
	"fmt"
	"gorm.io/gorm"
	"sina/drivers/mysql"
)

type SinaConfig struct {
	Id int
	Name string
	Value string
}

func (sl *SinaConfig) SinaConfigAdd(params SinaConfig)error  {
	var result *gorm.DB
	var info SinaConfig
	//and  is_ok = 1
	err := mysql.Db.Where("name = ? and value = ?", params.Name,params.Value).First(&info).Error
	if errors.Is(err,gorm.ErrRecordNotFound) {
		result = mysql.Db.Create(&params)
		fmt.Println("添加成功")
	} else {
		fmt.Println("记录已经存在")
		return nil
	}
	return result.Error
}


func (sl *SinaConfig) SinaConfigSave(params SinaConfig)error  {
	var result *gorm.DB
	var info SinaConfig
	err := mysql.Db.Where("name = ?", params.Name).First(&info).Error
	if !errors.Is(err,gorm.ErrRecordNotFound) {
		result = mysql.Db.Updates(&params)
	}else{
		result = mysql.Db.Create(&params)
	}
	return result.Error
}
func (sl *SinaConfig)GetSinaConfigByName(name string)string {
	var sina_luck_list []SinaConfig
	mysql.Db.Where("name = ?", name).Find(&sina_luck_list)
	return sina_luck_list[0].Value
}
