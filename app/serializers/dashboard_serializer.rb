class DashboardSerializer < ActiveModel::Serializer
  attributes :id, :owner_type, :owner_id
end
