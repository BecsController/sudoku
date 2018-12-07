# frozen_string_literal: true
require "rails_helper"
require 'spec_helper'
require 'byebug'

describe LandingController do

  render_views

  describe "#index" do
    it "Should have the correct title" do
      get :index
      expect(response.body).to include("<h1>Sudoku!!!!</h1>")
    end
  end
end
