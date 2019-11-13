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

//查询cg_news_family
router.get('/api/v1/cg_news_family/',function(req,res){
	var sql='select * from cg_news_family';
	pool.query(sql,function(err,result){
		if(err) throw err;
		res.send(result);		
	})
})

//查询cg_news_family:id
router.get('/api/v1/cg_news_family/:id',function(req,res){
	var $id=req.params.id;
	var sql='select * from cg_news_family where fid=?';
	pool.query(sql,[$id],function(err,result){
		if(err) throw err;
		res.send(result);		
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

//查询cg_apply
router.get('/api/v1/cg_apply/',function(req,res){
	var sql='select * from cg_apply';
	pool.query(sql,function(err,result){
		if(err) throw err;
		res.send(result);		
	})
})


//查询cg_case_family
router.get('/api/v1/cg_case_family/',function(req,res){
	var sql='select * from cg_case_family';
	pool.query(sql,function(err,result){
		if(err) throw err;
		res.send(result);		
	})
})


//查询cg_case:id
router.get('/api/v1/cg_case/:id',function(req,res){
	var $id=req.params.id;
	var sql='select * from cg_case where case_family_id=?';
	pool.query(sql,[$id],function(err,result){
		if(err) throw err;
		res.send(result);		
	})
})

//查询cg_case_1:id
router.get('/api/v1/cg_case_1/:id',function(req,res){
	var $id=req.params.id;
	var case_family_id='select case_family_id from cg_case where cid=?';
	pool.query(case_family_id,[$id],function(err,result){
		if(err) throw err;
		var b=result[0].case_family_id;	
		var sql='select * from cg_case where case_family_id=?';
		pool.query(sql,b,function(err,result){
			if(err) throw err;
			res.send(result);
		})	
	})
})

//查询cg_news:id
router.get('/api/v1/cg_news/:id',function(req,res){
	var $id=req.params.id;
	var sql='select * from cg_news where family_id=?';
	pool.query(sql,[$id],function(err,result){
		if(err) throw err;
		res.send(result);		
	})
})

//添加cg_join
router.post('/api/v1/cg_join/',(req,res)=>{
	var obj=req.body;
	if(!obj.position){
		res.send("position未接收");
		return;
	}
	if(!obj.name){
		res.send("name未接收");
		return;
	}
	if(!obj.phone){
		res.send("phone未接收");
		return;
	}
	if(!obj.email){
		res.send("email未接收");
		return;
	}
	if(!obj.note){
		res.send("note未接收");
		return;
	}
	if(!obj.resume){
		res.send("resume未接收");
		return;
	}
	var sql='insert into cg_join set ?';
	pool.query(sql,[obj],(err,result)=>{
		console.log(result);
		if(result.affectedRows>0){
			res.send('1');
		}
	})
})



//查询cg_case_details
router.get('/api/v1/cg_case_details/:id',function(req,res){
	var $id=req.params.id;
	var sql='select * from cg_case_details where case_id=?';
	pool.query(sql,[$id],function(err,result){
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

//查询cg_case_family:id
router.get('/api/v1/cg_case_family/:id',function(req,res){
	var $id=req.params.id;
	var sql='select * from cg_case_family where lid=?';
	pool.query(sql,[$id],function(err,result){
		if(err) throw err;
		res.send(result);		
	})
})



//导出路由器对象
module.exports=router;