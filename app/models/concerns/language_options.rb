# frozen_string_literal: true

module LanguageOptions
  extend ActiveSupport::Concern

  included do
    enum language: BCP47::Languages.as_enum
  end

  def language_lable
    BCP47::Languages.by_tag[language.to_sym]
  end
end
