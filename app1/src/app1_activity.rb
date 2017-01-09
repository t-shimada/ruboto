# encoding: utf-8

require 'ruboto/widget'
require 'ruboto/util/toast'

ruboto_import_widgets :Button, :LinearLayout, :TextView, :ImageView

# http://xkcd.com/378/

class App1Activity
  def onCreate(bundle)
    super
    set_title '航空機写真'

    menu_contents
  rescue Exception
    puts "Exception creating activity: #{$!}"
    puts $!.backtrace.join("\n")
  end

  private

  def menu_contents
    self.content_view = linear_layout :orientation => :vertical do
      text_view :text => 'AIRLINES', :id => 42,
                :layout => {:width => :match_parent},
                :gravity => :center, :text_size => 48.0
      button :text => 'JAPAN AIRLINES',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { jal }
      button :text => 'ALL NIPPON AIRWAYS',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { ana }
    end
  end

  def jal
    self.content_view = linear_layout :orientation => :vertical do
      text_view :text => 'JAPAN AIRLINES', :id => 42,
                :layout => {:width => :match_parent},
                :gravity => :center, :text_size => 48.0
      button :text => 'BOEING777-346ER',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { ja739j }
      button :text => 'BOEING777-246',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { ja772j }
      button :text => 'BOEING767-346ER',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { ja655j }
      button :text => 'MENU',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { menu_contents }
    end
  end

  def ana
    self.content_view = linear_layout :orientation => :vertical do
      text_view :text => 'ALL NIPPON AIRWAYS', :id => 42,
                :layout => {:width => :match_parent},
                :gravity => :center, :text_size => 48.0
      button :text => 'BOEING787-881',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { ja821a}
      button :text => 'BOEING777-381ER',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { ja792a }
      button :text => 'BOEING777-281',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { ja8969 }
      button :text => 'MENU',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { menu_contents }
    end
  end

  def ja739j
    self.content_view = linear_layout :orientation => :vertical do
      button :text => 'BACK',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { jal }

      picture = image_view
      picture.image_resource = Ruboto::R::drawable.ja739j
    end
  end

  def ja772j
    self.content_view = linear_layout :orientation => :vertical do
      button :text => 'BACK',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { jal }

      picture = image_view
      picture.image_resource = Ruboto::R::drawable.ja772j
    end
  end

  def ja655j
    self.content_view = linear_layout :orientation => :vertical do
      button :text => 'BACK',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { jal }

      picture = image_view
      picture.image_resource = Ruboto::R::drawable.ja655j
    end
  end

  def ja792a
    self.content_view = linear_layout :orientation => :vertical do
      button :text => 'BACK',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { ana }

      picture = image_view
      picture.image_resource = Ruboto::R::drawable.ja792a
    end
  end

  def ja821a
    self.content_view = linear_layout :orientation => :vertical do
      button :text => 'BACK',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { ana }

      picture = image_view
      picture.image_resource = Ruboto::R::drawable.ja821a
    end
  end

  def ja8969
    self.content_view = linear_layout :orientation => :vertical do
      button :text => 'BACK',
             :layout => {:width => :match_parent},
             :id => 43, :on_click_listener => proc { ana }

      picture = image_view
      picture.image_resource = Ruboto::R::drawable.ja8969
    end
  end
end
