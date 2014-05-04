# encoding: utf-8
class NewsEmailsController < ApplicationController


  before_action :set_post, only: [:show]


  def index
    @news_email = NewsEmail.all
  end

  def show
    I18n.locale = :ru
    @news_email = NewsEmail.find(params[:id])
    $top_field_text = 'Чтобы получать по почте новые статьи и подборки лучших статей, введите свой E-mail:'
  end

  def create
    @news_email = NewsEmail.new(news_email_params)
    $addresser = @news_email


    if @news_email.save
      $addresser = nil

      case $redirect_news
        when 'posts'
          $success_msg = 'Вы успешно подписались на рассылку материалов сайта. Спасибо за доверие'
          redirect_to posts_path
        when 'products'
          redirect_to products_path
        when 'pers'
          redirect_to menus_path($menu_id)
        else
        redirect_to menus_path
      end
    else
      case $redirect_news
        when 'posts'
          redirect_to posts_path($post_id)
        when 'products'
          redirect_to products_path($product_id)
        when 'pers'
          redirect_to pers_path
        else
          redirect_to menus_path
        end
    end
  end


  def news_email_params
    params.require(:news_email).permit(:email, :use_for_news)
  end

  private

  def set_post
    @news_email = NewsEmail.find(params[:id])
  end

end