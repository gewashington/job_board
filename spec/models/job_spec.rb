require 'rails_helper'

FactoryBot.define do
    factory :job do
    title { [  'engineer', 'author', 'teacher', 'doctor', 'construction worker', 'scientist', 'chef'].sample }
     end
    end


RSpec.describe Job, type: :model do
    describe '#featured?' do
     context 'when the description is present' do
      let(:job) { FactoryBot.create(:job, description: "A description.") }
    #   job = Job.new(title: "New Job")
      it 'returns true' do
        #Our job.featured? method is going to return true
        expect(job.featured?).to eq true
    end
  end

    context 'when the description is NOT present' do
     let(:job) { FactoryBot.create(:job) }
     it 'returns false' do
        expect(job.featured?).to eq false
    end
   end
 end
end