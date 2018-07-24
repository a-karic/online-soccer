shared_examples 'get have http status ok' do |args|
  args.each do |arg|
    describe "GET #{arg[:name]}" do
      before do
        sign_in user if arg[:authenticate_user]
        get arg[:path_params] ? send(arg[:path], send(arg[:path_params])) : send(arg[:path])
      end
      it { expect(response).to have_http_status :ok }
    end
  end
end
