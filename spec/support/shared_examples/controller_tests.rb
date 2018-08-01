# frozen_string_literal: true

shared_examples 'authenticated user' do
  let(:current_user) { controller.current_user }
  it 'should authenticate user' do
    expect(controller.authenticate_user!).not_to be_nil
  end
  it { expect(current_user.email).to eq user.email }
  it do
    sign_out(current_user)
    send(request.method.downcase, path)
    expect(response).to redirect_to user_session_path
  end
end

shared_examples 'loaded page' do |args|
  args ||= {}
  it do
    sign_out user if args[:sign_out]
    expect(response).to have_http_status(:ok)
  end
  include_examples 'authenticated user' if args[:authenticated_user]
end
