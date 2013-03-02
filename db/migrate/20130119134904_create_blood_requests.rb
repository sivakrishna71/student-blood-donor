class CreateBloodRequests < ActiveRecord::Migration
  def change
    create_table :blood_requests do |t|
      t.string 'patient_name'
      t.string 'reqd_blood_group'
      t.string 'gender'
      t.integer 'age',   :limit => 3
      t.integer 'units',  :limit => 3
      t.integer 'landline', :limit => 10
      t.integer 'mobile_number', :limit => 10
      t.text 'hospital_address'
      t.string 'email'
      t.text 'patient_address'
      t.text 'purpose'
      t.string 'city'
      t.timestamps
    end
  end
end