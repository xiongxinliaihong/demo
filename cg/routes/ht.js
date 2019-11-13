const express=require('express');
//引入连接池模块
const pool=require('../pool.js');

//创建路由器对象
var router=express.Router();

//登录
router.get('/api/v1/login/:uname&:upwd',function(req,res){
	var $uname=req.params.uname;
	var $upwd=req.params.upwd;
	var sql='select * from cg_user where uname=? and upwd=?';
	pool.query(sql,[$uname,$upwd],function(err,result){
		if(result.length>0){
			res.send('1');//成功
		}else{
			res.send('0');
		}
	})
})

//查询cg_news
router.get('/api/v1/cg_news/',function(req,res){
	var sql='select * from cg_news';
	pool.query(sql,function(err,result){
		if(err) throw err;
		res.send(result);		
	})
})


//查询cg_news_details
router.get('/api/v1/cg_news_details/:id',function(req,res){
	var $id=req.params.id;
	var sql='select * from cg_news_details where news_id=?';
	pool.query(sql,[$id],function(err,result){
		if(err) throw err;
		res.send(result);		
	})
})

//删除news
router.delete('/api/v1/delnews/:id',(req,res)=>{
	var $id=req.params.id;
	console.log($id);
	var sql='delete from cg_news_details where wid=?'
	pool.query(sql,[$id],function(err,result){
		if(err) throw err;
		console.log(result);
		var sql1='delete from cg_news where nid=?'
		pool.query(sql1,[$id],function(err,result){
			if(err) throw err;
			console.log(result);
			if(result.affectedRows>0){
				res.send('1');//成功
			}else{
				res.send('0');
			}
		})
		
	})
	
})


//添加新闻详情
router.post('/api/v1/newsDetails',(req,res)=>{
	var wid=req.body.wid;
	var news_id=req.body.news_id;
	var title=req.body.title;
	var details=req.body.details;
	console.log(wid)
	console.log(news_id)
	console.log(title)
	console.log(details)
	var sql='insert into cg_news_details set ?,?,?,?';
	pool.query(sql,[wid,news_id,title,details],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
			res.send('1');
		}
	})
})


//查询cg_case
router.get('/api/v1/cg_case/',function(req,res){
	var sql='select * from cg_case';
	pool.query(sql,function(err,result){
		if(err) throw err;
		res.send(result);		
	})
})


//删除news
router.delete('/api/v1/delcase/:id',(req,res)=>{
	var $id=req.params.id;
	console.log($id);
	var sql='delete from cg_case_details where did=?'
	pool.query(sql,[$id],function(err,result){
		if(err) throw err;
		console.log(result);
		var sql1='delete from cg_case where cid=?'
		pool.query(sql1,[$id],function(err,result){
			if(err) throw err;
			console.log(result);
			if(result.affectedRows>0){
				res.send('1');//成功
			}else{
				res.send('0');
			}
		})
		
	})
	
})
//导出路由器对象
module.exports=router;