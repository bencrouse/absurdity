require 'test_helper'

class ExperimentTest < MiniTest::Unit::TestCase

  def setup
    @experiment_slug = :shared_contacts_link
    @metrics_list    = [:clicked, :seen]
    @variants_list   = [:with_photos, :without_photos]
    Absurdity.redis  = MockRedis.new
  end

  def test_find_and_test_create
    experiment = Absurdity::Experiment.create(@experiment_slug,
                                              @metrics_list,
                                              @variants_list)

    assert_equal experiment, Absurdity::Experiment.find(@experiment_slug)
  end

  def test_initialize
    # crappy test
    experiment = Absurdity::Experiment.new(@experiment_slug,
                                           metrics_list:  @metrics_list,
                                           variants_list: @variants_list)
  end

  def test_save

  end

  def test_metric

  end

end

