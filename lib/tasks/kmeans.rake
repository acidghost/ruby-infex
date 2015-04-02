namespace :kmeans do
  include Treat::Core::DSL

  desc 'Use k-means algorithm to cluster documents'
  task learn: :environment do
    SHOPS = 3

    documents = Document.all.map do |d|
      d = d.plain
      d.split /\n/
    end

    raw_collection = []
    require 'stopwords/snowball'
    documents.each do |sentences|
      raw_document = []
      for s in sentences
        unless s == ''
          s = sentence s.downcase
          lang = short_lang s
          filter = Stopwords::Snowball::Filter.new lang
          s.tokenize :stanford
          s.each do |w|
            if w.type == :word
              w_stem = w.stem(:lingua)
              next if filter.stopword? w_stem
              raw_document << w_stem
            end
          end
        end
      end
      raw_collection << raw_document
    end

    tf_idf_obj = TfIdf.new raw_collection
    tf_idf = tf_idf_obj.tf_idf
    kmeans_data = []
    tf_idf.size.times { kmeans_data << [] }
    max = 0
    max_size = tf_idf[0].size
    tf_idf[1..tf_idf.size-1].each_with_index do |d, i|
      if max_size < d.size
        max = i+1
        max_size = d.size
      end
    end
    tf_idf[max].each do |k, v|
      (0..tf_idf.size-1).each do |i|
        if tf_idf[i][k].nil?
          kmeans_data[i] << 0.000000000001
        else
          kmeans_data[i] << tf_idf[i][k].to_f
        end
      end
    end

    kmeans_data.each_with_index { |d, i|
      p ''
      p i
      p ''
      p d.inspect
    }
    kmeans = KMeans.new(kmeans_data, centroids: SHOPS)

    raw_collection = raw_collection.map do |d|
      d.join ' '
    end
    corpus = Lda::TextCorpus.new raw_collection
    lda = Lda::Lda.new corpus
    lda.num_topics = SHOPS
    lda.em 'random'

    lda.print_topics 5
    p kmeans.inspect
  end

end
