module Crypto

  def self.create_salt()
  	return SecureRandom.hex(32)
  end

  def self.make_hash(salt, password)
  	return Digest::SHA512.hexdigest("#{password}:#{salt}")
  end

end