FactoryGirl.define do
  factory :server do
    name "MyString"
    description "MyText"
    logo_url "MyString"
    base_url "MyString"
    cloudthreads_version "MyString"
    user_count 1
    local_board_count 1
    local_thread_count 1
    local_message_count 1
    syndicated_board_count 1
    syndicated_thread_count 1
    syndicated_message_count 1
    registration_status "MyString"
    availability_status "MyString"
    announcement_status "MyString"
  end
end
