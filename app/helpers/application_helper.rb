module ApplicationHelper
  def default_meta_tags
    {
      site: '就活武勇伝',
      separator: '',
      title: '就活武勇伝',
      description: '【匿名】あなたの就活武勇伝を聞かせてください！',
      keywords: '就活',
      canonical: 'http://buyuden.popapp.me/',
      og: {
        title: :title,
        type: 'website',
        url: 'http://www.rep-rikkyo.com/',
        image: image_url("screen.png"),
        site_name: :site,
        description: :description,
        locale: 'ja_JP'
      },
      twitter: {
        title: :title,
        site: '@BuyudenShukatsu',
        card: 'summary',
        description: :description,
        image: image_url("screen.png"),
        url: :url
      }
    }
  end

  def hbr(str)
    str = html_escape(str)
    str.gsub(/\r\n|\r|\n|¥n/, "<br />").html_safe
  end

end
