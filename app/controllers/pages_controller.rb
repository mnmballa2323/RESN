class PagesController < ApplicationController

  def agents
    
  end

  def single_agent
    
  end

  def list_rental
    
  end

  def submit_property
    
  end

  def property
    
  end

  def blog
    
  end

  def single_blog
    
  end

  def my_profile
    
  end

  def about
    
  end

  def contact
    
  end

  def services
    if !params[:category].present? and !params[:title].present?
      @services = Service.take(4)
    else
      if params[:category] != "Find Service" and params[:title].present?
        @services = Service.where(category: params[:category], title: params[:title]).take(4)
      elsif params[:category] == "Find Service" and params[:title].present?
        @services = Service.where(title: params[:title]).take(4)
      elsif params[:category] != "Find Service" and !params[:title].present?
        @services = Service.where(category: params[:category]).take(4)
      else
        @services = Service.take(4)
      end
    end
  end

  def my_property
    
  end

  def coming_soon
    
  end

  def book_marked_listing
    
  end

  def buy
    if !params[:search].present?
      @list_sells =  ListSell.all
    else
      variable = params[:search]
      @list_sells =  ListSell.where("my_views like ?", "%#{variable}%")
    end
  end

  def sell
    
  end

  def rent
    if !params[:search].present?
      @rental_lists =  RentalList.all
    else
      variable = params[:search]
      @rental_lists =  RentalList.where("title like ?", "%#{variable}%")
    end
  end

  def property_detail
    
  end

  def mortgage
    
  end

  def insurance
    
  end


  def property_detail
    
  end

  def mobile_apps

  end


  def hotels

  end

  def partners
  end

  def investors
  end

  def team
  end

  def travel
    
  end

  def list_new
    @user = current_user
  end

  def art 
    if !params[:search].present?
      @list_arts =  ListArt.all
    else
      variable = params[:search]
      @list_arts =  ListArt.where("art_name like ?", "%#{variable}%")
    end
  end
  
  def furniture
  end
  def privacy_policy
  end

  def term_of_use
  end
  
  def cookies_policy
  end
end
