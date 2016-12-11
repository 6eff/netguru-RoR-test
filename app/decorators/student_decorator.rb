class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    '%.2f' % "#{subject_item.subject_item_notes.average(:value) || 0.00}"
  end

  def birth_date
    birthdate.strftime('%Y-%m_%d') if birthdate
  end
end
