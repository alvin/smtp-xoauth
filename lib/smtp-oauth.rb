module Net
  class SMTP
    def auth_oauth( user, secret )
      res = critical {
        # xoauth secret needs to be base64 encoded WITHOUT newlines
	# the secret looks like this prior to encoding:
	# GET https://mail.google.com/mail/b/therealemail@gmail.com/smtp/ oauth_consumer_key="oftenyourdomain.com",oauth_nonce="6762341348542013497",oauth_signature="CqU4ov0ashDqMrWXw6yKWTbbjE%3D",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1270697273",oauth_token="1%2F3cJbEP_tmYo0svadifjadsfWpQgBP6-NVeeBHDUXOek",oauth_version="1.0"
        get_response("AUTH XOAUTH #{base64_encode(secret).gsub(/\n/,'')}")
      }
      raise SMTPAuthenticationError, res unless /\A2../ === res
      
    end    
  end
end
