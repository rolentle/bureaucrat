class ChangeLoanClassToKlass < ActiveRecord::Migration
  def change
    rename_column :loans, :class, :klass
  end
end
