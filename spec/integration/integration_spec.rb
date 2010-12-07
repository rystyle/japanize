# -*- encoding: utf-8 -*-
require 'minitest/spec'
require 'minitest/autorun'

require 'japanize'

describe "Japanization" do
  it "must calculate single math operation at japanize"         do "１　に　２　を　たす".japanize.must_equal                      3   end
  it "must calculate single math operation"                     do (１　に　２　を　たす).must_equal                               3   end

  it "must calculate with period in math operation at japanize" do "９に７.７をたす".japanize.must_equal                          16.7 end
  it "must calculate with period in math operation"             do (９に７.７をたす).must_equal                                   16.7 end

  it "must calculate with period in math operation at japanize" do "７.７に９をたす".japanize.must_equal                          16.7 end
  it "must calculate with period in math operation"             do (７.７に９をたす).must_equal                                   16.7 end

  it "must calculate single math operation"                     do (１　に　２　を　たす).must_equal                               3   end
  it "must calculate single math operation at japanize"         do "１　に　２　を　たす".japanize.must_equal                      3   end

  it "must calculate with period in math operation"             do (９　に　７.７　を　たす).must_equal                           16.7 end
  it "must calculate with period in math operation"             do "９　に　７.７　を　たす".japanize.must_equal                  16.7 end

  it "must calculate with space in math operation"              do (９　に　７　７　を　たす).must_equal                          86   end
  it "must calculate with space in math operation"              do "９　に　７　７　を　たす".japanize.must_equal                 86   end

  it "must calculate compound math operation"                   do (１　に　２　を　たし　て　３　を　かける).must_equal           9   end
  it "must calculate compound math operation"                   do "１　に　２　を　たし　て　３　を　かける".japanize.must_equal  9   end

  it "must calculate compound math operation　phrase"           do (１に２をたして３をかける).must_equal                           9   end
  it "must calculate compound math operation　phrase"           do "１に２をたして３をかける".japanize.must_equal                  9   end
end
