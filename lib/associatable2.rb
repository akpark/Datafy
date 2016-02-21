require_relative '03_associatable'

module Associatable

  def has_one_through(name, through_name, source_name)
    define_method(name) do
      through_options = self.class.assoc_options[through_name]
      source_options = through_options.model_class.assoc_options[source_name]

      source_fk = source_options.foreign_key
      through_fk = through_options.foreign_key

      actual_fk = self.send(through_fk)

      result = DBConnection.execute2(<<-SQL, actual_fk)
        SELECT
          #{source_options.table_name}.*
        FROM
          #{through_options.table_name}
        JOIN
          #{source_options.table_name}
        ON
          #{through_options.table_name}.#{source_fk} = #{source_options.table_name}.id
        WHERE
          #{through_options.table_name}.id = ?
      SQL
      source_options.model_class.parse_all(result.drop(1)).first
    end
  end
end
