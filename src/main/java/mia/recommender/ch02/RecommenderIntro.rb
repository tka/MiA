require 'mahout'

model = Mahout::FileDataModel.new( java.io.File.new("intro.csv"));

similarity = Mahout::PearsonCorrelationSimilarity.new(model);
neighborhood = Mahout::NearestNUserNeighborhood.new(2, similarity, model);

recommender = Mahout::GenericUserBasedRecommender.new( model, neighborhood, similarity);

recommendation =recommender.recommend(1, 1);

puts recommendation
