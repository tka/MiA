require 'java'

module Mahout
  include_package "org.apache.mahout.cf.taste.impl.model.file";
  include_package "org.apache.mahout.cf.taste.impl.neighborhood";
  include_package "org.apache.mahout.cf.taste.impl.recommender";
  include_package "org.apache.mahout.cf.taste.impl.similarity";
  include_package "org.apache.mahout.cf.taste.model";
  include_package "org.apache.mahout.cf.taste.neighborhood";
  include_package "org.apache.mahout.cf.taste.recommender";
  include_package "org.apache.mahout.cf.taste.similarity";

  import "org.apache.mahout.cf.taste.common.TasteException";
  import "org.apache.mahout.cf.taste.eval.RecommenderBuilder";
  import "org.apache.mahout.cf.taste.eval.RecommenderEvaluator";
  import "org.apache.mahout.cf.taste.impl.eval.AverageAbsoluteDifferenceRecommenderEvaluator";
  import "org.apache.mahout.cf.taste.impl.model.file.FileDataModel";
  import "org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood";
  import "org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender";
  import "org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity";
  import "org.apache.mahout.cf.taste.model.DataModel";
  import "org.apache.mahout.cf.taste.neighborhood.UserNeighborhood";
  import "org.apache.mahout.cf.taste.recommender.Recommender";
  import "org.apache.mahout.cf.taste.similarity.UserSimilarity";
  import "org.apache.mahout.common.RandomUtils";


end
