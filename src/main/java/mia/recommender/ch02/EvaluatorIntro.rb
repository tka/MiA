require 'mahout'


class MyRecommenderBuilder 
  include Mahout::RecommenderBuilder
  def buildRecommender(model)
    similarity   = Mahout::PearsonCorrelationSimilarity.new(model);
    neighborhood =  Mahout::NearestNUserNeighborhood.new(2, similarity, model);
    return Mahout::GenericUserBasedRecommender.new(model, neighborhood, similarity);
  end
end
Mahout::RandomUtils.useTestSeed();
model = Mahout::FileDataModel.new( java.io.File.new("intro.csv") );

evaluator = Mahout::AverageAbsoluteDifferenceRecommenderEvaluator.new ;
# Build the same recommender for testing that we did last time:
recommenderBuilder = MyRecommenderBuilder.new

# Use 70% of the data to train; test using the other 30%.
score = evaluator.evaluate(recommenderBuilder, nil, model, 0.7, 1.0);
puts score
