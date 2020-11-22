class SalieriAnalyst < Analyst
  belongs_to :other_analyst, class_name: 'Analyst', required: false

  delegate :title, to: :other_analyst
  delegate :figure, to: :other_analyst
end
