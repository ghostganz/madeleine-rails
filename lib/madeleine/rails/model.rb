#encoding:utf-8

module Madeleine
  module Rails
    class Model

      def initialize(args = {})
        @id = 0
        update_attributes(args)
      end

      def update_attributes(args)
        raise NotImplementedError
      end

      def self.all
        system = Thread.current[:_madeleine_system]
        system[model_name.to_s.downcase] ||= []
        system[model_name.to_s.downcase]
      end

      def self.find(id_to_find)
        self.all.detect {|item| item.id == id_to_find.to_i}
      end

      def self.model_name
        ActiveModel::Name.new(self)
      end

      def to_key
        [@id.to_s]
      end

      def to_param
        persisted? ? @id.to_s : nil
      end

      def errors
        # TODO should really be kept?
        ActiveModel::Errors.new(self)
      end

      def persisted?
        @id > 0
      end

      def save
        @id = self.class.all.size + 1
        self.class.all << self
      end

      def destroy
        self.class.all.delete self
      end
    end
  end
end
