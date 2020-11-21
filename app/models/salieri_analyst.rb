# frozen_string_literal: true

class SalieriAnalyst < Analyst
  delegate :title, to: :other_analyst
  delegate :figure, to: :other_analyst
end
