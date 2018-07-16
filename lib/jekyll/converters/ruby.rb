require 'jekyll'

module Jekyll
  module Converters
    class Ruby < Converter
      safe true
      priority :high

      RUBY_PATTERN =
        %r(
          {
          (?<kanji>[^{}|]*)
          \|
          (?<kana>[^{}]*)
          }
        )x

      def matches(_ext)
        true
      end

      def output_ext(_ext)
      end

      def convert(content)
        content.gsub(RUBY_PATTERN) do |match|
          kanji, *kanas = match.slice(1...-1).split('|')
          return "<ruby>#{kanji}<rt></rt></ruby>" if kanas.empty?

          pairs = []
          kanas.each_with_index do |kana, i|
            if i == kanas.size - 1
              pairs << [kanji.slice(i..-1), kana]
            else
              pairs << [kanji.slice(i), kana]
            end
          end

          "<ruby>#{pairs.map { |k, kana| "#{k}<rt>#{kana}</rt>" }.join}</ruby>"
        end
      end
    end
  end
end
