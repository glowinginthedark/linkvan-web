class ChangeAllSuitabilityToLowercase < ActiveRecord::Migration
  def change
    change_column :facilities, :suitability, :string
    Facility.find_each do |f|
      case f.suitability
      when "Children Youth"
        f.suitability = "children youth"
        f.save
      when "Children Youth Adults"
        f.suitability = "children youth adults"
        f.save
      when "Children Youth Adults Seniors"
        f.suitability = "children youth adults seniors"
        f.save
      when "Children Adults"
        f.suitability = "children adults"
        f.save
      when "Children Seniors"
        f.suitability = "children seniors"
        f.save
      when "Children Adults Seniors"
        f.suitability = "children adults seniors"
        f.save
      when "Children Youth Seniors"
        f.suitability = "children youth seniors"
        f.save
      when "Youth"
        f.suitability = "youth"
        f.save
      when "Youth Adults"
        f.suitability = "youth adults"
        f.save
      when "Youth Seniors"
        f.suitability = "youth seniors"
        f.save
      when "Youth Adults Seniors"
        f.suitability = "youth adults seniors"
        f.save
      when "Adults"
        f.suitability = "adults"
        f.save
      when "Adults Seniors"
        f.suitability = "adults seniors"
        f.save
      when "Seniors"
        f.suitability = "seniors"
        f.save
      when
      else
      end
    end
  end
end
