defprotocol Store do
  def insert(data)
  def update(data)
  def delete(data)
  def select(data)
  def upsert(data)
end
