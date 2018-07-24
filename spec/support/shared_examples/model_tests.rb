shared_examples 'default model tests' do |args|
  describe 'Factory' do
    it { expect(send(args[:instance])).to be_valid }
  end

  describe 'Validations' do
    presence_validations(args[:validations][:presence])
    allow_value_validations(args[:validations][:allow_values])
    allow_value_validations(args[:validations][:not_allow_values], false)
  end

  describe 'Assocciations' do
  end

  describe 'Enum' do
    enum_tests args[:enum]
  end
end

def presence_validations(fields)
  fields.each do |field|
    it { should validate_presence_of(field) }
  end
end

def allow_value_validations(args, allowed = true)
  args.each do |arg|
    it { send("should#{'_not' unless allowed}", allow_value(arg[:value]).for(arg[:for])) }
  end
end

def enum_tests(args)
  args.each do |arg|
    it { should define_enum_for(arg[:field]).with arg[:values] }
  end
end
