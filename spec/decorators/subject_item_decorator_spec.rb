require 'rails_helper'

describe SubjectItemDecorator do
  let(:teacher) { build :teacher, first_name: 'John', last_name: 'Smith' }
  let(:subject_item) { build :subject_item, title: 'Never ending story', teacher: teacher }

  describe "#title_with_assigned_teacher" do
    subject { subject_item.decorate.title_with_assigned_teacher }
    it { is_expected.to eq 'Never ending story (John Smith)' }
  end
end
