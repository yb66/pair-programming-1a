require 'spec_helper.rb'
require_relative "../lib/knumber.rb"

module KNumber

describe "Returning a number" do

  shared_examples "Checking knumbers" do
    #When(:knumber) { KNumber(katakana) }
    Then { expect(KNumber(katakana).to_snum).to eq expected }
  end

  context '4649' do
    Given(:katakana){ 'ヨロシク' }
    Given(:expected) { "4649" }
    include_examples "Checking knumbers"
  end


  context "イヤナヤツ" do
    Given(:katakana){ "イヤナヤツ"}
    Given(:expected) { "18782" }
    include_examples "Checking knumbers"
  end

  context "ハヤク" do
    Given(:katakana){ "ハヤク" }
    Given(:expected) { "889" }
    include_examples "Checking knumbers"
  end

  context "ナゴヤ" do
    Given(:katakana){ "ナゴヤ"}
    Given(:expected) { "758" }
    include_examples "Checking knumbers"
  end

  context "クサイ" do
    Given(:katakana){ "クサイ"}
    Given(:expected) { "931" }
    include_examples "Checking knumbers"
  end

  context "サイゴ" do
    Given(:katakana){ "サイゴ"}
    Given(:expected) { "315" }
    include_examples "Checking knumbers"
  end

  context "サンキュー" do
    Given(:katakana){ "サンキュー"}
    Given(:expected) { "39" }
    include_examples "Checking knumbers"
  end

  context "JK girls texting" do

    context "オハヨウ" do
      Given(:katakana){ "オハヨウ" }
      Given(:expected) { "0840" }
      include_examples "Checking knumbers"
    end

    context "アイシテイル" do
      Given(:katakana){ "アイシテイル"}
      Given(:expected) { "14106" }
      include_examples "Checking knumbers"
    end

    context "ナニシテイル" do
      Given(:katakana){ "ナニシテイル"}
      Given(:expected) { "724106" }
      include_examples "Checking knumbers"
    end

    context "サヨナラ" do
      Given(:katakana){ "サヨナラ"}
      Given(:expected) { "3470" }
      include_examples "Checking knumbers"
    end

  end

end
end