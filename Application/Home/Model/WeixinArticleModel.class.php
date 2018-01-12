<?php 
namespace Home\Model; 
use Think\Model; 
class WeixinArticleModel extends Model {
	public function getLatestArticleForWinxin($count=4) {
		$content = [];
		$articles = $this->order("created_time desc")->limit($count)->select();
		foreach($articles as $article) {
			$images = json_decode($article['image']);
			$content[] = array(
				"Title"=> mb_substr($article['title'], 0, 18)."...",
				"Description"=> mb_substr($article['description'], 0, 36),
				"PicUrl"=> count($images)>0?$images[0]:"",
				"Url" =>"http://www.yjshare.cn/blog_".$article['id']
			);
		}

		return $content;
	}
}
