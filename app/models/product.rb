#!/bin/env ruby
# encoding: utf-8
class Product < ActiveRecord::Base

  has_many :products_comments

  @title='Купить запись'
  @keys='Умиротворение, доброжелательность, подавленность, психология, жить, покое, чувство пустоты, психолог, хочется любви, тепла, сигарета, утешение, полнота, энергия'
  @descr_head='Боль одиночества, внутренней пустоты и обиды мешает работать, верить в счастье, требует утешения едой, сигаретой. И хочется быть любимым, любить'

  @descr_body='Чувство подавленности, дискомфорта, заторможенности, пустоты, неудовлетворенности от пустых взаимоотношений. Хочется радости, безопасности, тепла'
  @h1='Психолог по Skype и E-mail - Хочется почувствовать радость, любовь, доброжелательность, тепло, стать счастливым'

end
