module Translookout
class Translookout

  def initialize(subscription_id)
    @subscription_id=subscription_id
    puts @subscription_id
  end

  def image_judgment?(image)
    uri="http://www.translookout.work/lookouts/cover?image=#{image}&mode=image&subscription_id=#{@subscription_id}"
    request(uri)
  end

  def message_judgment?(message,targets,option=true)
    uri="http://www.translookout.work/lookouts/cover?message=#{message}&mode=message&subscription_id=#{@subscription_id}&option=#{option}"
    targets.each do |target|
      uri=uri+"&targets[]=#{target}"
    end
    request(uri)
  end

  def request(uri)
    uri = URI.parse(uri)
    response= Net::HTTP.get(uri)
    response = JSON.parse(response)
  end
end
end