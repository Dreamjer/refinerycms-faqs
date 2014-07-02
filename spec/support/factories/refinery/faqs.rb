# encoding: utf-8

FactoryGirl.define do
  factory :faq, :class => Refinery::Faqs::Faq do
    sequence(:question) { |n| "Question #{n}?" }
  end

  factory :category, :class => Refinery::Faqs::Category do
    sequence(:name) { |n| "FAQ Category #{n}" }
  end
end

